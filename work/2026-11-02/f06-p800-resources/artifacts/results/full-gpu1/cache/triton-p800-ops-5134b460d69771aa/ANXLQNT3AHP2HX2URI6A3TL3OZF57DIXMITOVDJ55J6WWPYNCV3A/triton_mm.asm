	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-hyvxrnjo" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1888
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r21
	addli r30, sp, 1824
	xsignal_mode_cfg r1
	beq r21, zero, .LBB0_2
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	storeli.w zero, -364(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -1008(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -1372(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -1760(r30)
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
	storeli.w r4, -380(r30)
	storeli.w r4, -376(r30)
	storeli.w r4, -372(r30)
	storeli.w r4, -368(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	storeli.w r4, -1404(r30)
	storeli.w r4, -1400(r30)
	storeli.w r4, -1396(r30)
	storeli.w r4, -1392(r30)
	storeli.w r4, -1388(r30)
	storeli.w r4, -1384(r30)
	storeli.w r4, -1380(r30)
	storeli.w r4, -1376(r30)
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
	sext_int2long r[6:7], r1
	lui r1, 524287
	addli r22, zero, 6
	addli r14, zero, 4
	lui r28, 522240
	storeli.w zero, -1784(r30)              # 4-byte Folded Spill
	store.d r[2:3], -1824(r30)              # 8-byte Folded Spill
	ori r26, r1, 4095
	lui r1, 7
	lui r2, 522239
	lui r3, 1048560
	ori r1, r1, 4095
	ori r13, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r2, zero, 11
	addli r14, zero, 4
	xsignal r2, 0
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -1792(r30)               # 8-byte Folded Reload
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	load.d r[4:5], -1824(r30)               # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r2, r[6:7], r[4:5]
	beq r2, zero, .LBB0_293
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #     Child Loop BB0_103 Depth 2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_135 Depth 2
                                        #       Child Loop BB0_144 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #     Child Loop BB0_166 Depth 2
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_170 Depth 3
                                        #     Child Loop BB0_200 Depth 2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #     Child Loop BB0_261 Depth 2
                                        #       Child Loop BB0_270 Depth 3
                                        #       Child Loop BB0_265 Depth 3
                                        #     Child Loop BB0_231 Depth 2
                                        #       Child Loop BB0_240 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	bneq r21, r14, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r5,  28(r30)
	store.d r[6:7], -1792(r30)              # 8-byte Folded Spill
	addli r8, zero, 1
	addli r9, zero, 8
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	load.d r[11:12], 8(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r16,  -1372(r30)
	addli r4, zero, 0
	div.s r2, r6, r2
	loadli.w r7,  -1784(r30)                # 4-byte Folded Reload
	mod.s r6, r7, r14
	addli r7, r7, 1
	addli r14, zero, 1
	storeli.w r7, -1784(r30)                # 4-byte Folded Spill
	div.s r2, r2, r5
	addli r5, zero, 128
	slli r6, r6, 14
	div.s r5, r2, r5
	slli r7, r5, 3
	slli r5, r5, 7
	sub.s r8, r8, r7
	sub.s r5, r2, r5
	min.s r8, r8, r9
	lui r9, 16
	mod.s r2, r2, r8
	div.s r8, r5, r8
	add.s r15, r6, r9
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	loadli.w r5,  -1760(r30)
	add.s r2, r7, r2
	slli r7, r8, 6
	storeli.w r7, -1816(r30)                # 4-byte Folded Spill
	zext_int2long r[7:8], r8
	slli r9, r2, 6
	sll.d r[7:8], r[7:8], r22
	storeli.w r9, -1812(r30)                # 4-byte Folded Spill
	zext_int2long r[9:10], r2
	addli r2, zero, 13
	store.d r[7:8], -1800(r30)              # 8-byte Folded Spill
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	sll.d r[7:8], r[7:8], r14
	store.d r[9:10], -1808(r30)             # 8-byte Folded Spill
	sll.d r[9:10], r[9:10], r2
	add.ul r[7:8], r[11:12], r[7:8]
	load.d r[11:12], 0(r30)
	add.ul r[23:24], r[11:12], r[9:10]
	addli r9, zero, 0
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r9, 32
	addli r10, zero, 4
	addli r20, zero, 64
	addli r12, zero, 5
	addli r11, zero, 2
	ori r9, r9, 64
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r10
	add.s r2, r2, r9
	addli r9, zero, 1
	dma_cfg r9, r9, zero, 0
	dma_cfg zero, r19, zero, 2
	dma_cfg r2, r18, r20, 3
	addli r2, zero, 128
	dma_cfg r2, r20, r9, 4
	dma_cfg r2, r2, r20, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r22, 10
	addli r22, zero, 6
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 7
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 9
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 13
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 14
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 15
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 16
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 18
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 19
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 20
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 21
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 22
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 23
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 26
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 27
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 28
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 29
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 30
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r10, 10
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r17, zero, r20, 3
	dma_cfg r2, zero, r9, 4
	dma_cfg r2, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r11, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -1008(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r9,  -364(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r9, r9, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r2, -1008(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r9, -364(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	andi r2, r14, 1
	beq r2, zero, .LBB0_32
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r4, r4, 1
	addli r9, zero, 1
	addli r14, zero, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.s r20, r16, r4
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r11, zero, 90
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.s r2, r5, r4
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r10, zero, 96
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	lui r12, 32
	mod.s r11, r20, r11
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r10, r2, r10
	addli r2, r2, 1
	storeli.w r2, -1760(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r2, r11, 13
	addli r11, r20, 1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r10, r10, 13
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r11, -1372(r30)
	add.s r17, r2, r12
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r11, zero, 2
	beq r21, r11, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[11:12], r9
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r9, zero, 1
	bneq r21, r9, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r25, zero, 6
	addli r22, zero, 3
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[9:10], r[11:12], r25
	xwait r22, 0
	add.ul r[18:19], r[23:24], r[9:10]
	addli r9, zero, 89
	blt.s r9, r20, .LBB0_11
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r10, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r9, zero, 2
	addli r12, zero, 64
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 4
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 7
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r25, 10
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
	addli r9, zero, 128
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r17, zero, r12, 3
	dma_cfg r9, zero, r10, 4
	dma_cfg r9, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r2, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r9, zero, 5
	xwait r2, 0
	xwait r9, 0
	lock zero, zero
	addli r9, zero, 64
	ds_cfg r2, zero, 0
	addli r2, zero, 32
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r9, zero, 13
	shuffle_batch r10, r17, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r20,  -364(r30)
	addli r17, zero, 90
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -1008(r30)
	addli r9, zero, 160
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r17, r20, r17
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r9, r2, r9
	addli r2, r2, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r18, r20, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r2, -1008(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r18, -364(r30)
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r18, zero, 7
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r2, r17, 13
	lui r17, 212
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r9, r9, 13
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	add.s r17, r2, r17
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r21, r18, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r21, r22, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r27, zero, 16
	addli r25, zero, 7
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	sll.d r[9:10], r[11:12], r27
	xwait r25, 0
	add.ul r[18:19], r[7:8], r[9:10]
	addli r9, zero, 89
	blt.s r9, r20, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r12, zero, 5
	addli r10, zero, 1
	addli r11, zero, 2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r9, zero, 3
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 4
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r25, 10
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
	addli r9, zero, 17
	dma_cfg zero, zero, r27, 10
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
	addli r9, zero, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r17, zero, r9, 3
	addli r9, zero, 128
	dma_cfg r9, zero, r11, 4
	addli r9, zero, 32
	addli r11, zero, 256
	dma_cfg r11, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r9, 212
	addli r10, zero, 4
	addli r20, zero, 64
	addli r12, zero, 2
	addli r22, zero, 256
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r11, zero, 2048
	ori r9, r9, 64
	lock zero, r10
	add.s r2, r2, r9
	addli r9, zero, 1
	dma_cfg r9, r9, zero, 0
	dma_cfg zero, r19, zero, 2
	dma_cfg r2, r18, r20, 3
	addli r2, zero, 128
	addli r19, zero, 32
	addli r18, zero, 5
	dma_cfg r2, r20, r12, 4
	dma_cfg r22, r11, r19, 5
	addli r11, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r18
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 9
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 13
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 14
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 15
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 18
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 19
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 20
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 21
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 22
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 23
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 26
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 27
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 28
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 29
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 30
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r10, 10
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r17, zero, r20, 3
	dma_cfg r2, zero, r12, 4
	dma_cfg r22, zero, r19, 5
	addli r22, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	xsignal r11, 0
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	j .LBB0_13
.LBB0_25:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 9
	xwait r22, 0
	addli r10, zero, 64
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 32
	ds_cfg r10, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r10, zero, 13
	shuffle_coa r9, r17, r2, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_13
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	andi r2, r14, 1
	addli r11, zero, 4
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r21, r11, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r11, 0
	addli r11, zero, 8
	addli r12, zero, 32
	addli r14, zero, 64
	xwait r11, 0
	addli r11, zero, 1
	lock zero, r11
	mm_cfg r14, r12, r14, 0
	addli r12, zero, 2
	mm_cfg r12, r12, r11, 2
	beq r4, zero, .LBB0_30
# %bb.28:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r15, r10, r9, 8
	j .LBB0_31
.LBB0_29:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	bneq r2, zero, .LBB0_14
	j .LBB0_34
.LBB0_30:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r15, r10, r9, 8
.LBB0_31:                               # %.thread20.thread43
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r9, zero, 1
	unlock r9
	addli r9, zero, 5
	xsignal r9, 0
	addli r9, zero, 9
	xsignal r9, 0
	bneq r2, zero, .LBB0_14
	j .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	addli r2, zero, 4
	bneq r21, r2, .LBB0_34
.LBB0_33:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -1780(r30)              # 4-byte Folded Spill
	xsignal r2, 0
	j .LBB0_37
.LBB0_34:                               # %.thread42
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	.loc	1 130 7 is_stmt 1               # parallel-rne.mlir:130:7
	bneq r21, r2, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	storeli.w r2, -1780(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -1780(r30)              # 4-byte Folded Spill
.LBB0_37:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r2, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	addli r7, zero, 6
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r2
	addli r2, zero, 64
	sync_core
	zext_int2long r[4:5], r2
	addli r2, zero, 63
	zext_int2long r[16:17], r2
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	beq r21, zero, .LBB0_70
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 2
	beq r21, r2, .LBB0_101
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	bneq r21, r2, .LBB0_132
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[8:9], zero
	addli r2, zero, 8
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	store.d r[8:9], -1776(r30)              # 8-byte Folded Spill
	zext_int2long r[8:9], r2
	xfence
	mfence { lm, sm, gm }
	j .LBB0_42
.LBB0_41:                               # %middle.block98
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[9:10], -1768(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 171 9 is_stmt 1               # parallel-rne.mlir:171:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli.d r[8:9], r[7:8], 0
	addli r7, zero, 6
	beq r2, zero, .LBB0_131
.LBB0_42:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[20:21], r[8:9], r7
	store.d r[8:9], -1768(r30)              # 8-byte Folded Spill
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	bneq r6, r15, .LBB0_49
# %bb.43:                               # %scalar.ph92.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_46
.LBB0_44:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_46 Depth=3
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r1
	and r7, r7, r3
.LBB0_45:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	setlt.ul r8, r[9:10], r[16:17]
	.loc	1 187 13 is_stmt 1              # parallel-rne.mlir:187:13
	add.s r2, r6, r2
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r7, 0(r2)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	beq r8, zero, .LBB0_41
.LBB0_46:                               # %scalar.ph92
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[7:8], r[9:10], r[20:21]
	slli r2, r7, 2
	add.s r7, r15, r2
	loads.w r8, 0(r7)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r11, r8, r26
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r7, r28, r11
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r7, zero, .LBB0_48
# %bb.47:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r11, r13, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r11, zero, .LBB0_45
	j .LBB0_44
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r8, r7
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r11, r13, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r11, zero, .LBB0_45
	j .LBB0_44
.LBB0_49:                               # %vector.body94.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	load.d r[23:24], -1776(r30)             # 8-byte Folded Reload
	j .LBB0_51
.LBB0_50:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	add.s r7, r6, r14
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	seteq.d r2, r[23:24], r[4:5]
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r12, 12(r7)
	stores.w r18, 8(r7)
	stores.w r25, 4(r7)
	stores.w r19, 0(r7)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	bneq r2, zero, .LBB0_41
.LBB0_51:                               # %vector.body94
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[7:8], r[23:24], r[20:21]
	slli r14, r7, 2
	add.s r19, r15, r14
	loads.w r10, 12(r19)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r2, r10, r26
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r7, r28, r2
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r7, zero, .LBB0_53
# %bb.52:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_51 Depth=3
	lui r7, 1024
	or r12, r10, r7
.LBB0_54:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r22, 8(r19)
	and r11, r22, r26
	setlt.u r7, r28, r11
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r7, zero, .LBB0_56
# %bb.55:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r22, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_51 Depth=3
	lui r7, 1024
	or r18, r22, r7
.LBB0_57:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r9, 4(r19)
	and r7, r9, r26
	setlt.u r8, r28, r7
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r8, zero, .LBB0_59
# %bb.58:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r9, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_51 Depth=3
	lui r8, 1024
	or r25, r9, r8
.LBB0_60:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r8, 0(r19)
	and r27, r8, r26
	setlt.u r19, r28, r27
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r19, zero, .LBB0_62
# %bb.61:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r8, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r27, r13, r27
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r27, zero, .LBB0_63
	j .LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r19, 1024
	or r19, r8, r19
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r27, r13, r27
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r27, zero, .LBB0_64
.LBB0_63:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r8, 16
	andi r19, r19, 1
	add.s r8, r8, r19
	add.s r8, r8, r1
	and r19, r8, r3
.LBB0_64:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	setlt.u r7, r13, r7
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r7, zero, .LBB0_67
# %bb.65:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r9, 16
	andi r7, r7, 1
	add.s r7, r9, r7
	add.s r7, r7, r1
	and r25, r7, r3
	setlt.u r7, r13, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r7, zero, .LBB0_68
.LBB0_66:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r13, r2
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r2, zero, .LBB0_50
	j .LBB0_69
.LBB0_67:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r7, zero, .LBB0_66
.LBB0_68:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r22, 16
	andi r7, r7, 1
	add.s r7, r22, r7
	add.s r7, r7, r1
	and r18, r7, r3
	setlt.u r2, r13, r2
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r2, zero, .LBB0_50
.LBB0_69:                               # %vector.body94
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r1
	and r12, r2, r3
	j .LBB0_50
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	zext_int2long r[8:9], zero
	mfence { lm, sm, gm }
	j .LBB0_72
.LBB0_71:                               # %middle.block116
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	load.d r[9:10], -1768(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli.d r[8:9], r[7:8], 0
	addli r7, zero, 6
	beq r2, zero, .LBB0_100
.LBB0_72:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_76 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[8:9], -1768(r30)              # 8-byte Folded Spill
	sll.d r[7:8], r[8:9], r2
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	bneq r6, r15, .LBB0_79
# %bb.73:                               # %scalar.ph110.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_76
.LBB0_74:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_76 Depth=3
	srli r11, r12, 16
	andi r11, r11, 1
	add.s r11, r12, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_75:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r12, r[9:10], r[16:17]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r2, r6, r2
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r11, 0(r2)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r12, zero, .LBB0_71
.LBB0_76:                               # %scalar.ph110
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	add.s r11, r15, r2
	loads.w r12, 0(r11)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r14, r12, r26
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r11, r28, r14
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r11, zero, .LBB0_78
# %bb.77:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r14, r13, r14
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r14, zero, .LBB0_75
	j .LBB0_74
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r12, r11
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r14, r13, r14
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r14, zero, .LBB0_75
	j .LBB0_74
.LBB0_79:                               # %vector.body112.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_81
.LBB0_80:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r11, r6, r14
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r10, r[20:21], r[4:5]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r18, 12(r11)
	stores.w r2, 8(r11)
	stores.w r9, 4(r11)
	stores.w r25, 0(r11)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r10, zero, .LBB0_71
.LBB0_81:                               # %vector.body112
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[9:10], r[20:21], r[7:8]
	slli r14, r9, 2
	add.s r25, r15, r14
	loads.w r10, 12(r25)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r12, r10, r26
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r2, r28, r12
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r2, zero, .LBB0_83
# %bb.82:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r10, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	lui r2, 1024
	or r18, r10, r2
.LBB0_84:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r22, 8(r25)
	and r11, r22, r26
	setlt.u r2, r28, r11
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r2, zero, .LBB0_86
# %bb.85:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=3
	lui r2, 1024
	or r2, r22, r2
.LBB0_87:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r19, 4(r25)
	and r23, r19, r26
	setlt.u r9, r28, r23
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r9, zero, .LBB0_89
# %bb.88:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r19, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	lui r9, 1024
	or r9, r19, r9
.LBB0_90:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r24, 0(r25)
	and r27, r24, r26
	setlt.u r25, r28, r27
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r25, zero, .LBB0_92
# %bb.91:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r27, r13, r27
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r27, zero, .LBB0_93
	j .LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r24, r25
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r27, r13, r27
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r27, zero, .LBB0_94
.LBB0_93:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r25, r24, 16
	andi r25, r25, 1
	add.s r24, r24, r25
	add.s r24, r24, r1
	and r25, r24, r3
.LBB0_94:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	setlt.u r23, r13, r23
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r23, zero, .LBB0_97
# %bb.95:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r19, 16
	andi r9, r9, 1
	add.s r9, r19, r9
	add.s r9, r9, r1
	and r9, r9, r3
	setlt.u r11, r13, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r11, zero, .LBB0_98
.LBB0_96:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r13, r12
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_80
	j .LBB0_99
.LBB0_97:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r13, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_96
.LBB0_98:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r2, r2, r3
	setlt.u r11, r13, r12
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_80
.LBB0_99:                               # %vector.body112
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r10, 16
	andi r11, r11, 1
	add.s r10, r10, r11
	add.s r10, r10, r1
	and r18, r10, r3
	j .LBB0_80
.LBB0_100:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r21
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 2
	bneq r21, r2, .LBB0_39
.LBB0_101:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 192 7 is_stmt 1               # parallel-rne.mlir:192:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_103
.LBB0_102:                              # %middle.block107
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[9:10], -1768(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 199 9 is_stmt 1               # parallel-rne.mlir:199:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli.d r[8:9], r[7:8], 0
	addli r7, zero, 6
	beq r2, zero, .LBB0_131
.LBB0_103:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[8:9], -1768(r30)              # 8-byte Folded Spill
	sll.d r[7:8], r[8:9], r2
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	bneq r6, r15, .LBB0_110
# %bb.104:                              # %scalar.ph101.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_107
.LBB0_105:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_107 Depth=3
	srli r11, r12, 16
	andi r11, r11, 1
	add.s r11, r12, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_106:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	setlt.ul r12, r[9:10], r[16:17]
	.loc	1 215 13 is_stmt 1              # parallel-rne.mlir:215:13
	add.s r2, r6, r2
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r11, 0(r2)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	beq r12, zero, .LBB0_102
.LBB0_107:                              # %scalar.ph101
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	add.s r11, r15, r2
	loads.w r12, 0(r11)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r14, r12, r26
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r11, r28, r14
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r11, zero, .LBB0_109
# %bb.108:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r14, r13, r14
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r14, zero, .LBB0_106
	j .LBB0_105
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r12, r11
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r14, r13, r14
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r14, zero, .LBB0_106
	j .LBB0_105
.LBB0_110:                              # %vector.body103.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_112
.LBB0_111:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	add.s r11, r6, r14
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	seteq.d r9, r[20:21], r[4:5]
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r10, 12(r11)
	stores.w r2, 8(r11)
	stores.w r19, 4(r11)
	stores.w r25, 0(r11)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	bneq r9, zero, .LBB0_102
.LBB0_112:                              # %vector.body103
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[9:10], r[20:21], r[7:8]
	slli r14, r9, 2
	add.s r25, r15, r14
	loads.w r18, 12(r25)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r12, r18, r26
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r2, r28, r12
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_114
# %bb.113:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r18, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_112 Depth=3
	lui r2, 1024
	or r10, r18, r2
.LBB0_115:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r22, 8(r25)
	and r11, r22, r26
	setlt.u r2, r28, r11
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_117
# %bb.116:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r22, 0
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_112 Depth=3
	lui r2, 1024
	or r2, r22, r2
.LBB0_118:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r9, 4(r25)
	and r23, r9, r26
	setlt.u r19, r28, r23
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r19, zero, .LBB0_120
# %bb.119:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r9, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_112 Depth=3
	lui r19, 1024
	or r19, r9, r19
.LBB0_121:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r24, 0(r25)
	and r27, r24, r26
	setlt.u r25, r28, r27
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r25, zero, .LBB0_123
# %bb.122:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r27, r13, r27
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r27, zero, .LBB0_124
	j .LBB0_125
.LBB0_123:                              #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r24, r25
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r27, r13, r27
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r27, zero, .LBB0_125
.LBB0_124:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r25, r24, 16
	andi r25, r25, 1
	add.s r24, r24, r25
	add.s r24, r24, r1
	and r25, r24, r3
.LBB0_125:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	setlt.u r23, r13, r23
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r23, zero, .LBB0_128
# %bb.126:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r19, r9, 16
	andi r19, r19, 1
	add.s r9, r9, r19
	add.s r9, r9, r1
	and r19, r9, r3
	setlt.u r9, r13, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r9, zero, .LBB0_129
.LBB0_127:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r12
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r9, zero, .LBB0_111
	j .LBB0_130
.LBB0_128:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r9, zero, .LBB0_127
.LBB0_129:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r1
	and r2, r2, r3
	setlt.u r9, r13, r12
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r9, zero, .LBB0_111
.LBB0_130:                              # %vector.body103
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r18, 16
	andi r9, r9, 1
	add.s r9, r18, r9
	add.s r9, r9, r1
	and r10, r9, r3
	j .LBB0_111
.LBB0_131:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r21
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_132:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	loadli.w r2,  -1780(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_163
# %bb.133:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_135
.LBB0_134:                              # %middle.block89
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[9:10], -1768(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 227 9 is_stmt 1               # parallel-rne.mlir:227:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli.d r[8:9], r[7:8], 0
	addli r7, zero, 6
	beq r2, zero, .LBB0_194
.LBB0_135:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_144 Depth 3
                                        #       Child Loop BB0_139 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[8:9], -1768(r30)              # 8-byte Folded Spill
	sll.d r[7:8], r[8:9], r2
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	bneq r6, r15, .LBB0_142
# %bb.136:                              # %scalar.ph83.preheader
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_139
.LBB0_137:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_139 Depth=3
	srli r11, r12, 16
	andi r11, r11, 1
	add.s r11, r12, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_138:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	setlt.ul r12, r[9:10], r[16:17]
	.loc	1 243 13 is_stmt 1              # parallel-rne.mlir:243:13
	add.s r2, r6, r2
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r11, 0(r2)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	beq r12, zero, .LBB0_134
.LBB0_139:                              # %scalar.ph83
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	add.s r11, r15, r2
	loads.w r12, 0(r11)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r14, r12, r26
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r11, r28, r14
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r11, zero, .LBB0_141
# %bb.140:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r14, r13, r14
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r14, zero, .LBB0_138
	j .LBB0_137
.LBB0_141:                              #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r12, r11
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r14, r13, r14
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r14, zero, .LBB0_138
	j .LBB0_137
.LBB0_142:                              # %vector.body85.preheader
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_144
.LBB0_143:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r9, r6, r14
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	seteq.d r2, r[20:21], r[4:5]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r10, 12(r9)
	stores.w r18, 8(r9)
	stores.w r19, 4(r9)
	stores.w r25, 0(r9)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	bneq r2, zero, .LBB0_134
.LBB0_144:                              # %vector.body85
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[9:10], r[20:21], r[7:8]
	slli r14, r9, 2
	add.s r25, r15, r14
	loads.w r12, 12(r25)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r2, r12, r26
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r9, r28, r2
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r9, zero, .LBB0_146
# %bb.145:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	lui r9, 1024
	or r10, r12, r9
.LBB0_147:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	loads.w r22, 8(r25)
	and r11, r22, r26
	setlt.u r9, r28, r11
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r9, zero, .LBB0_149
# %bb.148:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r22, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_144 Depth=3
	lui r9, 1024
	or r18, r22, r9
.LBB0_150:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	loads.w r9, 4(r25)
	and r23, r9, r26
	setlt.u r19, r28, r23
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r19, zero, .LBB0_152
# %bb.151:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r9, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_144 Depth=3
	lui r19, 1024
	or r19, r9, r19
.LBB0_153:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	loads.w r24, 0(r25)
	and r27, r24, r26
	setlt.u r25, r28, r27
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r25, zero, .LBB0_162
# %bb.154:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r27, r13, r27
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r27, zero, .LBB0_156
.LBB0_155:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r25, r24, 16
	andi r25, r25, 1
	add.s r24, r24, r25
	add.s r24, r24, r1
	and r25, r24, r3
.LBB0_156:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	setlt.u r23, r13, r23
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r23, zero, .LBB0_159
# %bb.157:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r19, r9, 16
	andi r19, r19, 1
	add.s r9, r9, r19
	add.s r9, r9, r1
	and r19, r9, r3
	setlt.u r9, r13, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r9, zero, .LBB0_160
.LBB0_158:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r13, r2
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_143
	j .LBB0_161
.LBB0_159:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r9, zero, .LBB0_158
.LBB0_160:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r18, r9, r3
	setlt.u r2, r13, r2
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_143
.LBB0_161:                              # %vector.body85
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r10, r2, r3
	j .LBB0_143
.LBB0_162:                              #   in Loop: Header=BB0_144 Depth=3
	lui r25, 1024
	or r25, r24, r25
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r27, r13, r27
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r27, zero, .LBB0_155
	j .LBB0_156
.LBB0_163:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r2, zero, 4
	bneq r21, r2, .LBB0_195
.LBB0_164:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_166
.LBB0_165:                              # %middle.block80
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 39
	load.d r[9:10], -1768(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 255 9 is_stmt 1               # parallel-rne.mlir:255:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli.d r[8:9], r[7:8], 0
	addli r7, zero, 6
	beq r2, zero, .LBB0_228
.LBB0_166:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_170 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[8:9], -1768(r30)              # 8-byte Folded Spill
	sll.d r[7:8], r[8:9], r2
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	bneq r6, r15, .LBB0_173
# %bb.167:                              # %scalar.ph74.preheader
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_170
.LBB0_168:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_170 Depth=3
	srli r11, r12, 16
	andi r11, r11, 1
	add.s r11, r12, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_169:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	setlt.ul r12, r[9:10], r[16:17]
	.loc	1 271 13 is_stmt 1              # parallel-rne.mlir:271:13
	add.s r2, r6, r2
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r11, 0(r2)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	beq r12, zero, .LBB0_165
.LBB0_170:                              # %scalar.ph74
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	add.s r11, r15, r2
	loads.w r12, 0(r11)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r14, r12, r26
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r11, r28, r14
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r11, zero, .LBB0_172
# %bb.171:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r14, r13, r14
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r14, zero, .LBB0_169
	j .LBB0_168
.LBB0_172:                              #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r12, r11
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r14, r13, r14
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r14, zero, .LBB0_169
	j .LBB0_168
.LBB0_173:                              # %vector.body76.preheader
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_175
.LBB0_174:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	add.s r9, r6, r14
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	seteq.d r2, r[20:21], r[4:5]
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r10, 12(r9)
	stores.w r18, 8(r9)
	stores.w r19, 4(r9)
	stores.w r25, 0(r9)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	bneq r2, zero, .LBB0_165
.LBB0_175:                              # %vector.body76
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[9:10], r[20:21], r[7:8]
	slli r14, r9, 2
	add.s r25, r15, r14
	loads.w r12, 12(r25)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r2, r12, r26
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r9, r28, r2
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r9, zero, .LBB0_177
# %bb.176:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_175 Depth=3
	lui r9, 1024
	or r10, r12, r9
.LBB0_178:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r22, 8(r25)
	and r11, r22, r26
	setlt.u r9, r28, r11
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r9, zero, .LBB0_180
# %bb.179:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r22, 0
	j .LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_175 Depth=3
	lui r9, 1024
	or r18, r22, r9
.LBB0_181:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r9, 4(r25)
	and r23, r9, r26
	setlt.u r19, r28, r23
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r19, zero, .LBB0_183
# %bb.182:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r9, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_175 Depth=3
	lui r19, 1024
	or r19, r9, r19
.LBB0_184:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r24, 0(r25)
	and r27, r24, r26
	setlt.u r25, r28, r27
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r25, zero, .LBB0_193
# %bb.185:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r27, r13, r27
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r27, zero, .LBB0_187
.LBB0_186:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r25, r24, 16
	andi r25, r25, 1
	add.s r24, r24, r25
	add.s r24, r24, r1
	and r25, r24, r3
.LBB0_187:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	setlt.u r23, r13, r23
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r23, zero, .LBB0_190
# %bb.188:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r19, r9, 16
	andi r19, r19, 1
	add.s r9, r9, r19
	add.s r9, r9, r1
	and r19, r9, r3
	setlt.u r9, r13, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r9, zero, .LBB0_191
.LBB0_189:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r13, r2
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r2, zero, .LBB0_174
	j .LBB0_192
.LBB0_190:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r9, zero, .LBB0_189
.LBB0_191:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r18, r9, r3
	setlt.u r2, r13, r2
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r2, zero, .LBB0_174
.LBB0_192:                              # %vector.body76
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r10, r2, r3
	j .LBB0_174
.LBB0_193:                              #   in Loop: Header=BB0_175 Depth=3
	lui r25, 1024
	or r25, r24, r25
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r27, r13, r27
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r27, zero, .LBB0_186
	j .LBB0_187
.LBB0_194:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r21
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	mfence { sm }
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r2, zero, 4
	beq r21, r2, .LBB0_164
.LBB0_195:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	.loc	1 276 7 is_stmt 1               # parallel-rne.mlir:276:7
	beq r21, r2, .LBB0_229
.LBB0_196:                              #   in Loop: Header=BB0_8 Depth=1
	beq r21, r7, .LBB0_259
# %bb.197:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	bneq r21, r2, .LBB0_290
# %bb.198:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_200
.LBB0_199:                              # %middle.block
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[9:10], -1768(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 283 9 is_stmt 1               # parallel-rne.mlir:283:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r2, zero, .LBB0_289
.LBB0_200:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[7:8], -1768(r30)              # 8-byte Folded Spill
	sll.d r[7:8], r[7:8], r2
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	bneq r6, r15, .LBB0_207
# %bb.201:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_204
.LBB0_202:                              # %scalar.ph
                                        #   in Loop: Header=BB0_204 Depth=3
	srli r11, r12, 16
	andi r11, r11, 1
	add.s r11, r12, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_203:                              # %scalar.ph
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	setlt.ul r12, r[9:10], r[16:17]
	.loc	1 299 13 is_stmt 1              # parallel-rne.mlir:299:13
	add.s r2, r6, r2
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r11, 0(r2)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	beq r12, zero, .LBB0_199
.LBB0_204:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	add.s r11, r15, r2
	loads.w r12, 0(r11)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r14, r12, r26
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r11, r28, r14
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r11, zero, .LBB0_206
# %bb.205:                              # %scalar.ph
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r14, r13, r14
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r14, zero, .LBB0_203
	j .LBB0_202
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r12, r11
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r14, r13, r14
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r14, zero, .LBB0_203
	j .LBB0_202
.LBB0_207:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_209
.LBB0_208:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	add.s r9, r6, r14
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	seteq.d r2, r[20:21], r[4:5]
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r10, 12(r9)
	stores.w r18, 8(r9)
	stores.w r19, 4(r9)
	stores.w r25, 0(r9)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	bneq r2, zero, .LBB0_199
.LBB0_209:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[9:10], r[20:21], r[7:8]
	slli r14, r9, 2
	add.s r25, r15, r14
	loads.w r12, 12(r25)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r2, r12, r26
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r9, r28, r2
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r9, zero, .LBB0_211
# %bb.210:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_209 Depth=3
	lui r9, 1024
	or r10, r12, r9
.LBB0_212:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r22, 8(r25)
	and r11, r22, r26
	setlt.u r9, r28, r11
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r9, zero, .LBB0_214
# %bb.213:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r22, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_209 Depth=3
	lui r9, 1024
	or r18, r22, r9
.LBB0_215:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r9, 4(r25)
	and r23, r9, r26
	setlt.u r19, r28, r23
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r19, zero, .LBB0_217
# %bb.216:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r9, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_209 Depth=3
	lui r19, 1024
	or r19, r9, r19
.LBB0_218:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r24, 0(r25)
	and r27, r24, r26
	setlt.u r25, r28, r27
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r25, zero, .LBB0_227
# %bb.219:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r27, r13, r27
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r27, zero, .LBB0_221
.LBB0_220:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r25, r24, 16
	andi r25, r25, 1
	add.s r24, r24, r25
	add.s r24, r24, r1
	and r25, r24, r3
.LBB0_221:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	setlt.u r23, r13, r23
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r23, zero, .LBB0_224
# %bb.222:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r19, r9, 16
	andi r19, r19, 1
	add.s r9, r9, r19
	add.s r9, r9, r1
	and r19, r9, r3
	setlt.u r9, r13, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r9, zero, .LBB0_225
.LBB0_223:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r13, r2
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_208
	j .LBB0_226
.LBB0_224:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r9, zero, .LBB0_223
.LBB0_225:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r18, r9, r3
	setlt.u r2, r13, r2
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_208
.LBB0_226:                              # %vector.body
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r10, r2, r3
	j .LBB0_208
.LBB0_227:                              #   in Loop: Header=BB0_209 Depth=3
	lui r25, 1024
	or r25, r24, r25
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r27, r13, r27
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r27, zero, .LBB0_220
	j .LBB0_221
.LBB0_228:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r21
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	mfence { sm }
	addli r2, zero, 7
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	bneq r21, r2, .LBB0_196
.LBB0_229:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 332 7 is_stmt 1               # parallel-rne.mlir:332:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_231
.LBB0_230:                              # %middle.block71
                                        #   in Loop: Header=BB0_231 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[7:8], -1768(r30)               # 8-byte Folded Reload
	.loc	1 339 9 is_stmt 1               # parallel-rne.mlir:339:9
	setlt.ul r2, r[7:8], r[16:17]
	addli.d r[7:8], r[7:8], 1
	addli.d r[8:9], r[7:8], 0
	addli r7, zero, 6
	beq r2, zero, .LBB0_289
.LBB0_231:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_240 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[8:9], r7
	store.d r[8:9], -1768(r30)              # 8-byte Folded Spill
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	bneq r6, r15, .LBB0_238
# %bb.232:                              # %scalar.ph65.preheader
                                        #   in Loop: Header=BB0_231 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_235
.LBB0_233:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_235 Depth=3
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r1
	and r7, r7, r3
.LBB0_234:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	setlt.ul r8, r[9:10], r[16:17]
	.loc	1 355 13 is_stmt 1              # parallel-rne.mlir:355:13
	add.s r2, r6, r2
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r7, 0(r2)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	beq r8, zero, .LBB0_230
.LBB0_235:                              # %scalar.ph65
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_231 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[7:8], r[9:10], r[23:24]
	slli r2, r7, 2
	add.s r7, r15, r2
	loads.w r8, 0(r7)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r11, r8, r26
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r7, r28, r11
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r7, zero, .LBB0_237
# %bb.236:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r11, r13, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r11, zero, .LBB0_234
	j .LBB0_233
.LBB0_237:                              #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r8, r7
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r11, r13, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r11, zero, .LBB0_234
	j .LBB0_233
.LBB0_238:                              # %vector.body67.preheader
                                        #   in Loop: Header=BB0_231 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_240
.LBB0_239:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	add.s r7, r6, r14
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	seteq.d r2, r[20:21], r[4:5]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r10, 12(r7)
	stores.w r18, 8(r7)
	stores.w r19, 4(r7)
	stores.w r25, 0(r7)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	bneq r2, zero, .LBB0_230
.LBB0_240:                              # %vector.body67
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_231 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[7:8], r[20:21], r[23:24]
	slli r14, r7, 2
	add.s r25, r15, r14
	loads.w r12, 12(r25)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r2, r12, r26
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r7, r28, r2
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r7, zero, .LBB0_242
# %bb.241:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_243
.LBB0_242:                              #   in Loop: Header=BB0_240 Depth=3
	lui r7, 1024
	or r10, r12, r7
.LBB0_243:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r22, 8(r25)
	and r11, r22, r26
	setlt.u r7, r28, r11
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r7, zero, .LBB0_245
# %bb.244:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r22, 0
	j .LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_240 Depth=3
	lui r7, 1024
	or r18, r22, r7
.LBB0_246:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r9, 4(r25)
	and r7, r9, r26
	setlt.u r8, r28, r7
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r8, zero, .LBB0_248
# %bb.247:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r9, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_240 Depth=3
	lui r8, 1024
	or r19, r9, r8
.LBB0_249:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	loads.w r8, 0(r25)
	and r27, r8, r26
	setlt.u r25, r28, r27
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r25, zero, .LBB0_251
# %bb.250:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r8, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r27, r13, r27
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r27, zero, .LBB0_252
	j .LBB0_253
.LBB0_251:                              #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r8, r25
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r27, r13, r27
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r27, zero, .LBB0_253
.LBB0_252:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r25, r8, 16
	andi r25, r25, 1
	add.s r8, r8, r25
	add.s r8, r8, r1
	and r25, r8, r3
.LBB0_253:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	setlt.u r7, r13, r7
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r7, zero, .LBB0_256
# %bb.254:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r9, 16
	andi r7, r7, 1
	add.s r7, r9, r7
	add.s r7, r7, r1
	and r19, r7, r3
	setlt.u r7, r13, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r7, zero, .LBB0_257
.LBB0_255:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r13, r2
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r2, zero, .LBB0_239
	j .LBB0_258
.LBB0_256:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r7, zero, .LBB0_255
.LBB0_257:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r22, 16
	andi r7, r7, 1
	add.s r7, r22, r7
	add.s r7, r7, r1
	and r18, r7, r3
	setlt.u r2, r13, r2
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r2, zero, .LBB0_239
.LBB0_258:                              # %vector.body67
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r10, r2, r3
	j .LBB0_239
.LBB0_259:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 48
	.loc	1 304 7 is_stmt 1               # parallel-rne.mlir:304:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_261
.LBB0_260:                              # %middle.block62
                                        #   in Loop: Header=BB0_261 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	load.d r[9:10], -1768(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 311 9 is_stmt 1               # parallel-rne.mlir:311:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r2, zero, .LBB0_289
.LBB0_261:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_270 Depth 3
                                        #       Child Loop BB0_265 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[7:8], -1768(r30)              # 8-byte Folded Spill
	sll.d r[7:8], r[7:8], r2
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	bneq r6, r15, .LBB0_268
# %bb.262:                              # %scalar.ph56.preheader
                                        #   in Loop: Header=BB0_261 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_265
.LBB0_263:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_265 Depth=3
	srli r11, r12, 16
	andi r11, r11, 1
	add.s r11, r12, r11
	add.s r11, r11, r1
	and r11, r11, r3
.LBB0_264:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	setlt.ul r12, r[9:10], r[16:17]
	.loc	1 327 13 is_stmt 1              # parallel-rne.mlir:327:13
	add.s r2, r6, r2
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r11, 0(r2)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	beq r12, zero, .LBB0_260
.LBB0_265:                              # %scalar.ph56
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_261 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	add.s r11, r15, r2
	loads.w r12, 0(r11)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r14, r12, r26
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r11, r28, r14
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r11, zero, .LBB0_267
# %bb.266:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r14, r13, r14
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r14, zero, .LBB0_264
	j .LBB0_263
.LBB0_267:                              #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r12, r11
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r14, r13, r14
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r14, zero, .LBB0_264
	j .LBB0_263
.LBB0_268:                              # %vector.body58.preheader
                                        #   in Loop: Header=BB0_261 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_270
.LBB0_269:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	add.s r9, r6, r14
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	seteq.d r2, r[20:21], r[4:5]
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r10, 12(r9)
	stores.w r18, 8(r9)
	stores.w r19, 4(r9)
	stores.w r25, 0(r9)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	bneq r2, zero, .LBB0_260
.LBB0_270:                              # %vector.body58
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_261 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[9:10], r[20:21], r[7:8]
	slli r14, r9, 2
	add.s r25, r15, r14
	loads.w r12, 12(r25)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r2, r12, r26
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r9, r28, r2
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r9, zero, .LBB0_272
# %bb.271:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_270 Depth=3
	lui r9, 1024
	or r10, r12, r9
.LBB0_273:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r22, 8(r25)
	and r11, r22, r26
	setlt.u r9, r28, r11
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r9, zero, .LBB0_275
# %bb.274:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r22, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_270 Depth=3
	lui r9, 1024
	or r18, r22, r9
.LBB0_276:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r9, 4(r25)
	and r23, r9, r26
	setlt.u r19, r28, r23
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r19, zero, .LBB0_278
# %bb.277:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r9, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_270 Depth=3
	lui r19, 1024
	or r19, r9, r19
.LBB0_279:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	loads.w r24, 0(r25)
	and r27, r24, r26
	setlt.u r25, r28, r27
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r25, zero, .LBB0_281
# %bb.280:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r27, r13, r27
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r27, zero, .LBB0_282
	j .LBB0_283
.LBB0_281:                              #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r25, 1024
	or r25, r24, r25
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r27, r13, r27
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r27, zero, .LBB0_283
.LBB0_282:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r25, r24, 16
	andi r25, r25, 1
	add.s r24, r24, r25
	add.s r24, r24, r1
	and r25, r24, r3
.LBB0_283:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	setlt.u r23, r13, r23
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r23, zero, .LBB0_286
# %bb.284:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r19, r9, 16
	andi r19, r19, 1
	add.s r9, r9, r19
	add.s r9, r9, r1
	and r19, r9, r3
	setlt.u r9, r13, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r9, zero, .LBB0_287
.LBB0_285:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r13, r2
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_269
	j .LBB0_288
.LBB0_286:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r9, zero, .LBB0_285
.LBB0_287:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r18, r9, r3
	setlt.u r2, r13, r2
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_269
.LBB0_288:                              # %vector.body58
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r1
	and r10, r2, r3
	j .LBB0_269
.LBB0_289:                              # %.sink.split48
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r21
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_290:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 360 7 is_stmt 1               # parallel-rne.mlir:360:7
	addli r2, zero, 255
	addli r22, zero, 6
	csr_set csr5, r2
	sync_core
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	loadli.w r2,  -1780(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.291:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r14, zero, 4
	.loc	1 378 7 is_stmt 1               # parallel-rne.mlir:378:7
	bneq r21, zero, .LBB0_7
# %bb.292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	loadli.w r2,  -1816(r30)                # 4-byte Folded Reload
	zext_int2long r[14:15], zero
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[16:17], 16(r30)
	addli r18, zero, 1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	zext_int2long r[7:8], r2
	addli r2, zero, 960
	zext_int2long r[9:10], r2
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	loadli.w r2,  -1812(r30)                # 4-byte Folded Reload
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.ul r[9:10], r[7:8], r[9:10]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sext_int2long r[11:12], r2
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	addli r2, zero, 17
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	addli.d r[9:10], r[9:10], 64
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.sl r[14:15], r[11:12], r[14:15]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	max.ul r[9:10], r[9:10], r[7:8]
	sub.sl r[7:8], r[9:10], r[7:8]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	addli.d r[9:10], r[14:15], 64
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[14:15], -1808(r30)             # 8-byte Folded Reload
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	max.sl r[9:10], r[9:10], r[11:12]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.ul r[7:8], r[7:8], r[4:5]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sll.d r[14:15], r[14:15], r2
	addli r2, zero, 12
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	sub.sl r[9:10], r[9:10], r[11:12]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	add.ul r[14:15], r[16:17], r[14:15]
	load.d r[16:17], -1800(r30)             # 8-byte Folded Reload
	xwait r2, 0
	ori r2, r6, 64
	slli r6, r7, 1
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[4:5], r[9:10], r[4:5]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sll.d r[16:17], r[16:17], r18
	add.ul r[11:12], r[14:15], r[16:17]
	addli r15, zero, 5
	addli r16, zero, 64
	addli r14, zero, 4
	lock zero, r15
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r18, zero, 1
	dma_cfg r12, zero, zero, 2
	dma_cfg r11, r2, r16, 3
	addli r2, r7, 31
	addli r7, zero, 128
	srli r2, r2, 5
	dma_cfg r16, r7, r2, 4
	andi r2, r6, 62
	addli r6, zero, 256
	addli r7, zero, 2048
	dma_cfg r7, r6, r4, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r15
	j .LBB0_6
.LBB0_293:                              # %._crit_edge
	.loc	1 380 5                         # parallel-rne.mlir:380:5
	xsignal zero, 0
	bneq r21, zero, .LBB0_295
# %bb.294:
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
.LBB0_295:
	.loc	1 381 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:381:5
	addli sp, sp, 1824
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
	.long	1888                            # 0x760
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-hyvxrnjo" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
