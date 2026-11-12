	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-d3670b40" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1952
	addli r1, zero, 1
.Ltmp0:
	.loc	1 34 5 prologue_end             # parallel-rne.mlir:34:5
	core_id r16
	addli r30, sp, 1888
	xsignal_mode_cfg r1
	beq r16, zero, .LBB0_2
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
	addli r3, zero, 3
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 13
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 5
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 9
	addli r3, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -380(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -1024(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -1404(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -1792(r30)
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
	.loc	1 49 11                         # parallel-rne.mlir:49:11
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
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r4, -1788(r30)
	storeli.w r4, -1784(r30)
	storeli.w r4, -1780(r30)
	storeli.w r4, -1776(r30)
	storeli.w r4, -1772(r30)
	storeli.w r4, -1768(r30)
	storeli.w r4, -1764(r30)
	storeli.w r4, -1760(r30)
	storeli.w r4, -1756(r30)
	storeli.w r4, -1752(r30)
	storeli.w r4, -1748(r30)
	storeli.w r4, -1744(r30)
	storeli.w r4, -1740(r30)
	storeli.w r4, -1736(r30)
	storeli.w r4, -1732(r30)
	storeli.w r4, -1728(r30)
	storeli.w r4, -1724(r30)
	storeli.w r4, -1720(r30)
	storeli.w r4, -1716(r30)
	storeli.w r4, -1712(r30)
	storeli.w r4, -1708(r30)
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
	addli r17, zero, 128
	addli r23, zero, 2
	addli r13, zero, 4
	lui r12, 522240
	lui r4, 1048560
	addli r10, zero, 0
	store.d r[2:3], -1880(r30)              # 8-byte Folded Spill
	addli r2, zero, 4095
	lui r3, 1024
	lui r1, 1048572
	store.d r[1:2], -1888(r30)              # 8-byte Folded Spill
	lui r2, 7
	lui r1, 524287
	ori r28, r2, 4095
	lui r2, 522239
	ori r1, r1, 4095
	ori r5, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	addli r2, zero, 11
	addli r17, zero, 128
	addli r23, zero, 2
	xsignal r2, 0
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], -1840(r30)               # 8-byte Folded Reload
	.loc	1 53 5 is_stmt 1                # parallel-rne.mlir:53:5
	load.d r[6:7], -1880(r30)               # 8-byte Folded Reload
	loadli.w r10,  -1844(r30)               # 4-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	setlt.sl r2, r[8:9], r[6:7]
	beq r2, zero, .LBB0_295
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_78 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_48 Depth 3
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
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	bneq r16, r13, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r6,  28(r30)
	mod.s r7, r10, r23
	addli r10, r10, 1
	store.d r[8:9], -1840(r30)              # 8-byte Folded Spill
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	loadli.w r21,  -1792(r30)
	addli r22, zero, 0
	storeli.w r10, -1844(r30)               # 4-byte Folded Spill
	addli r10, zero, 8
	div.s r2, r8, r2
	slli r15, r7, 14
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	loadli.w r7,  -1404(r30)
	div.s r2, r2, r6
	storeli.w r7, -1808(r30)                # 4-byte Folded Spill
	lui r7, 8
	div.s r6, r2, r17
	addli r17, zero, 0
	slli r8, r6, 3
	slli r6, r6, 7
	sub.s r9, r23, r8
	sub.s r6, r2, r6
	min.s r9, r9, r10
	add.s r10, r15, r7
	mod.s r2, r2, r9
	div.s r6, r6, r9
	add.s r2, r8, r2
	slli r7, r6, 6
	slli r8, r2, 6
	storeli.w r7, -1872(r30)                # 4-byte Folded Spill
	zext_int2long r[6:7], r6
	storeli.w r8, -1868(r30)                # 4-byte Folded Spill
	zext_int2long r[8:9], r2
	addli r2, zero, 6
	sll.d r[6:7], r[6:7], r2
	addli r2, zero, 13
	store.d r[8:9], -1864(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[8:9], r2
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r2, zero, 1
	sll.d r[8:9], r[6:7], r2
	load.d r[6:7], -1888(r30)               # 8-byte Folded Reload
	store.d r[13:14], -1816(r30)            # 8-byte Folded Spill
	store.d r[8:9], -1856(r30)              # 8-byte Folded Spill
	and.d r[6:7], r[13:14], r[6:7]
	store.d r[6:7], -1824(r30)              # 8-byte Folded Spill
	load.d r[6:7], 8(r30)
	add.ul r[6:7], r[6:7], r[8:9]
	store.d r[6:7], -1832(r30)              # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r6, 16
	addli r13, zero, 4
	addli r7, zero, 64
	ori r6, r6, 64
	.loc	1 104 9 is_stmt 1               # parallel-rne.mlir:104:9
	lock zero, r13
	dma_cfg r18, r18, zero, 0
	add.s r2, r2, r6
	dma_cfg zero, r9, zero, 2
	addli r6, zero, 5
	dma_cfg r2, r8, r7, 3
	addli r2, zero, 256
	dma_cfg r11, r7, r18, 4
	dma_cfg r11, r2, r16, 5
	addli r2, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r6, 10
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
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r7, 3
	dma_cfg r11, zero, r18, 4
	dma_cfg r11, zero, r16, 5
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r16
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r23, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r2,  -1024(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	loadli.w r6,  -380(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r2, r2, 1
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	addli r6, r6, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r2, -1024(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	storeli.w r6, -380(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r17, r17, 1
	beq r17, r13, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	addli r22, r22, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	zext_int2long r[8:9], r17
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	addli r2, zero, 5
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	load.d r[13:14], -1816(r30)             # 8-byte Folded Reload
	load.d r[24:25], -1824(r30)             # 8-byte Folded Reload
	addli r20, zero, 4
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	sll.d r[6:7], r[8:9], r2
	addli r2, zero, 16383
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	add.ul r[18:19], r[6:7], r[13:14]
	zext_int2long r[6:7], r2
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	setlt.ul r2, r[6:7], r[18:19]
	.loc	1 90 15                         # parallel-rne.mlir:90:15
	bneq r2, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[24:25], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	loadli.w r6,  -1808(r30)                # 4-byte Folded Reload
	.loc	1 100 15 is_stmt 1              # parallel-rne.mlir:100:15
	addli r7, zero, 94
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r2, r21, r22
	addli r11, zero, 64
	zext_int2long r[26:27], r11
	add.s r13, r6, r22
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	addli r6, zero, 96
	store.d r[26:27], -1800(r30)            # 8-byte Folded Spill
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	mod.s r7, r13, r7
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r6, r2, r6
	addli r2, r2, 1
	storeli.w r2, -1792(r30)
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	slli r2, r7, 13
	lui r7, 16
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r11, r6, 13
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	addli r6, r13, 1
	add.s r14, r2, r7
	storeli.w r6, -1404(r30)
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	beq r16, r23, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r23
	addli r16, zero, 1
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	bneq r23, r16, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 128
	sub.sl r[6:7], r[18:19], r[24:25]
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	sll.d r[18:19], r[18:19], r16
	addli r23, zero, 2
	zext_int2long r[8:9], r11
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[6:7], r[6:7], r[8:9]
	load.d r[8:9], -1800(r30)               # 8-byte Folded Reload
	min.sl r[8:9], r[6:7], r[8:9]
	sub.sl r[6:7], r[8:9], r[6:7]
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	load.d r[8:9], 0(r30)
	addli r16, r6, 64
	addli r6, zero, 93
	add.ul r[8:9], r[8:9], r[18:19]
	addli r19, zero, 3
	addli r18, zero, 1
	xwait r19, 0
	blt.s r6, r13, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 5
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	addli r6, zero, 6
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 7
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
	addli r6, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r6, 3
	dma_cfg r11, zero, r18, 4
	dma_cfg r11, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 105 9 is_stmt 1               # parallel-rne.mlir:105:9
	addli r2, zero, 5
	xwait r23, 0
	addli r6, zero, 32
	addli r13, zero, 4
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r23, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 3
	shuffle_batch r11, r14, r6, 1
	unlock zero
	xsignal r2, 0
	xsignal r13, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r2,  -1024(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	loadli.w r16,  -380(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r6, zero, 160
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	addli r7, zero, 94
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r6, r2, r6
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	mod.s r7, r16, r7
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r2, r2, 1
	storeli.w r2, -1024(r30)
	slli r13, r6, 13
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	slli r2, r7, 13
	addli r6, r16, 1
	lui r7, 204
	storeli.w r6, -380(r30)
	add.s r14, r2, r7
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r6, zero, 7
	beq r23, r6, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r6, zero, 6
	bneq r23, r6, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 16
	addli r18, zero, 7
	addli r23, zero, 2
	addli r13, zero, 4
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	sll.d r[6:7], r[8:9], r19
	load.d r[8:9], -1832(r30)               # 8-byte Folded Reload
	xwait r18, 0
	add.ul r[8:9], r[8:9], r[6:7]
	addli r7, zero, 128
	addli r6, zero, 93
	blt.s r6, r16, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r16, zero, 5
	addli r11, zero, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r6, zero, 3
	addli r20, zero, 256
	lock zero, r16
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 6
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 8
	dma_cfg zero, zero, r18, 10
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
	dma_cfg zero, zero, r19, 10
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
	addli r6, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r6, 3
	addli r6, zero, 32
	dma_cfg r7, zero, r23, 4
	dma_cfg r20, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r6, 204
	addli r11, zero, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	lock zero, r13
	addli r16, zero, 64
	addli r20, zero, 256
	ori r6, r6, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r9, zero, 2
	add.s r2, r2, r6
	addli r6, zero, 6
	dma_cfg r2, r8, r16, 3
	addli r9, zero, 32
	addli r2, zero, 2048
	addli r8, zero, 5
	dma_cfg r7, r16, r23, 4
	dma_cfg r20, r2, r9, 5
	addli r2, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r18, 10
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
	dma_cfg zero, zero, r19, 10
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
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r14, zero, r16, 3
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r16
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	dma_cfg r7, zero, r23, 4
	dma_cfg r20, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r6, 0
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 6
	addli r23, zero, 2
	addli r6, zero, 32
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r16
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r23, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 7
	shuffle_coa r13, r14, r6, 2
	addli r13, zero, 4
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r16
	addli r2, zero, 4
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	bneq r16, r2, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r2, 0
	addli r2, zero, 8
	addli r6, zero, 64
	addli r7, zero, 32
	addli r23, zero, 2
	xwait r2, 0
	addli r2, zero, 1
	lock zero, r2
	mm_cfg r6, r7, r6, 0
	mm_cfg r23, r23, r2, 2
	beq r22, zero, .LBB0_32
# %bb.30:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r10, r11, r13, 8
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r17, r17, 1
	addli r23, zero, 2
	addli r13, zero, 4
	bneq r17, r13, .LBB0_14
	j .LBB0_36
.LBB0_32:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	mm r10, r11, r13, 8
.LBB0_33:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 1
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r17, r17, 1
	addli r13, zero, 4
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	unlock r2
	addli r2, zero, 5
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	bneq r17, r13, .LBB0_14
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	bneq r16, r13, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -1816(r30)              # 4-byte Folded Spill
	xsignal r2, 0
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	bneq r16, r2, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	storeli.w r2, -1816(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -1816(r30)              # 4-byte Folded Spill
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
	addli r2, zero, 63
	sync_core
	zext_int2long r[22:23], r2
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	beq r16, zero, .LBB0_72
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	addli r2, zero, 2
	beq r16, r2, .LBB0_103
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	bneq r16, r2, .LBB0_134
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_44
.LBB0_43:                               # %middle.block99
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[8:9], -1808(r30)               # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 174 9 is_stmt 1               # parallel-rne.mlir:174:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_133
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	store.d r[6:7], -1808(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[6:7], r2
	bneq r15, r10, .LBB0_51
# %bb.45:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_48
.LBB0_46:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_48 Depth=3
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r28
	and r11, r6, r4
.LBB0_47:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	setlt.ul r6, r[8:9], r[22:23]
	.loc	1 190 13 is_stmt 1              # parallel-rne.mlir:190:13
	add.s r2, r15, r2
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r11, 0(r2)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	beq r6, zero, .LBB0_43
.LBB0_48:                               # %scalar.ph93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[6:7], r[8:9], r[26:27]
	slli r2, r6, 2
	add.s r6, r10, r2
	loads.w r13, 0(r6)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r6, r13, r1
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r7, r12, r6
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r7, zero, .LBB0_50
# %bb.49:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r6, r5, r6
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_47
	j .LBB0_46
.LBB0_50:                               #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r13, r3
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r6, r5, r6
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_47
	j .LBB0_46
.LBB0_51:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	load.d r[6:7], -1800(r30)               # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 4
	seteq.d r2, r[16:17], r[6:7]
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	add.s r6, r15, r14
	stores.w r20, 12(r6)
	stores.w r13, 8(r6)
	stores.w r9, 4(r6)
	stores.w r19, 0(r6)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	bneq r2, zero, .LBB0_43
.LBB0_53:                               # %vector.body95
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[6:7], r[16:17], r[26:27]
	slli r14, r6, 2
	add.s r19, r10, r14
	loads.w r2, 12(r19)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r8, r2, r1
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r6, r12, r8
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r6, zero, .LBB0_55
# %bb.54:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=3
	or r20, r2, r3
.LBB0_56:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r21, 8(r19)
	and r11, r21, r1
	setlt.u r6, r12, r11
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r6, zero, .LBB0_58
# %bb.57:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_53 Depth=3
	or r13, r21, r3
.LBB0_59:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r18, 4(r19)
	and r24, r18, r1
	setlt.u r6, r12, r24
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r6, zero, .LBB0_61
# %bb.60:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=3
	or r9, r18, r3
.LBB0_62:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r25, 0(r19)
	and r6, r25, r1
	setlt.u r7, r12, r6
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r7, zero, .LBB0_64
# %bb.63:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r6, r5, r6
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r6, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r25, r3
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r6, r5, r6
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_66
.LBB0_65:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r28
	and r19, r6, r4
.LBB0_66:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	setlt.u r6, r5, r24
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_69
# %bb.67:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r9, r6, r4
	setlt.u r6, r5, r11
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r6, zero, .LBB0_70
.LBB0_68:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r8
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_52
	j .LBB0_71
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r11
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_68
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r28
	and r13, r6, r4
	setlt.u r6, r5, r8
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r6, zero, .LBB0_52
.LBB0_71:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r28
	and r20, r2, r4
	j .LBB0_52
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 139 7 is_stmt 1               # parallel-rne.mlir:139:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block117
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	load.d r[8:9], -1808(r30)               # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 146 9 is_stmt 1               # parallel-rne.mlir:146:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_102
.LBB0_74:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_78 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 147 11 is_stmt 1              # parallel-rne.mlir:147:11
	store.d r[6:7], -1808(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[6:7], r2
	bneq r15, r10, .LBB0_81
# %bb.75:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_78
.LBB0_76:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_78 Depth=3
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r28
	and r11, r6, r4
.LBB0_77:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	setlt.ul r6, r[8:9], r[22:23]
	.loc	1 162 13 is_stmt 1              # parallel-rne.mlir:162:13
	add.s r2, r15, r2
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	stores.w r11, 0(r2)
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	beq r6, zero, .LBB0_73
.LBB0_78:                               # %scalar.ph111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	add.ul r[6:7], r[8:9], r[26:27]
	slli r2, r6, 2
	add.s r6, r10, r2
	loads.w r13, 0(r6)
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	and r6, r13, r1
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	setlt.u r7, r12, r6
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r7, zero, .LBB0_80
# %bb.79:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r6, r5, r6
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r6, zero, .LBB0_77
	j .LBB0_76
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r13, r3
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r6, r5, r6
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r6, zero, .LBB0_77
	j .LBB0_76
.LBB0_81:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 147 11 is_stmt 1              # parallel-rne.mlir:147:11
	load.d r[6:7], -1800(r30)               # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 4
	seteq.d r6, r[16:17], r[6:7]
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	add.s r7, r15, r14
	stores.w r2, 12(r7)
	stores.w r21, 8(r7)
	stores.w r18, 4(r7)
	stores.w r19, 0(r7)
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	bneq r6, zero, .LBB0_73
.LBB0_83:                               # %vector.body113
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	add.ul r[6:7], r[16:17], r[26:27]
	slli r14, r6, 2
	add.s r19, r10, r14
	loads.w r20, 12(r19)
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	and r8, r20, r1
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	setlt.u r2, r12, r8
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r2, zero, .LBB0_85
# %bb.84:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r20, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	or r2, r20, r3
.LBB0_86:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r13, 8(r19)
	and r11, r13, r1
	setlt.u r6, r12, r11
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r6, zero, .LBB0_88
# %bb.87:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r13, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	or r21, r13, r3
.LBB0_89:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r9, 4(r19)
	and r24, r9, r1
	setlt.u r6, r12, r24
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r6, zero, .LBB0_91
# %bb.90:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	or r18, r9, r3
.LBB0_92:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r25, 0(r19)
	and r6, r25, r1
	setlt.u r7, r12, r6
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r7, zero, .LBB0_94
# %bb.93:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r6, r5, r6
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	beq r6, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r25, r3
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r6, r5, r6
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r6, zero, .LBB0_96
.LBB0_95:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r28
	and r19, r6, r4
.LBB0_96:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r6, r5, r24
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r6, zero, .LBB0_99
# %bb.97:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r28
	and r18, r6, r4
	setlt.u r6, r5, r11
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	beq r6, zero, .LBB0_100
.LBB0_98:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r8
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r6, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r11
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r6, zero, .LBB0_98
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r28
	and r21, r6, r4
	setlt.u r6, r5, r8
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r6, zero, .LBB0_82
.LBB0_101:                              # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r28
	and r2, r2, r4
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r16
	addli r13, zero, 4
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	mfence { sm }
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	addli r2, zero, 2
	bneq r16, r2, .LBB0_41
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 195 7 is_stmt 1               # parallel-rne.mlir:195:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_105
.LBB0_104:                              # %middle.block108
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[8:9], -1808(r30)               # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 202 9 is_stmt 1               # parallel-rne.mlir:202:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_109 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	store.d r[6:7], -1808(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[6:7], r2
	bneq r15, r10, .LBB0_112
# %bb.106:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_109
.LBB0_107:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r28
	and r11, r6, r4
.LBB0_108:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	setlt.ul r6, r[8:9], r[22:23]
	.loc	1 218 13 is_stmt 1              # parallel-rne.mlir:218:13
	add.s r2, r15, r2
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r11, 0(r2)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	beq r6, zero, .LBB0_104
.LBB0_109:                              # %scalar.ph102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[6:7], r[8:9], r[26:27]
	slli r2, r6, 2
	add.s r6, r10, r2
	loads.w r13, 0(r6)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r6, r13, r1
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r7, r12, r6
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r7, zero, .LBB0_111
# %bb.110:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r6, r5, r6
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r6, zero, .LBB0_108
	j .LBB0_107
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r13, r3
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r6, r5, r6
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r6, zero, .LBB0_108
	j .LBB0_107
.LBB0_112:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	load.d r[6:7], -1800(r30)               # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 4
	seteq.d r2, r[16:17], r[6:7]
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	add.s r6, r15, r14
	stores.w r20, 12(r6)
	stores.w r13, 8(r6)
	stores.w r9, 4(r6)
	stores.w r19, 0(r6)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	bneq r2, zero, .LBB0_104
.LBB0_114:                              # %vector.body104
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[6:7], r[16:17], r[26:27]
	slli r14, r6, 2
	add.s r19, r10, r14
	loads.w r2, 12(r19)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r8, r2, r1
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r6, r12, r8
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r6, zero, .LBB0_116
# %bb.115:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	or r20, r2, r3
.LBB0_117:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r21, 8(r19)
	and r11, r21, r1
	setlt.u r6, r12, r11
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r6, zero, .LBB0_119
# %bb.118:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	or r13, r21, r3
.LBB0_120:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r18, 4(r19)
	and r24, r18, r1
	setlt.u r6, r12, r24
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r6, zero, .LBB0_122
# %bb.121:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	or r9, r18, r3
.LBB0_123:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r25, 0(r19)
	and r6, r25, r1
	setlt.u r7, r12, r6
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r7, zero, .LBB0_125
# %bb.124:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r6, r5, r6
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r6, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r25, r3
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r6, r5, r6
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r6, zero, .LBB0_127
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r28
	and r19, r6, r4
.LBB0_127:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r6, r5, r24
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r6, zero, .LBB0_130
# %bb.128:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r9, r6, r4
	setlt.u r6, r5, r11
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r6, zero, .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r8
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r6, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r11
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r6, zero, .LBB0_129
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r28
	and r13, r6, r4
	setlt.u r6, r5, r8
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r6, zero, .LBB0_113
.LBB0_132:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r28
	and r20, r2, r4
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r16
	addli r13, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	loadli.w r2,  -1816(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_165
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_137
.LBB0_136:                              # %middle.block90
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[8:9], -1808(r30)               # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 230 9 is_stmt 1               # parallel-rne.mlir:230:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_196
.LBB0_137:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_141 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	store.d r[6:7], -1808(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[6:7], r2
	bneq r15, r10, .LBB0_144
# %bb.138:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_141
.LBB0_139:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_141 Depth=3
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r28
	and r11, r6, r4
.LBB0_140:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	setlt.ul r6, r[8:9], r[22:23]
	.loc	1 246 13 is_stmt 1              # parallel-rne.mlir:246:13
	add.s r2, r15, r2
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r11, 0(r2)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	beq r6, zero, .LBB0_136
.LBB0_141:                              # %scalar.ph84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[6:7], r[8:9], r[26:27]
	slli r2, r6, 2
	add.s r6, r10, r2
	loads.w r13, 0(r6)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r6, r13, r1
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r7, r12, r6
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r7, zero, .LBB0_143
# %bb.142:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r6, r5, r6
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r6, zero, .LBB0_140
	j .LBB0_139
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r13, r3
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r6, r5, r6
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r6, zero, .LBB0_140
	j .LBB0_139
.LBB0_144:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_146
.LBB0_145:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	load.d r[6:7], -1800(r30)               # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 4
	seteq.d r2, r[16:17], r[6:7]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r6, r15, r14
	stores.w r20, 12(r6)
	stores.w r13, 8(r6)
	stores.w r9, 4(r6)
	stores.w r19, 0(r6)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	bneq r2, zero, .LBB0_136
.LBB0_146:                              # %vector.body86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[6:7], r[16:17], r[26:27]
	slli r14, r6, 2
	add.s r19, r10, r14
	loads.w r2, 12(r19)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r8, r2, r1
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r6, r12, r8
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r6, zero, .LBB0_148
# %bb.147:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_146 Depth=3
	or r20, r2, r3
.LBB0_149:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r21, 8(r19)
	and r11, r21, r1
	setlt.u r6, r12, r11
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r6, zero, .LBB0_151
# %bb.150:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_146 Depth=3
	or r13, r21, r3
.LBB0_152:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r18, 4(r19)
	and r24, r18, r1
	setlt.u r6, r12, r24
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r6, zero, .LBB0_154
# %bb.153:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_146 Depth=3
	or r9, r18, r3
.LBB0_155:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r25, 0(r19)
	and r6, r25, r1
	setlt.u r7, r12, r6
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r7, zero, .LBB0_164
# %bb.156:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r6, r5, r6
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r6, zero, .LBB0_158
.LBB0_157:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r28
	and r19, r6, r4
.LBB0_158:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	setlt.u r6, r5, r24
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r6, zero, .LBB0_161
# %bb.159:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r9, r6, r4
	setlt.u r6, r5, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r6, zero, .LBB0_162
.LBB0_160:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r8
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r6, zero, .LBB0_145
	j .LBB0_163
.LBB0_161:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r6, zero, .LBB0_160
.LBB0_162:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r28
	and r13, r6, r4
	setlt.u r6, r5, r8
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r6, zero, .LBB0_145
.LBB0_163:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r28
	and r20, r2, r4
	j .LBB0_145
.LBB0_164:                              #   in Loop: Header=BB0_146 Depth=3
	or r19, r25, r3
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r6, r5, r6
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r6, zero, .LBB0_157
	j .LBB0_158
.LBB0_165:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	bneq r16, r13, .LBB0_197
.LBB0_166:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_168
.LBB0_167:                              # %middle.block81
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 39
	load.d r[8:9], -1808(r30)               # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 258 9 is_stmt 1               # parallel-rne.mlir:258:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_230
.LBB0_168:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_172 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 259 11 is_stmt 1              # parallel-rne.mlir:259:11
	store.d r[6:7], -1808(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[6:7], r2
	bneq r15, r10, .LBB0_175
# %bb.169:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_172
.LBB0_170:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_172 Depth=3
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r28
	and r11, r6, r4
.LBB0_171:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	setlt.ul r6, r[8:9], r[22:23]
	.loc	1 274 13 is_stmt 1              # parallel-rne.mlir:274:13
	add.s r2, r15, r2
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 274 13                        # parallel-rne.mlir:274:13
	stores.w r11, 0(r2)
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	beq r6, zero, .LBB0_167
.LBB0_172:                              # %scalar.ph75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	add.ul r[6:7], r[8:9], r[26:27]
	slli r2, r6, 2
	add.s r6, r10, r2
	loads.w r13, 0(r6)
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	and r6, r13, r1
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	setlt.u r7, r12, r6
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r7, zero, .LBB0_174
# %bb.173:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	.loc	1 271 19 is_stmt 1              # parallel-rne.mlir:271:19
	setlt.u r6, r5, r6
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r6, zero, .LBB0_171
	j .LBB0_170
.LBB0_174:                              #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r13, r3
	.loc	1 271 19 is_stmt 1              # parallel-rne.mlir:271:19
	setlt.u r6, r5, r6
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r6, zero, .LBB0_171
	j .LBB0_170
.LBB0_175:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 259 11 is_stmt 1              # parallel-rne.mlir:259:11
	load.d r[6:7], -1800(r30)               # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 4
	seteq.d r2, r[16:17], r[6:7]
	.loc	1 274 13                        # parallel-rne.mlir:274:13
	add.s r6, r15, r14
	stores.w r20, 12(r6)
	stores.w r13, 8(r6)
	stores.w r9, 4(r6)
	stores.w r19, 0(r6)
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	bneq r2, zero, .LBB0_167
.LBB0_177:                              # %vector.body77
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	add.ul r[6:7], r[16:17], r[26:27]
	slli r14, r6, 2
	add.s r19, r10, r14
	loads.w r2, 12(r19)
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	and r8, r2, r1
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	setlt.u r6, r12, r8
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r6, zero, .LBB0_179
# %bb.178:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_177 Depth=3
	or r20, r2, r3
.LBB0_180:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r21, 8(r19)
	and r11, r21, r1
	setlt.u r6, r12, r11
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r6, zero, .LBB0_182
# %bb.181:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_177 Depth=3
	or r13, r21, r3
.LBB0_183:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r18, 4(r19)
	and r24, r18, r1
	setlt.u r6, r12, r24
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r6, zero, .LBB0_185
# %bb.184:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_177 Depth=3
	or r9, r18, r3
.LBB0_186:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r25, 0(r19)
	and r6, r25, r1
	setlt.u r7, r12, r6
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r7, zero, .LBB0_195
# %bb.187:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	.loc	1 271 19 is_stmt 1              # parallel-rne.mlir:271:19
	setlt.u r6, r5, r6
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r6, zero, .LBB0_189
.LBB0_188:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r28
	and r19, r6, r4
.LBB0_189:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	setlt.u r6, r5, r24
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r6, zero, .LBB0_192
# %bb.190:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r9, r6, r4
	setlt.u r6, r5, r11
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	beq r6, zero, .LBB0_193
.LBB0_191:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r8
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r6, zero, .LBB0_176
	j .LBB0_194
.LBB0_192:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r11
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r6, zero, .LBB0_191
.LBB0_193:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r28
	and r13, r6, r4
	setlt.u r6, r5, r8
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r6, zero, .LBB0_176
.LBB0_194:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r28
	and r20, r2, r4
	j .LBB0_176
.LBB0_195:                              #   in Loop: Header=BB0_177 Depth=3
	or r19, r25, r3
	.loc	1 271 19 is_stmt 1              # parallel-rne.mlir:271:19
	setlt.u r6, r5, r6
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	beq r6, zero, .LBB0_188
	j .LBB0_189
.LBB0_196:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r16
	addli r13, zero, 4
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	mfence { sm }
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	beq r16, r13, .LBB0_166
.LBB0_197:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 279 7                         # parallel-rne.mlir:279:7
	addli r2, zero, 7
	beq r16, r2, .LBB0_231
.LBB0_198:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	beq r16, r2, .LBB0_261
# %bb.199:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	bneq r16, r2, .LBB0_292
# %bb.200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 279 7                         # parallel-rne.mlir:279:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_202
.LBB0_201:                              # %middle.block
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[8:9], -1808(r30)               # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 286 9 is_stmt 1               # parallel-rne.mlir:286:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_291
.LBB0_202:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 287 11 is_stmt 1              # parallel-rne.mlir:287:11
	store.d r[6:7], -1808(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[6:7], r2
	bneq r15, r10, .LBB0_209
# %bb.203:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_206
.LBB0_204:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r28
	and r11, r6, r4
.LBB0_205:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 287 11                        # parallel-rne.mlir:287:11
	setlt.ul r6, r[8:9], r[22:23]
	.loc	1 302 13 is_stmt 1              # parallel-rne.mlir:302:13
	add.s r2, r15, r2
	.loc	1 287 11                        # parallel-rne.mlir:287:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 302 13                        # parallel-rne.mlir:302:13
	stores.w r11, 0(r2)
	.loc	1 287 11                        # parallel-rne.mlir:287:11
	beq r6, zero, .LBB0_201
.LBB0_206:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	add.ul r[6:7], r[8:9], r[26:27]
	slli r2, r6, 2
	add.s r6, r10, r2
	loads.w r13, 0(r6)
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	and r6, r13, r1
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	setlt.u r7, r12, r6
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r7, zero, .LBB0_208
# %bb.207:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	.loc	1 299 19 is_stmt 1              # parallel-rne.mlir:299:19
	setlt.u r6, r5, r6
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r6, zero, .LBB0_205
	j .LBB0_204
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r13, r3
	.loc	1 299 19 is_stmt 1              # parallel-rne.mlir:299:19
	setlt.u r6, r5, r6
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r6, zero, .LBB0_205
	j .LBB0_204
.LBB0_209:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 287 11 is_stmt 1              # parallel-rne.mlir:287:11
	load.d r[6:7], -1800(r30)               # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 4
	seteq.d r2, r[16:17], r[6:7]
	.loc	1 302 13                        # parallel-rne.mlir:302:13
	add.s r6, r15, r14
	stores.w r20, 12(r6)
	stores.w r13, 8(r6)
	stores.w r9, 4(r6)
	stores.w r19, 0(r6)
	.loc	1 287 11                        # parallel-rne.mlir:287:11
	bneq r2, zero, .LBB0_201
.LBB0_211:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	add.ul r[6:7], r[16:17], r[26:27]
	slli r14, r6, 2
	add.s r19, r10, r14
	loads.w r2, 12(r19)
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	and r8, r2, r1
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	setlt.u r6, r12, r8
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r6, zero, .LBB0_213
# %bb.212:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	or r20, r2, r3
.LBB0_214:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r21, 8(r19)
	and r11, r21, r1
	setlt.u r6, r12, r11
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r6, zero, .LBB0_216
# %bb.215:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	or r13, r21, r3
.LBB0_217:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r18, 4(r19)
	and r24, r18, r1
	setlt.u r6, r12, r24
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r6, zero, .LBB0_219
# %bb.218:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	or r9, r18, r3
.LBB0_220:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r25, 0(r19)
	and r6, r25, r1
	setlt.u r7, r12, r6
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r7, zero, .LBB0_229
# %bb.221:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	.loc	1 299 19 is_stmt 1              # parallel-rne.mlir:299:19
	setlt.u r6, r5, r6
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r6, zero, .LBB0_223
.LBB0_222:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r28
	and r19, r6, r4
.LBB0_223:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r6, r5, r24
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r6, zero, .LBB0_226
# %bb.224:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r9, r6, r4
	setlt.u r6, r5, r11
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	beq r6, zero, .LBB0_227
.LBB0_225:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r8
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r6, zero, .LBB0_210
	j .LBB0_228
.LBB0_226:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r11
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r6, zero, .LBB0_225
.LBB0_227:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r28
	and r13, r6, r4
	setlt.u r6, r5, r8
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r6, zero, .LBB0_210
.LBB0_228:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r28
	and r20, r2, r4
	j .LBB0_210
.LBB0_229:                              #   in Loop: Header=BB0_211 Depth=3
	or r19, r25, r3
	.loc	1 299 19 is_stmt 1              # parallel-rne.mlir:299:19
	setlt.u r6, r5, r6
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	beq r6, zero, .LBB0_222
	j .LBB0_223
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r16
	addli r13, zero, 4
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	mfence { sm }
	.loc	1 279 7                         # parallel-rne.mlir:279:7
	addli r2, zero, 7
	bneq r16, r2, .LBB0_198
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 335 7 is_stmt 1               # parallel-rne.mlir:335:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_233
.LBB0_232:                              # %middle.block72
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[6:7], -1808(r30)               # 8-byte Folded Reload
	.loc	1 342 9 is_stmt 1               # parallel-rne.mlir:342:9
	setlt.ul r2, r[6:7], r[22:23]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_237 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[6:7], -1808(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[6:7], r2
	.loc	1 343 11 is_stmt 1              # parallel-rne.mlir:343:11
	bneq r15, r10, .LBB0_240
# %bb.234:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_237
.LBB0_235:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r28
	and r11, r6, r4
.LBB0_236:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 343 11                        # parallel-rne.mlir:343:11
	setlt.ul r6, r[8:9], r[22:23]
	.loc	1 358 13 is_stmt 1              # parallel-rne.mlir:358:13
	add.s r2, r15, r2
	.loc	1 343 11                        # parallel-rne.mlir:343:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	stores.w r11, 0(r2)
	.loc	1 343 11                        # parallel-rne.mlir:343:11
	beq r6, zero, .LBB0_232
.LBB0_237:                              # %scalar.ph66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	add.ul r[6:7], r[8:9], r[26:27]
	slli r2, r6, 2
	add.s r6, r10, r2
	loads.w r13, 0(r6)
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	and r6, r13, r1
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	setlt.u r7, r12, r6
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r7, zero, .LBB0_239
# %bb.238:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r6, r5, r6
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r6, zero, .LBB0_236
	j .LBB0_235
.LBB0_239:                              #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r13, r3
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r6, r5, r6
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r6, zero, .LBB0_236
	j .LBB0_235
.LBB0_240:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 343 11 is_stmt 1              # parallel-rne.mlir:343:11
	load.d r[6:7], -1800(r30)               # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 4
	seteq.d r2, r[16:17], r[6:7]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	add.s r6, r15, r14
	stores.w r20, 12(r6)
	stores.w r13, 8(r6)
	stores.w r9, 4(r6)
	stores.w r19, 0(r6)
	.loc	1 343 11                        # parallel-rne.mlir:343:11
	bneq r2, zero, .LBB0_232
.LBB0_242:                              # %vector.body68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	add.ul r[6:7], r[16:17], r[26:27]
	slli r14, r6, 2
	add.s r19, r10, r14
	loads.w r2, 12(r19)
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	and r8, r2, r1
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	setlt.u r6, r12, r8
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r6, zero, .LBB0_244
# %bb.243:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	or r20, r2, r3
.LBB0_245:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r21, 8(r19)
	and r11, r21, r1
	setlt.u r6, r12, r11
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r6, zero, .LBB0_247
# %bb.246:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	or r13, r21, r3
.LBB0_248:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r18, 4(r19)
	and r24, r18, r1
	setlt.u r6, r12, r24
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r6, zero, .LBB0_250
# %bb.249:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	or r9, r18, r3
.LBB0_251:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r25, 0(r19)
	and r6, r25, r1
	setlt.u r7, r12, r6
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r7, zero, .LBB0_253
# %bb.252:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r6, r5, r6
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r6, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r25, r3
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r6, r5, r6
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r6, zero, .LBB0_255
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r28
	and r19, r6, r4
.LBB0_255:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r6, r5, r24
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r6, zero, .LBB0_258
# %bb.256:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r9, r6, r4
	setlt.u r6, r5, r11
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r6, zero, .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r8
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r6, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r11
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r6, zero, .LBB0_257
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r28
	and r13, r6, r4
	setlt.u r6, r5, r8
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r6, zero, .LBB0_241
.LBB0_260:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r28
	and r20, r2, r4
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 48
	.loc	1 307 7 is_stmt 1               # parallel-rne.mlir:307:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_263
.LBB0_262:                              # %middle.block63
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	load.d r[8:9], -1808(r30)               # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 314 9 is_stmt 1               # parallel-rne.mlir:314:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_267 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 315 11 is_stmt 1              # parallel-rne.mlir:315:11
	store.d r[6:7], -1808(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[6:7], r2
	bneq r15, r10, .LBB0_270
# %bb.264:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_267
.LBB0_265:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	srli r6, r13, 16
	andi r6, r6, 1
	add.s r6, r13, r6
	add.s r6, r6, r28
	and r11, r6, r4
.LBB0_266:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	setlt.ul r6, r[8:9], r[22:23]
	.loc	1 330 13 is_stmt 1              # parallel-rne.mlir:330:13
	add.s r2, r15, r2
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 330 13                        # parallel-rne.mlir:330:13
	stores.w r11, 0(r2)
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	beq r6, zero, .LBB0_262
.LBB0_267:                              # %scalar.ph57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.ul r[6:7], r[8:9], r[26:27]
	slli r2, r6, 2
	add.s r6, r10, r2
	loads.w r13, 0(r6)
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	and r6, r13, r1
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	setlt.u r7, r12, r6
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r7, zero, .LBB0_269
# %bb.268:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	.loc	1 327 19 is_stmt 1              # parallel-rne.mlir:327:19
	setlt.u r6, r5, r6
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r6, zero, .LBB0_266
	j .LBB0_265
.LBB0_269:                              #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r13, r3
	.loc	1 327 19 is_stmt 1              # parallel-rne.mlir:327:19
	setlt.u r6, r5, r6
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r6, zero, .LBB0_266
	j .LBB0_265
.LBB0_270:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 315 11 is_stmt 1              # parallel-rne.mlir:315:11
	load.d r[6:7], -1800(r30)               # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 4
	seteq.d r2, r[16:17], r[6:7]
	.loc	1 330 13                        # parallel-rne.mlir:330:13
	add.s r6, r15, r14
	stores.w r20, 12(r6)
	stores.w r13, 8(r6)
	stores.w r9, 4(r6)
	stores.w r19, 0(r6)
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	bneq r2, zero, .LBB0_262
.LBB0_272:                              # %vector.body59
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.ul r[6:7], r[16:17], r[26:27]
	slli r14, r6, 2
	add.s r19, r10, r14
	loads.w r2, 12(r19)
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	and r8, r2, r1
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	setlt.u r6, r12, r8
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r6, zero, .LBB0_274
# %bb.273:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r2, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	or r20, r2, r3
.LBB0_275:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r21, 8(r19)
	and r11, r21, r1
	setlt.u r6, r12, r11
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r6, zero, .LBB0_277
# %bb.276:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r21, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	or r13, r21, r3
.LBB0_278:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r18, 4(r19)
	and r24, r18, r1
	setlt.u r6, r12, r24
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r6, zero, .LBB0_280
# %bb.279:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	or r9, r18, r3
.LBB0_281:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r25, 0(r19)
	and r6, r25, r1
	setlt.u r7, r12, r6
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r7, zero, .LBB0_283
# %bb.282:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	.loc	1 327 19 is_stmt 1              # parallel-rne.mlir:327:19
	setlt.u r6, r5, r6
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	beq r6, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r25, r3
	.loc	1 327 19 is_stmt 1              # parallel-rne.mlir:327:19
	setlt.u r6, r5, r6
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r6, zero, .LBB0_285
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r28
	and r19, r6, r4
.LBB0_285:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r6, r5, r24
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r6, zero, .LBB0_288
# %bb.286:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r9, r6, r4
	setlt.u r6, r5, r11
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	beq r6, zero, .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r8
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r6, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r11
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r6, zero, .LBB0_287
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r28
	and r13, r6, r4
	setlt.u r6, r5, r8
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r6, zero, .LBB0_271
.LBB0_290:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r28
	and r20, r2, r4
	j .LBB0_271
.LBB0_291:                              # %.sink.split51
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r16
	addli r13, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 363 7 is_stmt 1               # parallel-rne.mlir:363:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	loadli.w r2,  -1816(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r17, zero, 128
	addli r23, zero, 2
	.loc	1 381 7 is_stmt 1               # parallel-rne.mlir:381:7
	bneq r16, zero, .LBB0_7
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	loadli.w r2,  -1872(r30)                # 4-byte Folded Reload
	load.d r[20:21], -1800(r30)             # 8-byte Folded Reload
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	load.d r[13:14], -1864(r30)             # 8-byte Folded Reload
	load.d r[18:19], 16(r30)
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	zext_int2long r[6:7], r2
	addli r2, zero, 960
	zext_int2long r[8:9], r2
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	loadli.w r2,  -1868(r30)                # 4-byte Folded Reload
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.ul r[8:9], r[6:7], r[8:9]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	sext_int2long r[10:11], r2
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	addli r2, zero, 17
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	addli.d r[8:9], r[8:9], 64
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	sll.d r[13:14], r[13:14], r2
	addli r2, zero, 12
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	max.ul r[8:9], r[8:9], r[6:7]
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	add.ul r[13:14], r[18:19], r[13:14]
	addli r18, zero, 5
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	sub.sl r[6:7], r[8:9], r[6:7]
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	min.sl r[8:9], r[10:11], r[20:21]
	addli.d r[8:9], r[8:9], 64
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	min.ul r[6:7], r[6:7], r[20:21]
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	max.sl r[8:9], r[8:9], r[10:11]
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	sub.sl r[8:9], r[8:9], r[10:11]
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	load.d r[10:11], -1856(r30)             # 8-byte Folded Reload
	xwait r2, 0
	lock zero, r18
	ori r2, r15, 64
	addli r15, zero, 64
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	min.sl r[8:9], r[8:9], r[20:21]
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	add.ul r[10:11], r[13:14], r[10:11]
	addli r14, zero, 1
	addli r13, zero, 4
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r14, zero, 1
	dma_cfg r11, zero, zero, 2
	dma_cfg r10, r2, r15, 3
	addli r2, r6, 31
	slli r6, r6, 1
	addli r7, zero, 2048
	srli r2, r2, 5
	dma_cfg r15, r17, r2, 4
	andi r2, r6, 62
	addli r6, zero, 256
	dma_cfg r7, r6, r8, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r18
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 383 5                         # parallel-rne.mlir:383:5
	xsignal zero, 0
	bneq r16, zero, .LBB0_297
# %bb.296:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 383 5                         # parallel-rne.mlir:383:5
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
	.loc	1 384 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:384:5
	addli sp, sp, 1888
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
	.long	1952                            # 0x7a0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-d3670b40" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
