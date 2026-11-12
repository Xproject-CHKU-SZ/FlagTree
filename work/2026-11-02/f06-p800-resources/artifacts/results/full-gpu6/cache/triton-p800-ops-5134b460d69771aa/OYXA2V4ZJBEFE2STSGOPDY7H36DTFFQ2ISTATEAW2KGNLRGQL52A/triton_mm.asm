	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-sru9zxiv" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1944
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r12
	addli r30, sp, 1880
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	storeli.w zero, -380(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -1024(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -1404(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -1792(r30)
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r3, r2, r3
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r3, r1, .LBB0_296
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	sext_int2long r[6:7], r1
	lui r1, 15
	addli r14, zero, 1
	lui r17, 522240
	lui r18, 1048560
	addli r8, zero, 0
	store.d r[2:3], -1872(r30)              # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1047552
	store.d r[1:2], -1880(r30)              # 8-byte Folded Spill
	lui r1, 1023
	lui r2, 522239
	ori r1, r1, 4095
	ori r5, r2, 4095
	storeli.w r1, -1804(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r13, r1, 4095
	lui r1, 7
	ori r4, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -1832(r30)               # 8-byte Folded Reload
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	load.d r[1:2], -1872(r30)               # 8-byte Folded Reload
	loadli.w r8,  -1836(r30)                # 4-byte Folded Reload
	addli r14, zero, 1
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[1:2]
	beq r1, zero, .LBB0_296
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_78 Depth 3
                                        #     Child Loop BB0_45 Depth 2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_48 Depth 3
                                        #     Child Loop BB0_106 Depth 2
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_109 Depth 3
                                        #     Child Loop BB0_172 Depth 2
                                        #       Child Loop BB0_181 Depth 3
                                        #       Child Loop BB0_175 Depth 3
                                        #     Child Loop BB0_203 Depth 2
                                        #       Child Loop BB0_212 Depth 3
                                        #       Child Loop BB0_206 Depth 3
                                        #     Child Loop BB0_142 Depth 2
                                        #       Child Loop BB0_151 Depth 3
                                        #       Child Loop BB0_145 Depth 3
                                        #     Child Loop BB0_264 Depth 2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_267 Depth 3
                                        #     Child Loop BB0_234 Depth 2
                                        #       Child Loop BB0_243 Depth 3
                                        #       Child Loop BB0_237 Depth 3
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r1, zero, 4
	bneq r12, r1, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	addli r3, zero, 2
	store.d r[6:7], -1832(r30)              # 8-byte Folded Spill
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	loadli.w r10,  -1792(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r25,  -1404(r30)
	addli r9, zero, 0
	addli r26, zero, 0
	mod.s r3, r8, r3
	addli r8, r8, 1
	div.s r1, r6, r1
	addli r7, zero, 32
	storeli.w r8, -1836(r30)                # 4-byte Folded Spill
	addli r8, zero, 8
	slli r16, r3, 14
	lui r3, 8
	div.s r1, r1, r2
	addli r2, zero, 256
	div.s r2, r1, r2
	slli r6, r2, 3
	slli r2, r2, 8
	sub.s r7, r7, r6
	sub.s r2, r1, r2
	min.s r7, r7, r8
	mod.s r1, r1, r7
	div.s r2, r2, r7
	add.s r7, r16, r3
	add.s r1, r6, r1
	slli r3, r2, 6
	storeli.w r3, -1864(r30)                # 4-byte Folded Spill
	slli r6, r1, 6
	zext_int2long r[19:20], r1
	zext_int2long r[2:3], r2
	addli r1, zero, 6
	sll.d r[11:12], r[2:3], r1
	addli r1, zero, 17
	storeli.w r6, -1860(r30)                # 4-byte Folded Spill
	store.d r[19:20], -1856(r30)            # 8-byte Folded Spill
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	sll.d r[14:15], r[11:12], r14
	load.d r[11:12], -1880(r30)             # 8-byte Folded Reload
	sll.d r[1:2], r[19:20], r1
	store.d r[14:15], -1848(r30)            # 8-byte Folded Spill
	and.d r[21:22], r[1:2], r[11:12]
	load.d r[11:12], 8(r30)
	add.ul r[11:12], r[11:12], r[14:15]
	store.d r[11:12], -1816(r30)            # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 16
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r11
	addli r19, zero, 64
	addli r15, zero, 5
	dma_cfg r28, r28, zero, 0
	ori r3, r3, 64
	dma_cfg zero, r24, zero, 2
	add.s r3, r6, r3
	addli r6, zero, 2
	dma_cfg r3, r23, r19, 3
	addli r23, zero, 128
	addli r3, zero, 4096
	dma_cfg r23, r19, r28, 4
	dma_cfg r23, r3, r14, 5
	addli r3, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r28, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 7
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
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
	dma_cfg zero, zero, r12, 10
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
	dma_cfg r28, r28, zero, 0
	dma_cfg r28, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r19, 3
	dma_cfg r23, zero, r28, 4
	dma_cfg r23, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r28, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r6, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r3,  -1024(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r6,  -380(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r3, r3, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r6, r6, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r3, -1024(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r6, -380(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r26, r26, 1
	addli r3, zero, 64
	beq r26, r3, .LBB0_35
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r9, r9, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	zext_int2long r[11:12], r26
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	addli r3, zero, 5
	addli.d r[23:24], r[21:22], 0
	sll.d r[14:15], r[11:12], r3
	loadli.w r3,  -1804(r30)                # 4-byte Folded Reload
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	add.ul r[19:20], r[14:15], r[1:2]
	zext_int2long r[14:15], r3
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	setlt.ul r3, r[14:15], r[19:20]
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	bneq r3, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[23:24], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	add.s r3, r10, r9
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	addli r6, zero, 96
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r15, r25, r9
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	addli r8, zero, 94
	addli r14, zero, 1984
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r6, r3, r6
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r8, r15, r8
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r3, r3, 1
	zext_int2long r[27:28], r14
	storeli.w r3, -1792(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r3, r15, 1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	store.d r[27:28], -1800(r30)            # 8-byte Folded Spill
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r27
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r3, -1404(r30)
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r3, zero, 2
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r14, r6, 13
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r6, r8, 13
	lui r8, 16
	add.s r8, r6, r8
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r27, r3, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r28, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	bneq r27, r28, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r3, zero, 2048
	sub.sl r[11:12], r[19:20], r[23:24]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[19:20], r[19:20], r28
	zext_int2long r[23:24], r3
	addli r3, zero, 93
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[11:12], r[11:12], r[23:24]
	load.d r[23:24], -1800(r30)             # 8-byte Folded Reload
	min.sl r[23:24], r[11:12], r[23:24]
	sub.sl r[11:12], r[23:24], r[11:12]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	load.d r[23:24], 0(r30)
	addli r14, r11, 64
	addli r11, zero, 4
	addli r12, zero, 17
	add.ul r[23:24], r[23:24], r[19:20]
	addli r20, zero, 3
	xwait r20, 0
	blt.s r3, r15, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r15, zero, 5
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r3, zero, 2
	addli r19, zero, 128
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 7
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
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
	dma_cfg zero, zero, r12, 10
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
	dma_cfg r28, r28, zero, 0
	dma_cfg r28, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r3, 3
	dma_cfg r19, zero, r28, 4
	dma_cfg r19, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r28, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r3, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r6, zero, 5
	addli r11, zero, 4
	xwait r3, 0
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 64
	ds_cfg r3, zero, 0
	addli r3, zero, 32
	ds_cfg r3, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r6, zero, 13
	shuffle_batch r14, r8, r3, 1
	addli r3, zero, 3
	unlock zero
	xsignal r3, 0
	xsignal r11, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r3,  -1024(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r19,  -380(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r6, zero, 160
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r8, zero, 94
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r6, r3, r6
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r8, r19, r8
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r3, r3, 1
	storeli.w r3, -1024(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r3, r19, 1
	storeli.w r3, -380(r30)
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r3, zero, 7
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r15, r6, 13
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r6, r8, 13
	lui r8, 204
	add.s r8, r6, r8
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r27, r3, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 6
	bneq r27, r3, .LBB0_29
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r20, zero, 17
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	load.d r[14:15], -1816(r30)             # 8-byte Folded Reload
	addli r24, zero, 7
	addli r3, zero, 93
	sll.d r[11:12], r[11:12], r20
	xwait r24, 0
	add.ul r[14:15], r[14:15], r[11:12]
	addli r12, zero, 4
	blt.s r3, r19, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r23, zero, 5
	addli r19, zero, 1
	addli r11, zero, 2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r3, zero, 3
	lock zero, r23
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r24, 10
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
	dma_cfg zero, zero, r20, 10
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r3, 3
	addli r3, zero, 128
	dma_cfg r3, zero, r11, 4
	addli r3, zero, 256
	addli r11, zero, 32
	dma_cfg r3, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r3, 204
	addli r19, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r12
	addli r23, zero, 64
	addli r28, zero, 128
	addli r11, zero, 4096
	ori r3, r3, 64
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r15, zero, 2
	add.s r3, r6, r3
	addli r6, zero, 32
	dma_cfg r3, r14, r23, 3
	addli r14, zero, 2
	addli r3, zero, 256
	addli r15, zero, 5
	dma_cfg r28, r23, r14, 4
	dma_cfg r3, r11, r6, 5
	addli r11, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 6
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r24, 10
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
	addli r11, zero, 18
	dma_cfg zero, zero, r20, 10
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r23, 3
	dma_cfg r28, zero, r14, 4
	dma_cfg r3, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r12, 0
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	addli r3, zero, 6
	addli r6, zero, 64
	xwait r3, 0
	addli r3, zero, 9
	xwait r3, 0
	addli r3, zero, 2
	lock zero, zero
	ds_cfg r3, zero, 0
	addli r3, zero, 32
	ds_cfg r6, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r6, zero, 13
	shuffle_coa r15, r8, r3, 2
	addli r3, zero, 7
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
	xsignal r3, 0
.LBB0_28:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 4
	j .LBB0_13
.LBB0_29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 4
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r27, r3, .LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r3, 0
	addli r3, zero, 8
	addli r6, zero, 1
	addli r8, zero, 64
	xwait r3, 0
	addli r3, zero, 32
	lock zero, r6
	mm_cfg r8, r3, r8, 0
	addli r3, zero, 2
	mm_cfg r3, r3, r6, 2
	beq r9, zero, .LBB0_33
# %bb.31:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r7, r14, r15, 8
	j .LBB0_34
.LBB0_32:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r26, r26, 1
	addli r3, zero, 64
	bneq r26, r3, .LBB0_14
	j .LBB0_37
.LBB0_33:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r7, r14, r15, 8
.LBB0_34:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r26, r26, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	unlock r3
	addli r3, zero, 5
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r3, zero, 64
	bneq r26, r3, .LBB0_14
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r27, r11, .LBB0_37
.LBB0_36:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -1820(r30)              # 4-byte Folded Spill
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	xsignal r1, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	j .LBB0_40
.LBB0_37:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r12
	addli r1, zero, 3
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	bneq r12, r1, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	storeli.w r1, -1820(r30)                # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -1820(r30)              # 4-byte Folded Spill
.LBB0_40:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r1, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r1
	addli r1, zero, 64
	sync_core
	zext_int2long r[25:26], r1
	addli r1, zero, 63
	zext_int2long r[9:10], r1
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	beq r12, zero, .LBB0_73
# %bb.41:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r1, zero, 2
	beq r12, r1, .LBB0_104
.LBB0_42:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	bneq r12, r1, .LBB0_135
# %bb.43:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_45
.LBB0_44:                               # %middle.block99
                                        #   in Loop: Header=BB0_45 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[11:12], -1816(r30)             # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 171 9 is_stmt 1               # parallel-rne.mlir:171:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_134
.LBB0_45:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	store.d r[2:3], -1816(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r1
	bneq r16, r7, .LBB0_52
# %bb.46:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_45 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_48
.LBB0_47:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	setlt.ul r3, r[11:12], r[9:10]
	.loc	1 187 13 is_stmt 1              # parallel-rne.mlir:187:13
	add.s r1, r16, r1
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r2, 0(r1)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	beq r3, zero, .LBB0_44
.LBB0_48:                               # %scalar.ph93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[1:2], r[11:12], r[21:22]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r6, 0(r2)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r3, r6, r13
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r2, r17, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r2, zero, .LBB0_50
# %bb.49:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r3, r5, r3
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r3, zero, .LBB0_47
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r3, r5, r3
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r3, zero, .LBB0_47
.LBB0_51:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_47
.LBB0_52:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_45 Depth=2
	zext_int2long r[14:15], zero
	j .LBB0_54
.LBB0_53:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	add.s r2, r16, r8
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	seteq.d r1, r[14:15], r[25:26]
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r6, 12(r2)
	stores.w r24, 8(r2)
	stores.w r12, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	bneq r1, zero, .LBB0_44
.LBB0_54:                               # %vector.body95
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[1:2], r[14:15], r[21:22]
	slli r8, r1, 2
	add.s r20, r7, r8
	loads.w r28, 12(r20)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r23, r28, r13
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r1, r17, r23
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_56
# %bb.55:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r28, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_54 Depth=3
	lui r1, 1024
	or r6, r28, r1
.LBB0_57:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r27, 8(r20)
	and r11, r27, r13
	setlt.u r1, r17, r11
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_59
# %bb.58:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r27, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_54 Depth=3
	lui r1, 1024
	or r24, r27, r1
.LBB0_60:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r19, 4(r20)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r2, zero, .LBB0_62
# %bb.61:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	j .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_54 Depth=3
	lui r2, 1024
	or r12, r19, r2
.LBB0_63:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r2, 0(r20)
	and r3, r2, r13
	setlt.u r20, r17, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r20, zero, .LBB0_65
# %bb.64:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r3, r5, r3
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r3, zero, .LBB0_66
	j .LBB0_67
.LBB0_65:                               #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r2, r20
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r3, r5, r3
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r3, zero, .LBB0_67
.LBB0_66:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r20, r2, r18
.LBB0_67:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	setlt.u r1, r5, r1
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r1, zero, .LBB0_70
# %bb.68:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r1, zero, .LBB0_71
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r23
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r1, zero, .LBB0_53
	j .LBB0_72
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r12, r1, r18
	setlt.u r1, r5, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r1, zero, .LBB0_69
.LBB0_71:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r24, r1, r18
	setlt.u r1, r5, r23
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r1, zero, .LBB0_53
.LBB0_72:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_53
.LBB0_73:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_75
.LBB0_74:                               # %middle.block117
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	load.d r[11:12], -1816(r30)             # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_103
.LBB0_75:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_78 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	store.d r[2:3], -1816(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r1
	bneq r16, r7, .LBB0_82
# %bb.76:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_78
.LBB0_77:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r3, r[11:12], r[9:10]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r1, r16, r1
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r2, 0(r1)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r3, zero, .LBB0_74
.LBB0_78:                               # %scalar.ph111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[1:2], r[11:12], r[21:22]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r6, 0(r2)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r3, r6, r13
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r2, r17, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r2, zero, .LBB0_80
# %bb.79:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r3, r5, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_77
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r3, r5, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_77
.LBB0_81:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_77
.LBB0_82:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	zext_int2long r[14:15], zero
	j .LBB0_84
.LBB0_83:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r2, r16, r8
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r1, r[14:15], r[25:26]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r28, 12(r2)
	stores.w r27, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r1, zero, .LBB0_74
.LBB0_84:                               # %vector.body113
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[1:2], r[14:15], r[21:22]
	slli r8, r1, 2
	add.s r20, r7, r8
	loads.w r6, 12(r20)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r23, r6, r13
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r1, r17, r23
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_86
# %bb.85:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r6, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_84 Depth=3
	lui r1, 1024
	or r28, r6, r1
.LBB0_87:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r24, 8(r20)
	and r11, r24, r13
	setlt.u r1, r17, r11
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_89
# %bb.88:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r24, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_84 Depth=3
	lui r1, 1024
	or r27, r24, r1
.LBB0_90:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r12, 4(r20)
	and r1, r12, r13
	setlt.u r2, r17, r1
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r2, zero, .LBB0_92
# %bb.91:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r12, 0
	j .LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_84 Depth=3
	lui r2, 1024
	or r19, r12, r2
.LBB0_93:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r2, 0(r20)
	and r3, r2, r13
	setlt.u r20, r17, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r20, zero, .LBB0_95
# %bb.94:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r3, r5, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r3, zero, .LBB0_96
	j .LBB0_97
.LBB0_95:                               #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r2, r20
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r3, r5, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_97
.LBB0_96:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r20, r2, r18
.LBB0_97:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	setlt.u r1, r5, r1
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r1, zero, .LBB0_100
# %bb.98:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r1, zero, .LBB0_101
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r23
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_83
	j .LBB0_102
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r4
	and r19, r1, r18
	setlt.u r1, r5, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_99
.LBB0_101:                              # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r23
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_83
.LBB0_102:                              # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r4
	and r28, r1, r18
	j .LBB0_83
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r1, zero, 2
	bneq r12, r1, .LBB0_42
.LBB0_104:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 192 7 is_stmt 1               # parallel-rne.mlir:192:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_106
.LBB0_105:                              # %middle.block108
                                        #   in Loop: Header=BB0_106 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[11:12], -1816(r30)             # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 199 9 is_stmt 1               # parallel-rne.mlir:199:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_134
.LBB0_106:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_109 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	store.d r[2:3], -1816(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r1
	bneq r16, r7, .LBB0_113
# %bb.107:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_106 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_109
.LBB0_108:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	setlt.ul r3, r[11:12], r[9:10]
	.loc	1 215 13 is_stmt 1              # parallel-rne.mlir:215:13
	add.s r1, r16, r1
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r2, 0(r1)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	beq r3, zero, .LBB0_105
.LBB0_109:                              # %scalar.ph102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[1:2], r[11:12], r[21:22]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r6, 0(r2)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r3, r6, r13
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r2, r17, r3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_111
# %bb.110:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r3, r5, r3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r3, zero, .LBB0_108
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r3, r5, r3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r3, zero, .LBB0_108
.LBB0_112:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_108
.LBB0_113:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_106 Depth=2
	zext_int2long r[14:15], zero
	j .LBB0_115
.LBB0_114:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	add.s r2, r16, r8
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	seteq.d r1, r[14:15], r[25:26]
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r6, 12(r2)
	stores.w r24, 8(r2)
	stores.w r12, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	bneq r1, zero, .LBB0_105
.LBB0_115:                              # %vector.body104
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[1:2], r[14:15], r[21:22]
	slli r8, r1, 2
	add.s r20, r7, r8
	loads.w r28, 12(r20)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r23, r28, r13
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r1, r17, r23
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r1, zero, .LBB0_117
# %bb.116:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r28, 0
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_115 Depth=3
	lui r1, 1024
	or r6, r28, r1
.LBB0_118:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r27, 8(r20)
	and r11, r27, r13
	setlt.u r1, r17, r11
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r1, zero, .LBB0_120
# %bb.119:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r27, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_115 Depth=3
	lui r1, 1024
	or r24, r27, r1
.LBB0_121:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r19, 4(r20)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_123
# %bb.122:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_115 Depth=3
	lui r2, 1024
	or r12, r19, r2
.LBB0_124:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r2, 0(r20)
	and r3, r2, r13
	setlt.u r20, r17, r3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r20, zero, .LBB0_126
# %bb.125:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r3, r5, r3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r3, zero, .LBB0_127
	j .LBB0_128
.LBB0_126:                              #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r2, r20
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r3, r5, r3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r3, zero, .LBB0_128
.LBB0_127:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r20, r2, r18
.LBB0_128:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	setlt.u r1, r5, r1
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r1, zero, .LBB0_131
# %bb.129:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r1, zero, .LBB0_132
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r23
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r1, zero, .LBB0_114
	j .LBB0_133
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r12, r1, r18
	setlt.u r1, r5, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r1, zero, .LBB0_130
.LBB0_132:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r24, r1, r18
	setlt.u r1, r5, r23
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r1, zero, .LBB0_114
.LBB0_133:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_114
.LBB0_134:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	loadli.w r1,  -1820(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_170
# %bb.136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r1, zero, 4
	beq r12, r1, .LBB0_201
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	addli r1, zero, 7
	beq r12, r1, .LBB0_232
.LBB0_138:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 6
	beq r12, r1, .LBB0_262
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	bneq r12, r1, .LBB0_293
# %bb.140:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_142
.LBB0_141:                              # %middle.block
                                        #   in Loop: Header=BB0_142 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[11:12], -1816(r30)             # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 283 9 is_stmt 1               # parallel-rne.mlir:283:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_292
.LBB0_142:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_151 Depth 3
                                        #       Child Loop BB0_145 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	store.d r[2:3], -1816(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r1
	bneq r16, r7, .LBB0_149
# %bb.143:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_142 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_145
.LBB0_144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	setlt.ul r3, r[11:12], r[9:10]
	.loc	1 299 13 is_stmt 1              # parallel-rne.mlir:299:13
	add.s r1, r16, r1
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r2, 0(r1)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	beq r3, zero, .LBB0_141
.LBB0_145:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[1:2], r[11:12], r[21:22]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r6, 0(r2)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r3, r6, r13
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r2, r17, r3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r2, zero, .LBB0_147
# %bb.146:                              # %scalar.ph
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r3, r5, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_144
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r3, r5, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_144
.LBB0_148:                              # %scalar.ph
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_144
.LBB0_149:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_142 Depth=2
	zext_int2long r[14:15], zero
	j .LBB0_151
.LBB0_150:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	add.s r2, r16, r8
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	seteq.d r1, r[14:15], r[25:26]
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r6, 12(r2)
	stores.w r24, 8(r2)
	stores.w r12, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	bneq r1, zero, .LBB0_141
.LBB0_151:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[1:2], r[14:15], r[21:22]
	slli r8, r1, 2
	add.s r20, r7, r8
	loads.w r28, 12(r20)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r23, r28, r13
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r1, r17, r23
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r1, zero, .LBB0_153
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r28, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_151 Depth=3
	lui r1, 1024
	or r6, r28, r1
.LBB0_154:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	loads.w r27, 8(r20)
	and r11, r27, r13
	setlt.u r1, r17, r11
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r1, zero, .LBB0_156
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r27, 0
	j .LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_151 Depth=3
	lui r1, 1024
	or r24, r27, r1
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	loads.w r19, 4(r20)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r2, zero, .LBB0_159
# %bb.158:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	j .LBB0_160
.LBB0_159:                              #   in Loop: Header=BB0_151 Depth=3
	lui r2, 1024
	or r12, r19, r2
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	loads.w r2, 0(r20)
	and r3, r2, r13
	setlt.u r20, r17, r3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r20, zero, .LBB0_166
# %bb.161:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r3, r5, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_163
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r20, r2, r18
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	setlt.u r1, r5, r1
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r1, zero, .LBB0_167
# %bb.164:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r1, zero, .LBB0_168
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r23
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r1, zero, .LBB0_150
	j .LBB0_169
.LBB0_166:                              #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r2, r20
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r3, r5, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r3, zero, .LBB0_162
	j .LBB0_163
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r12, r1, r18
	setlt.u r1, r5, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r1, zero, .LBB0_165
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r24, r1, r18
	setlt.u r1, r5, r23
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r1, zero, .LBB0_150
.LBB0_169:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_150
.LBB0_170:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_172
.LBB0_171:                              # %middle.block90
                                        #   in Loop: Header=BB0_172 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[11:12], -1816(r30)             # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 227 9 is_stmt 1               # parallel-rne.mlir:227:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_200
.LBB0_172:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_181 Depth 3
                                        #       Child Loop BB0_175 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	store.d r[2:3], -1816(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r1
	bneq r16, r7, .LBB0_179
# %bb.173:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_172 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_175
.LBB0_174:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	setlt.ul r3, r[11:12], r[9:10]
	.loc	1 243 13 is_stmt 1              # parallel-rne.mlir:243:13
	add.s r1, r16, r1
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r2, 0(r1)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	beq r3, zero, .LBB0_171
.LBB0_175:                              # %scalar.ph84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[1:2], r[11:12], r[21:22]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r6, 0(r2)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r3, r6, r13
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r2, r17, r3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r2, zero, .LBB0_177
# %bb.176:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r3, r5, r3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_174
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r3, r5, r3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_174
.LBB0_178:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_174
.LBB0_179:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_172 Depth=2
	zext_int2long r[14:15], zero
	j .LBB0_181
.LBB0_180:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r2, r16, r8
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	seteq.d r1, r[14:15], r[25:26]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r6, 12(r2)
	stores.w r24, 8(r2)
	stores.w r12, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	bneq r1, zero, .LBB0_171
.LBB0_181:                              # %vector.body86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[1:2], r[14:15], r[21:22]
	slli r8, r1, 2
	add.s r20, r7, r8
	loads.w r28, 12(r20)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r23, r28, r13
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r1, r17, r23
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r1, zero, .LBB0_183
# %bb.182:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r28, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_181 Depth=3
	lui r1, 1024
	or r6, r28, r1
.LBB0_184:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	loads.w r27, 8(r20)
	and r11, r27, r13
	setlt.u r1, r17, r11
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r1, zero, .LBB0_186
# %bb.185:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r27, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_181 Depth=3
	lui r1, 1024
	or r24, r27, r1
.LBB0_187:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	loads.w r19, 4(r20)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r2, zero, .LBB0_189
# %bb.188:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	j .LBB0_190
.LBB0_189:                              #   in Loop: Header=BB0_181 Depth=3
	lui r2, 1024
	or r12, r19, r2
.LBB0_190:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	loads.w r2, 0(r20)
	and r3, r2, r13
	setlt.u r20, r17, r3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r20, zero, .LBB0_196
# %bb.191:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r3, r5, r3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_193
.LBB0_192:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r20, r2, r18
.LBB0_193:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	setlt.u r1, r5, r1
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r1, zero, .LBB0_197
# %bb.194:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r1, zero, .LBB0_198
.LBB0_195:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r23
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r1, zero, .LBB0_180
	j .LBB0_199
.LBB0_196:                              #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r2, r20
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r3, r5, r3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r3, zero, .LBB0_192
	j .LBB0_193
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r12, r1, r18
	setlt.u r1, r5, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r1, zero, .LBB0_195
.LBB0_198:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r24, r1, r18
	setlt.u r1, r5, r23
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r1, zero, .LBB0_180
.LBB0_199:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_180
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	mfence { sm }
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r1, zero, 4
	bneq r12, r1, .LBB0_137
.LBB0_201:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_203
.LBB0_202:                              # %middle.block81
                                        #   in Loop: Header=BB0_203 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[11:12], -1816(r30)             # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 255 9 is_stmt 1               # parallel-rne.mlir:255:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_231
.LBB0_203:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_212 Depth 3
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	store.d r[2:3], -1816(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r1
	bneq r16, r7, .LBB0_210
# %bb.204:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_203 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_206
.LBB0_205:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	setlt.ul r3, r[11:12], r[9:10]
	.loc	1 271 13 is_stmt 1              # parallel-rne.mlir:271:13
	add.s r1, r16, r1
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r2, 0(r1)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	beq r3, zero, .LBB0_202
.LBB0_206:                              # %scalar.ph75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_203 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[1:2], r[11:12], r[21:22]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r6, 0(r2)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r3, r6, r13
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r2, r17, r3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r2, zero, .LBB0_208
# %bb.207:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r3, r5, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r3, zero, .LBB0_205
	j .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r3, r5, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r3, zero, .LBB0_205
.LBB0_209:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_205
.LBB0_210:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_203 Depth=2
	zext_int2long r[14:15], zero
	j .LBB0_212
.LBB0_211:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	add.s r2, r16, r8
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	seteq.d r1, r[14:15], r[25:26]
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r6, 12(r2)
	stores.w r24, 8(r2)
	stores.w r12, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	bneq r1, zero, .LBB0_202
.LBB0_212:                              # %vector.body77
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_203 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[1:2], r[14:15], r[21:22]
	slli r8, r1, 2
	add.s r20, r7, r8
	loads.w r28, 12(r20)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r23, r28, r13
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r1, r17, r23
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r1, zero, .LBB0_214
# %bb.213:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r28, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_212 Depth=3
	lui r1, 1024
	or r6, r28, r1
.LBB0_215:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	loads.w r27, 8(r20)
	and r11, r27, r13
	setlt.u r1, r17, r11
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r1, zero, .LBB0_217
# %bb.216:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r27, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_212 Depth=3
	lui r1, 1024
	or r24, r27, r1
.LBB0_218:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	loads.w r19, 4(r20)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r2, zero, .LBB0_220
# %bb.219:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_212 Depth=3
	lui r2, 1024
	or r12, r19, r2
.LBB0_221:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	loads.w r2, 0(r20)
	and r3, r2, r13
	setlt.u r20, r17, r3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r20, zero, .LBB0_227
# %bb.222:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r3, r5, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r3, zero, .LBB0_224
.LBB0_223:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r20, r2, r18
.LBB0_224:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	setlt.u r1, r5, r1
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r1, zero, .LBB0_228
# %bb.225:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r1, zero, .LBB0_229
.LBB0_226:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r23
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r1, zero, .LBB0_211
	j .LBB0_230
.LBB0_227:                              #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r2, r20
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r3, r5, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r3, zero, .LBB0_223
	j .LBB0_224
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r12, r1, r18
	setlt.u r1, r5, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r1, zero, .LBB0_226
.LBB0_229:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r24, r1, r18
	setlt.u r1, r5, r23
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r1, zero, .LBB0_211
.LBB0_230:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_211
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	mfence { sm }
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	addli r1, zero, 7
	bneq r12, r1, .LBB0_138
.LBB0_232:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 332 7 is_stmt 1               # parallel-rne.mlir:332:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_234
.LBB0_233:                              # %middle.block72
                                        #   in Loop: Header=BB0_234 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[2:3], -1816(r30)               # 8-byte Folded Reload
	.loc	1 339 9 is_stmt 1               # parallel-rne.mlir:339:9
	setlt.ul r1, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_292
.LBB0_234:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_243 Depth 3
                                        #       Child Loop BB0_237 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	store.d r[2:3], -1816(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r1
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	bneq r16, r7, .LBB0_241
# %bb.235:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_234 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_237
.LBB0_236:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	setlt.ul r3, r[11:12], r[9:10]
	.loc	1 355 13 is_stmt 1              # parallel-rne.mlir:355:13
	add.s r1, r16, r1
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r2, 0(r1)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	beq r3, zero, .LBB0_233
.LBB0_237:                              # %scalar.ph66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[1:2], r[11:12], r[21:22]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r6, 0(r2)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r3, r6, r13
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r2, r17, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r2, zero, .LBB0_239
# %bb.238:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r3, r5, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r3, zero, .LBB0_236
	j .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r3, r5, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r3, zero, .LBB0_236
.LBB0_240:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_236
.LBB0_241:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_234 Depth=2
	zext_int2long r[14:15], zero
	j .LBB0_243
.LBB0_242:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	add.s r2, r16, r8
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	seteq.d r1, r[14:15], r[25:26]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r6, 12(r2)
	stores.w r24, 8(r2)
	stores.w r12, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	bneq r1, zero, .LBB0_233
.LBB0_243:                              # %vector.body68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[1:2], r[14:15], r[21:22]
	slli r8, r1, 2
	add.s r20, r7, r8
	loads.w r28, 12(r20)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r23, r28, r13
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r1, r17, r23
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r1, zero, .LBB0_245
# %bb.244:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r28, 0
	j .LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_243 Depth=3
	lui r1, 1024
	or r6, r28, r1
.LBB0_246:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r27, 8(r20)
	and r11, r27, r13
	setlt.u r1, r17, r11
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r1, zero, .LBB0_248
# %bb.247:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r27, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_243 Depth=3
	lui r1, 1024
	or r24, r27, r1
.LBB0_249:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r19, 4(r20)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r2, zero, .LBB0_251
# %bb.250:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_243 Depth=3
	lui r2, 1024
	or r12, r19, r2
.LBB0_252:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r2, 0(r20)
	and r3, r2, r13
	setlt.u r20, r17, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r20, zero, .LBB0_254
# %bb.253:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r3, r5, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r3, zero, .LBB0_255
	j .LBB0_256
.LBB0_254:                              #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r2, r20
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r3, r5, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r3, zero, .LBB0_256
.LBB0_255:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r20, r2, r18
.LBB0_256:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	setlt.u r1, r5, r1
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r1, zero, .LBB0_259
# %bb.257:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r1, zero, .LBB0_260
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r23
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_242
	j .LBB0_261
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r12, r1, r18
	setlt.u r1, r5, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_258
.LBB0_260:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r24, r1, r18
	setlt.u r1, r5, r23
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_242
.LBB0_261:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_242
.LBB0_262:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 48
	.loc	1 304 7 is_stmt 1               # parallel-rne.mlir:304:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_264
.LBB0_263:                              # %middle.block63
                                        #   in Loop: Header=BB0_264 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[11:12], -1816(r30)             # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 311 9 is_stmt 1               # parallel-rne.mlir:311:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_292
.LBB0_264:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_267 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	store.d r[2:3], -1816(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[2:3], r1
	bneq r16, r7, .LBB0_271
# %bb.265:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_264 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_267
.LBB0_266:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	setlt.ul r3, r[11:12], r[9:10]
	.loc	1 327 13 is_stmt 1              # parallel-rne.mlir:327:13
	add.s r1, r16, r1
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r2, 0(r1)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	beq r3, zero, .LBB0_263
.LBB0_267:                              # %scalar.ph57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[1:2], r[11:12], r[21:22]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r6, 0(r2)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r3, r6, r13
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r2, r17, r3
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r2, zero, .LBB0_269
# %bb.268:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r3, r5, r3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r3, zero, .LBB0_266
	j .LBB0_270
.LBB0_269:                              #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r3, r5, r3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r3, zero, .LBB0_266
.LBB0_270:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_266
.LBB0_271:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_264 Depth=2
	zext_int2long r[14:15], zero
	j .LBB0_273
.LBB0_272:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	add.s r2, r16, r8
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	seteq.d r1, r[14:15], r[25:26]
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r6, 12(r2)
	stores.w r24, 8(r2)
	stores.w r12, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	bneq r1, zero, .LBB0_263
.LBB0_273:                              # %vector.body59
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[1:2], r[14:15], r[21:22]
	slli r8, r1, 2
	add.s r20, r7, r8
	loads.w r28, 12(r20)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r23, r28, r13
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r1, r17, r23
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r1, zero, .LBB0_275
# %bb.274:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r28, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_273 Depth=3
	lui r1, 1024
	or r6, r28, r1
.LBB0_276:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r27, 8(r20)
	and r11, r27, r13
	setlt.u r1, r17, r11
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r1, zero, .LBB0_278
# %bb.277:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r27, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_273 Depth=3
	lui r1, 1024
	or r24, r27, r1
.LBB0_279:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r19, 4(r20)
	and r1, r19, r13
	setlt.u r2, r17, r1
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r2, zero, .LBB0_281
# %bb.280:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	j .LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_273 Depth=3
	lui r2, 1024
	or r12, r19, r2
.LBB0_282:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r2, 0(r20)
	and r3, r2, r13
	setlt.u r20, r17, r3
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r20, zero, .LBB0_284
# %bb.283:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r3, r5, r3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r3, zero, .LBB0_285
	j .LBB0_286
.LBB0_284:                              #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r2, r20
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r3, r5, r3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r3, zero, .LBB0_286
.LBB0_285:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r20, r2, r18
.LBB0_286:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	setlt.u r1, r5, r1
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r1, zero, .LBB0_289
# %bb.287:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r1, zero, .LBB0_290
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r23
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_272
	j .LBB0_291
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r4
	and r12, r1, r18
	setlt.u r1, r5, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_288
.LBB0_290:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r24, r1, r18
	setlt.u r1, r5, r23
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_272
.LBB0_291:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_272
.LBB0_292:                              # %.sink.split51
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_293:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 360 7 is_stmt 1               # parallel-rne.mlir:360:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	loadli.w r1,  -1820(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.294:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	bneq r12, zero, .LBB0_7
# %bb.295:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	loadli.w r1,  -1864(r30)                # 4-byte Folded Reload
	load.d r[10:11], -1800(r30)             # 8-byte Folded Reload
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	loadli.w r3,  -1860(r30)                # 4-byte Folded Reload
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[14:15], 16(r30)
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	zext_int2long r[1:2], r1
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sext_int2long r[8:9], r3
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	addli r3, zero, 18
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.ul r[6:7], r[1:2], r[10:11]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.sl r[10:11], r[8:9], r[10:11]
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	addli.d r[6:7], r[6:7], 64
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	addli.d r[6:7], r[10:11], 64
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[10:11], -1856(r30)             # 8-byte Folded Reload
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	max.sl r[6:7], r[6:7], r[8:9]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.ul r[1:2], r[1:2], r[25:26]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sll.d r[10:11], r[10:11], r3
	addli r3, zero, 12
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	sub.sl r[6:7], r[6:7], r[8:9]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[8:9], -1848(r30)               # 8-byte Folded Reload
	add.ul r[10:11], r[14:15], r[10:11]
	xwait r3, 0
	ori r3, r16, 64
	addli r14, zero, 64
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[6:7], r[6:7], r[25:26]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	add.ul r[8:9], r[10:11], r[8:9]
	addli r11, zero, 5
	addli r10, zero, 1
	lock zero, r11
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r10, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r3, r14, 3
	addli r3, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r3, r3, 5
	andi r1, r1, 62
	dma_cfg r14, r2, r3, 4
	addli r2, zero, 256
	addli r3, zero, 4096
	dma_cfg r3, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_6
.LBB0_296:                              # %._crit_edge
	.loc	1 380 5                         # parallel-rne.mlir:380:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_298
# %bb.297:
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
.LBB0_298:
	.loc	1 381 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:381:5
	addli sp, sp, 1880
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
	.long	1944                            # 0x798
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-sru9zxiv" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
