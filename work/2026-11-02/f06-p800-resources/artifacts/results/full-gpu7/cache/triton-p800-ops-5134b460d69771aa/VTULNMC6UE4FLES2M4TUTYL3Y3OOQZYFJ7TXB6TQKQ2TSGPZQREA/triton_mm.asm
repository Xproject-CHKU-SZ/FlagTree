	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-64fwnljt" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1848
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r12
	addli r30, sp, 1784
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -304(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -628(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -936(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -1708(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r1, r2, r1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r3, r1, r3
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r2, -1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r4, -1704(r30)
	storeli.w r4, -1700(r30)
	storeli.w r4, -1696(r30)
	storeli.w r4, -1692(r30)
	storeli.w r4, -1688(r30)
	storeli.w r4, -1684(r30)
	storeli.w r4, -1680(r30)
	storeli.w r4, -1676(r30)
	storeli.w r4, -1672(r30)
	storeli.w r4, -1668(r30)
	storeli.w r4, -1664(r30)
	storeli.w r4, -1660(r30)
	storeli.w r4, -1656(r30)
	storeli.w r4, -1652(r30)
	storeli.w r4, -1648(r30)
	storeli.w r4, -1644(r30)
	storeli.w r4, -1640(r30)
	storeli.w r4, -1636(r30)
	storeli.w r4, -1632(r30)
	storeli.w r4, -1628(r30)
	storeli.w r4, -1624(r30)
	storeli.w r4, -1620(r30)
	storeli.w r4, -1616(r30)
	storeli.w r4, -1612(r30)
	storeli.w r4, -1608(r30)
	storeli.w r4, -1604(r30)
	storeli.w r4, -1600(r30)
	storeli.w r4, -1596(r30)
	storeli.w r4, -1592(r30)
	storeli.w r4, -1588(r30)
	storeli.w r4, -1584(r30)
	storeli.w r4, -1580(r30)
	storeli.w r4, -1576(r30)
	storeli.w r4, -1572(r30)
	storeli.w r4, -1568(r30)
	storeli.w r4, -1564(r30)
	storeli.w r4, -1560(r30)
	storeli.w r4, -1556(r30)
	storeli.w r4, -1552(r30)
	storeli.w r4, -1548(r30)
	storeli.w r4, -1544(r30)
	storeli.w r4, -1540(r30)
	storeli.w r4, -1536(r30)
	storeli.w r4, -1532(r30)
	storeli.w r4, -1528(r30)
	storeli.w r4, -1524(r30)
	storeli.w r4, -1520(r30)
	storeli.w r4, -1516(r30)
	storeli.w r4, -1512(r30)
	storeli.w r4, -1508(r30)
	storeli.w r4, -1504(r30)
	storeli.w r4, -1500(r30)
	storeli.w r4, -1496(r30)
	storeli.w r4, -1492(r30)
	storeli.w r4, -1488(r30)
	storeli.w r4, -1484(r30)
	storeli.w r4, -1480(r30)
	storeli.w r4, -1476(r30)
	storeli.w r4, -1472(r30)
	storeli.w r4, -1468(r30)
	storeli.w r4, -1464(r30)
	storeli.w r4, -1460(r30)
	storeli.w r4, -1456(r30)
	storeli.w r4, -1452(r30)
	storeli.w r4, -1448(r30)
	storeli.w r4, -1444(r30)
	storeli.w r4, -1440(r30)
	storeli.w r4, -1436(r30)
	storeli.w r4, -1432(r30)
	storeli.w r4, -1428(r30)
	storeli.w r4, -1424(r30)
	storeli.w r4, -1420(r30)
	storeli.w r4, -1416(r30)
	storeli.w r4, -1412(r30)
	storeli.w r4, -1408(r30)
	storeli.w r4, -1404(r30)
	storeli.w r4, -1400(r30)
	storeli.w r4, -1396(r30)
	storeli.w r4, -1392(r30)
	storeli.w r4, -1388(r30)
	storeli.w r4, -1384(r30)
	storeli.w r4, -1380(r30)
	storeli.w r4, -1376(r30)
	storeli.w r4, -1372(r30)
	storeli.w r4, -1368(r30)
	storeli.w r4, -1364(r30)
	storeli.w r4, -1360(r30)
	storeli.w r4, -1356(r30)
	storeli.w r4, -1352(r30)
	storeli.w r4, -1348(r30)
	storeli.w r4, -1344(r30)
	storeli.w r4, -1340(r30)
	storeli.w r4, -1336(r30)
	storeli.w r4, -1332(r30)
	storeli.w r4, -1328(r30)
	storeli.w r4, -1324(r30)
	storeli.w r4, -1320(r30)
	storeli.w r4, -1316(r30)
	storeli.w r4, -1312(r30)
	storeli.w r4, -1308(r30)
	storeli.w r4, -1304(r30)
	storeli.w r4, -1300(r30)
	storeli.w r4, -1296(r30)
	storeli.w r4, -1292(r30)
	storeli.w r4, -1288(r30)
	storeli.w r4, -1284(r30)
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
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r3, r2, r3
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r3, r1, .LBB0_293
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	sext_int2long r[8:9], r1
	lui r1, 524287
	addli r21, zero, 2
	lui r28, 522240
	addli r6, zero, 0
	store.d r[2:3], -1784(r30)              # 8-byte Folded Spill
	ori r26, r1, 4095
	lui r1, 7
	lui r2, 522239
	lui r3, 1048560
	ori r1, r1, 4095
	ori r13, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], -1744(r30)               # 8-byte Folded Reload
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	load.d r[4:5], -1784(r30)               # 8-byte Folded Reload
	loadli.w r6,  -1748(r30)                # 4-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	setlt.sl r2, r[8:9], r[4:5]
	beq r2, zero, .LBB0_293
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_29 Depth 3
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #     Child Loop BB0_103 Depth 2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #     Child Loop BB0_169 Depth 2
                                        #       Child Loop BB0_178 Depth 3
                                        #       Child Loop BB0_172 Depth 3
                                        #     Child Loop BB0_200 Depth 2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_203 Depth 3
                                        #     Child Loop BB0_139 Depth 2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_142 Depth 3
                                        #     Child Loop BB0_261 Depth 2
                                        #       Child Loop BB0_270 Depth 3
                                        #       Child Loop BB0_264 Depth 3
                                        #     Child Loop BB0_231 Depth 2
                                        #       Child Loop BB0_240 Depth 3
                                        #       Child Loop BB0_234 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r23, zero, 64
	addli r25, zero, 32
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	addli r2, zero, 4
	bneq r12, r2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r4,  28(r30)
	mod.s r5, r6, r21
	addli r6, r6, 1
	store.d r[8:9], -1744(r30)              # 8-byte Folded Spill
	addli r15, zero, 1
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	loadli.w r11,  -936(r30)
	addli r7, zero, 0
	storeli.w r6, -1748(r30)                # 4-byte Folded Spill
	addli r6, zero, 1
	div.s r2, r8, r2
	addli r8, zero, 8
	div.s r2, r2, r4
	addli r4, zero, 16
	div.s r4, r2, r4
	slli r9, r4, 3
	slli r4, r4, 4
	sub.s r6, r6, r9
	sub.s r4, r2, r4
	min.s r6, r6, r8
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	loadli.w r8,  -1708(r30)
	mod.s r2, r2, r6
	div.s r4, r4, r6
	slli r6, r5, 14
	lui r5, 8
	add.s r10, r6, r5
	add.s r2, r9, r2
	slli r5, r4, 7
	slli r9, r2, 5
	storeli.w r5, -1776(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r4
	zext_int2long r[16:17], r2
	addli r2, zero, 12
	storeli.w r9, -1772(r30)                # 4-byte Folded Spill
	addli r9, zero, 7
	store.d r[16:17], -1768(r30)            # 8-byte Folded Spill
	sll.d r[18:19], r[16:17], r2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	load.d r[16:17], 8(r30)
	sll.d r[4:5], r[4:5], r9
	addli r9, zero, 0
	store.d r[4:5], -1760(r30)              # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r15
	add.ul r[4:5], r[16:17], r[4:5]
	addli r17, zero, 13
	addli r16, zero, 24
	store.d r[4:5], -1720(r30)              # 8-byte Folded Spill
	load.d r[4:5], 0(r30)
	add.ul r[4:5], r[4:5], r[18:19]
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r9, 16
	addli r11, zero, 4
	addli r25, zero, 64
	addli r24, zero, 128
	addli r22, zero, 32
	addli r23, zero, 64
	ori r9, r9, 64
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r11
	add.s r2, r2, r9
	addli r9, zero, 1
	dma_cfg r9, r9, zero, 0
	dma_cfg zero, r21, zero, 2
	dma_cfg r2, r20, r25, 3
	addli r20, zero, 5
	addli r21, zero, 2
	addli r2, zero, 7
	dma_cfg r24, r25, r9, 4
	dma_cfg r24, r24, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r20
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r14, 10
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
	addli r2, zero, 14
	dma_cfg zero, zero, r17, 10
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
	addli r2, zero, 25
	dma_cfg zero, zero, r16, 10
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
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r25, 3
	addli r25, zero, 32
	dma_cfg r24, zero, r9, 4
	dma_cfg r24, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	xsignal r21, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -628(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r9,  -304(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r9, r9, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r2, -628(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r9, -304(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	andi r2, r15, 1
	beq r2, zero, .LBB0_32
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r15, zero, 0
	.loc	1 122 15 is_stmt 1              # parallel-rne.mlir:122:15
	addli r7, r7, 1
	addli r9, zero, 1
	addli r11, r18, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_29 Depth 3
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r2, zero, 192
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r12, zero, 76
	addli r18, r11, 1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r2, r8, r2
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r12, r11, r12
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r8, r8, 1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r18, -936(r30)
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	storeli.w r8, -1708(r30)
	slli r20, r2, 12
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r2, r12, 12
	lui r12, 16
	add.s r19, r2, r12
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r12, r21, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[21:22], r9
	addli r24, zero, 2
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r9, zero, 1
	bneq r12, r9, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r14, zero, 6
	addli r27, zero, 3
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r9, zero, 75
	sll.d r[20:21], r[21:22], r14
	xwait r27, 0
	add.ul r[20:21], r[4:5], r[20:21]
	blt.s r9, r11, .LBB0_11
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r22, zero, 5
	addli r11, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r9, zero, 4
	lock zero, r22
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 7
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
	dma_cfg zero, zero, r17, 10
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
	addli r9, zero, 25
	dma_cfg zero, zero, r16, 10
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
	addli r9, zero, 128
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r23, 3
	dma_cfg r9, zero, r11, 4
	dma_cfg r9, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r22
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r2, zero, 5
	xwait r21, 0
	addli r25, zero, 32
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r21, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r20, r19, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -628(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r9,  -304(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r11, zero, 80
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r12, zero, 75
	lui r19, 92
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r11, r2, r11
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r12, r9, r12
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	storeli.w r2, -628(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r14, r12, 14
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r2, r11, 14
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r11, r9, 1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r11, -304(r30)
	add.s r19, r14, r19
	addli r11, zero, 7
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r12, r11, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	addli r11, zero, 6
	bneq r12, r11, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r27, zero, 14
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r2, zero, 74
	sll.d r[11:12], r[21:22], r27
	load.d r[20:21], -1720(r30)             # 8-byte Folded Reload
	add.ul r[20:21], r[20:21], r[11:12]
	addli r11, zero, 7
	addli r12, zero, 4
	xwait r11, 0
	blt.s r2, r9, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r22, zero, 5
	addli r9, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r2, zero, 3
	lock zero, r22
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r27, 10
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
	addli r2, zero, 25
	dma_cfg zero, zero, r16, 10
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
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r23, 3
	dma_cfg r2, zero, r12, 4
	addli r2, zero, 512
	dma_cfg r2, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r22
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r2, 92
	addli r9, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r12
	addli r25, zero, 64
	addli r24, zero, 128
	addli r22, zero, 32
	addli r16, zero, 512
	addli r23, zero, 24
	ori r2, r2, 64
	dma_cfg r9, r9, zero, 0
	dma_cfg zero, r21, zero, 2
	add.s r2, r14, r2
	addli r14, zero, 6
	dma_cfg r2, r20, r25, 3
	addli r20, zero, 5
	addli r21, zero, 2
	addli r2, zero, 3
	dma_cfg r24, r25, r12, 4
	dma_cfg r16, r16, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r20
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r27, 10
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
	addli r2, zero, 25
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 64
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
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r25, 3
	addli r25, zero, 32
	dma_cfg r24, zero, r12, 4
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	dma_cfg r16, zero, r22, 5
	addli r16, zero, 24
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	xsignal r14, 0
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	j .LBB0_13
.LBB0_25:                               #   in Loop: Header=BB0_15 Depth=2
	addli r9, zero, 6
	addli r21, zero, 2
	addli r14, zero, 128
	addli r25, zero, 32
	xwait r9, 0
	addli r9, zero, 9
	xwait r9, 0
	lock zero, zero
	addli r9, zero, 32
	ds_cfg r21, zero, 0
	ds_cfg r14, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r14, zero, 13
	shuffle_coa r2, r19, r9, 2
	addli r2, zero, 8
	unlock zero
	xsignal r11, 0
	xsignal r2, 0
	j .LBB0_13
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	andi r14, r15, 1
	addli r9, zero, 4
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r12, r9, .LBB0_31
# %bb.27:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r9, 0
	addli r9, zero, 8
	addli r21, zero, 2
	addli r11, zero, 1
	addli r12, zero, 0
	addli r19, zero, 4
	addli r22, zero, 32
	addli r23, zero, 64
	xwait r9, 0
	addli r9, zero, 1
	beq r7, zero, .LBB0_29
.LBB0_28:                               # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r15, r12, 13
	slli r12, r12, 8
	lock zero, r9
	mm_cfg r23, r22, r22, 0
	or r15, r15, r2
	or r12, r12, r10
	mm_cfg r21, r19, r9, 2
	mm_acc r12, r20, r15, 8
	andi r15, r11, 1
	addli r12, zero, 1
	addli r11, zero, 0
	unlock r9
	bneq r15, zero, .LBB0_28
	j .LBB0_30
.LBB0_29:                               # %.preheader29
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r15, r12, 13
	slli r12, r12, 8
	lock zero, r9
	mm_cfg r23, r22, r22, 0
	or r15, r15, r2
	or r12, r12, r10
	mm_cfg r21, r19, r9, 2
	mm r12, r20, r15, 8
	andi r15, r11, 1
	addli r12, zero, 1
	addli r11, zero, 0
	unlock r9
	bneq r15, zero, .LBB0_29
.LBB0_30:                               # %.thread20.thread44
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 5
	addli r23, zero, 64
	addli r25, zero, 32
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	bneq r14, zero, .LBB0_14
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r21, zero, 2
	bneq r14, zero, .LBB0_14
	j .LBB0_34
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 125 7 is_stmt 1               # parallel-rne.mlir:125:7
	addli r2, zero, 4
	bneq r12, r2, .LBB0_34
.LBB0_33:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -1732(r30)              # 4-byte Folded Spill
	xsignal r2, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	j .LBB0_37
.LBB0_34:                               # %.thread43
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	bneq r12, r2, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 131 7 is_stmt 1               # parallel-rne.mlir:131:7
	storeli.w r2, -1732(r30)                # 4-byte Folded Spill
	xwait r17, 0
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -1732(r30)              # 4-byte Folded Spill
.LBB0_37:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r2, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	addli r9, zero, 7
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r2
	addli r2, zero, 128
	sync_core
	zext_int2long r[7:8], r2
	addli r2, zero, 127
	zext_int2long r[16:17], r2
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	beq r12, zero, .LBB0_70
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	beq r12, r21, .LBB0_101
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	bneq r12, r2, .LBB0_132
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[4:5], zero
	addli r2, zero, 4
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	store.d r[4:5], -1728(r30)              # 8-byte Folded Spill
	zext_int2long r[4:5], r2
	xfence
	mfence { lm, sm, gm }
	j .LBB0_42
.LBB0_41:                               # %middle.block101
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r9, zero, 7
	load.d r[11:12], -1720(r30)             # 8-byte Folded Reload
	zext_int2long r[4:5], r9
	.loc	1 173 9 is_stmt 1               # parallel-rne.mlir:173:9
	setlt.ul r2, r[11:12], r[4:5]
	addli.d r[4:5], r[11:12], 1
	beq r2, zero, .LBB0_131
.LBB0_42:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[20:21], r[4:5], r9
	store.d r[4:5], -1720(r30)              # 8-byte Folded Spill
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	bneq r6, r10, .LBB0_49
# %bb.43:                               # %scalar.ph95.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_45
.LBB0_44:                               # %scalar.ph95
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	setlt.ul r11, r[4:5], r[16:17]
	.loc	1 189 13 is_stmt 1              # parallel-rne.mlir:189:13
	add.s r2, r6, r2
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r9, 0(r2)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	beq r11, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph95
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[11:12], r[4:5], r[20:21]
	slli r2, r11, 2
	add.s r9, r10, r2
	loads.w r11, 0(r9)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r12, r11, r26
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r9, r28, r12
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r9, zero, .LBB0_47
# %bb.46:                               # %scalar.ph95
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r11, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r12, r13, r12
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r12, zero, .LBB0_44
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r12, r13, r12
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r12, zero, .LBB0_44
.LBB0_48:                               # %scalar.ph95
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r11, 16
	andi r9, r9, 1
	add.s r9, r11, r9
	add.s r9, r9, r1
	and r9, r9, r3
	j .LBB0_44
.LBB0_49:                               # %vector.body97.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	load.d r[4:5], -1728(r30)               # 8-byte Folded Reload
	j .LBB0_51
.LBB0_50:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	add.s r9, r6, r15
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	seteq.d r2, r[4:5], r[7:8]
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r25, 12(r9)
	stores.w r24, 8(r9)
	stores.w r14, 4(r9)
	stores.w r22, 0(r9)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	bneq r2, zero, .LBB0_41
.LBB0_51:                               # %vector.body97
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[11:12], r[4:5], r[20:21]
	slli r15, r11, 2
	add.s r22, r10, r15
	loads.w r2, 12(r22)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r23, r2, r26
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r9, r28, r23
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r9, zero, .LBB0_53
# %bb.52:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r25, r2, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_51 Depth=3
	lui r9, 1024
	or r25, r2, r9
.LBB0_54:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r11, 8(r22)
	and r12, r11, r26
	setlt.u r9, r28, r12
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r9, zero, .LBB0_56
# %bb.55:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r11, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_51 Depth=3
	lui r9, 1024
	or r24, r11, r9
.LBB0_57:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r9, 4(r22)
	and r18, r9, r26
	setlt.u r14, r28, r18
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r14, zero, .LBB0_59
# %bb.58:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_51 Depth=3
	lui r14, 1024
	or r14, r9, r14
.LBB0_60:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r19, 0(r22)
	and r27, r19, r26
	setlt.u r22, r28, r27
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r22, zero, .LBB0_62
# %bb.61:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r27, r13, r27
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r27, zero, .LBB0_63
	j .LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r19, r22
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r27, r13, r27
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r27, zero, .LBB0_64
.LBB0_63:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r19, 16
	andi r22, r22, 1
	add.s r19, r19, r22
	add.s r19, r19, r1
	and r22, r19, r3
.LBB0_64:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	setlt.u r18, r13, r18
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r18, zero, .LBB0_67
# %bb.65:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r12
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r9, zero, .LBB0_68
.LBB0_66:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r23
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r9, zero, .LBB0_50
	j .LBB0_69
.LBB0_67:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r14, r9, r3
	setlt.u r9, r13, r12
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r9, zero, .LBB0_66
.LBB0_68:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r11, 16
	andi r9, r9, 1
	add.s r9, r11, r9
	add.s r9, r9, r1
	and r24, r9, r3
	setlt.u r9, r13, r23
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r9, zero, .LBB0_50
.LBB0_69:                               # %vector.body97
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r2, 16
	andi r9, r9, 1
	add.s r2, r2, r9
	add.s r2, r2, r1
	and r25, r2, r3
	j .LBB0_50
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	j .LBB0_72
.LBB0_71:                               # %middle.block119
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	load.d r[11:12], -1720(r30)             # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 144 9 is_stmt 1               # parallel-rne.mlir:144:9
	setlt.ul r2, r[11:12], r[4:5]
	addli.d r[4:5], r[11:12], 1
	beq r2, zero, .LBB0_100
.LBB0_72:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_75 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[4:5], r9
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	store.d r[4:5], -1720(r30)              # 8-byte Folded Spill
	bneq r6, r10, .LBB0_79
# %bb.73:                               # %scalar.ph113.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_75
.LBB0_74:                               # %scalar.ph113
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	setlt.ul r5, r[11:12], r[16:17]
	.loc	1 160 13 is_stmt 1              # parallel-rne.mlir:160:13
	add.s r2, r6, r2
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r4, 0(r2)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r5, zero, .LBB0_71
.LBB0_75:                               # %scalar.ph113
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[4:5], r[11:12], r[18:19]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r5, 0(r4)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r9, r5, r26
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r4, r28, r9
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r4, zero, .LBB0_77
# %bb.76:                               # %scalar.ph113
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r9, r13, r9
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r9, zero, .LBB0_74
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r9, r13, r9
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r9, zero, .LBB0_74
.LBB0_78:                               # %scalar.ph113
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_74
.LBB0_79:                               # %vector.body115.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_81
.LBB0_80:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r4, r6, r15
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	seteq.d r2, r[20:21], r[7:8]
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r23, 12(r4)
	stores.w r11, 8(r4)
	stores.w r9, 4(r4)
	stores.w r22, 0(r4)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	bneq r2, zero, .LBB0_71
.LBB0_81:                               # %vector.body115
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r15, r4, 2
	add.s r22, r10, r15
	loads.w r2, 12(r22)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r24, r2, r26
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r4, r28, r24
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r4, zero, .LBB0_83
# %bb.82:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r2, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	lui r4, 1024
	or r23, r2, r4
.LBB0_84:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r25, 8(r22)
	and r12, r25, r26
	setlt.u r4, r28, r12
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r4, zero, .LBB0_86
# %bb.85:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r25, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=3
	lui r4, 1024
	or r11, r25, r4
.LBB0_87:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r14, 4(r22)
	and r4, r14, r26
	setlt.u r5, r28, r4
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r5, zero, .LBB0_89
# %bb.88:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	lui r5, 1024
	or r9, r14, r5
.LBB0_90:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r5, 0(r22)
	and r27, r5, r26
	setlt.u r22, r28, r27
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r22, zero, .LBB0_92
# %bb.91:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r5, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r27, r13, r27
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r27, zero, .LBB0_93
	j .LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r5, r22
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r27, r13, r27
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r27, zero, .LBB0_94
.LBB0_93:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r5, 16
	andi r22, r22, 1
	add.s r5, r5, r22
	add.s r5, r5, r1
	and r22, r5, r3
.LBB0_94:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	setlt.u r4, r13, r4
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r4, zero, .LBB0_97
# %bb.95:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r12
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r4, zero, .LBB0_98
.LBB0_96:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r24
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r4, zero, .LBB0_80
	j .LBB0_99
.LBB0_97:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r14, 16
	andi r4, r4, 1
	add.s r4, r14, r4
	add.s r4, r4, r1
	and r9, r4, r3
	setlt.u r4, r13, r12
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r4, zero, .LBB0_96
.LBB0_98:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r25, 16
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r1
	and r11, r4, r3
	setlt.u r4, r13, r24
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r4, zero, .LBB0_80
.LBB0_99:                               # %vector.body115
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r1
	and r23, r2, r3
	j .LBB0_80
.LBB0_100:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	addli r21, zero, 2
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	bneq r12, r21, .LBB0_39
.LBB0_101:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 194 7 is_stmt 1               # parallel-rne.mlir:194:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_103
.LBB0_102:                              # %middle.block110
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 11
	load.d r[11:12], -1720(r30)             # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 202 9 is_stmt 1               # parallel-rne.mlir:202:9
	setlt.ul r2, r[11:12], r[4:5]
	addli.d r[4:5], r[11:12], 1
	beq r2, zero, .LBB0_131
.LBB0_103:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[4:5], r9
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	store.d r[4:5], -1720(r30)              # 8-byte Folded Spill
	bneq r6, r10, .LBB0_110
# %bb.104:                              # %scalar.ph104.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_106
.LBB0_105:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	setlt.ul r5, r[11:12], r[16:17]
	.loc	1 218 13 is_stmt 1              # parallel-rne.mlir:218:13
	add.s r2, r6, r2
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r4, 0(r2)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	beq r5, zero, .LBB0_102
.LBB0_106:                              # %scalar.ph104
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[4:5], r[11:12], r[18:19]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r5, 0(r4)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r9, r5, r26
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r4, r28, r9
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r4, zero, .LBB0_108
# %bb.107:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r9, r13, r9
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r9, zero, .LBB0_105
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r9, r13, r9
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r9, zero, .LBB0_105
.LBB0_109:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_105
.LBB0_110:                              # %vector.body106.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_112
.LBB0_111:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	add.s r5, r6, r15
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	seteq.d r4, r[20:21], r[7:8]
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r14, 4(r5)
	stores.w r22, 0(r5)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	bneq r4, zero, .LBB0_102
.LBB0_112:                              # %vector.body106
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r15, r4, 2
	add.s r22, r10, r15
	loads.w r23, 12(r22)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r24, r23, r26
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r2, r28, r24
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_114
# %bb.113:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_112 Depth=3
	lui r2, 1024
	or r2, r23, r2
.LBB0_115:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r11, 8(r22)
	and r12, r11, r26
	setlt.u r4, r28, r12
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r4, zero, .LBB0_117
# %bb.116:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_112 Depth=3
	lui r4, 1024
	or r25, r11, r4
.LBB0_118:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r9, 4(r22)
	and r4, r9, r26
	setlt.u r5, r28, r4
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r5, zero, .LBB0_120
# %bb.119:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_112 Depth=3
	lui r5, 1024
	or r14, r9, r5
.LBB0_121:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r5, 0(r22)
	and r27, r5, r26
	setlt.u r22, r28, r27
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r22, zero, .LBB0_123
# %bb.122:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r5, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r27, r13, r27
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r27, zero, .LBB0_124
	j .LBB0_125
.LBB0_123:                              #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r5, r22
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r27, r13, r27
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r27, zero, .LBB0_125
.LBB0_124:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r5, 16
	andi r22, r22, 1
	add.s r5, r5, r22
	add.s r5, r5, r1
	and r22, r5, r3
.LBB0_125:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	setlt.u r4, r13, r4
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r4, zero, .LBB0_128
# %bb.126:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r12
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r4, zero, .LBB0_129
.LBB0_127:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r24
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r4, zero, .LBB0_111
	j .LBB0_130
.LBB0_128:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r1
	and r14, r4, r3
	setlt.u r4, r13, r12
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r4, zero, .LBB0_127
.LBB0_129:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r1
	and r25, r4, r3
	setlt.u r4, r13, r24
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r4, zero, .LBB0_111
.LBB0_130:                              # %vector.body106
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r1
	and r2, r2, r3
	j .LBB0_111
.LBB0_131:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	addli r21, zero, 2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_132:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	loadli.w r2,  -1732(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_167
# %bb.133:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	addli r2, zero, 4
	beq r12, r2, .LBB0_198
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	beq r12, r9, .LBB0_229
.LBB0_135:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	beq r12, r2, .LBB0_259
# %bb.136:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	bneq r12, r2, .LBB0_290
# %bb.137:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_139
.LBB0_138:                              # %middle.block
                                        #   in Loop: Header=BB0_139 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[11:12], -1720(r30)             # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 289 9 is_stmt 1               # parallel-rne.mlir:289:9
	setlt.ul r2, r[11:12], r[4:5]
	addli.d r[4:5], r[11:12], 1
	beq r2, zero, .LBB0_289
.LBB0_139:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_142 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[4:5], r9
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	store.d r[4:5], -1720(r30)              # 8-byte Folded Spill
	bneq r6, r10, .LBB0_146
# %bb.140:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_139 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_142
.LBB0_141:                              # %scalar.ph
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	setlt.ul r5, r[11:12], r[16:17]
	.loc	1 305 13 is_stmt 1              # parallel-rne.mlir:305:13
	add.s r2, r6, r2
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r4, 0(r2)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	beq r5, zero, .LBB0_138
.LBB0_142:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[4:5], r[11:12], r[18:19]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r5, 0(r4)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r9, r5, r26
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r4, r28, r9
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r4, zero, .LBB0_144
# %bb.143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r9, r13, r9
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r9, zero, .LBB0_141
	j .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r9, r13, r9
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r9, zero, .LBB0_141
.LBB0_145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_141
.LBB0_146:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_139 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_148
.LBB0_147:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	add.s r5, r6, r15
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	seteq.d r4, r[20:21], r[7:8]
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r14, 4(r5)
	stores.w r22, 0(r5)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	bneq r4, zero, .LBB0_138
.LBB0_148:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r15, r4, 2
	add.s r22, r10, r15
	loads.w r23, 12(r22)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r24, r23, r26
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r2, r28, r24
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_150
# %bb.149:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_148 Depth=3
	lui r2, 1024
	or r2, r23, r2
.LBB0_151:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r11, 8(r22)
	and r12, r11, r26
	setlt.u r4, r28, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r4, zero, .LBB0_153
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_148 Depth=3
	lui r4, 1024
	or r25, r11, r4
.LBB0_154:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r9, 4(r22)
	and r4, r9, r26
	setlt.u r5, r28, r4
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r5, zero, .LBB0_156
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_148 Depth=3
	lui r5, 1024
	or r14, r9, r5
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r5, 0(r22)
	and r27, r5, r26
	setlt.u r22, r28, r27
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r22, zero, .LBB0_163
# %bb.158:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r5, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r27, r13, r27
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r27, zero, .LBB0_160
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r5, 16
	andi r22, r22, 1
	add.s r5, r5, r22
	add.s r5, r5, r1
	and r22, r5, r3
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	setlt.u r4, r13, r4
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r4, zero, .LBB0_164
# %bb.161:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r12
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r4, zero, .LBB0_165
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r24
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_147
	j .LBB0_166
.LBB0_163:                              #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r5, r22
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r27, r13, r27
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r27, zero, .LBB0_159
	j .LBB0_160
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r1
	and r14, r4, r3
	setlt.u r4, r13, r12
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_162
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r1
	and r25, r4, r3
	setlt.u r4, r13, r24
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_147
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r1
	and r2, r2, r3
	j .LBB0_147
.LBB0_167:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 12
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_169
.LBB0_168:                              # %middle.block92
                                        #   in Loop: Header=BB0_169 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[11:12], -1720(r30)             # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 231 9 is_stmt 1               # parallel-rne.mlir:231:9
	setlt.ul r2, r[11:12], r[4:5]
	addli.d r[4:5], r[11:12], 1
	beq r2, zero, .LBB0_197
.LBB0_169:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_178 Depth 3
                                        #       Child Loop BB0_172 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[4:5], r9
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	store.d r[4:5], -1720(r30)              # 8-byte Folded Spill
	bneq r6, r10, .LBB0_176
# %bb.170:                              # %scalar.ph86.preheader
                                        #   in Loop: Header=BB0_169 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_172
.LBB0_171:                              # %scalar.ph86
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	setlt.ul r5, r[11:12], r[16:17]
	.loc	1 247 13 is_stmt 1              # parallel-rne.mlir:247:13
	add.s r2, r6, r2
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	stores.w r4, 0(r2)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	beq r5, zero, .LBB0_168
.LBB0_172:                              # %scalar.ph86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_169 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[4:5], r[11:12], r[18:19]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r5, 0(r4)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r9, r5, r26
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r4, r28, r9
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r4, zero, .LBB0_174
# %bb.173:                              # %scalar.ph86
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r9, r13, r9
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r9, zero, .LBB0_171
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r9, r13, r9
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r9, zero, .LBB0_171
.LBB0_175:                              # %scalar.ph86
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_171
.LBB0_176:                              # %vector.body88.preheader
                                        #   in Loop: Header=BB0_169 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_178
.LBB0_177:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	add.s r5, r6, r15
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	seteq.d r4, r[20:21], r[7:8]
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r14, 4(r5)
	stores.w r22, 0(r5)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	bneq r4, zero, .LBB0_168
.LBB0_178:                              # %vector.body88
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_169 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r15, r4, 2
	add.s r22, r10, r15
	loads.w r23, 12(r22)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r24, r23, r26
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r2, r28, r24
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r2, zero, .LBB0_180
# %bb.179:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_178 Depth=3
	lui r2, 1024
	or r2, r23, r2
.LBB0_181:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r11, 8(r22)
	and r12, r11, r26
	setlt.u r4, r28, r12
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r4, zero, .LBB0_183
# %bb.182:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_178 Depth=3
	lui r4, 1024
	or r25, r11, r4
.LBB0_184:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r9, 4(r22)
	and r4, r9, r26
	setlt.u r5, r28, r4
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r5, zero, .LBB0_186
# %bb.185:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_178 Depth=3
	lui r5, 1024
	or r14, r9, r5
.LBB0_187:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	loads.w r5, 0(r22)
	and r27, r5, r26
	setlt.u r22, r28, r27
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r22, zero, .LBB0_193
# %bb.188:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r5, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r27, r13, r27
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r27, zero, .LBB0_190
.LBB0_189:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r5, 16
	andi r22, r22, 1
	add.s r5, r5, r22
	add.s r5, r5, r1
	and r22, r5, r3
.LBB0_190:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	setlt.u r4, r13, r4
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r4, zero, .LBB0_194
# %bb.191:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r12
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r4, zero, .LBB0_195
.LBB0_192:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r24
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r4, zero, .LBB0_177
	j .LBB0_196
.LBB0_193:                              #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r5, r22
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r27, r13, r27
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r27, zero, .LBB0_189
	j .LBB0_190
.LBB0_194:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r1
	and r14, r4, r3
	setlt.u r4, r13, r12
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r4, zero, .LBB0_192
.LBB0_195:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r1
	and r25, r4, r3
	setlt.u r4, r13, r24
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r4, zero, .LBB0_177
.LBB0_196:                              # %vector.body88
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r1
	and r2, r2, r3
	j .LBB0_177
.LBB0_197:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	addli r21, zero, 2
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	mfence { sm }
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	addli r2, zero, 4
	bneq r12, r2, .LBB0_134
.LBB0_198:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_200
.LBB0_199:                              # %middle.block83
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 19
	load.d r[11:12], -1720(r30)             # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 260 9 is_stmt 1               # parallel-rne.mlir:260:9
	setlt.ul r2, r[11:12], r[4:5]
	addli.d r[4:5], r[11:12], 1
	beq r2, zero, .LBB0_228
.LBB0_200:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_203 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[4:5], r9
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	store.d r[4:5], -1720(r30)              # 8-byte Folded Spill
	bneq r6, r10, .LBB0_207
# %bb.201:                              # %scalar.ph77.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_203
.LBB0_202:                              # %scalar.ph77
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	setlt.ul r5, r[11:12], r[16:17]
	.loc	1 276 13 is_stmt 1              # parallel-rne.mlir:276:13
	add.s r2, r6, r2
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	stores.w r4, 0(r2)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	beq r5, zero, .LBB0_199
.LBB0_203:                              # %scalar.ph77
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[4:5], r[11:12], r[18:19]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r5, 0(r4)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r9, r5, r26
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r4, r28, r9
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r4, zero, .LBB0_205
# %bb.204:                              # %scalar.ph77
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r9, r13, r9
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r9, zero, .LBB0_202
	j .LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r9, r13, r9
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r9, zero, .LBB0_202
.LBB0_206:                              # %scalar.ph77
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_202
.LBB0_207:                              # %vector.body79.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_209
.LBB0_208:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	add.s r5, r6, r15
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	seteq.d r4, r[20:21], r[7:8]
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r14, 4(r5)
	stores.w r22, 0(r5)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	bneq r4, zero, .LBB0_199
.LBB0_209:                              # %vector.body79
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r15, r4, 2
	add.s r22, r10, r15
	loads.w r23, 12(r22)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r24, r23, r26
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r2, r28, r24
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_211
# %bb.210:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_209 Depth=3
	lui r2, 1024
	or r2, r23, r2
.LBB0_212:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r11, 8(r22)
	and r12, r11, r26
	setlt.u r4, r28, r12
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r4, zero, .LBB0_214
# %bb.213:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_209 Depth=3
	lui r4, 1024
	or r25, r11, r4
.LBB0_215:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r9, 4(r22)
	and r4, r9, r26
	setlt.u r5, r28, r4
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r5, zero, .LBB0_217
# %bb.216:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_209 Depth=3
	lui r5, 1024
	or r14, r9, r5
.LBB0_218:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r5, 0(r22)
	and r27, r5, r26
	setlt.u r22, r28, r27
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r22, zero, .LBB0_224
# %bb.219:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r5, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r27, r13, r27
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r27, zero, .LBB0_221
.LBB0_220:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r5, 16
	andi r22, r22, 1
	add.s r5, r5, r22
	add.s r5, r5, r1
	and r22, r5, r3
.LBB0_221:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	setlt.u r4, r13, r4
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r4, zero, .LBB0_225
# %bb.222:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r12
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r4, zero, .LBB0_226
.LBB0_223:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r24
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r4, zero, .LBB0_208
	j .LBB0_227
.LBB0_224:                              #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r5, r22
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r27, r13, r27
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r27, zero, .LBB0_220
	j .LBB0_221
.LBB0_225:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r1
	and r14, r4, r3
	setlt.u r4, r13, r12
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r4, zero, .LBB0_223
.LBB0_226:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r1
	and r25, r4, r3
	setlt.u r4, r13, r24
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r4, zero, .LBB0_208
.LBB0_227:                              # %vector.body79
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r1
	and r2, r2, r3
	j .LBB0_208
.LBB0_228:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	addli r21, zero, 2
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	mfence { sm }
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	bneq r12, r9, .LBB0_135
.LBB0_229:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 339 7 is_stmt 1               # parallel-rne.mlir:339:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_231
.LBB0_230:                              # %middle.block74
                                        #   in Loop: Header=BB0_231 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[11:12], -1720(r30)             # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 347 9 is_stmt 1               # parallel-rne.mlir:347:9
	setlt.ul r2, r[11:12], r[4:5]
	addli.d r[4:5], r[11:12], 1
	beq r2, zero, .LBB0_289
.LBB0_231:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_240 Depth 3
                                        #       Child Loop BB0_234 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[4:5], r9
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	store.d r[4:5], -1720(r30)              # 8-byte Folded Spill
	bneq r6, r10, .LBB0_238
# %bb.232:                              # %scalar.ph68.preheader
                                        #   in Loop: Header=BB0_231 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_234
.LBB0_233:                              # %scalar.ph68
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	setlt.ul r5, r[11:12], r[16:17]
	.loc	1 363 13 is_stmt 1              # parallel-rne.mlir:363:13
	add.s r2, r6, r2
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	stores.w r4, 0(r2)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	beq r5, zero, .LBB0_230
.LBB0_234:                              # %scalar.ph68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_231 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[4:5], r[11:12], r[18:19]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r5, 0(r4)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r9, r5, r26
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r4, r28, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r4, zero, .LBB0_236
# %bb.235:                              # %scalar.ph68
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r9, r13, r9
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r9, zero, .LBB0_233
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r9, r13, r9
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r9, zero, .LBB0_233
.LBB0_237:                              # %scalar.ph68
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_233
.LBB0_238:                              # %vector.body70.preheader
                                        #   in Loop: Header=BB0_231 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_240
.LBB0_239:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	add.s r5, r6, r15
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	seteq.d r4, r[20:21], r[7:8]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r14, 4(r5)
	stores.w r22, 0(r5)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	bneq r4, zero, .LBB0_230
.LBB0_240:                              # %vector.body70
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_231 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r15, r4, 2
	add.s r22, r10, r15
	loads.w r23, 12(r22)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r24, r23, r26
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r2, r28, r24
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r2, zero, .LBB0_242
# %bb.241:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_243
.LBB0_242:                              #   in Loop: Header=BB0_240 Depth=3
	lui r2, 1024
	or r2, r23, r2
.LBB0_243:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r11, 8(r22)
	and r12, r11, r26
	setlt.u r4, r28, r12
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r4, zero, .LBB0_245
# %bb.244:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	j .LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_240 Depth=3
	lui r4, 1024
	or r25, r11, r4
.LBB0_246:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r9, 4(r22)
	and r4, r9, r26
	setlt.u r5, r28, r4
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r5, zero, .LBB0_248
# %bb.247:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_240 Depth=3
	lui r5, 1024
	or r14, r9, r5
.LBB0_249:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r5, 0(r22)
	and r27, r5, r26
	setlt.u r22, r28, r27
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r22, zero, .LBB0_251
# %bb.250:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r5, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r27, r13, r27
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r27, zero, .LBB0_252
	j .LBB0_253
.LBB0_251:                              #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r5, r22
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r27, r13, r27
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r27, zero, .LBB0_253
.LBB0_252:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r5, 16
	andi r22, r22, 1
	add.s r5, r5, r22
	add.s r5, r5, r1
	and r22, r5, r3
.LBB0_253:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	setlt.u r4, r13, r4
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r4, zero, .LBB0_256
# %bb.254:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r12
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r4, zero, .LBB0_257
.LBB0_255:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r24
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_239
	j .LBB0_258
.LBB0_256:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r1
	and r14, r4, r3
	setlt.u r4, r13, r12
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_255
.LBB0_257:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r1
	and r25, r4, r3
	setlt.u r4, r13, r24
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_239
.LBB0_258:                              # %vector.body70
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r1
	and r2, r2, r3
	j .LBB0_239
.LBB0_259:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 24
	.loc	1 310 7 is_stmt 1               # parallel-rne.mlir:310:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_261
.LBB0_260:                              # %middle.block65
                                        #   in Loop: Header=BB0_261 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 27
	load.d r[11:12], -1720(r30)             # 8-byte Folded Reload
	addli r9, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 318 9 is_stmt 1               # parallel-rne.mlir:318:9
	setlt.ul r2, r[11:12], r[4:5]
	addli.d r[4:5], r[11:12], 1
	beq r2, zero, .LBB0_289
.LBB0_261:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_270 Depth 3
                                        #       Child Loop BB0_264 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[18:19], r[4:5], r9
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	store.d r[4:5], -1720(r30)              # 8-byte Folded Spill
	bneq r6, r10, .LBB0_268
# %bb.262:                              # %scalar.ph59.preheader
                                        #   in Loop: Header=BB0_261 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_264
.LBB0_263:                              # %scalar.ph59
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	setlt.ul r5, r[11:12], r[16:17]
	.loc	1 334 13 is_stmt 1              # parallel-rne.mlir:334:13
	add.s r2, r6, r2
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r4, 0(r2)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	beq r5, zero, .LBB0_260
.LBB0_264:                              # %scalar.ph59
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_261 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[4:5], r[11:12], r[18:19]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r5, 0(r4)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r9, r5, r26
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r4, r28, r9
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_266
# %bb.265:                              # %scalar.ph59
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r5, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r9, r13, r9
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r9, zero, .LBB0_263
	j .LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r5, r4
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r9, r13, r9
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r9, zero, .LBB0_263
.LBB0_267:                              # %scalar.ph59
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r1
	and r4, r4, r3
	j .LBB0_263
.LBB0_268:                              # %vector.body61.preheader
                                        #   in Loop: Header=BB0_261 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_270
.LBB0_269:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	add.s r5, r6, r15
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	seteq.d r4, r[20:21], r[7:8]
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r2, 12(r5)
	stores.w r25, 8(r5)
	stores.w r14, 4(r5)
	stores.w r22, 0(r5)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	bneq r4, zero, .LBB0_260
.LBB0_270:                              # %vector.body61
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_261 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[4:5], r[20:21], r[18:19]
	slli r15, r4, 2
	add.s r22, r10, r15
	loads.w r23, 12(r22)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r24, r23, r26
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r2, r28, r24
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_272
# %bb.271:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_270 Depth=3
	lui r2, 1024
	or r2, r23, r2
.LBB0_273:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r11, 8(r22)
	and r12, r11, r26
	setlt.u r4, r28, r12
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_275
# %bb.274:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r11, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_270 Depth=3
	lui r4, 1024
	or r25, r11, r4
.LBB0_276:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r9, 4(r22)
	and r4, r9, r26
	setlt.u r5, r28, r4
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r5, zero, .LBB0_278
# %bb.277:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_270 Depth=3
	lui r5, 1024
	or r14, r9, r5
.LBB0_279:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r5, 0(r22)
	and r27, r5, r26
	setlt.u r22, r28, r27
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r22, zero, .LBB0_281
# %bb.280:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r5, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r27, r13, r27
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r27, zero, .LBB0_282
	j .LBB0_283
.LBB0_281:                              #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r5, r22
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r27, r13, r27
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r27, zero, .LBB0_283
.LBB0_282:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r5, 16
	andi r22, r22, 1
	add.s r5, r5, r22
	add.s r5, r5, r1
	and r22, r5, r3
.LBB0_283:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	setlt.u r4, r13, r4
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r4, zero, .LBB0_286
# %bb.284:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r12
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r4, zero, .LBB0_287
.LBB0_285:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r13, r24
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r4, zero, .LBB0_269
	j .LBB0_288
.LBB0_286:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r1
	and r14, r4, r3
	setlt.u r4, r13, r12
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r4, zero, .LBB0_285
.LBB0_287:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r1
	and r25, r4, r3
	setlt.u r4, r13, r24
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r4, zero, .LBB0_269
.LBB0_288:                              # %vector.body61
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r1
	and r2, r2, r3
	j .LBB0_269
.LBB0_289:                              # %.sink.split50
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	addli r21, zero, 2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_290:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	loadli.w r2,  -1732(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.291:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	addli r16, zero, 14
	addli r17, zero, 64
	.loc	1 386 7 is_stmt 1               # parallel-rne.mlir:386:7
	bneq r12, zero, .LBB0_7
# %bb.292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	loadli.w r4,  -1776(r30)                # 4-byte Folded Reload
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	loadli.w r11,  -1772(r30)               # 4-byte Folded Reload
	zext_int2long r[14:15], zero
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	zext_int2long r[4:5], r4
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	sext_int2long r[11:12], r11
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	min.ul r[9:10], r[4:5], r[7:8]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[14:15], r[11:12], r[14:15]
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	addli.d r[9:10], r[9:10], 128
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	max.ul r[9:10], r[9:10], r[4:5]
	sub.sl r[4:5], r[9:10], r[4:5]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	addli.d r[9:10], r[14:15], 32
	zext_int2long r[14:15], r2
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	addli r2, zero, 12
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	min.ul r[4:5], r[4:5], r[7:8]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	max.sl r[7:8], r[9:10], r[11:12]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	load.d r[9:10], -1768(r30)              # 8-byte Folded Reload
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	sub.sl r[7:8], r[7:8], r[11:12]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	load.d r[11:12], 16(r30)
	sll.d r[9:10], r[9:10], r16
	addli r16, zero, 1
	add.ul r[9:10], r[11:12], r[9:10]
	load.d r[11:12], -1760(r30)             # 8-byte Folded Reload
	xwait r2, 0
	ori r2, r6, 64
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.sl r[6:7], r[7:8], r[14:15]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	sll.d r[11:12], r[11:12], r16
	add.ul r[9:10], r[9:10], r[11:12]
	addli r11, zero, 5
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	lock zero, r11
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r16, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r2, r17, 3
	addli r2, r4, 31
	slli r4, r4, 1
	addli r5, zero, 128
	srli r2, r2, 5
	dma_cfg r17, r5, r2, 4
	andi r2, r4, 62
	addli r4, zero, 512
	dma_cfg r4, r4, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_6
.LBB0_293:                              # %._crit_edge
	.loc	1 388 5                         # parallel-rne.mlir:388:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_295
# %bb.294:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 388 5                         # parallel-rne.mlir:388:5
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
.LBB0_295:
	.loc	1 389 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:389:5
	addli sp, sp, 1784
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
	.long	1848                            # 0x738
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-64fwnljt" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
