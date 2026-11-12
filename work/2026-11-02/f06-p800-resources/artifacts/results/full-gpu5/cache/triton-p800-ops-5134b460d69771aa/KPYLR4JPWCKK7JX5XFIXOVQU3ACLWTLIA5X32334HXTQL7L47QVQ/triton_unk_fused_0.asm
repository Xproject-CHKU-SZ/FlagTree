	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-qb1y7lra" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2000
	addli r2, zero, 1
.Ltmp0:
	.loc	1 38 5 prologue_end             # parallel-rne.mlir:38:5
	core_id r1
	core_id r7
	addli r30, sp, 1936
	xsignal_mode_cfg r2
	beq r1, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	xwait r2, 0
	xwait r2, 0
	xwait zero, 0
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r5, zero, 2
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	uni_sram_cfg r2, r2
	addli r1, zero, 4
	load.d r[3:4], 32(r30)
	addli r6, zero, 4096
	lock zero, r5
	ew_cfg r2, zero, zero, 16
	unlock r5
	lock zero, r1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg zero, r3, r6, 3
	addli r3, zero, 1024
	dma_cfg zero, zero, r2, 4
	dma_run zero
	unlock r1
	xsignal r2, 0
	xwait r2, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r5, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r1, zero, 13
	ds_cfg r3, zero, 14
	shuffle_batch r6, zero, r3, 4
	addli r3, zero, 18
	unlock zero
	xsignal r2, 0
	xwait r2, 0
	lock zero, r5
	lui r2, 17
	ewtable_cfg r6, 0
	ewtable_cfg r2, 1
	lui r2, 1048575
	unlock r5
	xsignal zero, 0
	xwait zero, 0
	ori r2, r2, 4095
	csr_set csr3, r2
	sync_group
	xsignal r3, 0
	xsignal r3, 0
	addli r2, zero, 5
	addli r3, zero, 3
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	addli r2, zero, 9
	addli r3, zero, 7
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	addli r2, zero, 20
	addli r3, zero, 23
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r2, zero, 26
	addli r3, zero, 28
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r2, zero, 30
	addli r3, zero, 35
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r2, zero, 38
	addli r1, zero, 40
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 40 10 is_stmt 1               # parallel-rne.mlir:40:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -12(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -24(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -36(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -48(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -60(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -72(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -84(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -96(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -108(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -368(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -692(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -948(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -1720(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w zero, -1732(r30)
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r1, r2, r1
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	mul.s r4, r1, r4
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	addli r2, r2, -1
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
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
	.loc	1 61 11                         # parallel-rne.mlir:61:11
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
	.loc	1 62 11                         # parallel-rne.mlir:62:11
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
	storeli.w r3, -720(r30)
	storeli.w r3, -716(r30)
	storeli.w r3, -712(r30)
	storeli.w r3, -708(r30)
	storeli.w r3, -704(r30)
	storeli.w r3, -700(r30)
	storeli.w r3, -696(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r3, -1716(r30)
	storeli.w r3, -1712(r30)
	storeli.w r3, -1708(r30)
	storeli.w r3, -1704(r30)
	storeli.w r3, -1700(r30)
	storeli.w r3, -1696(r30)
	storeli.w r3, -1692(r30)
	storeli.w r3, -1688(r30)
	storeli.w r3, -1684(r30)
	storeli.w r3, -1680(r30)
	storeli.w r3, -1676(r30)
	storeli.w r3, -1672(r30)
	storeli.w r3, -1668(r30)
	storeli.w r3, -1664(r30)
	storeli.w r3, -1660(r30)
	storeli.w r3, -1656(r30)
	storeli.w r3, -1652(r30)
	storeli.w r3, -1648(r30)
	storeli.w r3, -1644(r30)
	storeli.w r3, -1640(r30)
	storeli.w r3, -1636(r30)
	storeli.w r3, -1632(r30)
	storeli.w r3, -1628(r30)
	storeli.w r3, -1624(r30)
	storeli.w r3, -1620(r30)
	storeli.w r3, -1616(r30)
	storeli.w r3, -1612(r30)
	storeli.w r3, -1608(r30)
	storeli.w r3, -1604(r30)
	storeli.w r3, -1600(r30)
	storeli.w r3, -1596(r30)
	storeli.w r3, -1592(r30)
	storeli.w r3, -1588(r30)
	storeli.w r3, -1584(r30)
	storeli.w r3, -1580(r30)
	storeli.w r3, -1576(r30)
	storeli.w r3, -1572(r30)
	storeli.w r3, -1568(r30)
	storeli.w r3, -1564(r30)
	storeli.w r3, -1560(r30)
	storeli.w r3, -1556(r30)
	storeli.w r3, -1552(r30)
	storeli.w r3, -1548(r30)
	storeli.w r3, -1544(r30)
	storeli.w r3, -1540(r30)
	storeli.w r3, -1536(r30)
	storeli.w r3, -1532(r30)
	storeli.w r3, -1528(r30)
	storeli.w r3, -1524(r30)
	storeli.w r3, -1520(r30)
	storeli.w r3, -1516(r30)
	storeli.w r3, -1512(r30)
	storeli.w r3, -1508(r30)
	storeli.w r3, -1504(r30)
	storeli.w r3, -1500(r30)
	storeli.w r3, -1496(r30)
	storeli.w r3, -1492(r30)
	storeli.w r3, -1488(r30)
	storeli.w r3, -1484(r30)
	storeli.w r3, -1480(r30)
	storeli.w r3, -1476(r30)
	storeli.w r3, -1472(r30)
	storeli.w r3, -1468(r30)
	storeli.w r3, -1464(r30)
	storeli.w r3, -1460(r30)
	storeli.w r3, -1456(r30)
	storeli.w r3, -1452(r30)
	storeli.w r3, -1448(r30)
	storeli.w r3, -1444(r30)
	storeli.w r3, -1440(r30)
	storeli.w r3, -1436(r30)
	storeli.w r3, -1432(r30)
	storeli.w r3, -1428(r30)
	storeli.w r3, -1424(r30)
	storeli.w r3, -1420(r30)
	storeli.w r3, -1416(r30)
	storeli.w r3, -1412(r30)
	storeli.w r3, -1408(r30)
	storeli.w r3, -1404(r30)
	storeli.w r3, -1400(r30)
	storeli.w r3, -1396(r30)
	storeli.w r3, -1392(r30)
	storeli.w r3, -1388(r30)
	storeli.w r3, -1384(r30)
	storeli.w r3, -1380(r30)
	storeli.w r3, -1376(r30)
	storeli.w r3, -1372(r30)
	storeli.w r3, -1368(r30)
	storeli.w r3, -1364(r30)
	storeli.w r3, -1360(r30)
	storeli.w r3, -1356(r30)
	storeli.w r3, -1352(r30)
	storeli.w r3, -1348(r30)
	storeli.w r3, -1344(r30)
	storeli.w r3, -1340(r30)
	storeli.w r3, -1336(r30)
	storeli.w r3, -1332(r30)
	storeli.w r3, -1328(r30)
	storeli.w r3, -1324(r30)
	storeli.w r3, -1320(r30)
	storeli.w r3, -1316(r30)
	storeli.w r3, -1312(r30)
	storeli.w r3, -1308(r30)
	storeli.w r3, -1304(r30)
	storeli.w r3, -1300(r30)
	storeli.w r3, -1296(r30)
	storeli.w r3, -1292(r30)
	storeli.w r3, -1288(r30)
	storeli.w r3, -1284(r30)
	storeli.w r3, -1280(r30)
	storeli.w r3, -1276(r30)
	storeli.w r3, -1272(r30)
	storeli.w r3, -1268(r30)
	storeli.w r3, -1264(r30)
	storeli.w r3, -1260(r30)
	storeli.w r3, -1256(r30)
	storeli.w r3, -1252(r30)
	storeli.w r3, -1248(r30)
	storeli.w r3, -1244(r30)
	storeli.w r3, -1240(r30)
	storeli.w r3, -1236(r30)
	storeli.w r3, -1232(r30)
	storeli.w r3, -1228(r30)
	storeli.w r3, -1224(r30)
	storeli.w r3, -1220(r30)
	storeli.w r3, -1216(r30)
	storeli.w r3, -1212(r30)
	storeli.w r3, -1208(r30)
	storeli.w r3, -1204(r30)
	storeli.w r3, -1200(r30)
	storeli.w r3, -1196(r30)
	storeli.w r3, -1192(r30)
	storeli.w r3, -1188(r30)
	storeli.w r3, -1184(r30)
	storeli.w r3, -1180(r30)
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
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w r3, -1728(r30)
	storeli.w r3, -1724(r30)
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	mul.s r1, r2, r6
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	fmac.s r2, r2, r6
	.loc	1 48 10                         # parallel-rne.mlir:48:10
	min.s r2, r2, r4
	.loc	1 65 5                          # parallel-rne.mlir:65:5
	ble.s r2, r1, .LBB0_1045
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 49 11 is_stmt 1               # parallel-rne.mlir:49:11
	sext_int2long r[13:14], r1
	lui r1, 335
	addli r6, zero, 2
	addli r4, zero, 4
	lui r23, 522240
	lui r26, 524288
	lui r28, 268288
	lui r25, 71
	store.d r[2:3], -1896(r30)              # 8-byte Folded Spill
	ori r1, r1, 1024
	lui r2, 343
	storeli.w r1, -1900(r30)                # 4-byte Folded Spill
	ori r1, r2, 1024
	lui r2, 359
	storeli.w r1, -1904(r30)                # 4-byte Folded Spill
	lui r1, 351
	ori r1, r1, 1024
	storeli.w r1, -1908(r30)                # 4-byte Folded Spill
	ori r1, r2, 1024
	lui r2, 367
	storeli.w r1, -1912(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r27, r1, 4095
	ori r1, r2, 1024
	lui r2, 2047
	storeli.w r1, -1916(r30)                # 4-byte Folded Spill
	lui r1, 375
	ori r22, r2, 4095
	lui r2, 56
	ori r1, r1, 1024
	storeli.w r1, -1920(r30)                # 4-byte Folded Spill
	lui r1, 383
	ori r1, r1, 1024
	storeli.w r1, -1924(r30)                # 4-byte Folded Spill
	ori r1, r2, 2115
	lui r2, 259268
	storeli.w r1, -1928(r30)                # 4-byte Folded Spill
	lui r1, 250738
	ori r1, r1, 1811
	storeli.w r1, -1932(r30)                # 4-byte Folded Spill
	ori r1, r2, 554
	storeli.w r1, -1936(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1333 7                        # parallel-rne.mlir:1333:7
	addli r1, zero, 17
	addli r6, zero, 2
	lui r25, 71
	xsignal r1, 0
	.loc	1 1334 7                        # parallel-rne.mlir:1334:7
	addli r1, zero, 26
	xsignal r1, 0
	.loc	1 1335 7                        # parallel-rne.mlir:1335:7
	addli r1, zero, 38
	xsignal r1, 0
	.loc	1 1336 7                        # parallel-rne.mlir:1336:7
	addli r1, zero, 40
	xsignal r1, 0
	load.d r[13:14], -1848(r30)             # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 65 5                          # parallel-rne.mlir:65:5
	load.d r[1:2], -1896(r30)               # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 1
	addli r4, zero, 4
	setlt.sl r1, r[13:14], r[1:2]
	beq r1, zero, .LBB0_1045
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_88 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #     Child Loop BB0_100 Depth 2
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_103 Depth 3
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_144 Depth 3
                                        #       Child Loop BB0_131 Depth 3
                                        #     Child Loop BB0_156 Depth 2
                                        #       Child Loop BB0_171 Depth 3
                                        #       Child Loop BB0_158 Depth 3
                                        #     Child Loop BB0_183 Depth 2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_185 Depth 3
                                        #     Child Loop BB0_210 Depth 2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_213 Depth 3
                                        #     Child Loop BB0_239 Depth 2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_242 Depth 3
                                        #     Child Loop BB0_279 Depth 2
                                        #       Child Loop BB0_281 Depth 3
                                        #       Child Loop BB0_280 Depth 3
                                        #     Child Loop BB0_285 Depth 2
                                        #       Child Loop BB0_287 Depth 3
                                        #       Child Loop BB0_286 Depth 3
                                        #     Child Loop BB0_291 Depth 2
                                        #       Child Loop BB0_293 Depth 3
                                        #       Child Loop BB0_292 Depth 3
                                        #     Child Loop BB0_297 Depth 2
                                        #       Child Loop BB0_299 Depth 3
                                        #       Child Loop BB0_298 Depth 3
                                        #     Child Loop BB0_303 Depth 2
                                        #       Child Loop BB0_305 Depth 3
                                        #       Child Loop BB0_304 Depth 3
                                        #     Child Loop BB0_309 Depth 2
                                        #       Child Loop BB0_311 Depth 3
                                        #       Child Loop BB0_310 Depth 3
                                        #     Child Loop BB0_315 Depth 2
                                        #       Child Loop BB0_317 Depth 3
                                        #       Child Loop BB0_316 Depth 3
                                        #     Child Loop BB0_321 Depth 2
                                        #       Child Loop BB0_323 Depth 3
                                        #       Child Loop BB0_322 Depth 3
                                        #     Child Loop BB0_337 Depth 2
                                        #       Child Loop BB0_339 Depth 3
                                        #     Child Loop BB0_358 Depth 2
                                        #       Child Loop BB0_360 Depth 3
                                        #     Child Loop BB0_379 Depth 2
                                        #       Child Loop BB0_381 Depth 3
                                        #     Child Loop BB0_400 Depth 2
                                        #       Child Loop BB0_402 Depth 3
                                        #     Child Loop BB0_421 Depth 2
                                        #       Child Loop BB0_423 Depth 3
                                        #     Child Loop BB0_442 Depth 2
                                        #       Child Loop BB0_444 Depth 3
                                        #     Child Loop BB0_463 Depth 2
                                        #       Child Loop BB0_465 Depth 3
                                        #     Child Loop BB0_484 Depth 2
                                        #       Child Loop BB0_486 Depth 3
                                        #     Child Loop BB0_518 Depth 2
                                        #       Child Loop BB0_528 Depth 3
                                        #       Child Loop BB0_521 Depth 3
                                        #     Child Loop BB0_554 Depth 2
                                        #       Child Loop BB0_564 Depth 3
                                        #       Child Loop BB0_557 Depth 3
                                        #     Child Loop BB0_590 Depth 2
                                        #       Child Loop BB0_600 Depth 3
                                        #       Child Loop BB0_593 Depth 3
                                        #     Child Loop BB0_626 Depth 2
                                        #       Child Loop BB0_636 Depth 3
                                        #       Child Loop BB0_629 Depth 3
                                        #     Child Loop BB0_662 Depth 2
                                        #       Child Loop BB0_672 Depth 3
                                        #       Child Loop BB0_665 Depth 3
                                        #     Child Loop BB0_698 Depth 2
                                        #       Child Loop BB0_708 Depth 3
                                        #       Child Loop BB0_701 Depth 3
                                        #     Child Loop BB0_734 Depth 2
                                        #       Child Loop BB0_744 Depth 3
                                        #       Child Loop BB0_737 Depth 3
                                        #     Child Loop BB0_770 Depth 2
                                        #       Child Loop BB0_780 Depth 3
                                        #       Child Loop BB0_773 Depth 3
                                        #     Child Loop BB0_818 Depth 2
                                        #       Child Loop BB0_835 Depth 3
                                        #       Child Loop BB0_821 Depth 3
                                        #     Child Loop BB0_846 Depth 2
                                        #       Child Loop BB0_863 Depth 3
                                        #       Child Loop BB0_849 Depth 3
                                        #     Child Loop BB0_874 Depth 2
                                        #       Child Loop BB0_891 Depth 3
                                        #       Child Loop BB0_877 Depth 3
                                        #     Child Loop BB0_902 Depth 2
                                        #       Child Loop BB0_919 Depth 3
                                        #       Child Loop BB0_905 Depth 3
                                        #     Child Loop BB0_930 Depth 2
                                        #       Child Loop BB0_947 Depth 3
                                        #       Child Loop BB0_933 Depth 3
                                        #     Child Loop BB0_958 Depth 2
                                        #       Child Loop BB0_975 Depth 3
                                        #       Child Loop BB0_961 Depth 3
                                        #     Child Loop BB0_986 Depth 2
                                        #       Child Loop BB0_1003 Depth 3
                                        #       Child Loop BB0_989 Depth 3
                                        #     Child Loop BB0_1015 Depth 2
                                        #       Child Loop BB0_1032 Depth 3
                                        #       Child Loop BB0_1018 Depth 3
	.loc	1 89 13                         # parallel-rne.mlir:89:13
	loadli.w r2,  -1732(r30)
	addli r24, zero, 64
	addli r3, r2, 1
	storeli.w r3, -1732(r30)
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	bneq r7, r4, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 18
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r1,  48(r30)
	mod.s r2, r2, r6
	addli r11, zero, 2
	store.d r[13:14], -1848(r30)            # 8-byte Folded Spill
	addli r16, zero, 0
	addli r21, zero, 2
	div.s r3, r13, r1
	loadli.w r1,  44(r30)
	slli r10, r2, 14
	div.s r4, r3, r1
	addli r1, zero, 16
	loadli.w r3,  -1720(r30)
	div.s r5, r4, r1
	addli r1, zero, 1
	slli r7, r5, 3
	slli r5, r5, 4
	sub.s r6, r1, r7
	addli r1, zero, 8
	sub.s r5, r4, r5
	min.s r6, r6, r1
	mod.s r8, r4, r6
	div.s r9, r5, r6
	loadli.w r4,  -948(r30)
	loadli.w r6,  -692(r30)
	loadli.w r5,  -368(r30)
	add.s r7, r7, r8
	slli r2, r9, 7
	zext_int2long r[8:9], r9
	slli r1, r7, 5
	zext_int2long r[17:18], r7
	storeli.w r1, -1876(r30)                # 4-byte Folded Spill
	addli r1, zero, 7
	store.d r[17:18], -1872(r30)            # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r1
	addli r1, zero, 13
	.loc	1 91 7 is_stmt 1                # parallel-rne.mlir:91:7
	sll.d r[13:14], r[8:9], r11
	load.d r[7:8], 8(r30)
	sll.d r[11:12], r[17:18], r1
	addli r9, zero, 0
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	store.d r[13:14], -1864(r30)            # 8-byte Folded Spill
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	add.ul r[7:8], r[7:8], r[13:14]
	load.d r[13:14], 0(r30)
	add.ul r[12:13], r[13:14], r[11:12]
	addli r14, zero, 1
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r15, zero, 2
	.loc	1 115 9 is_stmt 1               # parallel-rne.mlir:115:9
	addli r16, zero, 5
	addli r21, zero, 2
	xwait r15, 0
	xwait r16, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	addli r15, zero, 32
	ds_cfg r15, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r15, zero, 13
	shuffle_batch r11, r17, r15, 1
	addli r11, zero, 3
	unlock zero
	xsignal r11, 0
	addli r11, zero, 4
	xsignal r11, 0
.LBB0_11:                               # %.thread78
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	addli r6, r6, 1
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	addli r5, r5, 1
.LBB0_12:                               # %.thread80
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	andi r11, r14, 1
	beq r11, zero, .LBB0_29
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 135 15                        # parallel-rne.mlir:135:15
	addli r9, r9, 1
	addli r16, zero, 1
	addli r14, zero, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r11, zero, 63
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	addli r15, zero, 192
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	mod.s r11, r4, r11
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	mod.s r17, r3, r15
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	lui r15, 8
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	addli r3, r3, 1
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r4, r4, 1
	slli r18, r11, 12
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	slli r11, r17, 12
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	add.s r17, r18, r15
	.loc	1 114 9                         # parallel-rne.mlir:114:9
	beq r1, r21, .LBB0_10
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[18:19], r16
	.loc	1 114 9                         # parallel-rne.mlir:114:9
	addli r15, zero, 1
	bneq r1, r15, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	addli r11, zero, 7
	addli r16, zero, 128
	addli r15, zero, 32
	sll.d r[18:19], r[18:19], r11
	addli r11, zero, 3
	xwait r11, 0
	addli r11, zero, 4
	add.ul r[18:19], r[12:13], r[18:19]
	lock zero, r11
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r19, zero, 2
	dma_cfg r17, r18, r16, 3
	addli r17, zero, 256
	dma_cfg r16, r17, r15, 4
	dma_run zero
	unlock r11
	xsignal r21, 0
	.loc	1 115 9 is_stmt 1               # parallel-rne.mlir:115:9
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	mod.s r16, r5, r24
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	addli r15, zero, 80
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	addli r5, r5, 1
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	mod.s r17, r6, r15
	addli r6, r6, 1
	.loc	1 131 9                         # parallel-rne.mlir:131:9
	addli r15, zero, 7
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	slli r20, r16, 14
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	slli r16, r17, 14
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	add.s r17, r20, r25
	.loc	1 131 9                         # parallel-rne.mlir:131:9
	beq r1, r15, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r20, zero, 6
	.loc	1 131 9                         # parallel-rne.mlir:131:9
	bneq r1, r20, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	addli r11, zero, 15
	addli r16, zero, 512
	addli r15, zero, 32
	sll.d r[18:19], r[18:19], r11
	addli r11, zero, 7
	xwait r11, 0
	addli r11, zero, 4
	add.ul r[18:19], r[7:8], r[18:19]
	lock zero, r11
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r19, zero, 2
	dma_cfg r17, r18, r16, 3
	addli r17, zero, 1024
	dma_cfg r16, r17, r15, 4
	dma_run zero
	unlock r11
	xsignal r20, 0
	.loc	1 132 9 is_stmt 1               # parallel-rne.mlir:132:9
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	addli r11, zero, 6
	addli r15, zero, 128
	xwait r11, 0
	addli r11, zero, 9
	xwait r11, 0
	lock zero, zero
	addli r11, zero, 32
	ds_cfg r21, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r15, zero, 13
	shuffle_coa r16, r17, r11, 2
	addli r11, zero, 7
	unlock zero
	xsignal r11, 0
	addli r11, zero, 8
	xsignal r11, 0
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r15, zero, 4
	.loc	1 134 9 is_stmt 1               # parallel-rne.mlir:134:9
	bneq r1, r15, .LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r15, 0
	addli r15, zero, 8
	addli r17, zero, 1
	addli r18, zero, 1
	addli r19, zero, 0
	addli r21, zero, 4
	addli r26, zero, 32
	addli r24, zero, 64
	xwait r15, 0
	addli r15, zero, 2
	beq r9, zero, .LBB0_24
.LBB0_23:                               # %.preheader132
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r20, r19, 13
	slli r19, r19, 8
	lock zero, r17
	mm_cfg r24, r26, r26, 0
	or r20, r20, r16
	or r19, r19, r10
	mm_cfg r15, r21, r17, 2
	mm_acc r19, r11, r20, 8
	andi r20, r18, 1
	addli r19, zero, 1
	addli r18, zero, 0
	unlock r17
	bneq r20, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader131
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r20, r19, 13
	slli r19, r19, 8
	lock zero, r17
	mm_cfg r24, r26, r26, 0
	or r20, r20, r16
	or r19, r19, r10
	mm_cfg r15, r21, r17, 2
	mm r19, r11, r20, 8
	andi r20, r18, 1
	addli r19, zero, 1
	addli r18, zero, 0
	unlock r17
	bneq r20, zero, .LBB0_24
.LBB0_25:                               # %.thread80.thread192
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	andi r11, r14, 1
	.loc	1 134 9                         # parallel-rne.mlir:134:9
	addli r14, zero, 5
	addli r24, zero, 64
	addli r21, zero, 2
	xsignal r14, 0
	addli r14, zero, 9
	xsignal r14, 0
	beq r11, zero, .LBB0_1044
# %bb.26:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	lui r26, 524288
	.loc	1 91 7 is_stmt 1                # parallel-rne.mlir:91:7
	j .LBB0_13
.LBB0_27:                               # %.thread80.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	andi r11, r14, 1
	bneq r11, zero, .LBB0_13
# %bb.28:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	storeli.w r6, -692(r30)
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	storeli.w r5, -368(r30)
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	storeli.w r3, -1720(r30)
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	storeli.w r4, -948(r30)
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	j .LBB0_31
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	storeli.w r3, -1720(r30)
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	addli r3, zero, 4
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	storeli.w r6, -692(r30)
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	storeli.w r5, -368(r30)
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	storeli.w r4, -948(r30)
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	bneq r1, r3, .LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	xsignal r3, 0
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 128
	.loc	1 145 13 is_stmt 1              # parallel-rne.mlir:145:13
	zext_int2long r[2:3], r2
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	loadli.w r6,  -108(r30)
	addli r8, zero, 2
	zext_int2long r[24:25], r4
	mod.s r7, r6, r8
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	min.ul r[4:5], r[2:3], r[24:25]
	addli.d r[4:5], r[4:5], 128
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	max.ul r[4:5], r[4:5], r[2:3]
	sub.sl r[2:3], r[4:5], r[2:3]
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	slli r5, r7, 9
	addli r4, r6, 1
	addli r7, zero, 1
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	min.ul r[11:12], r[2:3], r[24:25]
	lui r3, 327
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	storeli.w r4, -108(r30)
	add.s r2, r5, r3
	ori r3, r3, 1024
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	store.d r[11:12], -1888(r30)            # 8-byte Folded Spill
	bneq r1, r7, .LBB0_33
# %bb.32:                               # %.thread194
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[13:14], r[11:12], 0
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	load.d r[4:5], 16(r30)
	load.d r[11:12], -1864(r30)             # 8-byte Folded Reload
	addli r6, zero, 20
	addli r9, zero, 4
	xwait r6, 0
	lock zero, r9
	slli r6, r13, 2
	add.ul r[4:5], r[4:5], r[11:12]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg r2, r4, r6, 3
	addli r2, zero, 512
	addli r6, zero, 2
	dma_cfg r2, r2, r7, 4
	addli r2, zero, 19
	dma_run zero
	unlock r9
	xsignal r2, 0
	.loc	1 157 13 is_stmt 1              # parallel-rne.mlir:157:13
	loadli.w r2,  -96(r30)
	mod.s r4, r2, r8
	addli r2, r2, 1
	storeli.w r2, -96(r30)
	slli r4, r4, 14
	add.s r3, r4, r3
	storeli.w r3, -1744(r30)                # 4-byte Folded Spill
	j .LBB0_37
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r4,  -96(r30)
	addli r6, zero, 2
	mod.s r5, r4, r8
	addli r4, r4, 1
	storeli.w r4, -96(r30)
	slli r5, r5, 14
	add.s r3, r5, r3
	storeli.w r3, -1744(r30)                # 4-byte Folded Spill
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	addli r3, zero, 5
	bneq r1, r3, .LBB0_37
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 10
	addli r3, zero, 0
	xwait r4, 0
	addli r4, zero, 19
	xwait r4, 0
	addli r4, zero, 23
	xwait r4, 0
	lock zero, r6
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r7, zero, zero, 3
	lui r7, 4
	loadli.w r8,  -1744(r30)                # 4-byte Folded Reload
.LBB0_35:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r8, r3
	add.s r5, r10, r3
	addli r3, r3, 512
	dsmadd r4, r5, r2, 0
	bneq r3, r7, .LBB0_35
# %bb.36:                               # %.thread195
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	unlock r6
	addli r7, zero, 1023
	addli r4, zero, 4
	lui r5, 260096
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	loadli.w r2,  -84(r30)
	mod.s r3, r2, r6
	addli r2, r2, 1
	storeli.w r2, -84(r30)
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r6
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	slli r2, r3, 14
	loadli.w r3,  -1900(r30)                # 4-byte Folded Reload
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	ew_cfg zero, zero, zero, 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r3, r2, r3
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	lui r2, 258048
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 25
	ew_cfg zero, r7, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, zero, 19
	storeli.w r3, -1748(r30)                # 4-byte Folded Spill
	hp_ssmul r3, r8, r8, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r2, 0
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	loadli.w r2,  -72(r30)
	mod.s r3, r2, r6
	addli r2, r2, 1
	storeli.w r2, -72(r30)
	loadli.w r2,  -1904(r30)                # 4-byte Folded Reload
	slli r3, r3, 14
	add.s r12, r3, r2
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 28
	xwait r2, 0
	lock zero, r6
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r5, 0
	ew_cfg zero, r7, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	dsmul r12, r8, r8, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	loadli.w r2,  -60(r30)
	mod.s r3, r2, r6
	addli r2, r2, 1
	storeli.w r2, -60(r30)
	loadli.w r2,  -1908(r30)                # 4-byte Folded Reload
	slli r3, r3, 14
	add.s r2, r3, r2
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	addli r3, zero, 30
	xwait r3, 0
	lock zero, r6
	addli r3, zero, 21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r5, 0
	ew_cfg zero, r7, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	dsmul r2, r12, r8, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r3, 0
	addli r3, zero, 27
	xsignal r3, 0
	addli r3, zero, 29
	xsignal r3, 0
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	loadli.w r3,  -48(r30)
	storeli.w r3, -1852(r30)                # 4-byte Folded Spill
	addli r3, r3, 1
	storeli.w r3, -48(r30)
	j .LBB0_39
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	loadli.w r2,  -84(r30)
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	loadli.w r3,  -72(r30)
	addli r7, zero, 2
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	loadli.w r8,  -48(r30)
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	mod.s r4, r2, r6
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	mod.s r5, r3, r6
	addli r3, r3, 1
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	loadli.w r6,  -60(r30)
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	addli r2, r2, 1
	storeli.w r8, -1852(r30)                # 4-byte Folded Spill
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	storeli.w r3, -72(r30)
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	storeli.w r2, -84(r30)
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	mod.s r2, r6, r7
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	slli r3, r4, 14
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	slli r4, r5, 14
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	loadli.w r5,  -1900(r30)                # 4-byte Folded Reload
	add.s r3, r3, r5
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	slli r2, r2, 14
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	storeli.w r3, -1748(r30)                # 4-byte Folded Spill
	loadli.w r3,  -1904(r30)                # 4-byte Folded Reload
	add.s r12, r4, r3
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	addli r3, r6, 1
	loadli.w r4,  -1908(r30)                # 4-byte Folded Reload
	storeli.w r3, -60(r30)
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	addli r3, r8, 1
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	add.s r2, r2, r4
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	storeli.w r3, -48(r30)
	.loc	1 171 7                         # parallel-rne.mlir:171:7
	addli r3, zero, 3
	bneq r1, r3, .LBB0_39
# %bb.38:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	.loc	1 172 7                         # parallel-rne.mlir:172:7
	addli r3, zero, 21
	xwait r3, 0
	.loc	1 173 7                         # parallel-rne.mlir:173:7
	addli r3, zero, 27
	xwait r3, 0
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	addli r3, zero, 29
	xwait r3, 0
.LBB0_39:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	addli r3, zero, 255
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	xfence
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	mfence { lm, sm, gm }
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	csr_set csr5, r3
	sub.s r3, r10, r12
	storeli.w r3, -1832(r30)                # 4-byte Folded Spill
	loadli.w r3,  -1744(r30)                # 4-byte Folded Reload
	sub.s r3, r10, r3
	storeli.w r3, -1836(r30)                # 4-byte Folded Spill
	sub.s r3, r10, r2
	storeli.w r3, -1840(r30)                # 4-byte Folded Spill
	addli r3, zero, 3
	zext_int2long r[3:4], r3
	store.d r[3:4], -1816(r30)              # 8-byte Folded Spill
	addli r3, zero, 127
	sync_core
	zext_int2long r[6:7], r3
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	bneq r1, zero, .LBB0_68
# %bb.40:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r3, r1, r3
	loadli.w r1,  -1840(r30)                # 4-byte Folded Reload
	min.u r3, r3, r1
	addli r1, zero, 16
	setlt.u r1, r3, r1
	zext_int2long r[3:4], zero
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	storeli.w r1, -1768(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_42
.LBB0_41:                               # %middle.block728
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 187 9 is_stmt 1               # parallel-rne.mlir:187:9
	load.d r[3:4], -1816(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1760(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_67
.LBB0_42:                               # %.preheader130
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1760(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r1
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	loadli.w r1,  -1768(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_57
# %bb.43:                               # %scalar.ph720.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_45
.LBB0_44:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	setlt.ul r1, r[4:5], r[6:7]
	.loc	1 210 13 is_stmt 1              # parallel-rne.mlir:210:13
	add.s r3, r10, r11
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 210 13                        # parallel-rne.mlir:210:13
	stores.w r16, 0(r3)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	beq r1, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph720
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[8:9], r[4:5], r[13:14]
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	lui r16, 523264
	lui r18, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	slli r11, r8, 2
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	add.s r1, r1, r11
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.s r3, r2, r11
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	loads.w r1, 0(r1)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	loads.w r19, 0(r3)
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r3, r1, r27
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	beq r3, r23, .LBB0_47
# %bb.46:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_47:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	add.s r1, r12, r11
	loads.w r1, 0(r1)
	and r17, r1, r27
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r17, zero, .LBB0_55
# %bb.48:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r3, zero, .LBB0_56
.LBB0_49:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	beq r17, r23, .LBB0_51
.LBB0_50:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_51:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	setlt.u r1, r23, r3
	lui r3, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_53
# %bb.52:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r19, 0
.LBB0_53:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	setlt.u r1, r23, r17
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_44
# %bb.54:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r3, 0
	j .LBB0_44
.LBB0_55:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	beq r3, zero, .LBB0_49
.LBB0_56:                               # %scalar.ph720
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r17, r23, .LBB0_50
	j .LBB0_51
.LBB0_57:                               # %vector.body722.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_59
.LBB0_58:                               # %vector.body722
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 210 13                        # parallel-rne.mlir:210:13
	add.s r4, r10, r4
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	seteq.d r1, r[16:17], r[24:25]
	.loc	1 210 13                        # parallel-rne.mlir:210:13
	stores.w r11, 12(r4)
	stores.w r3, 8(r4)
	stores.w r21, 4(r4)
	stores.w r5, 0(r4)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	bneq r1, zero, .LBB0_41
.LBB0_59:                               # %vector.body722
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[3:4], r[16:17], r[13:14]
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	slli r4, r3, 2
	add.s r18, r12, r4
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	add.s r19, r1, r4
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	loads.w r3, 0(r18)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	loads.w r5, 0(r19)
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	and r3, r3, r27
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r5, r5, r27
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	seteq r11, r3, r23
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	seteq r8, r3, zero
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	seteq r21, r5, r23
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	seteq r20, r5, zero
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	max.u r3, r3, r5
	setlt.u r3, r23, r3
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	and r5, r11, r20
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r8, r8, r21
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.s r20, r2, r4
	lui r11, 523264
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	or r5, r5, r8
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	or r3, r3, r5
	lui r5, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r3, zero, .LBB0_61
# %bb.60:                               # %vector.body722
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r20)
.LBB0_61:                               # %vector.body722
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r3, 4(r18)
	loads.w r8, 4(r19)
	and r3, r3, r27
	and r8, r8, r27
	seteq r9, r3, r23
	seteq r26, r3, zero
	seteq r21, r8, zero
	seteq r15, r8, r23
	max.u r3, r3, r8
	setlt.u r3, r23, r3
	and r8, r9, r21
	and r9, r26, r15
	lui r21, 523264
	or r8, r8, r9
	or r3, r3, r8
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r3, zero, .LBB0_63
# %bb.62:                               # %vector.body722
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
.LBB0_63:                               # %vector.body722
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r3, 8(r18)
	loads.w r8, 8(r19)
	and r3, r3, r27
	and r8, r8, r27
	seteq r9, r3, r23
	seteq r1, r3, zero
	seteq r26, r8, r23
	seteq r15, r8, zero
	max.u r3, r3, r8
	setlt.u r3, r23, r3
	and r8, r9, r15
	and r1, r1, r26
	or r1, r8, r1
	or r1, r3, r1
	lui r3, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_65
# %bb.64:                               # %vector.body722
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r20)
.LBB0_65:                               # %vector.body722
                                        #   in Loop: Header=BB0_59 Depth=3
	loads.w r1, 12(r18)
	loads.w r8, 12(r19)
	lui r26, 524288
	and r1, r1, r27
	and r8, r8, r27
	seteq r9, r1, r23
	seteq r19, r1, zero
	seteq r15, r8, zero
	seteq r18, r8, r23
	max.u r1, r1, r8
	setlt.u r1, r23, r1
	and r8, r9, r15
	and r9, r19, r18
	or r8, r8, r9
	or r1, r1, r8
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_58
# %bb.66:                               # %vector.body722
                                        #   in Loop: Header=BB0_59 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_58
.LBB0_67:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	mfence { sm }
.LBB0_68:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 7
	zext_int2long r[3:4], r3
	.loc	1 215 7 is_stmt 1               # parallel-rne.mlir:215:7
	store.d r[3:4], -1760(r30)              # 8-byte Folded Spill
	addli r3, zero, 1
	bneq r1, r3, .LBB0_97
# %bb.69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	loadli.w r3,  -1840(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	.loc	1 215 7                         # parallel-rne.mlir:215:7
	storeli.w r1, -1776(r30)                # 4-byte Folded Spill
	addli r1, zero, 4
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_71
.LBB0_70:                               # %middle.block713
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 223 9 is_stmt 1               # parallel-rne.mlir:223:9
	load.d r[3:4], -1760(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1768(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_96
.LBB0_71:                               # %.preheader129
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_88 Depth 3
                                        #       Child Loop BB0_74 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1768(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r1
	.loc	1 224 11 is_stmt 1              # parallel-rne.mlir:224:11
	loadli.w r1,  -1776(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_86
# %bb.72:                               # %scalar.ph705.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_74
.LBB0_73:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 224 11                        # parallel-rne.mlir:224:11
	setlt.ul r1, r[4:5], r[6:7]
	.loc	1 246 13 is_stmt 1              # parallel-rne.mlir:246:13
	add.s r3, r10, r11
	.loc	1 224 11                        # parallel-rne.mlir:224:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r16, 0(r3)
	.loc	1 224 11                        # parallel-rne.mlir:224:11
	beq r1, zero, .LBB0_70
.LBB0_74:                               # %scalar.ph705
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	add.ul r[8:9], r[4:5], r[13:14]
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	lui r16, 523264
	lui r18, 523264
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	slli r11, r8, 2
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.s r1, r1, r11
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	add.s r3, r2, r11
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	loads.w r1, 0(r1)
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	loads.w r19, 0(r3)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r3, r1, r27
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r3, r23, .LBB0_76
# %bb.75:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_76:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	add.s r1, r12, r11
	loads.w r1, 0(r1)
	and r17, r1, r27
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r17, zero, .LBB0_84
# %bb.77:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r3, zero, .LBB0_85
.LBB0_78:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	beq r17, r23, .LBB0_80
.LBB0_79:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_80:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	setlt.u r1, r23, r3
	lui r3, 523264
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_82
# %bb.81:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r19, 0
.LBB0_82:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	setlt.u r1, r23, r17
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_73
# %bb.83:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r3, 0
	j .LBB0_73
.LBB0_84:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r3, zero, .LBB0_78
.LBB0_85:                               # %scalar.ph705
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r17, r23, .LBB0_79
	j .LBB0_80
.LBB0_86:                               # %vector.body707.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_88
.LBB0_87:                               # %vector.body707
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 224 11 is_stmt 1              # parallel-rne.mlir:224:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r4, r10, r4
	.loc	1 224 11                        # parallel-rne.mlir:224:11
	seteq.d r1, r[16:17], r[24:25]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r11, 12(r4)
	stores.w r3, 8(r4)
	stores.w r21, 4(r4)
	stores.w r5, 0(r4)
	.loc	1 224 11                        # parallel-rne.mlir:224:11
	bneq r1, zero, .LBB0_70
.LBB0_88:                               # %vector.body707
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	add.ul r[3:4], r[16:17], r[13:14]
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	slli r4, r3, 2
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.s r19, r1, r4
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	add.s r18, r12, r4
	loads.w r1, 0(r18)
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	loads.w r3, 0(r19)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r1, r1, r27
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r3, r3, r27
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	seteq r5, r1, r23
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	seteq r20, r1, zero
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	seteq r11, r3, zero
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	seteq r15, r3, r23
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r3, r5, r11
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r5, r20, r15
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	add.s r20, r2, r4
	lui r11, 523264
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	or r3, r3, r5
	lui r5, 523264
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	or r1, r1, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_90
# %bb.89:                               # %vector.body707
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r20)
.LBB0_90:                               # %vector.body707
                                        #   in Loop: Header=BB0_88 Depth=3
	loads.w r1, 4(r18)
	loads.w r3, 4(r19)
	and r1, r1, r27
	and r3, r3, r27
	seteq r15, r1, r23
	seteq r8, r1, zero
	seteq r26, r3, r23
	seteq r21, r3, zero
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r15, r21
	and r8, r8, r26
	lui r21, 523264
	or r3, r3, r8
	or r1, r1, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_92
# %bb.91:                               # %vector.body707
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
.LBB0_92:                               # %vector.body707
                                        #   in Loop: Header=BB0_88 Depth=3
	loads.w r1, 8(r18)
	loads.w r3, 8(r19)
	and r1, r1, r27
	and r3, r3, r27
	seteq r8, r1, r23
	seteq r26, r1, zero
	seteq r9, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r8, r9
	and r8, r26, r15
	or r3, r3, r8
	or r1, r1, r3
	lui r3, 523264
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_94
# %bb.93:                               # %vector.body707
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r20)
.LBB0_94:                               # %vector.body707
                                        #   in Loop: Header=BB0_88 Depth=3
	loads.w r1, 12(r18)
	loads.w r8, 12(r19)
	lui r26, 524288
	and r1, r1, r27
	and r8, r8, r27
	seteq r9, r1, r23
	seteq r19, r1, zero
	seteq r15, r8, zero
	seteq r18, r8, r23
	max.u r1, r1, r8
	setlt.u r1, r23, r1
	and r8, r9, r15
	and r9, r19, r18
	or r8, r8, r9
	or r1, r1, r8
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_87
# %bb.95:                               # %vector.body707
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_87
.LBB0_96:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 215 7                         # parallel-rne.mlir:215:7
	mfence { sm }
.LBB0_97:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 11
	zext_int2long r[3:4], r3
	.loc	1 251 7 is_stmt 1               # parallel-rne.mlir:251:7
	store.d r[3:4], -1768(r30)              # 8-byte Folded Spill
	addli r3, zero, 2
	bneq r1, r3, .LBB0_126
# %bb.98:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	loadli.w r3,  -1840(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	storeli.w r1, -1784(r30)                # 4-byte Folded Spill
	addli r1, zero, 8
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_100
.LBB0_99:                               # %middle.block698
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 259 9 is_stmt 1               # parallel-rne.mlir:259:9
	load.d r[3:4], -1768(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1776(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_125
.LBB0_100:                              # %.preheader128
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_103 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1776(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r1
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	loadli.w r1,  -1784(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_115
# %bb.101:                              # %scalar.ph690.preheader
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_103
.LBB0_102:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	setlt.ul r1, r[4:5], r[6:7]
	.loc	1 282 13 is_stmt 1              # parallel-rne.mlir:282:13
	add.s r3, r10, r11
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 282 13                        # parallel-rne.mlir:282:13
	stores.w r16, 0(r3)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	beq r1, zero, .LBB0_99
.LBB0_103:                              # %scalar.ph690
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[8:9], r[4:5], r[13:14]
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	lui r16, 523264
	lui r18, 523264
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	slli r11, r8, 2
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.s r1, r1, r11
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.s r3, r2, r11
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	loads.w r1, 0(r1)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	loads.w r19, 0(r3)
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	and r3, r1, r27
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	beq r3, r23, .LBB0_105
# %bb.104:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_105:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	add.s r1, r12, r11
	loads.w r1, 0(r1)
	and r17, r1, r27
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r17, zero, .LBB0_113
# %bb.106:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r3, zero, .LBB0_114
.LBB0_107:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	beq r17, r23, .LBB0_109
.LBB0_108:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_109:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.u r1, r23, r3
	lui r3, 523264
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_111
# %bb.110:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r19, 0
.LBB0_111:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.u r1, r23, r17
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_102
# %bb.112:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r3, 0
	j .LBB0_102
.LBB0_113:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	beq r3, zero, .LBB0_107
.LBB0_114:                              # %scalar.ph690
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r17, r23, .LBB0_108
	j .LBB0_109
.LBB0_115:                              # %vector.body692.preheader
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_117
.LBB0_116:                              # %vector.body692
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 282 13                        # parallel-rne.mlir:282:13
	add.s r4, r10, r4
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	seteq.d r1, r[16:17], r[24:25]
	.loc	1 282 13                        # parallel-rne.mlir:282:13
	stores.w r11, 12(r4)
	stores.w r3, 8(r4)
	stores.w r21, 4(r4)
	stores.w r5, 0(r4)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	bneq r1, zero, .LBB0_99
.LBB0_117:                              # %vector.body692
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[3:4], r[16:17], r[13:14]
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	slli r4, r3, 2
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.s r19, r1, r4
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.s r18, r12, r4
	loads.w r1, 0(r18)
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	loads.w r3, 0(r19)
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	and r1, r1, r27
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	and r3, r3, r27
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	seteq r5, r1, r23
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	seteq r20, r1, zero
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	seteq r11, r3, zero
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	seteq r15, r3, r23
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	and r3, r5, r11
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	and r5, r20, r15
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.s r20, r2, r4
	lui r11, 523264
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	or r3, r3, r5
	lui r5, 523264
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	or r1, r1, r3
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_119
# %bb.118:                              # %vector.body692
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r20)
.LBB0_119:                              # %vector.body692
                                        #   in Loop: Header=BB0_117 Depth=3
	loads.w r1, 4(r18)
	loads.w r3, 4(r19)
	and r1, r1, r27
	and r3, r3, r27
	seteq r15, r1, r23
	seteq r8, r1, zero
	seteq r26, r3, r23
	seteq r21, r3, zero
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r15, r21
	and r8, r8, r26
	lui r21, 523264
	or r3, r3, r8
	or r1, r1, r3
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_121
# %bb.120:                              # %vector.body692
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
.LBB0_121:                              # %vector.body692
                                        #   in Loop: Header=BB0_117 Depth=3
	loads.w r1, 8(r18)
	loads.w r3, 8(r19)
	and r1, r1, r27
	and r3, r3, r27
	seteq r8, r1, r23
	seteq r26, r1, zero
	seteq r9, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r8, r9
	and r8, r26, r15
	or r3, r3, r8
	or r1, r1, r3
	lui r3, 523264
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_123
# %bb.122:                              # %vector.body692
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r20)
.LBB0_123:                              # %vector.body692
                                        #   in Loop: Header=BB0_117 Depth=3
	loads.w r1, 12(r18)
	loads.w r8, 12(r19)
	lui r26, 524288
	and r1, r1, r27
	and r8, r8, r27
	seteq r9, r1, r23
	seteq r19, r1, zero
	seteq r15, r8, zero
	seteq r18, r8, r23
	max.u r1, r1, r8
	setlt.u r1, r23, r1
	and r8, r9, r15
	and r9, r19, r18
	or r8, r8, r9
	or r1, r1, r8
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_116
# %bb.124:                              # %vector.body692
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_116
.LBB0_125:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	mfence { sm }
.LBB0_126:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 15
	zext_int2long r[3:4], r3
	.loc	1 287 7 is_stmt 1               # parallel-rne.mlir:287:7
	store.d r[3:4], -1776(r30)              # 8-byte Folded Spill
	addli r3, zero, 3
	bneq r1, r3, .LBB0_153
# %bb.127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	loadli.w r3,  -1840(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	.loc	1 287 7                         # parallel-rne.mlir:287:7
	storeli.w r1, -1792(r30)                # 4-byte Folded Spill
	addli r1, zero, 12
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_129
.LBB0_128:                              # %middle.block683
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 295 9 is_stmt 1               # parallel-rne.mlir:295:9
	load.d r[3:4], -1776(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1784(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_152
.LBB0_129:                              # %.preheader127
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_144 Depth 3
                                        #       Child Loop BB0_131 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[16:17], zero
	.loc	1 296 11 is_stmt 1              # parallel-rne.mlir:296:11
	store.d r[3:4], -1784(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r1
	loadli.w r1,  -1792(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_131
	j .LBB0_144
.LBB0_130:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	setlt.ul r1, r[16:17], r[6:7]
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	add.s r3, r10, r5
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	stores.w r9, 0(r3)
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	beq r1, zero, .LBB0_128
.LBB0_131:                              # %scalar.ph675
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	add.ul r[3:4], r[16:17], r[13:14]
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	lui r9, 523264
	lui r18, 523264
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	slli r5, r3, 2
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	add.s r1, r1, r5
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.s r3, r2, r5
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	loads.w r1, 0(r1)
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	loads.w r19, 0(r3)
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	and r8, r1, r27
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r8, r23, .LBB0_133
# %bb.132:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_133:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	add.s r1, r12, r5
	loads.w r1, 0(r1)
	and r11, r1, r27
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r11, zero, .LBB0_141
# %bb.134:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r8, zero, .LBB0_142
.LBB0_135:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	beq r11, r23, .LBB0_137
.LBB0_136:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_137:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	setlt.u r1, r23, r8
	lui r8, 523264
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_139
# %bb.138:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r19, 0
.LBB0_139:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	setlt.u r1, r23, r11
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_130
# %bb.140:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_130
.LBB0_141:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r8, zero, .LBB0_135
.LBB0_142:                              # %scalar.ph675
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r11, r23, .LBB0_136
	j .LBB0_137
.LBB0_143:                              # %vector.body677
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 296 11 is_stmt 1              # parallel-rne.mlir:296:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	add.s r3, r10, r9
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	seteq.d r1, r[16:17], r[24:25]
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	stores.w r11, 12(r3)
	stores.w r8, 8(r3)
	stores.w r21, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	bneq r1, zero, .LBB0_128
.LBB0_144:                              # %vector.body677
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	add.ul r[8:9], r[16:17], r[13:14]
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	slli r9, r8, 2
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	add.s r19, r1, r9
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	add.s r18, r12, r9
	loads.w r1, 0(r18)
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	loads.w r5, 0(r19)
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	and r1, r1, r27
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	and r5, r5, r27
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	seteq r8, r1, r23
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	seteq r20, r1, zero
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	seteq r11, r5, zero
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	seteq r15, r5, r23
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r5, r8, r11
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	and r8, r20, r15
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.s r20, r2, r9
	lui r11, 523264
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	or r5, r5, r8
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_146
# %bb.145:                              # %vector.body677
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r20)
.LBB0_146:                              # %vector.body677
                                        #   in Loop: Header=BB0_144 Depth=3
	loads.w r1, 4(r18)
	loads.w r8, 4(r19)
	and r1, r1, r27
	and r8, r8, r27
	seteq r15, r1, r23
	seteq r21, r8, zero
	seteq r3, r1, zero
	seteq r26, r8, r23
	max.u r1, r1, r8
	setlt.u r1, r23, r1
	and r4, r15, r21
	and r3, r3, r26
	lui r21, 523264
	or r3, r4, r3
	or r1, r1, r3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_148
# %bb.147:                              # %vector.body677
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
.LBB0_148:                              # %vector.body677
                                        #   in Loop: Header=BB0_144 Depth=3
	loads.w r1, 8(r18)
	loads.w r3, 8(r19)
	and r1, r1, r27
	and r3, r3, r27
	seteq r4, r1, r23
	seteq r26, r1, zero
	seteq r8, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r4, r8
	and r4, r26, r15
	lui r8, 523264
	or r3, r3, r4
	or r1, r1, r3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_150
# %bb.149:                              # %vector.body677
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r20)
.LBB0_150:                              # %vector.body677
                                        #   in Loop: Header=BB0_144 Depth=3
	loads.w r1, 12(r18)
	loads.w r3, 12(r19)
	lui r26, 524288
	and r1, r1, r27
	and r3, r3, r27
	seteq r4, r1, r23
	seteq r19, r1, zero
	seteq r15, r3, zero
	seteq r18, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r4, r15
	and r4, r19, r18
	or r3, r3, r4
	or r1, r1, r3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_143
# %bb.151:                              # %vector.body677
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_143
.LBB0_152:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 287 7                         # parallel-rne.mlir:287:7
	mfence { sm }
.LBB0_153:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 19
	zext_int2long r[3:4], r3
	.loc	1 323 7 is_stmt 1               # parallel-rne.mlir:323:7
	store.d r[3:4], -1784(r30)              # 8-byte Folded Spill
	addli r3, zero, 4
	bneq r1, r3, .LBB0_180
# %bb.154:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	loadli.w r3,  -1840(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	zext_int2long r[3:4], r3
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	storeli.w r1, -1800(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_156
.LBB0_155:                              # %middle.block668
                                        #   in Loop: Header=BB0_156 Depth=2
	.loc	1 331 9 is_stmt 1               # parallel-rne.mlir:331:9
	load.d r[3:4], -1784(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1792(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_179
.LBB0_156:                              # %.preheader126
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_171 Depth 3
                                        #       Child Loop BB0_158 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	.loc	1 332 11 is_stmt 1              # parallel-rne.mlir:332:11
	store.d r[3:4], -1792(r30)              # 8-byte Folded Spill
	sll.d r[16:17], r[3:4], r1
	loadli.w r1,  -1800(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_158
	j .LBB0_171
.LBB0_157:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	setlt.ul r1, r[13:14], r[6:7]
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	add.s r3, r10, r5
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	addli.d r[13:14], r[13:14], 1
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r9, 0(r3)
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	beq r1, zero, .LBB0_155
.LBB0_158:                              # %scalar.ph660
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.ul r[3:4], r[13:14], r[16:17]
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	lui r9, 523264
	lui r18, 523264
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	slli r5, r3, 2
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.s r1, r1, r5
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	add.s r3, r2, r5
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	loads.w r1, 0(r1)
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	loads.w r19, 0(r3)
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	and r8, r1, r27
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r8, r23, .LBB0_160
# %bb.159:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_160:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	add.s r1, r12, r5
	loads.w r1, 0(r1)
	and r11, r1, r27
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r11, zero, .LBB0_168
# %bb.161:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r8, zero, .LBB0_169
.LBB0_162:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	beq r11, r23, .LBB0_164
.LBB0_163:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_164:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	setlt.u r1, r23, r8
	lui r8, 523264
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_166
# %bb.165:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r19, 0
.LBB0_166:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	setlt.u r1, r23, r11
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_157
# %bb.167:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_157
.LBB0_168:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r8, zero, .LBB0_162
.LBB0_169:                              # %scalar.ph660
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r11, r23, .LBB0_163
	j .LBB0_164
.LBB0_170:                              # %vector.body662
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 332 11 is_stmt 1              # parallel-rne.mlir:332:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	add.s r3, r10, r9
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	seteq.d r1, r[13:14], r[24:25]
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r11, 12(r3)
	stores.w r8, 8(r3)
	stores.w r21, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	bneq r1, zero, .LBB0_155
.LBB0_171:                              # %vector.body662
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.ul r[8:9], r[13:14], r[16:17]
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	slli r9, r8, 2
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.s r19, r1, r9
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.s r18, r12, r9
	loads.w r1, 0(r18)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	loads.w r5, 0(r19)
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	and r1, r1, r27
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	and r5, r5, r27
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	seteq r8, r1, r23
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	seteq r20, r1, zero
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	seteq r11, r5, zero
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	seteq r15, r5, r23
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r5, r8, r11
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	and r8, r20, r15
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	add.s r20, r2, r9
	lui r11, 523264
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	or r5, r5, r8
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_173
# %bb.172:                              # %vector.body662
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r20)
.LBB0_173:                              # %vector.body662
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r1, 4(r18)
	loads.w r8, 4(r19)
	and r1, r1, r27
	and r8, r8, r27
	seteq r15, r1, r23
	seteq r21, r8, zero
	seteq r3, r1, zero
	seteq r26, r8, r23
	max.u r1, r1, r8
	setlt.u r1, r23, r1
	and r4, r15, r21
	and r3, r3, r26
	lui r21, 523264
	or r3, r4, r3
	or r1, r1, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_175
# %bb.174:                              # %vector.body662
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
.LBB0_175:                              # %vector.body662
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r1, 8(r18)
	loads.w r3, 8(r19)
	and r1, r1, r27
	and r3, r3, r27
	seteq r4, r1, r23
	seteq r26, r1, zero
	seteq r8, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r4, r8
	and r4, r26, r15
	lui r8, 523264
	or r3, r3, r4
	or r1, r1, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_177
# %bb.176:                              # %vector.body662
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r20)
.LBB0_177:                              # %vector.body662
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r1, 12(r18)
	loads.w r3, 12(r19)
	lui r26, 524288
	and r1, r1, r27
	and r3, r3, r27
	seteq r4, r1, r23
	seteq r19, r1, zero
	seteq r15, r3, zero
	seteq r18, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r4, r15
	and r4, r19, r18
	or r3, r3, r4
	or r1, r1, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_170
# %bb.178:                              # %vector.body662
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_170
.LBB0_179:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	mfence { sm }
.LBB0_180:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 23
	zext_int2long r[3:4], r3
	.loc	1 359 7 is_stmt 1               # parallel-rne.mlir:359:7
	store.d r[3:4], -1792(r30)              # 8-byte Folded Spill
	addli r3, zero, 5
	bneq r1, r3, .LBB0_207
# %bb.181:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	loadli.w r3,  -1840(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	storeli.w r1, -1808(r30)                # 4-byte Folded Spill
	addli r1, zero, 20
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_183
.LBB0_182:                              # %middle.block653
                                        #   in Loop: Header=BB0_183 Depth=2
	.loc	1 367 9 is_stmt 1               # parallel-rne.mlir:367:9
	load.d r[3:4], -1792(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1800(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_206
.LBB0_183:                              # %.preheader125
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_185 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	.loc	1 368 11 is_stmt 1              # parallel-rne.mlir:368:11
	store.d r[3:4], -1800(r30)              # 8-byte Folded Spill
	sll.d r[16:17], r[3:4], r1
	loadli.w r1,  -1808(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_185
	j .LBB0_198
.LBB0_184:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	setlt.ul r1, r[13:14], r[6:7]
	.loc	1 390 13                        # parallel-rne.mlir:390:13
	add.s r3, r10, r5
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	addli.d r[13:14], r[13:14], 1
	.loc	1 390 13                        # parallel-rne.mlir:390:13
	stores.w r9, 0(r3)
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	beq r1, zero, .LBB0_182
.LBB0_185:                              # %scalar.ph645
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_183 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	add.ul r[3:4], r[13:14], r[16:17]
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	lui r9, 523264
	lui r18, 523264
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	slli r5, r3, 2
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	add.s r1, r1, r5
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	add.s r3, r2, r5
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	loads.w r1, 0(r1)
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	loads.w r19, 0(r3)
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	and r8, r1, r27
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	beq r8, r23, .LBB0_187
# %bb.186:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_187:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	add.s r1, r12, r5
	loads.w r1, 0(r1)
	and r11, r1, r27
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r11, zero, .LBB0_195
# %bb.188:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r8, zero, .LBB0_196
.LBB0_189:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	beq r11, r23, .LBB0_191
.LBB0_190:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_191:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	setlt.u r1, r23, r8
	lui r8, 523264
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_193
# %bb.192:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r19, 0
.LBB0_193:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	setlt.u r1, r23, r11
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_184
# %bb.194:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r8, 0
	j .LBB0_184
.LBB0_195:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	beq r8, zero, .LBB0_189
.LBB0_196:                              # %scalar.ph645
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r11, r23, .LBB0_190
	j .LBB0_191
.LBB0_197:                              # %vector.body647
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 368 11 is_stmt 1              # parallel-rne.mlir:368:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 390 13                        # parallel-rne.mlir:390:13
	add.s r3, r10, r9
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	seteq.d r1, r[13:14], r[24:25]
	.loc	1 390 13                        # parallel-rne.mlir:390:13
	stores.w r11, 12(r3)
	stores.w r8, 8(r3)
	stores.w r21, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	bneq r1, zero, .LBB0_182
.LBB0_198:                              # %vector.body647
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_183 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	add.ul r[8:9], r[13:14], r[16:17]
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	slli r9, r8, 2
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	add.s r19, r1, r9
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	add.s r18, r12, r9
	loads.w r1, 0(r18)
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	loads.w r5, 0(r19)
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	and r1, r1, r27
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	and r5, r5, r27
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	seteq r8, r1, r23
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	seteq r20, r1, zero
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	seteq r11, r5, zero
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	seteq r15, r5, r23
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	and r5, r8, r11
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	and r8, r20, r15
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	add.s r20, r2, r9
	lui r11, 523264
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	or r5, r5, r8
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_200
# %bb.199:                              # %vector.body647
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r20)
.LBB0_200:                              # %vector.body647
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r1, 4(r18)
	loads.w r8, 4(r19)
	and r1, r1, r27
	and r8, r8, r27
	seteq r15, r1, r23
	seteq r21, r8, zero
	seteq r3, r1, zero
	seteq r26, r8, r23
	max.u r1, r1, r8
	setlt.u r1, r23, r1
	and r4, r15, r21
	and r3, r3, r26
	lui r21, 523264
	or r3, r4, r3
	or r1, r1, r3
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_202
# %bb.201:                              # %vector.body647
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
.LBB0_202:                              # %vector.body647
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r1, 8(r18)
	loads.w r3, 8(r19)
	and r1, r1, r27
	and r3, r3, r27
	seteq r4, r1, r23
	seteq r26, r1, zero
	seteq r8, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r4, r8
	and r4, r26, r15
	lui r8, 523264
	or r3, r3, r4
	or r1, r1, r3
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_204
# %bb.203:                              # %vector.body647
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r20)
.LBB0_204:                              # %vector.body647
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r1, 12(r18)
	loads.w r3, 12(r19)
	lui r26, 524288
	and r1, r1, r27
	and r3, r3, r27
	seteq r4, r1, r23
	seteq r19, r1, zero
	seteq r15, r3, zero
	seteq r18, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r4, r15
	and r4, r19, r18
	or r3, r3, r4
	or r1, r1, r3
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_197
# %bb.205:                              # %vector.body647
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r20)
	j .LBB0_197
.LBB0_206:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	mfence { sm }
.LBB0_207:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 27
	zext_int2long r[3:4], r3
	.loc	1 395 7 is_stmt 1               # parallel-rne.mlir:395:7
	store.d r[3:4], -1800(r30)              # 8-byte Folded Spill
	addli r3, zero, 6
	bneq r1, r3, .LBB0_236
# %bb.208:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	loadli.w r3,  -1840(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	.loc	1 395 7                         # parallel-rne.mlir:395:7
	storeli.w r1, -1824(r30)                # 4-byte Folded Spill
	addli r1, zero, 24
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_210
.LBB0_209:                              # %middle.block638
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 403 9 is_stmt 1               # parallel-rne.mlir:403:9
	load.d r[3:4], -1800(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1808(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_235
.LBB0_210:                              # %.preheader124
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_213 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 404 11 is_stmt 1              # parallel-rne.mlir:404:11
	store.d r[3:4], -1808(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[3:4], r1
	loadli.w r1,  -1824(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_225
# %bb.211:                              # %scalar.ph630.preheader
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_213
.LBB0_212:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 404 11                        # parallel-rne.mlir:404:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 426 13 is_stmt 1              # parallel-rne.mlir:426:13
	add.s r3, r10, r5
	.loc	1 404 11                        # parallel-rne.mlir:404:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 426 13                        # parallel-rne.mlir:426:13
	stores.w r11, 0(r3)
	.loc	1 404 11                        # parallel-rne.mlir:404:11
	beq r1, zero, .LBB0_209
.LBB0_213:                              # %scalar.ph630
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_210 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	add.ul r[3:4], r[8:9], r[17:18]
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	lui r11, 523264
	lui r16, 523264
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	slli r5, r3, 2
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	add.s r1, r1, r5
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	add.s r3, r2, r5
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	loads.w r1, 0(r1)
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	loads.w r19, 0(r3)
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	and r13, r1, r27
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	beq r13, r23, .LBB0_215
# %bb.214:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r19, 0
.LBB0_215:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	add.s r1, r12, r5
	loads.w r1, 0(r1)
	and r14, r1, r27
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r14, zero, .LBB0_223
# %bb.216:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r13, zero, .LBB0_224
.LBB0_217:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	beq r14, r23, .LBB0_219
.LBB0_218:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
.LBB0_219:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	setlt.u r1, r23, r13
	lui r13, 523264
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r1, zero, .LBB0_221
# %bb.220:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r19, 0
.LBB0_221:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	setlt.u r1, r23, r14
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r1, zero, .LBB0_212
# %bb.222:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r13, 0
	j .LBB0_212
.LBB0_223:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	addli r16, r19, 0
	lui r19, 523264
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	beq r13, zero, .LBB0_217
.LBB0_224:                              # %scalar.ph630
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r14, r23, .LBB0_218
	j .LBB0_219
.LBB0_225:                              # %vector.body632.preheader
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_227
.LBB0_226:                              # %vector.body632
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 404 11 is_stmt 1              # parallel-rne.mlir:404:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 426 13                        # parallel-rne.mlir:426:13
	add.s r3, r10, r8
	.loc	1 404 11                        # parallel-rne.mlir:404:11
	seteq.d r1, r[13:14], r[24:25]
	.loc	1 426 13                        # parallel-rne.mlir:426:13
	stores.w r9, 12(r3)
	stores.w r16, 8(r3)
	stores.w r21, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 404 11                        # parallel-rne.mlir:404:11
	bneq r1, zero, .LBB0_209
.LBB0_227:                              # %vector.body632
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_210 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	add.ul r[8:9], r[13:14], r[17:18]
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	slli r8, r8, 2
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	add.s r19, r1, r8
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	add.s r11, r12, r8
	loads.w r1, 0(r11)
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	loads.w r5, 0(r19)
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	and r1, r1, r27
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	and r5, r5, r27
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	seteq r9, r1, r23
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	seteq r20, r1, zero
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	seteq r15, r5, zero
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	seteq r16, r5, r23
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	and r5, r9, r15
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	and r9, r20, r16
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	add.s r20, r2, r8
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	or r5, r5, r9
	lui r9, 523264
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r1, zero, .LBB0_229
# %bb.228:                              # %vector.body632
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r20)
.LBB0_229:                              # %vector.body632
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r1, 4(r11)
	loads.w r15, 4(r19)
	and r1, r1, r27
	and r15, r15, r27
	seteq r16, r1, r23
	seteq r21, r15, zero
	seteq r3, r1, zero
	seteq r26, r15, r23
	max.u r1, r1, r15
	setlt.u r1, r23, r1
	and r4, r16, r21
	and r3, r3, r26
	lui r21, 523264
	or r3, r4, r3
	or r1, r1, r3
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r1, zero, .LBB0_231
# %bb.230:                              # %vector.body632
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
.LBB0_231:                              # %vector.body632
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r1, 8(r11)
	loads.w r3, 8(r19)
	and r1, r1, r27
	and r3, r3, r27
	seteq r4, r1, r23
	seteq r26, r1, zero
	seteq r15, r3, zero
	seteq r16, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r4, r15
	and r4, r26, r16
	lui r16, 523264
	or r3, r3, r4
	or r1, r1, r3
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r1, zero, .LBB0_233
# %bb.232:                              # %vector.body632
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 8(r20)
.LBB0_233:                              # %vector.body632
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r1, 12(r11)
	loads.w r3, 12(r19)
	lui r26, 524288
	and r1, r1, r27
	and r3, r3, r27
	seteq r4, r1, r23
	seteq r19, r1, zero
	seteq r11, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r4, r11
	and r4, r19, r15
	or r3, r3, r4
	or r1, r1, r3
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r1, zero, .LBB0_226
# %bb.234:                              # %vector.body632
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r20)
	j .LBB0_226
.LBB0_235:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 395 7                         # parallel-rne.mlir:395:7
	mfence { sm }
.LBB0_236:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 31
	zext_int2long r[3:4], r3
	.loc	1 431 7 is_stmt 1               # parallel-rne.mlir:431:7
	store.d r[3:4], -1808(r30)              # 8-byte Folded Spill
	addli r3, zero, 7
	bneq r1, r3, .LBB0_265
# %bb.237:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	loadli.w r3,  -1840(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	.loc	1 431 7                         # parallel-rne.mlir:431:7
	storeli.w r1, -1832(r30)                # 4-byte Folded Spill
	addli r1, zero, 28
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_239
.LBB0_238:                              # %middle.block623
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 439 9 is_stmt 1               # parallel-rne.mlir:439:9
	load.d r[3:4], -1808(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_264
.LBB0_239:                              # %.preheader123
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_242 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 440 11 is_stmt 1              # parallel-rne.mlir:440:11
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r1
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_254
# %bb.240:                              # %scalar.ph615.preheader
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_242
.LBB0_241:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 440 11                        # parallel-rne.mlir:440:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 462 13 is_stmt 1              # parallel-rne.mlir:462:13
	add.s r3, r10, r5
	.loc	1 440 11                        # parallel-rne.mlir:440:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 462 13                        # parallel-rne.mlir:462:13
	stores.w r11, 0(r3)
	.loc	1 440 11                        # parallel-rne.mlir:440:11
	beq r1, zero, .LBB0_238
.LBB0_242:                              # %scalar.ph615
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	add.ul r[3:4], r[8:9], r[13:14]
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	lui r11, 523264
	lui r18, 523264
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	slli r5, r3, 2
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	add.s r1, r1, r5
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	add.s r3, r2, r5
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	loads.w r1, 0(r1)
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	loads.w r19, 0(r3)
	.loc	1 446 19                        # parallel-rne.mlir:446:19
	and r16, r1, r27
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	beq r16, r23, .LBB0_244
# %bb.243:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_244:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	add.s r1, r12, r5
	loads.w r1, 0(r1)
	and r17, r1, r27
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r17, zero, .LBB0_252
# %bb.245:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r16, zero, .LBB0_253
.LBB0_246:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	beq r17, r23, .LBB0_248
.LBB0_247:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_248:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r1, r23, r16
	lui r16, 523264
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r1, zero, .LBB0_250
# %bb.249:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r19, 0
.LBB0_250:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r1, r23, r17
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r1, zero, .LBB0_241
# %bb.251:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r16, 0
	j .LBB0_241
.LBB0_252:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	beq r16, zero, .LBB0_246
.LBB0_253:                              # %scalar.ph615
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r17, r23, .LBB0_247
	j .LBB0_248
.LBB0_254:                              # %vector.body617.preheader
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_256
.LBB0_255:                              # %vector.body617
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 440 11 is_stmt 1              # parallel-rne.mlir:440:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 462 13                        # parallel-rne.mlir:462:13
	add.s r3, r10, r8
	.loc	1 440 11                        # parallel-rne.mlir:440:11
	seteq.d r1, r[19:20], r[24:25]
	.loc	1 462 13                        # parallel-rne.mlir:462:13
	stores.w r9, 12(r3)
	stores.w r18, 8(r3)
	stores.w r21, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 440 11                        # parallel-rne.mlir:440:11
	bneq r1, zero, .LBB0_238
.LBB0_256:                              # %vector.body617
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	add.ul r[8:9], r[19:20], r[13:14]
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	slli r8, r8, 2
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	add.s r16, r1, r8
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	add.s r11, r12, r8
	loads.w r1, 0(r11)
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	loads.w r5, 0(r16)
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	and r1, r1, r27
	.loc	1 446 19                        # parallel-rne.mlir:446:19
	and r5, r5, r27
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	seteq r9, r1, r23
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	seteq r18, r1, zero
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	seteq r15, r5, zero
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	seteq r17, r5, r23
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	and r5, r9, r15
	.loc	1 454 19                        # parallel-rne.mlir:454:19
	and r9, r18, r17
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	add.s r17, r2, r8
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	or r5, r5, r9
	lui r9, 523264
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r1, zero, .LBB0_258
# %bb.257:                              # %vector.body617
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r17)
.LBB0_258:                              # %vector.body617
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r1, 4(r11)
	loads.w r15, 4(r16)
	and r1, r1, r27
	and r15, r15, r27
	seteq r18, r1, r23
	seteq r21, r15, zero
	seteq r3, r1, zero
	seteq r26, r15, r23
	max.u r1, r1, r15
	setlt.u r1, r23, r1
	and r4, r18, r21
	and r3, r3, r26
	lui r21, 523264
	or r3, r4, r3
	or r1, r1, r3
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r1, zero, .LBB0_260
# %bb.259:                              # %vector.body617
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r17)
.LBB0_260:                              # %vector.body617
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r1, 8(r11)
	loads.w r3, 8(r16)
	and r1, r1, r27
	and r3, r3, r27
	seteq r4, r1, r23
	seteq r26, r1, zero
	seteq r15, r3, zero
	seteq r18, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r4, r15
	and r4, r26, r18
	lui r18, 523264
	or r3, r3, r4
	or r1, r1, r3
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r1, zero, .LBB0_262
# %bb.261:                              # %vector.body617
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r17)
.LBB0_262:                              # %vector.body617
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r1, 12(r11)
	loads.w r3, 12(r16)
	lui r26, 524288
	and r1, r1, r27
	and r3, r3, r27
	seteq r4, r1, r23
	seteq r16, r1, zero
	seteq r11, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r4, r11
	and r4, r16, r15
	or r3, r3, r4
	or r1, r1, r3
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r1, zero, .LBB0_255
# %bb.263:                              # %vector.body617
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r17)
	j .LBB0_255
.LBB0_264:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 431 7 is_stmt 1               # parallel-rne.mlir:431:7
	mfence { sm }
.LBB0_265:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	addli r1, zero, 255
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r3
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	csr_set csr5, r1
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	addli r1, zero, 3
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	sync_core
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	bneq r3, r1, .LBB0_267
# %bb.266:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 12
	addli r4, zero, 2
	xsignal r1, 0
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	addli r1, zero, 22
	xsignal r1, 0
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	addli r1, zero, 28
	xsignal r1, 0
	.loc	1 471 7                         # parallel-rne.mlir:471:7
	addli r1, zero, 30
	xsignal r1, 0
	.loc	1 473 13                        # parallel-rne.mlir:473:13
	loadli.w r1,  -36(r30)
	mod.s r2, r1, r4
	addli r1, r1, 1
	storeli.w r1, -36(r30)
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	slli r2, r2, 14
	add.s r12, r2, r1
	.loc	1 477 7                         # parallel-rne.mlir:477:7
	addli r1, zero, 31
	xwait r1, 0
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	addli r1, zero, 35
	xwait r1, 0
	j .LBB0_269
.LBB0_267:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 473 13                        # parallel-rne.mlir:473:13
	loadli.w r1,  -36(r30)
	addli r4, zero, 2
	loadli.w r5,  -1916(r30)                # 4-byte Folded Reload
	mod.s r2, r1, r4
	addli r1, r1, 1
	storeli.w r1, -36(r30)
	.loc	1 474 7                         # parallel-rne.mlir:474:7
	addli r1, zero, 5
	.loc	1 473 13                        # parallel-rne.mlir:473:13
	slli r2, r2, 14
	add.s r12, r2, r5
	.loc	1 474 7                         # parallel-rne.mlir:474:7
	bneq r3, r1, .LBB0_269
# %bb.268:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 12
	lui r2, 260096
	addli r3, zero, 1023
	xwait r1, 0
	addli r1, zero, 22
	xwait r1, 0
	addli r1, zero, 32
	xwait r1, 0
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -1932(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r2, r1, zero, 0
	addli r1, zero, 4
	ew_cfg zero, r3, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, r1, 19
	loadli.w r2,  -1744(r30)                # 4-byte Folded Reload
	dsmadd r12, r2, r10, 0
	addli r2, zero, 13
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r2, 0
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -1936(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg zero, r3, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	addli r1, zero, 31
	hp_ssmul r12, r12, r12, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r1, 0
.LBB0_269:                              # %.critedge12
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1852(r30)                # 4-byte Folded Reload
	.loc	1 480 7 is_stmt 1               # parallel-rne.mlir:480:7
	xfence
	loadli.w r2,  -1912(r30)                # 4-byte Folded Reload
	.loc	1 481 7                         # parallel-rne.mlir:481:7
	mfence { lm, sm, gm }
	mod.s r1, r1, r4
	slli r1, r1, 14
	add.s r2, r1, r2
	.loc	1 482 7                         # parallel-rne.mlir:482:7
	addli r1, zero, 255
	csr_set csr5, r1
	sub.s r1, r2, r12
	storeli.w r1, -1824(r30)                # 4-byte Folded Spill
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 482 7                         # parallel-rne.mlir:482:7
	sync_core
	.loc	1 483 7                         # parallel-rne.mlir:483:7
	beq r1, zero, .LBB0_277
# %bb.270:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	addli r3, zero, 1
	beq r1, r3, .LBB0_283
.LBB0_271:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	addli r3, zero, 2
	beq r1, r3, .LBB0_289
.LBB0_272:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	addli r3, zero, 3
	beq r1, r3, .LBB0_295
.LBB0_273:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	addli r3, zero, 4
	beq r1, r3, .LBB0_301
.LBB0_274:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	addli r3, zero, 5
	beq r1, r3, .LBB0_307
.LBB0_275:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	addli r3, zero, 6
	beq r1, r3, .LBB0_313
.LBB0_276:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	addli r3, zero, 7
	beq r1, r3, .LBB0_319
	j .LBB0_325
.LBB0_277:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -1824(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 483 7 is_stmt 1               # parallel-rne.mlir:483:7
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	setlt.u r3, r3, r1
	j .LBB0_279
.LBB0_278:                              # %middle.block608
                                        #   in Loop: Header=BB0_279 Depth=2
	.loc	1 491 9                         # parallel-rne.mlir:491:9
	load.d r[8:9], -1816(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_282
.LBB0_279:                              # %.preheader122
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_281 Depth 3
                                        #       Child Loop BB0_280 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	sll.d r[8:9], r[4:5], r1
	.loc	1 492 11 is_stmt 1              # parallel-rne.mlir:492:11
	beq r3, zero, .LBB0_281
.LBB0_280:                              # %scalar.ph601
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.ul r[15:16], r[13:14], r[8:9]
	slli r1, r15, 2
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	setlt.ul r15, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.s r11, r12, r1
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	add.s r1, r2, r1
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	loads.w r11, 0(r11)
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	stores.w r11, 0(r1)
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	bneq r15, zero, .LBB0_280
	j .LBB0_278
.LBB0_281:                              # %vector.body603
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.ul r[15:16], r[13:14], r[8:9]
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	slli r1, r15, 2
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	seteq.d r11, r[13:14], r[24:25]
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.s r15, r12, r1
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	add.s r1, r2, r1
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r21, 24(r15)
	loads.w r26, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r21, 24(r1)
	stores.w r26, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	beq r11, zero, .LBB0_281
	j .LBB0_278
.LBB0_282:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	lui r26, 524288
	.loc	1 483 7                         # parallel-rne.mlir:483:7
	mfence { sm }
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	addli r3, zero, 1
	bneq r1, r3, .LBB0_271
.LBB0_283:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -1824(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r3, r3, r1
	addli r1, zero, 4
	zext_int2long r[4:5], r1
	j .LBB0_285
.LBB0_284:                              # %middle.block598
                                        #   in Loop: Header=BB0_285 Depth=2
	.loc	1 508 9 is_stmt 1               # parallel-rne.mlir:508:9
	load.d r[8:9], -1760(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_288
.LBB0_285:                              # %.preheader121
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_287 Depth 3
                                        #       Child Loop BB0_286 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	sll.d r[8:9], r[4:5], r1
	.loc	1 509 11 is_stmt 1              # parallel-rne.mlir:509:11
	beq r3, zero, .LBB0_287
.LBB0_286:                              # %scalar.ph591
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	add.ul r[15:16], r[13:14], r[8:9]
	slli r1, r15, 2
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	setlt.ul r15, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	add.s r11, r12, r1
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	add.s r1, r2, r1
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	loads.w r11, 0(r11)
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	stores.w r11, 0(r1)
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	bneq r15, zero, .LBB0_286
	j .LBB0_284
.LBB0_287:                              # %vector.body593
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	add.ul r[15:16], r[13:14], r[8:9]
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	slli r1, r15, 2
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	seteq.d r11, r[13:14], r[24:25]
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	add.s r15, r12, r1
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	add.s r1, r2, r1
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r21, 24(r15)
	loads.w r26, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r21, 24(r1)
	stores.w r26, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	beq r11, zero, .LBB0_287
	j .LBB0_284
.LBB0_288:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	lui r26, 524288
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	mfence { sm }
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	addli r3, zero, 2
	bneq r1, r3, .LBB0_272
.LBB0_289:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -1824(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r3, r3, r1
	addli r1, zero, 8
	zext_int2long r[4:5], r1
	j .LBB0_291
.LBB0_290:                              # %middle.block588
                                        #   in Loop: Header=BB0_291 Depth=2
	.loc	1 525 9 is_stmt 1               # parallel-rne.mlir:525:9
	load.d r[8:9], -1768(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_294
.LBB0_291:                              # %.preheader120
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_293 Depth 3
                                        #       Child Loop BB0_292 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	sll.d r[8:9], r[4:5], r1
	.loc	1 526 11 is_stmt 1              # parallel-rne.mlir:526:11
	beq r3, zero, .LBB0_293
.LBB0_292:                              # %scalar.ph581
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_291 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.ul r[15:16], r[13:14], r[8:9]
	slli r1, r15, 2
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	setlt.ul r15, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.s r11, r12, r1
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	add.s r1, r2, r1
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	loads.w r11, 0(r11)
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	stores.w r11, 0(r1)
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	bneq r15, zero, .LBB0_292
	j .LBB0_290
.LBB0_293:                              # %vector.body583
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_291 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.ul r[15:16], r[13:14], r[8:9]
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	slli r1, r15, 2
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	seteq.d r11, r[13:14], r[24:25]
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.s r15, r12, r1
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	add.s r1, r2, r1
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r21, 24(r15)
	loads.w r26, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r21, 24(r1)
	stores.w r26, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	beq r11, zero, .LBB0_293
	j .LBB0_290
.LBB0_294:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	lui r26, 524288
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	mfence { sm }
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	addli r3, zero, 3
	bneq r1, r3, .LBB0_273
.LBB0_295:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -1824(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r3, r3, r1
	addli r1, zero, 12
	zext_int2long r[4:5], r1
	j .LBB0_297
.LBB0_296:                              # %middle.block578
                                        #   in Loop: Header=BB0_297 Depth=2
	.loc	1 542 9 is_stmt 1               # parallel-rne.mlir:542:9
	load.d r[8:9], -1776(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_300
.LBB0_297:                              # %.preheader119
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_299 Depth 3
                                        #       Child Loop BB0_298 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	sll.d r[8:9], r[4:5], r1
	.loc	1 543 11 is_stmt 1              # parallel-rne.mlir:543:11
	beq r3, zero, .LBB0_299
.LBB0_298:                              # %scalar.ph571
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_297 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	add.ul r[15:16], r[13:14], r[8:9]
	slli r1, r15, 2
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	setlt.ul r15, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	add.s r11, r12, r1
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	add.s r1, r2, r1
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	loads.w r11, 0(r11)
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	stores.w r11, 0(r1)
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	bneq r15, zero, .LBB0_298
	j .LBB0_296
.LBB0_299:                              # %vector.body573
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_297 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	add.ul r[15:16], r[13:14], r[8:9]
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	slli r1, r15, 2
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	seteq.d r11, r[13:14], r[24:25]
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	add.s r15, r12, r1
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	add.s r1, r2, r1
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r21, 24(r15)
	loads.w r26, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r21, 24(r1)
	stores.w r26, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	beq r11, zero, .LBB0_299
	j .LBB0_296
.LBB0_300:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	lui r26, 524288
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	mfence { sm }
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	addli r3, zero, 4
	bneq r1, r3, .LBB0_274
.LBB0_301:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -1824(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r3, r3, r1
	addli r1, zero, 16
	zext_int2long r[4:5], r1
	j .LBB0_303
.LBB0_302:                              # %middle.block568
                                        #   in Loop: Header=BB0_303 Depth=2
	.loc	1 559 9 is_stmt 1               # parallel-rne.mlir:559:9
	load.d r[8:9], -1784(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_306
.LBB0_303:                              # %.preheader118
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_305 Depth 3
                                        #       Child Loop BB0_304 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	sll.d r[8:9], r[4:5], r1
	.loc	1 560 11 is_stmt 1              # parallel-rne.mlir:560:11
	beq r3, zero, .LBB0_305
.LBB0_304:                              # %scalar.ph561
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	add.ul r[15:16], r[13:14], r[8:9]
	slli r1, r15, 2
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	setlt.ul r15, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	add.s r11, r12, r1
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	add.s r1, r2, r1
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	loads.w r11, 0(r11)
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	stores.w r11, 0(r1)
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	bneq r15, zero, .LBB0_304
	j .LBB0_302
.LBB0_305:                              # %vector.body563
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	add.ul r[15:16], r[13:14], r[8:9]
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	slli r1, r15, 2
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	seteq.d r11, r[13:14], r[24:25]
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	add.s r15, r12, r1
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	add.s r1, r2, r1
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r21, 24(r15)
	loads.w r26, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r21, 24(r1)
	stores.w r26, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	beq r11, zero, .LBB0_305
	j .LBB0_302
.LBB0_306:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	lui r26, 524288
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	mfence { sm }
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	addli r3, zero, 5
	bneq r1, r3, .LBB0_275
.LBB0_307:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -1824(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r3, r3, r1
	addli r1, zero, 20
	zext_int2long r[4:5], r1
	j .LBB0_309
.LBB0_308:                              # %middle.block558
                                        #   in Loop: Header=BB0_309 Depth=2
	.loc	1 576 9 is_stmt 1               # parallel-rne.mlir:576:9
	load.d r[8:9], -1792(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_312
.LBB0_309:                              # %.preheader117
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_311 Depth 3
                                        #       Child Loop BB0_310 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	sll.d r[8:9], r[4:5], r1
	.loc	1 577 11 is_stmt 1              # parallel-rne.mlir:577:11
	beq r3, zero, .LBB0_311
.LBB0_310:                              # %scalar.ph551
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_309 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	add.ul r[15:16], r[13:14], r[8:9]
	slli r1, r15, 2
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	setlt.ul r15, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	add.s r11, r12, r1
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	add.s r1, r2, r1
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	loads.w r11, 0(r11)
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	stores.w r11, 0(r1)
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	bneq r15, zero, .LBB0_310
	j .LBB0_308
.LBB0_311:                              # %vector.body553
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_309 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	add.ul r[15:16], r[13:14], r[8:9]
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	slli r1, r15, 2
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	seteq.d r11, r[13:14], r[24:25]
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	add.s r15, r12, r1
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	add.s r1, r2, r1
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r21, 24(r15)
	loads.w r26, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r21, 24(r1)
	stores.w r26, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	beq r11, zero, .LBB0_311
	j .LBB0_308
.LBB0_312:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	lui r26, 524288
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	mfence { sm }
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	addli r3, zero, 6
	bneq r1, r3, .LBB0_276
.LBB0_313:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -1824(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r3, r3, r1
	addli r1, zero, 24
	zext_int2long r[4:5], r1
	j .LBB0_315
.LBB0_314:                              # %middle.block548
                                        #   in Loop: Header=BB0_315 Depth=2
	.loc	1 593 9 is_stmt 1               # parallel-rne.mlir:593:9
	load.d r[8:9], -1800(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_318
.LBB0_315:                              # %.preheader116
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_317 Depth 3
                                        #       Child Loop BB0_316 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	sll.d r[8:9], r[4:5], r1
	.loc	1 594 11 is_stmt 1              # parallel-rne.mlir:594:11
	beq r3, zero, .LBB0_317
.LBB0_316:                              # %scalar.ph541
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_315 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.ul r[15:16], r[13:14], r[8:9]
	slli r1, r15, 2
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	setlt.ul r15, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.s r11, r12, r1
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r1, r2, r1
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	loads.w r11, 0(r11)
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	stores.w r11, 0(r1)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	bneq r15, zero, .LBB0_316
	j .LBB0_314
.LBB0_317:                              # %vector.body543
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_315 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.ul r[15:16], r[13:14], r[8:9]
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	slli r1, r15, 2
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	seteq.d r11, r[13:14], r[24:25]
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.s r15, r12, r1
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r1, r2, r1
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r21, 24(r15)
	loads.w r26, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r21, 24(r1)
	stores.w r26, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	beq r11, zero, .LBB0_317
	j .LBB0_314
.LBB0_318:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	lui r26, 524288
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	mfence { sm }
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	addli r3, zero, 7
	bneq r1, r3, .LBB0_325
.LBB0_319:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -1824(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r3, r3, r1
	addli r1, zero, 28
	zext_int2long r[4:5], r1
	j .LBB0_321
.LBB0_320:                              # %middle.block538
                                        #   in Loop: Header=BB0_321 Depth=2
	.loc	1 610 9 is_stmt 1               # parallel-rne.mlir:610:9
	load.d r[8:9], -1808(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_324
.LBB0_321:                              # %.preheader115
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_323 Depth 3
                                        #       Child Loop BB0_322 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[13:14], zero
	sll.d r[8:9], r[4:5], r1
	.loc	1 611 11 is_stmt 1              # parallel-rne.mlir:611:11
	beq r3, zero, .LBB0_323
.LBB0_322:                              # %scalar.ph531
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_321 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	add.ul r[15:16], r[13:14], r[8:9]
	slli r1, r15, 2
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	setlt.ul r15, r[13:14], r[6:7]
	addli.d r[13:14], r[13:14], 1
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	add.s r11, r12, r1
	.loc	1 614 13                        # parallel-rne.mlir:614:13
	add.s r1, r2, r1
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	loads.w r11, 0(r11)
	.loc	1 614 13                        # parallel-rne.mlir:614:13
	stores.w r11, 0(r1)
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	bneq r15, zero, .LBB0_322
	j .LBB0_320
.LBB0_323:                              # %vector.body533
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_321 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	add.ul r[15:16], r[13:14], r[8:9]
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	slli r1, r15, 2
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	seteq.d r11, r[13:14], r[24:25]
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	add.s r15, r12, r1
	.loc	1 614 13                        # parallel-rne.mlir:614:13
	add.s r1, r2, r1
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r21, 24(r15)
	loads.w r26, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 614 13                        # parallel-rne.mlir:614:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r21, 24(r1)
	stores.w r26, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	beq r11, zero, .LBB0_323
	j .LBB0_320
.LBB0_324:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	lui r26, 524288
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	mfence { sm }
.LBB0_325:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	addli r3, zero, 255
	csr_set csr5, r3
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r3, zero, 3
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	sync_core
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	bneq r1, r3, .LBB0_327
# %bb.326:                              # %.critedge14
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 32
	addli r4, zero, 33
	xsignal r3, 0
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	addli r3, zero, 13
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	xsignal r4, 0
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	xwait r3, 0
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	xwait r4, 0
.LBB0_327:                              # %.critedge16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	xfence
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	addli r3, zero, 255
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	mfence { lm, sm, gm }
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	csr_set csr5, r3
	sync_core
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	beq r1, zero, .LBB0_335
# %bb.328:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 651 7                         # parallel-rne.mlir:651:7
	addli r3, zero, 1
	beq r1, r3, .LBB0_356
.LBB0_329:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 673 7                         # parallel-rne.mlir:673:7
	addli r3, zero, 2
	beq r1, r3, .LBB0_377
.LBB0_330:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 695 7                         # parallel-rne.mlir:695:7
	addli r3, zero, 3
	beq r1, r3, .LBB0_398
.LBB0_331:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	addli r3, zero, 4
	beq r1, r3, .LBB0_419
.LBB0_332:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 739 7                         # parallel-rne.mlir:739:7
	addli r3, zero, 5
	beq r1, r3, .LBB0_440
.LBB0_333:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	addli r3, zero, 6
	beq r1, r3, .LBB0_461
.LBB0_334:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 783 7                         # parallel-rne.mlir:783:7
	addli r3, zero, 7
	beq r1, r3, .LBB0_482
	j .LBB0_503
.LBB0_335:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	store.d r[3:4], -1832(r30)              # 8-byte Folded Spill
	j .LBB0_337
.LBB0_336:                              # %middle.block528
                                        #   in Loop: Header=BB0_337 Depth=2
	.loc	1 637 9                         # parallel-rne.mlir:637:9
	load.d r[3:4], -1816(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_355
.LBB0_337:                              # %.preheader114
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_339 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	load.d r[20:21], -1832(r30)             # 8-byte Folded Reload
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	sll.d r[18:19], r[3:4], r1
	j .LBB0_339
.LBB0_338:                              # %vector.body523
                                        #   in Loop: Header=BB0_339 Depth=3
	.loc	1 646 13 is_stmt 1              # parallel-rne.mlir:646:13
	add.s r1, r10, r12
	.loc	1 638 11                        # parallel-rne.mlir:638:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 646 13                        # parallel-rne.mlir:646:13
	stores.w r4, 12(r1)
	.loc	1 638 11                        # parallel-rne.mlir:638:11
	setneq.d r4, r[20:21], r[24:25]
	.loc	1 646 13                        # parallel-rne.mlir:646:13
	stores.w r3, 8(r1)
	stores.w r11, 4(r1)
	stores.w r8, 0(r1)
	stores.w r17, 28(r1)
	stores.w r16, 24(r1)
	stores.w r14, 20(r1)
	stores.w r9, 16(r1)
	.loc	1 638 11                        # parallel-rne.mlir:638:11
	beq r4, zero, .LBB0_336
.LBB0_339:                              # %vector.body523
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_337 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 639 19                        # parallel-rne.mlir:639:19
	add.ul r[3:4], r[20:21], r[18:19]
	slli r12, r3, 2
	add.s r1, r2, r12
	loads.w r8, 0(r1)
	loads.w r4, 12(r1)
	loads.w r3, 8(r1)
	loads.w r11, 4(r1)
	loads.w r17, 28(r1)
	loads.w r16, 24(r1)
	loads.w r14, 20(r1)
	loads.w r9, 16(r1)
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	and r1, r8, r27
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	setlt.u r1, r28, r1
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r1, zero, .LBB0_341
# %bb.340:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r8, r26
	or r8, r1, r28
.LBB0_341:                              # %vector.body523
                                        #   in Loop: Header=BB0_339 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r1, zero, .LBB0_343
# %bb.342:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r26
	or r11, r1, r28
.LBB0_343:                              # %vector.body523
                                        #   in Loop: Header=BB0_339 Depth=3
	and r1, r3, r27
	setlt.u r1, r28, r1
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r1, zero, .LBB0_345
# %bb.344:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r3, r26
	or r3, r1, r28
.LBB0_345:                              # %vector.body523
                                        #   in Loop: Header=BB0_339 Depth=3
	and r1, r4, r27
	setlt.u r1, r28, r1
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r1, zero, .LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r4, r26
	or r4, r1, r28
.LBB0_347:                              # %vector.body523
                                        #   in Loop: Header=BB0_339 Depth=3
	and r1, r9, r27
	setlt.u r1, r28, r1
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r1, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r9, r26
	or r9, r1, r28
.LBB0_349:                              # %vector.body523
                                        #   in Loop: Header=BB0_339 Depth=3
	and r1, r14, r27
	setlt.u r1, r28, r1
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r1, zero, .LBB0_351
# %bb.350:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r14, r26
	or r14, r1, r28
.LBB0_351:                              # %vector.body523
                                        #   in Loop: Header=BB0_339 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r1, zero, .LBB0_353
# %bb.352:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r26
	or r16, r1, r28
.LBB0_353:                              # %vector.body523
                                        #   in Loop: Header=BB0_339 Depth=3
	and r1, r17, r27
	setlt.u r1, r28, r1
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r1, zero, .LBB0_338
# %bb.354:                              #   in Loop: Header=BB0_339 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r26
	or r17, r1, r28
	j .LBB0_338
.LBB0_355:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	mfence { sm }
	.loc	1 651 7                         # parallel-rne.mlir:651:7
	addli r3, zero, 1
	bneq r1, r3, .LBB0_329
.LBB0_356:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 651 7                         # parallel-rne.mlir:651:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_358
.LBB0_357:                              # %middle.block518
                                        #   in Loop: Header=BB0_358 Depth=2
	.loc	1 659 9 is_stmt 1               # parallel-rne.mlir:659:9
	load.d r[8:9], -1760(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r1, zero, .LBB0_376
.LBB0_358:                              # %.preheader113
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_360 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[18:19], zero
	sll.d r[12:13], r[3:4], r1
	j .LBB0_360
.LBB0_359:                              # %vector.body513
                                        #   in Loop: Header=BB0_360 Depth=3
	.loc	1 660 11 is_stmt 1              # parallel-rne.mlir:660:11
	addli.d r[18:19], r[18:19], 8
	.loc	1 668 13                        # parallel-rne.mlir:668:13
	add.s r1, r10, r5
	.loc	1 660 11                        # parallel-rne.mlir:660:11
	setneq.d r5, r[18:19], r[24:25]
	.loc	1 668 13                        # parallel-rne.mlir:668:13
	stores.w r21, 12(r1)
	stores.w r20, 8(r1)
	stores.w r11, 4(r1)
	stores.w r8, 0(r1)
	stores.w r17, 28(r1)
	stores.w r16, 24(r1)
	stores.w r14, 20(r1)
	stores.w r9, 16(r1)
	.loc	1 660 11                        # parallel-rne.mlir:660:11
	beq r5, zero, .LBB0_357
.LBB0_360:                              # %vector.body513
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_358 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 661 19                        # parallel-rne.mlir:661:19
	add.ul r[8:9], r[18:19], r[12:13]
	slli r5, r8, 2
	add.s r1, r2, r5
	loads.w r8, 0(r1)
	loads.w r21, 12(r1)
	loads.w r20, 8(r1)
	loads.w r11, 4(r1)
	loads.w r17, 28(r1)
	loads.w r16, 24(r1)
	loads.w r14, 20(r1)
	loads.w r9, 16(r1)
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	and r1, r8, r27
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	setlt.u r1, r28, r1
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r1, zero, .LBB0_362
# %bb.361:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r8, r26
	or r8, r1, r28
.LBB0_362:                              # %vector.body513
                                        #   in Loop: Header=BB0_360 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r1, zero, .LBB0_364
# %bb.363:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r26
	or r11, r1, r28
.LBB0_364:                              # %vector.body513
                                        #   in Loop: Header=BB0_360 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r1, zero, .LBB0_366
# %bb.365:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r26
	or r20, r1, r28
.LBB0_366:                              # %vector.body513
                                        #   in Loop: Header=BB0_360 Depth=3
	and r1, r21, r27
	setlt.u r1, r28, r1
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r1, zero, .LBB0_368
# %bb.367:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r21, r26
	or r21, r1, r28
.LBB0_368:                              # %vector.body513
                                        #   in Loop: Header=BB0_360 Depth=3
	and r1, r9, r27
	setlt.u r1, r28, r1
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r1, zero, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r9, r26
	or r9, r1, r28
.LBB0_370:                              # %vector.body513
                                        #   in Loop: Header=BB0_360 Depth=3
	and r1, r14, r27
	setlt.u r1, r28, r1
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r1, zero, .LBB0_372
# %bb.371:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r14, r26
	or r14, r1, r28
.LBB0_372:                              # %vector.body513
                                        #   in Loop: Header=BB0_360 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r1, zero, .LBB0_374
# %bb.373:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r26
	or r16, r1, r28
.LBB0_374:                              # %vector.body513
                                        #   in Loop: Header=BB0_360 Depth=3
	and r1, r17, r27
	setlt.u r1, r28, r1
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r1, zero, .LBB0_359
# %bb.375:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r26
	or r17, r1, r28
	j .LBB0_359
.LBB0_376:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 651 7                         # parallel-rne.mlir:651:7
	mfence { sm }
	.loc	1 673 7                         # parallel-rne.mlir:673:7
	addli r3, zero, 2
	bneq r1, r3, .LBB0_330
.LBB0_377:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 673 7                         # parallel-rne.mlir:673:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_379
.LBB0_378:                              # %middle.block508
                                        #   in Loop: Header=BB0_379 Depth=2
	.loc	1 681 9 is_stmt 1               # parallel-rne.mlir:681:9
	load.d r[8:9], -1768(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r1, zero, .LBB0_397
.LBB0_379:                              # %.preheader112
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_381 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[18:19], zero
	sll.d r[12:13], r[3:4], r1
	j .LBB0_381
.LBB0_380:                              # %vector.body503
                                        #   in Loop: Header=BB0_381 Depth=3
	.loc	1 682 11 is_stmt 1              # parallel-rne.mlir:682:11
	addli.d r[18:19], r[18:19], 8
	.loc	1 690 13                        # parallel-rne.mlir:690:13
	add.s r1, r10, r5
	.loc	1 682 11                        # parallel-rne.mlir:682:11
	setneq.d r5, r[18:19], r[24:25]
	.loc	1 690 13                        # parallel-rne.mlir:690:13
	stores.w r21, 12(r1)
	stores.w r20, 8(r1)
	stores.w r11, 4(r1)
	stores.w r8, 0(r1)
	stores.w r17, 28(r1)
	stores.w r16, 24(r1)
	stores.w r14, 20(r1)
	stores.w r9, 16(r1)
	.loc	1 682 11                        # parallel-rne.mlir:682:11
	beq r5, zero, .LBB0_378
.LBB0_381:                              # %vector.body503
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_379 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	add.ul r[8:9], r[18:19], r[12:13]
	slli r5, r8, 2
	add.s r1, r2, r5
	loads.w r8, 0(r1)
	loads.w r21, 12(r1)
	loads.w r20, 8(r1)
	loads.w r11, 4(r1)
	loads.w r17, 28(r1)
	loads.w r16, 24(r1)
	loads.w r14, 20(r1)
	loads.w r9, 16(r1)
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	and r1, r8, r27
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	setlt.u r1, r28, r1
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r1, zero, .LBB0_383
# %bb.382:                              #   in Loop: Header=BB0_381 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r8, r26
	or r8, r1, r28
.LBB0_383:                              # %vector.body503
                                        #   in Loop: Header=BB0_381 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r1, zero, .LBB0_385
# %bb.384:                              #   in Loop: Header=BB0_381 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r26
	or r11, r1, r28
.LBB0_385:                              # %vector.body503
                                        #   in Loop: Header=BB0_381 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r1, zero, .LBB0_387
# %bb.386:                              #   in Loop: Header=BB0_381 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r26
	or r20, r1, r28
.LBB0_387:                              # %vector.body503
                                        #   in Loop: Header=BB0_381 Depth=3
	and r1, r21, r27
	setlt.u r1, r28, r1
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r1, zero, .LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_381 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r21, r26
	or r21, r1, r28
.LBB0_389:                              # %vector.body503
                                        #   in Loop: Header=BB0_381 Depth=3
	and r1, r9, r27
	setlt.u r1, r28, r1
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r1, zero, .LBB0_391
# %bb.390:                              #   in Loop: Header=BB0_381 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r9, r26
	or r9, r1, r28
.LBB0_391:                              # %vector.body503
                                        #   in Loop: Header=BB0_381 Depth=3
	and r1, r14, r27
	setlt.u r1, r28, r1
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r1, zero, .LBB0_393
# %bb.392:                              #   in Loop: Header=BB0_381 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r14, r26
	or r14, r1, r28
.LBB0_393:                              # %vector.body503
                                        #   in Loop: Header=BB0_381 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r1, zero, .LBB0_395
# %bb.394:                              #   in Loop: Header=BB0_381 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r26
	or r16, r1, r28
.LBB0_395:                              # %vector.body503
                                        #   in Loop: Header=BB0_381 Depth=3
	and r1, r17, r27
	setlt.u r1, r28, r1
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r1, zero, .LBB0_380
# %bb.396:                              #   in Loop: Header=BB0_381 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r26
	or r17, r1, r28
	j .LBB0_380
.LBB0_397:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 673 7                         # parallel-rne.mlir:673:7
	mfence { sm }
	.loc	1 695 7                         # parallel-rne.mlir:695:7
	addli r3, zero, 3
	bneq r1, r3, .LBB0_331
.LBB0_398:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 695 7                         # parallel-rne.mlir:695:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_400
.LBB0_399:                              # %middle.block498
                                        #   in Loop: Header=BB0_400 Depth=2
	.loc	1 703 9 is_stmt 1               # parallel-rne.mlir:703:9
	load.d r[8:9], -1776(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r1, zero, .LBB0_418
.LBB0_400:                              # %.preheader111
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_402 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[18:19], zero
	sll.d r[12:13], r[3:4], r1
	j .LBB0_402
.LBB0_401:                              # %vector.body493
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 704 11 is_stmt 1              # parallel-rne.mlir:704:11
	addli.d r[18:19], r[18:19], 8
	.loc	1 712 13                        # parallel-rne.mlir:712:13
	add.s r1, r10, r5
	.loc	1 704 11                        # parallel-rne.mlir:704:11
	setneq.d r5, r[18:19], r[24:25]
	.loc	1 712 13                        # parallel-rne.mlir:712:13
	stores.w r21, 12(r1)
	stores.w r20, 8(r1)
	stores.w r11, 4(r1)
	stores.w r8, 0(r1)
	stores.w r17, 28(r1)
	stores.w r16, 24(r1)
	stores.w r14, 20(r1)
	stores.w r9, 16(r1)
	.loc	1 704 11                        # parallel-rne.mlir:704:11
	beq r5, zero, .LBB0_399
.LBB0_402:                              # %vector.body493
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_400 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	add.ul r[8:9], r[18:19], r[12:13]
	slli r5, r8, 2
	add.s r1, r2, r5
	loads.w r8, 0(r1)
	loads.w r21, 12(r1)
	loads.w r20, 8(r1)
	loads.w r11, 4(r1)
	loads.w r17, 28(r1)
	loads.w r16, 24(r1)
	loads.w r14, 20(r1)
	loads.w r9, 16(r1)
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	and r1, r8, r27
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	setlt.u r1, r28, r1
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r1, zero, .LBB0_404
# %bb.403:                              #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r8, r26
	or r8, r1, r28
.LBB0_404:                              # %vector.body493
                                        #   in Loop: Header=BB0_402 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r1, zero, .LBB0_406
# %bb.405:                              #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r26
	or r11, r1, r28
.LBB0_406:                              # %vector.body493
                                        #   in Loop: Header=BB0_402 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r1, zero, .LBB0_408
# %bb.407:                              #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r26
	or r20, r1, r28
.LBB0_408:                              # %vector.body493
                                        #   in Loop: Header=BB0_402 Depth=3
	and r1, r21, r27
	setlt.u r1, r28, r1
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r1, zero, .LBB0_410
# %bb.409:                              #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r21, r26
	or r21, r1, r28
.LBB0_410:                              # %vector.body493
                                        #   in Loop: Header=BB0_402 Depth=3
	and r1, r9, r27
	setlt.u r1, r28, r1
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r1, zero, .LBB0_412
# %bb.411:                              #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r9, r26
	or r9, r1, r28
.LBB0_412:                              # %vector.body493
                                        #   in Loop: Header=BB0_402 Depth=3
	and r1, r14, r27
	setlt.u r1, r28, r1
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r1, zero, .LBB0_414
# %bb.413:                              #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r14, r26
	or r14, r1, r28
.LBB0_414:                              # %vector.body493
                                        #   in Loop: Header=BB0_402 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r1, zero, .LBB0_416
# %bb.415:                              #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r26
	or r16, r1, r28
.LBB0_416:                              # %vector.body493
                                        #   in Loop: Header=BB0_402 Depth=3
	and r1, r17, r27
	setlt.u r1, r28, r1
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r1, zero, .LBB0_401
# %bb.417:                              #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r26
	or r17, r1, r28
	j .LBB0_401
.LBB0_418:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 695 7                         # parallel-rne.mlir:695:7
	mfence { sm }
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	addli r3, zero, 4
	bneq r1, r3, .LBB0_332
.LBB0_419:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_421
.LBB0_420:                              # %middle.block488
                                        #   in Loop: Header=BB0_421 Depth=2
	.loc	1 725 9 is_stmt 1               # parallel-rne.mlir:725:9
	load.d r[8:9], -1784(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r1, zero, .LBB0_439
.LBB0_421:                              # %.preheader110
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_423 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[18:19], zero
	sll.d r[12:13], r[3:4], r1
	j .LBB0_423
.LBB0_422:                              # %vector.body483
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 726 11 is_stmt 1              # parallel-rne.mlir:726:11
	addli.d r[18:19], r[18:19], 8
	.loc	1 734 13                        # parallel-rne.mlir:734:13
	add.s r1, r10, r5
	.loc	1 726 11                        # parallel-rne.mlir:726:11
	setneq.d r5, r[18:19], r[24:25]
	.loc	1 734 13                        # parallel-rne.mlir:734:13
	stores.w r21, 12(r1)
	stores.w r20, 8(r1)
	stores.w r11, 4(r1)
	stores.w r8, 0(r1)
	stores.w r17, 28(r1)
	stores.w r16, 24(r1)
	stores.w r14, 20(r1)
	stores.w r9, 16(r1)
	.loc	1 726 11                        # parallel-rne.mlir:726:11
	beq r5, zero, .LBB0_420
.LBB0_423:                              # %vector.body483
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_421 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	add.ul r[8:9], r[18:19], r[12:13]
	slli r5, r8, 2
	add.s r1, r2, r5
	loads.w r8, 0(r1)
	loads.w r21, 12(r1)
	loads.w r20, 8(r1)
	loads.w r11, 4(r1)
	loads.w r17, 28(r1)
	loads.w r16, 24(r1)
	loads.w r14, 20(r1)
	loads.w r9, 16(r1)
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	and r1, r8, r27
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	setlt.u r1, r28, r1
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r1, zero, .LBB0_425
# %bb.424:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r8, r26
	or r8, r1, r28
.LBB0_425:                              # %vector.body483
                                        #   in Loop: Header=BB0_423 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r1, zero, .LBB0_427
# %bb.426:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r26
	or r11, r1, r28
.LBB0_427:                              # %vector.body483
                                        #   in Loop: Header=BB0_423 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r1, zero, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r26
	or r20, r1, r28
.LBB0_429:                              # %vector.body483
                                        #   in Loop: Header=BB0_423 Depth=3
	and r1, r21, r27
	setlt.u r1, r28, r1
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r1, zero, .LBB0_431
# %bb.430:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r21, r26
	or r21, r1, r28
.LBB0_431:                              # %vector.body483
                                        #   in Loop: Header=BB0_423 Depth=3
	and r1, r9, r27
	setlt.u r1, r28, r1
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r1, zero, .LBB0_433
# %bb.432:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r9, r26
	or r9, r1, r28
.LBB0_433:                              # %vector.body483
                                        #   in Loop: Header=BB0_423 Depth=3
	and r1, r14, r27
	setlt.u r1, r28, r1
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r1, zero, .LBB0_435
# %bb.434:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r14, r26
	or r14, r1, r28
.LBB0_435:                              # %vector.body483
                                        #   in Loop: Header=BB0_423 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r1, zero, .LBB0_437
# %bb.436:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r26
	or r16, r1, r28
.LBB0_437:                              # %vector.body483
                                        #   in Loop: Header=BB0_423 Depth=3
	and r1, r17, r27
	setlt.u r1, r28, r1
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r1, zero, .LBB0_422
# %bb.438:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r26
	or r17, r1, r28
	j .LBB0_422
.LBB0_439:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	mfence { sm }
	.loc	1 739 7                         # parallel-rne.mlir:739:7
	addli r3, zero, 5
	bneq r1, r3, .LBB0_333
.LBB0_440:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 739 7                         # parallel-rne.mlir:739:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_442
.LBB0_441:                              # %middle.block478
                                        #   in Loop: Header=BB0_442 Depth=2
	.loc	1 747 9 is_stmt 1               # parallel-rne.mlir:747:9
	load.d r[8:9], -1792(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r1, zero, .LBB0_460
.LBB0_442:                              # %.preheader109
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_444 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[18:19], zero
	sll.d r[12:13], r[3:4], r1
	j .LBB0_444
.LBB0_443:                              # %vector.body473
                                        #   in Loop: Header=BB0_444 Depth=3
	.loc	1 748 11 is_stmt 1              # parallel-rne.mlir:748:11
	addli.d r[18:19], r[18:19], 8
	.loc	1 756 13                        # parallel-rne.mlir:756:13
	add.s r1, r10, r5
	.loc	1 748 11                        # parallel-rne.mlir:748:11
	setneq.d r5, r[18:19], r[24:25]
	.loc	1 756 13                        # parallel-rne.mlir:756:13
	stores.w r21, 12(r1)
	stores.w r20, 8(r1)
	stores.w r11, 4(r1)
	stores.w r8, 0(r1)
	stores.w r17, 28(r1)
	stores.w r16, 24(r1)
	stores.w r14, 20(r1)
	stores.w r9, 16(r1)
	.loc	1 748 11                        # parallel-rne.mlir:748:11
	beq r5, zero, .LBB0_441
.LBB0_444:                              # %vector.body473
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_442 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 749 19                        # parallel-rne.mlir:749:19
	add.ul r[8:9], r[18:19], r[12:13]
	slli r5, r8, 2
	add.s r1, r2, r5
	loads.w r8, 0(r1)
	loads.w r21, 12(r1)
	loads.w r20, 8(r1)
	loads.w r11, 4(r1)
	loads.w r17, 28(r1)
	loads.w r16, 24(r1)
	loads.w r14, 20(r1)
	loads.w r9, 16(r1)
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	and r1, r8, r27
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	setlt.u r1, r28, r1
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r1, zero, .LBB0_446
# %bb.445:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r8, r26
	or r8, r1, r28
.LBB0_446:                              # %vector.body473
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r1, zero, .LBB0_448
# %bb.447:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r26
	or r11, r1, r28
.LBB0_448:                              # %vector.body473
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r1, zero, .LBB0_450
# %bb.449:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r26
	or r20, r1, r28
.LBB0_450:                              # %vector.body473
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r21, r27
	setlt.u r1, r28, r1
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r1, zero, .LBB0_452
# %bb.451:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r21, r26
	or r21, r1, r28
.LBB0_452:                              # %vector.body473
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r9, r27
	setlt.u r1, r28, r1
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r1, zero, .LBB0_454
# %bb.453:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r9, r26
	or r9, r1, r28
.LBB0_454:                              # %vector.body473
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r14, r27
	setlt.u r1, r28, r1
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r1, zero, .LBB0_456
# %bb.455:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r14, r26
	or r14, r1, r28
.LBB0_456:                              # %vector.body473
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r1, zero, .LBB0_458
# %bb.457:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r26
	or r16, r1, r28
.LBB0_458:                              # %vector.body473
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r17, r27
	setlt.u r1, r28, r1
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r1, zero, .LBB0_443
# %bb.459:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r26
	or r17, r1, r28
	j .LBB0_443
.LBB0_460:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 739 7                         # parallel-rne.mlir:739:7
	mfence { sm }
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	addli r3, zero, 6
	bneq r1, r3, .LBB0_334
.LBB0_461:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_463
.LBB0_462:                              # %middle.block468
                                        #   in Loop: Header=BB0_463 Depth=2
	.loc	1 769 9 is_stmt 1               # parallel-rne.mlir:769:9
	load.d r[8:9], -1800(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r1, zero, .LBB0_481
.LBB0_463:                              # %.preheader108
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_465 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[18:19], zero
	sll.d r[12:13], r[3:4], r1
	j .LBB0_465
.LBB0_464:                              # %vector.body463
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 770 11 is_stmt 1              # parallel-rne.mlir:770:11
	addli.d r[18:19], r[18:19], 8
	.loc	1 778 13                        # parallel-rne.mlir:778:13
	add.s r1, r10, r5
	.loc	1 770 11                        # parallel-rne.mlir:770:11
	setneq.d r5, r[18:19], r[24:25]
	.loc	1 778 13                        # parallel-rne.mlir:778:13
	stores.w r21, 12(r1)
	stores.w r20, 8(r1)
	stores.w r11, 4(r1)
	stores.w r8, 0(r1)
	stores.w r17, 28(r1)
	stores.w r16, 24(r1)
	stores.w r14, 20(r1)
	stores.w r9, 16(r1)
	.loc	1 770 11                        # parallel-rne.mlir:770:11
	beq r5, zero, .LBB0_462
.LBB0_465:                              # %vector.body463
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_463 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 771 19                        # parallel-rne.mlir:771:19
	add.ul r[8:9], r[18:19], r[12:13]
	slli r5, r8, 2
	add.s r1, r2, r5
	loads.w r8, 0(r1)
	loads.w r21, 12(r1)
	loads.w r20, 8(r1)
	loads.w r11, 4(r1)
	loads.w r17, 28(r1)
	loads.w r16, 24(r1)
	loads.w r14, 20(r1)
	loads.w r9, 16(r1)
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	and r1, r8, r27
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	setlt.u r1, r28, r1
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r1, zero, .LBB0_467
# %bb.466:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r8, r26
	or r8, r1, r28
.LBB0_467:                              # %vector.body463
                                        #   in Loop: Header=BB0_465 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r1, zero, .LBB0_469
# %bb.468:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r26
	or r11, r1, r28
.LBB0_469:                              # %vector.body463
                                        #   in Loop: Header=BB0_465 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r1, zero, .LBB0_471
# %bb.470:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r26
	or r20, r1, r28
.LBB0_471:                              # %vector.body463
                                        #   in Loop: Header=BB0_465 Depth=3
	and r1, r21, r27
	setlt.u r1, r28, r1
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r1, zero, .LBB0_473
# %bb.472:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r21, r26
	or r21, r1, r28
.LBB0_473:                              # %vector.body463
                                        #   in Loop: Header=BB0_465 Depth=3
	and r1, r9, r27
	setlt.u r1, r28, r1
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r1, zero, .LBB0_475
# %bb.474:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r9, r26
	or r9, r1, r28
.LBB0_475:                              # %vector.body463
                                        #   in Loop: Header=BB0_465 Depth=3
	and r1, r14, r27
	setlt.u r1, r28, r1
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r1, zero, .LBB0_477
# %bb.476:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r14, r26
	or r14, r1, r28
.LBB0_477:                              # %vector.body463
                                        #   in Loop: Header=BB0_465 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r1, zero, .LBB0_479
# %bb.478:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r26
	or r16, r1, r28
.LBB0_479:                              # %vector.body463
                                        #   in Loop: Header=BB0_465 Depth=3
	and r1, r17, r27
	setlt.u r1, r28, r1
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r1, zero, .LBB0_464
# %bb.480:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r26
	or r17, r1, r28
	j .LBB0_464
.LBB0_481:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	mfence { sm }
	.loc	1 783 7                         # parallel-rne.mlir:783:7
	addli r3, zero, 7
	bneq r1, r3, .LBB0_503
.LBB0_482:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 783 7                         # parallel-rne.mlir:783:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_484
.LBB0_483:                              # %middle.block458
                                        #   in Loop: Header=BB0_484 Depth=2
	.loc	1 791 9 is_stmt 1               # parallel-rne.mlir:791:9
	load.d r[8:9], -1808(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[8:9]
	addli.d r[3:4], r[3:4], 1
	beq r1, zero, .LBB0_502
.LBB0_484:                              # %.preheader107
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_486 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[18:19], zero
	sll.d r[12:13], r[3:4], r1
	j .LBB0_486
.LBB0_485:                              # %vector.body453
                                        #   in Loop: Header=BB0_486 Depth=3
	.loc	1 792 11 is_stmt 1              # parallel-rne.mlir:792:11
	addli.d r[18:19], r[18:19], 8
	.loc	1 800 13                        # parallel-rne.mlir:800:13
	add.s r1, r10, r5
	.loc	1 792 11                        # parallel-rne.mlir:792:11
	setneq.d r5, r[18:19], r[24:25]
	.loc	1 800 13                        # parallel-rne.mlir:800:13
	stores.w r21, 12(r1)
	stores.w r20, 8(r1)
	stores.w r11, 4(r1)
	stores.w r8, 0(r1)
	stores.w r17, 28(r1)
	stores.w r16, 24(r1)
	stores.w r14, 20(r1)
	stores.w r9, 16(r1)
	.loc	1 792 11                        # parallel-rne.mlir:792:11
	beq r5, zero, .LBB0_483
.LBB0_486:                              # %vector.body453
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_484 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	add.ul r[8:9], r[18:19], r[12:13]
	slli r5, r8, 2
	add.s r1, r2, r5
	loads.w r8, 0(r1)
	loads.w r21, 12(r1)
	loads.w r20, 8(r1)
	loads.w r11, 4(r1)
	loads.w r17, 28(r1)
	loads.w r16, 24(r1)
	loads.w r14, 20(r1)
	loads.w r9, 16(r1)
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	and r1, r8, r27
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	setlt.u r1, r28, r1
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r1, zero, .LBB0_488
# %bb.487:                              #   in Loop: Header=BB0_486 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r8, r26
	or r8, r1, r28
.LBB0_488:                              # %vector.body453
                                        #   in Loop: Header=BB0_486 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r1, zero, .LBB0_490
# %bb.489:                              #   in Loop: Header=BB0_486 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r26
	or r11, r1, r28
.LBB0_490:                              # %vector.body453
                                        #   in Loop: Header=BB0_486 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r1, zero, .LBB0_492
# %bb.491:                              #   in Loop: Header=BB0_486 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r26
	or r20, r1, r28
.LBB0_492:                              # %vector.body453
                                        #   in Loop: Header=BB0_486 Depth=3
	and r1, r21, r27
	setlt.u r1, r28, r1
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r1, zero, .LBB0_494
# %bb.493:                              #   in Loop: Header=BB0_486 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r21, r26
	or r21, r1, r28
.LBB0_494:                              # %vector.body453
                                        #   in Loop: Header=BB0_486 Depth=3
	and r1, r9, r27
	setlt.u r1, r28, r1
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r1, zero, .LBB0_496
# %bb.495:                              #   in Loop: Header=BB0_486 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r9, r26
	or r9, r1, r28
.LBB0_496:                              # %vector.body453
                                        #   in Loop: Header=BB0_486 Depth=3
	and r1, r14, r27
	setlt.u r1, r28, r1
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r1, zero, .LBB0_498
# %bb.497:                              #   in Loop: Header=BB0_486 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r14, r26
	or r14, r1, r28
.LBB0_498:                              # %vector.body453
                                        #   in Loop: Header=BB0_486 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r1, zero, .LBB0_500
# %bb.499:                              #   in Loop: Header=BB0_486 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r26
	or r16, r1, r28
.LBB0_500:                              # %vector.body453
                                        #   in Loop: Header=BB0_486 Depth=3
	and r1, r17, r27
	setlt.u r1, r28, r1
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r1, zero, .LBB0_485
# %bb.501:                              #   in Loop: Header=BB0_486 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r26
	or r17, r1, r28
	j .LBB0_485
.LBB0_502:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 783 7                         # parallel-rne.mlir:783:7
	mfence { sm }
.LBB0_503:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	addli r3, zero, 255
	csr_set csr5, r3
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	addli r3, zero, 3
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	sync_core
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	bneq r1, r3, .LBB0_505
# %bb.504:                              # %.critedge20
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	addli r4, zero, 34
	xsignal r1, 0
	.loc	1 807 7                         # parallel-rne.mlir:807:7
	xsignal r4, 0
	.loc	1 810 13                        # parallel-rne.mlir:810:13
	loadli.w r3,  -24(r30)
	addli r1, r3, 1
	storeli.w r1, -24(r30)
	.loc	1 812 7                         # parallel-rne.mlir:812:7
	addli r1, zero, 15
	xwait r1, 0
	.loc	1 814 7                         # parallel-rne.mlir:814:7
	addli r1, zero, 38
	.loc	1 813 7                         # parallel-rne.mlir:813:7
	xwait r4, 0
	.loc	1 814 7                         # parallel-rne.mlir:814:7
	xwait r1, 0
	j .LBB0_508
.LBB0_505:                              # %.critedge18
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 808 7                         # parallel-rne.mlir:808:7
	addli r3, zero, 5
	bneq r1, r3, .LBB0_507
# %bb.506:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	addli r3, zero, 2
	addli r4, zero, 4
	xwait r1, 0
	lock zero, r3
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 3
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, zero, 19
	ew_cfg r1, zero, zero, 10
	addli r1, zero, 1
	loadli.w r5,  -1928(r30)                # 4-byte Folded Reload
	ew_cfg r3, r1, r5, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r4, r1, 14
	addli r1, zero, 15
	ew_cfg zero, zero, zero, 15
	sslut r10, r10, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r1, 0
.LBB0_507:                              # %.thread86
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 810 13                        # parallel-rne.mlir:810:13
	loadli.w r3,  -24(r30)
	addli r1, r3, 1
	storeli.w r1, -24(r30)
.LBB0_508:                              # %.critedge21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 2
	.loc	1 816 7                         # parallel-rne.mlir:816:7
	xfence
	.loc	1 817 7                         # parallel-rne.mlir:817:7
	mfence { lm, sm, gm }
	.loc	1 810 13                        # parallel-rne.mlir:810:13
	mod.s r1, r3, r1
	loadli.w r3,  -1920(r30)                # 4-byte Folded Reload
	slli r1, r1, 14
	add.s r12, r1, r3
	.loc	1 818 7                         # parallel-rne.mlir:818:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 818 7                         # parallel-rne.mlir:818:7
	sync_core
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	beq r1, zero, .LBB0_516
# %bb.509:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 845 7                         # parallel-rne.mlir:845:7
	addli r3, zero, 1
	beq r1, r3, .LBB0_552
.LBB0_510:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	addli r3, zero, 2
	beq r1, r3, .LBB0_588
.LBB0_511:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 897 7                         # parallel-rne.mlir:897:7
	addli r3, zero, 3
	beq r1, r3, .LBB0_624
.LBB0_512:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	addli r3, zero, 4
	beq r1, r3, .LBB0_660
.LBB0_513:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 949 7                         # parallel-rne.mlir:949:7
	addli r3, zero, 5
	beq r1, r3, .LBB0_696
.LBB0_514:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 975 7                         # parallel-rne.mlir:975:7
	addli r3, zero, 6
	beq r1, r3, .LBB0_732
.LBB0_515:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	addli r3, zero, 7
	beq r1, r3, .LBB0_768
	j .LBB0_804
.LBB0_516:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	j .LBB0_518
.LBB0_517:                              # %middle.block448
                                        #   in Loop: Header=BB0_518 Depth=2
	.loc	1 827 9                         # parallel-rne.mlir:827:9
	load.d r[3:4], -1816(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_551
.LBB0_518:                              # %.preheader106
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_528 Depth 3
                                        #       Child Loop BB0_521 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	.loc	1 828 11 is_stmt 1              # parallel-rne.mlir:828:11
	bneq r12, r2, .LBB0_525
# %bb.519:                              # %scalar.ph439.preheader
                                        #   in Loop: Header=BB0_518 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_521
.LBB0_520:                              # %scalar.ph439
                                        #   in Loop: Header=BB0_521 Depth=3
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 840 13 is_stmt 1              # parallel-rne.mlir:840:13
	add.s r5, r12, r5
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 840 13                        # parallel-rne.mlir:840:13
	stores.w r11, 0(r5)
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	beq r1, zero, .LBB0_517
.LBB0_521:                              # %scalar.ph439
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_518 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.ul r[13:14], r[8:9], r[3:4]
	slli r5, r13, 2
	add.s r1, r2, r5
	loads.w r14, 0(r1)
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.s r1, r10, r5
	loads.w r13, 0(r1)
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	and r1, r14, r22
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r1, zero, .LBB0_523
# %bb.522:                              # %scalar.ph439
                                        #   in Loop: Header=BB0_521 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	and r1, r14, r23
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	beq r1, r23, .LBB0_520
	j .LBB0_524
.LBB0_523:                              #   in Loop: Header=BB0_521 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r11, r14, r1
	and r1, r14, r23
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	beq r1, r23, .LBB0_520
.LBB0_524:                              # %scalar.ph439
                                        #   in Loop: Header=BB0_521 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r13, 0
	j .LBB0_520
.LBB0_525:                              # %vector.body441.preheader
                                        #   in Loop: Header=BB0_518 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_528
.LBB0_526:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r8, 28(r9)
.LBB0_527:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 828 11 is_stmt 1              # parallel-rne.mlir:828:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 840 13                        # parallel-rne.mlir:840:13
	add.s r1, r12, r20
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	seteq.d r9, r[13:14], r[24:25]
	.loc	1 840 13                        # parallel-rne.mlir:840:13
	stores.w r11, 12(r1)
	stores.w r5, 8(r1)
	stores.w r16, 4(r1)
	stores.w r21, 0(r1)
	stores.w r8, 28(r1)
	stores.w r19, 24(r1)
	stores.w r18, 20(r1)
	stores.w r17, 16(r1)
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	bneq r9, zero, .LBB0_517
.LBB0_528:                              # %vector.body441
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_518 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.ul r[8:9], r[13:14], r[3:4]
	slli r20, r8, 2
	add.s r8, r2, r20
	loads.w r5, 0(r8)
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	and r1, r5, r23
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	and r9, r5, r22
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	seteq r1, r1, r23
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	setneq r9, r9, zero
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	and r1, r1, r9
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.s r9, r10, r20
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r1, zero, .LBB0_530
# %bb.529:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r9)
	j .LBB0_531
.LBB0_530:                              #   in Loop: Header=BB0_528 Depth=3
	lui r1, 1024
	or r21, r5, r1
.LBB0_531:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r5, 4(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r1, zero, .LBB0_533
# %bb.532:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r9)
	j .LBB0_534
.LBB0_533:                              #   in Loop: Header=BB0_528 Depth=3
	lui r1, 1024
	or r16, r5, r1
.LBB0_534:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r5, 8(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r1, zero, .LBB0_536
# %bb.535:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r9)
	j .LBB0_537
.LBB0_536:                              #   in Loop: Header=BB0_528 Depth=3
	lui r1, 1024
	or r5, r5, r1
.LBB0_537:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r11, 12(r8)
	and r1, r11, r23
	and r15, r11, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r1, zero, .LBB0_539
# %bb.538:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_540
.LBB0_539:                              #   in Loop: Header=BB0_528 Depth=3
	lui r1, 1024
	or r11, r11, r1
.LBB0_540:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r17, 16(r8)
	and r1, r17, r23
	and r15, r17, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r1, zero, .LBB0_542
# %bb.541:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r9)
	j .LBB0_543
.LBB0_542:                              #   in Loop: Header=BB0_528 Depth=3
	lui r1, 1024
	or r17, r17, r1
.LBB0_543:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r18, 20(r8)
	and r1, r18, r23
	and r15, r18, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r1, zero, .LBB0_545
# %bb.544:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r9)
	j .LBB0_546
.LBB0_545:                              #   in Loop: Header=BB0_528 Depth=3
	lui r1, 1024
	or r18, r18, r1
.LBB0_546:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r19, 24(r8)
	and r1, r19, r23
	and r15, r19, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r1, zero, .LBB0_548
# %bb.547:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r9)
	j .LBB0_549
.LBB0_548:                              #   in Loop: Header=BB0_528 Depth=3
	lui r1, 1024
	or r19, r19, r1
.LBB0_549:                              # %vector.body441
                                        #   in Loop: Header=BB0_528 Depth=3
	loads.w r8, 28(r8)
	and r1, r8, r23
	and r15, r8, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	beq r1, zero, .LBB0_526
# %bb.550:                              #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r8, r8, r1
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	j .LBB0_527
.LBB0_551:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	mfence { sm }
	.loc	1 845 7                         # parallel-rne.mlir:845:7
	addli r3, zero, 1
	bneq r1, r3, .LBB0_510
.LBB0_552:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 845 7                         # parallel-rne.mlir:845:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_554
.LBB0_553:                              # %middle.block434
                                        #   in Loop: Header=BB0_554 Depth=2
	.loc	1 853 9 is_stmt 1               # parallel-rne.mlir:853:9
	load.d r[3:4], -1760(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_587
.LBB0_554:                              # %.preheader105
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_564 Depth 3
                                        #       Child Loop BB0_557 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	.loc	1 854 11 is_stmt 1              # parallel-rne.mlir:854:11
	bneq r12, r2, .LBB0_561
# %bb.555:                              # %scalar.ph425.preheader
                                        #   in Loop: Header=BB0_554 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_557
.LBB0_556:                              # %scalar.ph425
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 866 13 is_stmt 1              # parallel-rne.mlir:866:13
	add.s r5, r12, r5
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 866 13                        # parallel-rne.mlir:866:13
	stores.w r11, 0(r5)
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	beq r1, zero, .LBB0_553
.LBB0_557:                              # %scalar.ph425
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_554 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	add.ul r[13:14], r[8:9], r[3:4]
	slli r5, r13, 2
	add.s r1, r2, r5
	loads.w r14, 0(r1)
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	add.s r1, r10, r5
	loads.w r13, 0(r1)
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	and r1, r14, r22
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r1, zero, .LBB0_559
# %bb.558:                              # %scalar.ph425
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	and r1, r14, r23
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	beq r1, r23, .LBB0_556
	j .LBB0_560
.LBB0_559:                              #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r11, r14, r1
	and r1, r14, r23
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	beq r1, r23, .LBB0_556
.LBB0_560:                              # %scalar.ph425
                                        #   in Loop: Header=BB0_557 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r13, 0
	j .LBB0_556
.LBB0_561:                              # %vector.body427.preheader
                                        #   in Loop: Header=BB0_554 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_564
.LBB0_562:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	loads.w r8, 28(r9)
.LBB0_563:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 854 11 is_stmt 1              # parallel-rne.mlir:854:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 866 13                        # parallel-rne.mlir:866:13
	add.s r1, r12, r20
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	seteq.d r9, r[13:14], r[24:25]
	.loc	1 866 13                        # parallel-rne.mlir:866:13
	stores.w r11, 12(r1)
	stores.w r5, 8(r1)
	stores.w r16, 4(r1)
	stores.w r21, 0(r1)
	stores.w r8, 28(r1)
	stores.w r19, 24(r1)
	stores.w r18, 20(r1)
	stores.w r17, 16(r1)
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	bneq r9, zero, .LBB0_553
.LBB0_564:                              # %vector.body427
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_554 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	add.ul r[8:9], r[13:14], r[3:4]
	slli r20, r8, 2
	add.s r8, r2, r20
	loads.w r5, 0(r8)
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	and r1, r5, r23
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	and r9, r5, r22
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	seteq r1, r1, r23
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	setneq r9, r9, zero
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	and r1, r1, r9
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	add.s r9, r10, r20
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r1, zero, .LBB0_566
# %bb.565:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r9)
	j .LBB0_567
.LBB0_566:                              #   in Loop: Header=BB0_564 Depth=3
	lui r1, 1024
	or r21, r5, r1
.LBB0_567:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	loads.w r5, 4(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r1, zero, .LBB0_569
# %bb.568:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r9)
	j .LBB0_570
.LBB0_569:                              #   in Loop: Header=BB0_564 Depth=3
	lui r1, 1024
	or r16, r5, r1
.LBB0_570:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	loads.w r5, 8(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r1, zero, .LBB0_572
# %bb.571:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r9)
	j .LBB0_573
.LBB0_572:                              #   in Loop: Header=BB0_564 Depth=3
	lui r1, 1024
	or r5, r5, r1
.LBB0_573:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	loads.w r11, 12(r8)
	and r1, r11, r23
	and r15, r11, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r1, zero, .LBB0_575
# %bb.574:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_576
.LBB0_575:                              #   in Loop: Header=BB0_564 Depth=3
	lui r1, 1024
	or r11, r11, r1
.LBB0_576:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	loads.w r17, 16(r8)
	and r1, r17, r23
	and r15, r17, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r1, zero, .LBB0_578
# %bb.577:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r9)
	j .LBB0_579
.LBB0_578:                              #   in Loop: Header=BB0_564 Depth=3
	lui r1, 1024
	or r17, r17, r1
.LBB0_579:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	loads.w r18, 20(r8)
	and r1, r18, r23
	and r15, r18, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r1, zero, .LBB0_581
# %bb.580:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r9)
	j .LBB0_582
.LBB0_581:                              #   in Loop: Header=BB0_564 Depth=3
	lui r1, 1024
	or r18, r18, r1
.LBB0_582:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	loads.w r19, 24(r8)
	and r1, r19, r23
	and r15, r19, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r1, zero, .LBB0_584
# %bb.583:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r9)
	j .LBB0_585
.LBB0_584:                              #   in Loop: Header=BB0_564 Depth=3
	lui r1, 1024
	or r19, r19, r1
.LBB0_585:                              # %vector.body427
                                        #   in Loop: Header=BB0_564 Depth=3
	loads.w r8, 28(r8)
	and r1, r8, r23
	and r15, r8, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	beq r1, zero, .LBB0_562
# %bb.586:                              #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r8, r8, r1
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	j .LBB0_563
.LBB0_587:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 845 7                         # parallel-rne.mlir:845:7
	mfence { sm }
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	addli r3, zero, 2
	bneq r1, r3, .LBB0_511
.LBB0_588:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_590
.LBB0_589:                              # %middle.block420
                                        #   in Loop: Header=BB0_590 Depth=2
	.loc	1 879 9 is_stmt 1               # parallel-rne.mlir:879:9
	load.d r[3:4], -1768(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_623
.LBB0_590:                              # %.preheader104
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_600 Depth 3
                                        #       Child Loop BB0_593 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	.loc	1 880 11 is_stmt 1              # parallel-rne.mlir:880:11
	bneq r12, r2, .LBB0_597
# %bb.591:                              # %scalar.ph411.preheader
                                        #   in Loop: Header=BB0_590 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_593
.LBB0_592:                              # %scalar.ph411
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 892 13 is_stmt 1              # parallel-rne.mlir:892:13
	add.s r5, r12, r5
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 892 13                        # parallel-rne.mlir:892:13
	stores.w r11, 0(r5)
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	beq r1, zero, .LBB0_589
.LBB0_593:                              # %scalar.ph411
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_590 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	add.ul r[13:14], r[8:9], r[3:4]
	slli r5, r13, 2
	add.s r1, r2, r5
	loads.w r14, 0(r1)
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	add.s r1, r10, r5
	loads.w r13, 0(r1)
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	and r1, r14, r22
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r1, zero, .LBB0_595
# %bb.594:                              # %scalar.ph411
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	and r1, r14, r23
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	beq r1, r23, .LBB0_592
	j .LBB0_596
.LBB0_595:                              #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r11, r14, r1
	and r1, r14, r23
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	beq r1, r23, .LBB0_592
.LBB0_596:                              # %scalar.ph411
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r13, 0
	j .LBB0_592
.LBB0_597:                              # %vector.body413.preheader
                                        #   in Loop: Header=BB0_590 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_600
.LBB0_598:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	loads.w r8, 28(r9)
.LBB0_599:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 880 11 is_stmt 1              # parallel-rne.mlir:880:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 892 13                        # parallel-rne.mlir:892:13
	add.s r1, r12, r20
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	seteq.d r9, r[13:14], r[24:25]
	.loc	1 892 13                        # parallel-rne.mlir:892:13
	stores.w r11, 12(r1)
	stores.w r5, 8(r1)
	stores.w r16, 4(r1)
	stores.w r21, 0(r1)
	stores.w r8, 28(r1)
	stores.w r19, 24(r1)
	stores.w r18, 20(r1)
	stores.w r17, 16(r1)
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	bneq r9, zero, .LBB0_589
.LBB0_600:                              # %vector.body413
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_590 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	add.ul r[8:9], r[13:14], r[3:4]
	slli r20, r8, 2
	add.s r8, r2, r20
	loads.w r5, 0(r8)
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	and r1, r5, r23
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	and r9, r5, r22
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	seteq r1, r1, r23
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	setneq r9, r9, zero
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	and r1, r1, r9
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	add.s r9, r10, r20
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r1, zero, .LBB0_602
# %bb.601:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r9)
	j .LBB0_603
.LBB0_602:                              #   in Loop: Header=BB0_600 Depth=3
	lui r1, 1024
	or r21, r5, r1
.LBB0_603:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	loads.w r5, 4(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r1, zero, .LBB0_605
# %bb.604:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r9)
	j .LBB0_606
.LBB0_605:                              #   in Loop: Header=BB0_600 Depth=3
	lui r1, 1024
	or r16, r5, r1
.LBB0_606:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	loads.w r5, 8(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r1, zero, .LBB0_608
# %bb.607:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r9)
	j .LBB0_609
.LBB0_608:                              #   in Loop: Header=BB0_600 Depth=3
	lui r1, 1024
	or r5, r5, r1
.LBB0_609:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	loads.w r11, 12(r8)
	and r1, r11, r23
	and r15, r11, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r1, zero, .LBB0_611
# %bb.610:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_612
.LBB0_611:                              #   in Loop: Header=BB0_600 Depth=3
	lui r1, 1024
	or r11, r11, r1
.LBB0_612:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	loads.w r17, 16(r8)
	and r1, r17, r23
	and r15, r17, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r1, zero, .LBB0_614
# %bb.613:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r9)
	j .LBB0_615
.LBB0_614:                              #   in Loop: Header=BB0_600 Depth=3
	lui r1, 1024
	or r17, r17, r1
.LBB0_615:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	loads.w r18, 20(r8)
	and r1, r18, r23
	and r15, r18, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r1, zero, .LBB0_617
# %bb.616:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r9)
	j .LBB0_618
.LBB0_617:                              #   in Loop: Header=BB0_600 Depth=3
	lui r1, 1024
	or r18, r18, r1
.LBB0_618:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	loads.w r19, 24(r8)
	and r1, r19, r23
	and r15, r19, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r1, zero, .LBB0_620
# %bb.619:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r9)
	j .LBB0_621
.LBB0_620:                              #   in Loop: Header=BB0_600 Depth=3
	lui r1, 1024
	or r19, r19, r1
.LBB0_621:                              # %vector.body413
                                        #   in Loop: Header=BB0_600 Depth=3
	loads.w r8, 28(r8)
	and r1, r8, r23
	and r15, r8, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	beq r1, zero, .LBB0_598
# %bb.622:                              #   in Loop: Header=BB0_600 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r8, r8, r1
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	j .LBB0_599
.LBB0_623:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	mfence { sm }
	.loc	1 897 7                         # parallel-rne.mlir:897:7
	addli r3, zero, 3
	bneq r1, r3, .LBB0_512
.LBB0_624:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 897 7                         # parallel-rne.mlir:897:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_626
.LBB0_625:                              # %middle.block406
                                        #   in Loop: Header=BB0_626 Depth=2
	.loc	1 905 9 is_stmt 1               # parallel-rne.mlir:905:9
	load.d r[3:4], -1776(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_659
.LBB0_626:                              # %.preheader103
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_636 Depth 3
                                        #       Child Loop BB0_629 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	.loc	1 906 11 is_stmt 1              # parallel-rne.mlir:906:11
	bneq r12, r2, .LBB0_633
# %bb.627:                              # %scalar.ph397.preheader
                                        #   in Loop: Header=BB0_626 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_629
.LBB0_628:                              # %scalar.ph397
                                        #   in Loop: Header=BB0_629 Depth=3
	.loc	1 906 11                        # parallel-rne.mlir:906:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 918 13 is_stmt 1              # parallel-rne.mlir:918:13
	add.s r5, r12, r5
	.loc	1 906 11                        # parallel-rne.mlir:906:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 918 13                        # parallel-rne.mlir:918:13
	stores.w r11, 0(r5)
	.loc	1 906 11                        # parallel-rne.mlir:906:11
	beq r1, zero, .LBB0_625
.LBB0_629:                              # %scalar.ph397
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_626 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	add.ul r[13:14], r[8:9], r[3:4]
	slli r5, r13, 2
	add.s r1, r2, r5
	loads.w r14, 0(r1)
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	add.s r1, r10, r5
	loads.w r13, 0(r1)
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	and r1, r14, r22
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r1, zero, .LBB0_631
# %bb.630:                              # %scalar.ph397
                                        #   in Loop: Header=BB0_629 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	and r1, r14, r23
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	beq r1, r23, .LBB0_628
	j .LBB0_632
.LBB0_631:                              #   in Loop: Header=BB0_629 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r11, r14, r1
	and r1, r14, r23
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	beq r1, r23, .LBB0_628
.LBB0_632:                              # %scalar.ph397
                                        #   in Loop: Header=BB0_629 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r13, 0
	j .LBB0_628
.LBB0_633:                              # %vector.body399.preheader
                                        #   in Loop: Header=BB0_626 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_636
.LBB0_634:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	loads.w r8, 28(r9)
.LBB0_635:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 906 11 is_stmt 1              # parallel-rne.mlir:906:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 918 13                        # parallel-rne.mlir:918:13
	add.s r1, r12, r20
	.loc	1 906 11                        # parallel-rne.mlir:906:11
	seteq.d r9, r[13:14], r[24:25]
	.loc	1 918 13                        # parallel-rne.mlir:918:13
	stores.w r11, 12(r1)
	stores.w r5, 8(r1)
	stores.w r16, 4(r1)
	stores.w r21, 0(r1)
	stores.w r8, 28(r1)
	stores.w r19, 24(r1)
	stores.w r18, 20(r1)
	stores.w r17, 16(r1)
	.loc	1 906 11                        # parallel-rne.mlir:906:11
	bneq r9, zero, .LBB0_625
.LBB0_636:                              # %vector.body399
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_626 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	add.ul r[8:9], r[13:14], r[3:4]
	slli r20, r8, 2
	add.s r8, r2, r20
	loads.w r5, 0(r8)
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	and r1, r5, r23
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	and r9, r5, r22
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	seteq r1, r1, r23
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	setneq r9, r9, zero
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	and r1, r1, r9
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	add.s r9, r10, r20
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r1, zero, .LBB0_638
# %bb.637:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r9)
	j .LBB0_639
.LBB0_638:                              #   in Loop: Header=BB0_636 Depth=3
	lui r1, 1024
	or r21, r5, r1
.LBB0_639:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	loads.w r5, 4(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r1, zero, .LBB0_641
# %bb.640:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r9)
	j .LBB0_642
.LBB0_641:                              #   in Loop: Header=BB0_636 Depth=3
	lui r1, 1024
	or r16, r5, r1
.LBB0_642:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	loads.w r5, 8(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r1, zero, .LBB0_644
# %bb.643:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r9)
	j .LBB0_645
.LBB0_644:                              #   in Loop: Header=BB0_636 Depth=3
	lui r1, 1024
	or r5, r5, r1
.LBB0_645:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	loads.w r11, 12(r8)
	and r1, r11, r23
	and r15, r11, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r1, zero, .LBB0_647
# %bb.646:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_648
.LBB0_647:                              #   in Loop: Header=BB0_636 Depth=3
	lui r1, 1024
	or r11, r11, r1
.LBB0_648:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	loads.w r17, 16(r8)
	and r1, r17, r23
	and r15, r17, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r1, zero, .LBB0_650
# %bb.649:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r9)
	j .LBB0_651
.LBB0_650:                              #   in Loop: Header=BB0_636 Depth=3
	lui r1, 1024
	or r17, r17, r1
.LBB0_651:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	loads.w r18, 20(r8)
	and r1, r18, r23
	and r15, r18, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r1, zero, .LBB0_653
# %bb.652:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r9)
	j .LBB0_654
.LBB0_653:                              #   in Loop: Header=BB0_636 Depth=3
	lui r1, 1024
	or r18, r18, r1
.LBB0_654:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	loads.w r19, 24(r8)
	and r1, r19, r23
	and r15, r19, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r1, zero, .LBB0_656
# %bb.655:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r9)
	j .LBB0_657
.LBB0_656:                              #   in Loop: Header=BB0_636 Depth=3
	lui r1, 1024
	or r19, r19, r1
.LBB0_657:                              # %vector.body399
                                        #   in Loop: Header=BB0_636 Depth=3
	loads.w r8, 28(r8)
	and r1, r8, r23
	and r15, r8, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	beq r1, zero, .LBB0_634
# %bb.658:                              #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r8, r8, r1
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	j .LBB0_635
.LBB0_659:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 897 7                         # parallel-rne.mlir:897:7
	mfence { sm }
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	addli r3, zero, 4
	bneq r1, r3, .LBB0_513
.LBB0_660:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_662
.LBB0_661:                              # %middle.block392
                                        #   in Loop: Header=BB0_662 Depth=2
	.loc	1 931 9 is_stmt 1               # parallel-rne.mlir:931:9
	load.d r[3:4], -1784(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_695
.LBB0_662:                              # %.preheader102
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_672 Depth 3
                                        #       Child Loop BB0_665 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	.loc	1 932 11 is_stmt 1              # parallel-rne.mlir:932:11
	bneq r12, r2, .LBB0_669
# %bb.663:                              # %scalar.ph383.preheader
                                        #   in Loop: Header=BB0_662 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_665
.LBB0_664:                              # %scalar.ph383
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 944 13 is_stmt 1              # parallel-rne.mlir:944:13
	add.s r5, r12, r5
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 944 13                        # parallel-rne.mlir:944:13
	stores.w r11, 0(r5)
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	beq r1, zero, .LBB0_661
.LBB0_665:                              # %scalar.ph383
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_662 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	add.ul r[13:14], r[8:9], r[3:4]
	slli r5, r13, 2
	add.s r1, r2, r5
	loads.w r14, 0(r1)
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	add.s r1, r10, r5
	loads.w r13, 0(r1)
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	and r1, r14, r22
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r1, zero, .LBB0_667
# %bb.666:                              # %scalar.ph383
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	and r1, r14, r23
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	beq r1, r23, .LBB0_664
	j .LBB0_668
.LBB0_667:                              #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r11, r14, r1
	and r1, r14, r23
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	beq r1, r23, .LBB0_664
.LBB0_668:                              # %scalar.ph383
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r13, 0
	j .LBB0_664
.LBB0_669:                              # %vector.body385.preheader
                                        #   in Loop: Header=BB0_662 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_672
.LBB0_670:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	loads.w r8, 28(r9)
.LBB0_671:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	.loc	1 932 11 is_stmt 1              # parallel-rne.mlir:932:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 944 13                        # parallel-rne.mlir:944:13
	add.s r1, r12, r20
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	seteq.d r9, r[13:14], r[24:25]
	.loc	1 944 13                        # parallel-rne.mlir:944:13
	stores.w r11, 12(r1)
	stores.w r5, 8(r1)
	stores.w r16, 4(r1)
	stores.w r21, 0(r1)
	stores.w r8, 28(r1)
	stores.w r19, 24(r1)
	stores.w r18, 20(r1)
	stores.w r17, 16(r1)
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	bneq r9, zero, .LBB0_661
.LBB0_672:                              # %vector.body385
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_662 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	add.ul r[8:9], r[13:14], r[3:4]
	slli r20, r8, 2
	add.s r8, r2, r20
	loads.w r5, 0(r8)
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	and r1, r5, r23
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	and r9, r5, r22
	.loc	1 938 19                        # parallel-rne.mlir:938:19
	seteq r1, r1, r23
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	setneq r9, r9, zero
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	and r1, r1, r9
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	add.s r9, r10, r20
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r1, zero, .LBB0_674
# %bb.673:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r9)
	j .LBB0_675
.LBB0_674:                              #   in Loop: Header=BB0_672 Depth=3
	lui r1, 1024
	or r21, r5, r1
.LBB0_675:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	loads.w r5, 4(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r1, zero, .LBB0_677
# %bb.676:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r9)
	j .LBB0_678
.LBB0_677:                              #   in Loop: Header=BB0_672 Depth=3
	lui r1, 1024
	or r16, r5, r1
.LBB0_678:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	loads.w r5, 8(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r1, zero, .LBB0_680
# %bb.679:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r9)
	j .LBB0_681
.LBB0_680:                              #   in Loop: Header=BB0_672 Depth=3
	lui r1, 1024
	or r5, r5, r1
.LBB0_681:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	loads.w r11, 12(r8)
	and r1, r11, r23
	and r15, r11, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r1, zero, .LBB0_683
# %bb.682:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_684
.LBB0_683:                              #   in Loop: Header=BB0_672 Depth=3
	lui r1, 1024
	or r11, r11, r1
.LBB0_684:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	loads.w r17, 16(r8)
	and r1, r17, r23
	and r15, r17, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r1, zero, .LBB0_686
# %bb.685:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r9)
	j .LBB0_687
.LBB0_686:                              #   in Loop: Header=BB0_672 Depth=3
	lui r1, 1024
	or r17, r17, r1
.LBB0_687:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	loads.w r18, 20(r8)
	and r1, r18, r23
	and r15, r18, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r1, zero, .LBB0_689
# %bb.688:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r9)
	j .LBB0_690
.LBB0_689:                              #   in Loop: Header=BB0_672 Depth=3
	lui r1, 1024
	or r18, r18, r1
.LBB0_690:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	loads.w r19, 24(r8)
	and r1, r19, r23
	and r15, r19, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r1, zero, .LBB0_692
# %bb.691:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r9)
	j .LBB0_693
.LBB0_692:                              #   in Loop: Header=BB0_672 Depth=3
	lui r1, 1024
	or r19, r19, r1
.LBB0_693:                              # %vector.body385
                                        #   in Loop: Header=BB0_672 Depth=3
	loads.w r8, 28(r8)
	and r1, r8, r23
	and r15, r8, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	beq r1, zero, .LBB0_670
# %bb.694:                              #   in Loop: Header=BB0_672 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r8, r8, r1
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	j .LBB0_671
.LBB0_695:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	mfence { sm }
	.loc	1 949 7                         # parallel-rne.mlir:949:7
	addli r3, zero, 5
	bneq r1, r3, .LBB0_514
.LBB0_696:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 949 7                         # parallel-rne.mlir:949:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_698
.LBB0_697:                              # %middle.block378
                                        #   in Loop: Header=BB0_698 Depth=2
	.loc	1 957 9 is_stmt 1               # parallel-rne.mlir:957:9
	load.d r[3:4], -1792(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_731
.LBB0_698:                              # %.preheader101
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_708 Depth 3
                                        #       Child Loop BB0_701 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	.loc	1 958 11 is_stmt 1              # parallel-rne.mlir:958:11
	bneq r12, r2, .LBB0_705
# %bb.699:                              # %scalar.ph369.preheader
                                        #   in Loop: Header=BB0_698 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_701
.LBB0_700:                              # %scalar.ph369
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 970 13 is_stmt 1              # parallel-rne.mlir:970:13
	add.s r5, r12, r5
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 970 13                        # parallel-rne.mlir:970:13
	stores.w r11, 0(r5)
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	beq r1, zero, .LBB0_697
.LBB0_701:                              # %scalar.ph369
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_698 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	add.ul r[13:14], r[8:9], r[3:4]
	slli r5, r13, 2
	add.s r1, r2, r5
	loads.w r14, 0(r1)
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	add.s r1, r10, r5
	loads.w r13, 0(r1)
	.loc	1 965 19                        # parallel-rne.mlir:965:19
	and r1, r14, r22
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r1, zero, .LBB0_703
# %bb.702:                              # %scalar.ph369
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	and r1, r14, r23
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	beq r1, r23, .LBB0_700
	j .LBB0_704
.LBB0_703:                              #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r11, r14, r1
	and r1, r14, r23
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	beq r1, r23, .LBB0_700
.LBB0_704:                              # %scalar.ph369
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r13, 0
	j .LBB0_700
.LBB0_705:                              # %vector.body371.preheader
                                        #   in Loop: Header=BB0_698 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_708
.LBB0_706:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r8, 28(r9)
.LBB0_707:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 958 11 is_stmt 1              # parallel-rne.mlir:958:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 970 13                        # parallel-rne.mlir:970:13
	add.s r1, r12, r20
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	seteq.d r9, r[13:14], r[24:25]
	.loc	1 970 13                        # parallel-rne.mlir:970:13
	stores.w r11, 12(r1)
	stores.w r5, 8(r1)
	stores.w r16, 4(r1)
	stores.w r21, 0(r1)
	stores.w r8, 28(r1)
	stores.w r19, 24(r1)
	stores.w r18, 20(r1)
	stores.w r17, 16(r1)
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	bneq r9, zero, .LBB0_697
.LBB0_708:                              # %vector.body371
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_698 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	add.ul r[8:9], r[13:14], r[3:4]
	slli r20, r8, 2
	add.s r8, r2, r20
	loads.w r5, 0(r8)
	.loc	1 963 19                        # parallel-rne.mlir:963:19
	and r1, r5, r23
	.loc	1 965 19                        # parallel-rne.mlir:965:19
	and r9, r5, r22
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	seteq r1, r1, r23
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	setneq r9, r9, zero
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	and r1, r1, r9
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	add.s r9, r10, r20
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r1, zero, .LBB0_710
# %bb.709:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r9)
	j .LBB0_711
.LBB0_710:                              #   in Loop: Header=BB0_708 Depth=3
	lui r1, 1024
	or r21, r5, r1
.LBB0_711:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r5, 4(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r1, zero, .LBB0_713
# %bb.712:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r9)
	j .LBB0_714
.LBB0_713:                              #   in Loop: Header=BB0_708 Depth=3
	lui r1, 1024
	or r16, r5, r1
.LBB0_714:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r5, 8(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r1, zero, .LBB0_716
# %bb.715:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r9)
	j .LBB0_717
.LBB0_716:                              #   in Loop: Header=BB0_708 Depth=3
	lui r1, 1024
	or r5, r5, r1
.LBB0_717:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r11, 12(r8)
	and r1, r11, r23
	and r15, r11, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r1, zero, .LBB0_719
# %bb.718:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_720
.LBB0_719:                              #   in Loop: Header=BB0_708 Depth=3
	lui r1, 1024
	or r11, r11, r1
.LBB0_720:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r17, 16(r8)
	and r1, r17, r23
	and r15, r17, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r1, zero, .LBB0_722
# %bb.721:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r9)
	j .LBB0_723
.LBB0_722:                              #   in Loop: Header=BB0_708 Depth=3
	lui r1, 1024
	or r17, r17, r1
.LBB0_723:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r18, 20(r8)
	and r1, r18, r23
	and r15, r18, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r1, zero, .LBB0_725
# %bb.724:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r9)
	j .LBB0_726
.LBB0_725:                              #   in Loop: Header=BB0_708 Depth=3
	lui r1, 1024
	or r18, r18, r1
.LBB0_726:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r19, 24(r8)
	and r1, r19, r23
	and r15, r19, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r1, zero, .LBB0_728
# %bb.727:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r9)
	j .LBB0_729
.LBB0_728:                              #   in Loop: Header=BB0_708 Depth=3
	lui r1, 1024
	or r19, r19, r1
.LBB0_729:                              # %vector.body371
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r8, 28(r8)
	and r1, r8, r23
	and r15, r8, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	beq r1, zero, .LBB0_706
# %bb.730:                              #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r8, r8, r1
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	j .LBB0_707
.LBB0_731:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 949 7                         # parallel-rne.mlir:949:7
	mfence { sm }
	.loc	1 975 7                         # parallel-rne.mlir:975:7
	addli r3, zero, 6
	bneq r1, r3, .LBB0_515
.LBB0_732:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 975 7                         # parallel-rne.mlir:975:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_734
.LBB0_733:                              # %middle.block364
                                        #   in Loop: Header=BB0_734 Depth=2
	.loc	1 983 9 is_stmt 1               # parallel-rne.mlir:983:9
	load.d r[3:4], -1800(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_767
.LBB0_734:                              # %.preheader100
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_744 Depth 3
                                        #       Child Loop BB0_737 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	.loc	1 984 11 is_stmt 1              # parallel-rne.mlir:984:11
	bneq r12, r2, .LBB0_741
# %bb.735:                              # %scalar.ph355.preheader
                                        #   in Loop: Header=BB0_734 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_737
.LBB0_736:                              # %scalar.ph355
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 996 13 is_stmt 1              # parallel-rne.mlir:996:13
	add.s r5, r12, r5
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 996 13                        # parallel-rne.mlir:996:13
	stores.w r11, 0(r5)
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	beq r1, zero, .LBB0_733
.LBB0_737:                              # %scalar.ph355
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_734 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	add.ul r[13:14], r[8:9], r[3:4]
	slli r5, r13, 2
	add.s r1, r2, r5
	loads.w r14, 0(r1)
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	add.s r1, r10, r5
	loads.w r13, 0(r1)
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	and r1, r14, r22
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r1, zero, .LBB0_739
# %bb.738:                              # %scalar.ph355
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	and r1, r14, r23
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	beq r1, r23, .LBB0_736
	j .LBB0_740
.LBB0_739:                              #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r11, r14, r1
	and r1, r14, r23
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	beq r1, r23, .LBB0_736
.LBB0_740:                              # %scalar.ph355
                                        #   in Loop: Header=BB0_737 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r13, 0
	j .LBB0_736
.LBB0_741:                              # %vector.body357.preheader
                                        #   in Loop: Header=BB0_734 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_744
.LBB0_742:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r8, 28(r9)
.LBB0_743:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 984 11 is_stmt 1              # parallel-rne.mlir:984:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 996 13                        # parallel-rne.mlir:996:13
	add.s r1, r12, r20
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	seteq.d r9, r[13:14], r[24:25]
	.loc	1 996 13                        # parallel-rne.mlir:996:13
	stores.w r11, 12(r1)
	stores.w r5, 8(r1)
	stores.w r16, 4(r1)
	stores.w r21, 0(r1)
	stores.w r8, 28(r1)
	stores.w r19, 24(r1)
	stores.w r18, 20(r1)
	stores.w r17, 16(r1)
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	bneq r9, zero, .LBB0_733
.LBB0_744:                              # %vector.body357
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_734 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	add.ul r[8:9], r[13:14], r[3:4]
	slli r20, r8, 2
	add.s r8, r2, r20
	loads.w r5, 0(r8)
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	and r1, r5, r23
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	and r9, r5, r22
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	seteq r1, r1, r23
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	setneq r9, r9, zero
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	and r1, r1, r9
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	add.s r9, r10, r20
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r1, zero, .LBB0_746
# %bb.745:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r9)
	j .LBB0_747
.LBB0_746:                              #   in Loop: Header=BB0_744 Depth=3
	lui r1, 1024
	or r21, r5, r1
.LBB0_747:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r5, 4(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r1, zero, .LBB0_749
# %bb.748:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r9)
	j .LBB0_750
.LBB0_749:                              #   in Loop: Header=BB0_744 Depth=3
	lui r1, 1024
	or r16, r5, r1
.LBB0_750:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r5, 8(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r1, zero, .LBB0_752
# %bb.751:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r9)
	j .LBB0_753
.LBB0_752:                              #   in Loop: Header=BB0_744 Depth=3
	lui r1, 1024
	or r5, r5, r1
.LBB0_753:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r11, 12(r8)
	and r1, r11, r23
	and r15, r11, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r1, zero, .LBB0_755
# %bb.754:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_756
.LBB0_755:                              #   in Loop: Header=BB0_744 Depth=3
	lui r1, 1024
	or r11, r11, r1
.LBB0_756:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r17, 16(r8)
	and r1, r17, r23
	and r15, r17, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r1, zero, .LBB0_758
# %bb.757:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r9)
	j .LBB0_759
.LBB0_758:                              #   in Loop: Header=BB0_744 Depth=3
	lui r1, 1024
	or r17, r17, r1
.LBB0_759:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r18, 20(r8)
	and r1, r18, r23
	and r15, r18, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r1, zero, .LBB0_761
# %bb.760:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r9)
	j .LBB0_762
.LBB0_761:                              #   in Loop: Header=BB0_744 Depth=3
	lui r1, 1024
	or r18, r18, r1
.LBB0_762:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r19, 24(r8)
	and r1, r19, r23
	and r15, r19, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r1, zero, .LBB0_764
# %bb.763:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r9)
	j .LBB0_765
.LBB0_764:                              #   in Loop: Header=BB0_744 Depth=3
	lui r1, 1024
	or r19, r19, r1
.LBB0_765:                              # %vector.body357
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r8, 28(r8)
	and r1, r8, r23
	and r15, r8, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	beq r1, zero, .LBB0_742
# %bb.766:                              #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r8, r8, r1
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	j .LBB0_743
.LBB0_767:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 975 7                         # parallel-rne.mlir:975:7
	mfence { sm }
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	addli r3, zero, 7
	bneq r1, r3, .LBB0_804
.LBB0_768:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r1
	j .LBB0_770
.LBB0_769:                              # %middle.block350
                                        #   in Loop: Header=BB0_770 Depth=2
	.loc	1 1009 9 is_stmt 1              # parallel-rne.mlir:1009:9
	load.d r[3:4], -1808(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_803
.LBB0_770:                              # %.preheader99
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_780 Depth 3
                                        #       Child Loop BB0_773 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	.loc	1 1010 11 is_stmt 1             # parallel-rne.mlir:1010:11
	bneq r12, r2, .LBB0_777
# %bb.771:                              # %scalar.ph341.preheader
                                        #   in Loop: Header=BB0_770 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_773
.LBB0_772:                              # %scalar.ph341
                                        #   in Loop: Header=BB0_773 Depth=3
	.loc	1 1010 11                       # parallel-rne.mlir:1010:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 1022 13 is_stmt 1             # parallel-rne.mlir:1022:13
	add.s r5, r12, r5
	.loc	1 1010 11                       # parallel-rne.mlir:1010:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 1022 13                       # parallel-rne.mlir:1022:13
	stores.w r11, 0(r5)
	.loc	1 1010 11                       # parallel-rne.mlir:1010:11
	beq r1, zero, .LBB0_769
.LBB0_773:                              # %scalar.ph341
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_770 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1011 19                       # parallel-rne.mlir:1011:19
	add.ul r[13:14], r[8:9], r[3:4]
	slli r5, r13, 2
	add.s r1, r2, r5
	loads.w r14, 0(r1)
	.loc	1 1012 19                       # parallel-rne.mlir:1012:19
	add.s r1, r10, r5
	loads.w r13, 0(r1)
	.loc	1 1017 19                       # parallel-rne.mlir:1017:19
	and r1, r14, r22
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r1, zero, .LBB0_775
# %bb.774:                              # %scalar.ph341
                                        #   in Loop: Header=BB0_773 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r13, 0
	and r1, r14, r23
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	beq r1, r23, .LBB0_772
	j .LBB0_776
.LBB0_775:                              #   in Loop: Header=BB0_773 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r11, r14, r1
	and r1, r14, r23
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	beq r1, r23, .LBB0_772
.LBB0_776:                              # %scalar.ph341
                                        #   in Loop: Header=BB0_773 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r13, 0
	j .LBB0_772
.LBB0_777:                              # %vector.body343.preheader
                                        #   in Loop: Header=BB0_770 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_780
.LBB0_778:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	loads.w r8, 28(r9)
.LBB0_779:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	.loc	1 1010 11 is_stmt 1             # parallel-rne.mlir:1010:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1022 13                       # parallel-rne.mlir:1022:13
	add.s r1, r12, r20
	.loc	1 1010 11                       # parallel-rne.mlir:1010:11
	seteq.d r9, r[13:14], r[24:25]
	.loc	1 1022 13                       # parallel-rne.mlir:1022:13
	stores.w r11, 12(r1)
	stores.w r5, 8(r1)
	stores.w r16, 4(r1)
	stores.w r21, 0(r1)
	stores.w r8, 28(r1)
	stores.w r19, 24(r1)
	stores.w r18, 20(r1)
	stores.w r17, 16(r1)
	.loc	1 1010 11                       # parallel-rne.mlir:1010:11
	bneq r9, zero, .LBB0_769
.LBB0_780:                              # %vector.body343
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_770 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1011 19                       # parallel-rne.mlir:1011:19
	add.ul r[8:9], r[13:14], r[3:4]
	slli r20, r8, 2
	add.s r8, r2, r20
	loads.w r5, 0(r8)
	.loc	1 1015 19                       # parallel-rne.mlir:1015:19
	and r1, r5, r23
	.loc	1 1017 19                       # parallel-rne.mlir:1017:19
	and r9, r5, r22
	.loc	1 1016 19                       # parallel-rne.mlir:1016:19
	seteq r1, r1, r23
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	setneq r9, r9, zero
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	and r1, r1, r9
	.loc	1 1012 19                       # parallel-rne.mlir:1012:19
	add.s r9, r10, r20
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r1, zero, .LBB0_782
# %bb.781:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r21, 0(r9)
	j .LBB0_783
.LBB0_782:                              #   in Loop: Header=BB0_780 Depth=3
	lui r1, 1024
	or r21, r5, r1
.LBB0_783:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	loads.w r5, 4(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r1, zero, .LBB0_785
# %bb.784:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r9)
	j .LBB0_786
.LBB0_785:                              #   in Loop: Header=BB0_780 Depth=3
	lui r1, 1024
	or r16, r5, r1
.LBB0_786:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	loads.w r5, 8(r8)
	and r1, r5, r23
	and r11, r5, r22
	seteq r1, r1, r23
	setneq r11, r11, zero
	and r1, r1, r11
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r1, zero, .LBB0_788
# %bb.787:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r9)
	j .LBB0_789
.LBB0_788:                              #   in Loop: Header=BB0_780 Depth=3
	lui r1, 1024
	or r5, r5, r1
.LBB0_789:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	loads.w r11, 12(r8)
	and r1, r11, r23
	and r15, r11, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r1, zero, .LBB0_791
# %bb.790:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r9)
	j .LBB0_792
.LBB0_791:                              #   in Loop: Header=BB0_780 Depth=3
	lui r1, 1024
	or r11, r11, r1
.LBB0_792:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	loads.w r17, 16(r8)
	and r1, r17, r23
	and r15, r17, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r1, zero, .LBB0_794
# %bb.793:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r9)
	j .LBB0_795
.LBB0_794:                              #   in Loop: Header=BB0_780 Depth=3
	lui r1, 1024
	or r17, r17, r1
.LBB0_795:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	loads.w r18, 20(r8)
	and r1, r18, r23
	and r15, r18, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r1, zero, .LBB0_797
# %bb.796:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r9)
	j .LBB0_798
.LBB0_797:                              #   in Loop: Header=BB0_780 Depth=3
	lui r1, 1024
	or r18, r18, r1
.LBB0_798:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	loads.w r19, 24(r8)
	and r1, r19, r23
	and r15, r19, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r1, zero, .LBB0_800
# %bb.799:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r9)
	j .LBB0_801
.LBB0_800:                              #   in Loop: Header=BB0_780 Depth=3
	lui r1, 1024
	or r19, r19, r1
.LBB0_801:                              # %vector.body343
                                        #   in Loop: Header=BB0_780 Depth=3
	loads.w r8, 28(r8)
	and r1, r8, r23
	and r15, r8, r22
	seteq r1, r1, r23
	setneq r15, r15, zero
	and r1, r1, r15
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	beq r1, zero, .LBB0_778
# %bb.802:                              #   in Loop: Header=BB0_780 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r8, r8, r1
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	j .LBB0_779
.LBB0_803:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	mfence { sm }
.LBB0_804:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	addli r2, zero, 3
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	sync_core
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	bneq r1, r2, .LBB0_806
# %bb.805:                              # %.critedge26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 16
	.loc	1 1029 7 is_stmt 1              # parallel-rne.mlir:1029:7
	addli r1, zero, 35
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	addli r2, zero, 2
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	xsignal r3, 0
	.loc	1 1029 7                        # parallel-rne.mlir:1029:7
	xsignal r1, 0
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	addli r1, zero, 36
	xsignal r1, 0
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	loadli.w r1,  -12(r30)
	mod.s r2, r1, r2
	addli r1, r1, 1
	storeli.w r1, -12(r30)
	.loc	1 1036 7                        # parallel-rne.mlir:1036:7
	xwait r3, 0
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	slli r1, r2, 14
	.loc	1 1037 7                        # parallel-rne.mlir:1037:7
	addli r2, zero, 25
	xwait r2, 0
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	loadli.w r2,  -1924(r30)                # 4-byte Folded Reload
	add.s r2, r1, r2
	.loc	1 1038 7                        # parallel-rne.mlir:1038:7
	addli r1, zero, 37
	xwait r1, 0
	.loc	1 1039 7                        # parallel-rne.mlir:1039:7
	addli r1, zero, 39
	xwait r1, 0
	j .LBB0_809
.LBB0_806:                              # %.critedge24
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	addli r2, zero, 5
	bneq r1, r2, .LBB0_808
# %bb.807:                              # %.thread90
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 36
	addli r3, zero, 2
	addli r5, zero, 1023
	addli r4, zero, 4
	xwait r1, 0
	lock zero, r3
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, r1, 0
	ew_cfg zero, r5, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, zero, 19
	dsmadd r12, r12, r12, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	loadli.w r1,  -12(r30)
	addli r2, r1, 1
	mod.s r1, r1, r3
	storeli.w r2, -12(r30)
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	addli r2, zero, 24
	xwait r2, 0
	addli r2, zero, 40
	xwait r2, 0
	lock zero, r3
	lui r2, 258048
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	slli r1, r1, 14
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	loadli.w r2,  -1924(r30)                # 4-byte Folded Reload
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	ew_cfg zero, r5, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	add.s r2, r1, r2
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	loadli.w r1,  -1744(r30)                # 4-byte Folded Reload
	dsmul r2, r1, r12, 0
	addli r1, zero, 23
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r1, 0
	addli r1, zero, 37
	xsignal r1, 0
	addli r1, zero, 39
	xsignal r1, 0
	.loc	1 1036 7                        # parallel-rne.mlir:1036:7
	j .LBB0_809
.LBB0_808:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	loadli.w r1,  -12(r30)
	addli r2, zero, 2
	loadli.w r3,  -1924(r30)                # 4-byte Folded Reload
	mod.s r2, r1, r2
	addli r1, r1, 1
	storeli.w r1, -12(r30)
	slli r2, r2, 14
	add.s r2, r2, r3
.LBB0_809:                              # %.critedge28
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	addli r1, zero, 255
	.loc	1 1041 7                        # parallel-rne.mlir:1041:7
	xfence
	.loc	1 1042 7                        # parallel-rne.mlir:1042:7
	mfence { lm, sm, gm }
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	csr_set csr5, r1
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	sub.s r1, r10, r1
	storeli.w r1, -1832(r30)                # 4-byte Folded Spill
	sub.s r1, r10, r2
	storeli.w r1, -1836(r30)                # 4-byte Folded Spill
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	sync_core
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	beq r1, zero, .LBB0_816
# %bb.810:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1080 7                        # parallel-rne.mlir:1080:7
	addli r3, zero, 1
	beq r1, r3, .LBB0_844
.LBB0_811:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	addli r3, zero, 2
	beq r1, r3, .LBB0_872
.LBB0_812:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1152 7                        # parallel-rne.mlir:1152:7
	addli r3, zero, 3
	beq r1, r3, .LBB0_900
.LBB0_813:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1188 7                        # parallel-rne.mlir:1188:7
	addli r3, zero, 4
	beq r1, r3, .LBB0_928
.LBB0_814:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1224 7                        # parallel-rne.mlir:1224:7
	addli r3, zero, 5
	beq r1, r3, .LBB0_956
.LBB0_815:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1260 7                        # parallel-rne.mlir:1260:7
	addli r3, zero, 6
	beq r1, r3, .LBB0_984
	j .LBB0_1012
.LBB0_816:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	zext_int2long r[3:4], zero
	.loc	1 1044 7 is_stmt 1              # parallel-rne.mlir:1044:7
	storeli.w r1, -1824(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_818
.LBB0_817:                              # %middle.block336
                                        #   in Loop: Header=BB0_818 Depth=2
	.loc	1 1052 9                        # parallel-rne.mlir:1052:9
	load.d r[3:4], -1816(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1744(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_843
.LBB0_818:                              # %.preheader98
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_835 Depth 3
                                        #       Child Loop BB0_821 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1744(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r1
	.loc	1 1053 11 is_stmt 1             # parallel-rne.mlir:1053:11
	loadli.w r1,  -1824(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_833
# %bb.819:                              # %scalar.ph328.preheader
                                        #   in Loop: Header=BB0_818 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_821
.LBB0_820:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	setlt.ul r1, r[4:5], r[6:7]
	.loc	1 1075 13 is_stmt 1             # parallel-rne.mlir:1075:13
	add.s r3, r10, r8
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1075 13                       # parallel-rne.mlir:1075:13
	stores.w r9, 0(r3)
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	beq r1, zero, .LBB0_817
.LBB0_821:                              # %scalar.ph328
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_818 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.ul r[8:9], r[4:5], r[13:14]
	lui r17, 523264
	slli r8, r8, 2
	lui r9, 523264
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.s r1, r12, r8
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r3, r2, r8
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	loads.w r1, 0(r1)
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	loads.w r20, 0(r3)
	.loc	1 1059 19                       # parallel-rne.mlir:1059:19
	and r11, r1, r27
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	beq r11, r23, .LBB0_823
# %bb.822:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_823:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	add.s r1, r1, r8
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r16, zero, .LBB0_831
# %bb.824:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r11, zero, .LBB0_832
.LBB0_825:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	beq r16, r23, .LBB0_827
.LBB0_826:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_827:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r1, zero, .LBB0_829
# %bb.828:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_829:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	setlt.u r1, r23, r16
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r1, zero, .LBB0_820
# %bb.830:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_820
.LBB0_831:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	beq r11, zero, .LBB0_825
.LBB0_832:                              # %scalar.ph328
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r16, r23, .LBB0_826
	j .LBB0_827
.LBB0_833:                              # %vector.body330.preheader
                                        #   in Loop: Header=BB0_818 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_835
.LBB0_834:                              # %vector.body330
                                        #   in Loop: Header=BB0_835 Depth=3
	.loc	1 1053 11 is_stmt 1             # parallel-rne.mlir:1053:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 1075 13                       # parallel-rne.mlir:1075:13
	add.s r3, r10, r4
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	seteq.d r1, r[20:21], r[24:25]
	.loc	1 1075 13                       # parallel-rne.mlir:1075:13
	stores.w r26, 8(r3)
	lui r26, 524288
	stores.w r8, 12(r3)
	stores.w r17, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	bneq r1, zero, .LBB0_817
.LBB0_835:                              # %vector.body330
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_818 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.ul r[4:5], r[20:21], r[13:14]
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	add.s r9, r1, r4
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.s r11, r12, r4
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	loads.w r1, 0(r9)
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	loads.w r5, 0(r11)
	.loc	1 1061 19                       # parallel-rne.mlir:1061:19
	and r1, r1, r27
	.loc	1 1059 19                       # parallel-rne.mlir:1059:19
	and r5, r5, r27
	.loc	1 1062 19                       # parallel-rne.mlir:1062:19
	seteq r8, r1, r23
	.loc	1 1066 19                       # parallel-rne.mlir:1066:19
	seteq r17, r1, zero
	.loc	1 1063 19                       # parallel-rne.mlir:1063:19
	seteq r15, r5, zero
	.loc	1 1065 19                       # parallel-rne.mlir:1065:19
	seteq r16, r5, r23
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 1064 19                       # parallel-rne.mlir:1064:19
	and r5, r8, r15
	.loc	1 1067 19                       # parallel-rne.mlir:1067:19
	and r8, r17, r16
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r16, r2, r4
	.loc	1 1068 19                       # parallel-rne.mlir:1068:19
	or r5, r5, r8
	lui r8, 523264
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r1, zero, .LBB0_837
# %bb.836:                              # %vector.body330
                                        #   in Loop: Header=BB0_835 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r16)
.LBB0_837:                              # %vector.body330
                                        #   in Loop: Header=BB0_835 Depth=3
	loads.w r1, 4(r9)
	loads.w r15, 4(r11)
	and r1, r1, r27
	and r15, r15, r27
	seteq r17, r1, r23
	seteq r18, r1, zero
	seteq r3, r15, r23
	seteq r26, r15, zero
	max.u r1, r1, r15
	setlt.u r1, r23, r1
	and r15, r17, r26
	and r3, r18, r3
	lui r17, 523264
	or r3, r15, r3
	or r1, r1, r3
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r1, zero, .LBB0_839
# %bb.838:                              # %vector.body330
                                        #   in Loop: Header=BB0_835 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r16)
.LBB0_839:                              # %vector.body330
                                        #   in Loop: Header=BB0_835 Depth=3
	loads.w r1, 8(r9)
	loads.w r3, 8(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r15, r1, r23
	seteq r26, r1, zero
	seteq r18, r3, zero
	seteq r19, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r15, r18
	and r15, r26, r19
	lui r26, 523264
	or r3, r3, r15
	or r1, r1, r3
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r1, zero, .LBB0_841
# %bb.840:                              # %vector.body330
                                        #   in Loop: Header=BB0_835 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r16)
.LBB0_841:                              # %vector.body330
                                        #   in Loop: Header=BB0_835 Depth=3
	loads.w r1, 12(r9)
	loads.w r3, 12(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r9, r1, r23
	seteq r18, r1, zero
	seteq r11, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r9, r11
	and r9, r18, r15
	or r3, r3, r9
	or r1, r1, r3
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r1, zero, .LBB0_834
# %bb.842:                              # %vector.body330
                                        #   in Loop: Header=BB0_835 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 12(r16)
	j .LBB0_834
.LBB0_843:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	mfence { sm }
	.loc	1 1080 7                        # parallel-rne.mlir:1080:7
	addli r3, zero, 1
	bneq r1, r3, .LBB0_811
.LBB0_844:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	storeli.w r1, -1816(r30)                # 4-byte Folded Spill
	addli r1, zero, 4
	.loc	1 1080 7                        # parallel-rne.mlir:1080:7
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_846
.LBB0_845:                              # %middle.block321
                                        #   in Loop: Header=BB0_846 Depth=2
	.loc	1 1088 9 is_stmt 1              # parallel-rne.mlir:1088:9
	load.d r[3:4], -1760(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1744(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_871
.LBB0_846:                              # %.preheader97
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_863 Depth 3
                                        #       Child Loop BB0_849 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1744(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r1
	.loc	1 1089 11 is_stmt 1             # parallel-rne.mlir:1089:11
	loadli.w r1,  -1816(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_861
# %bb.847:                              # %scalar.ph313.preheader
                                        #   in Loop: Header=BB0_846 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_849
.LBB0_848:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	setlt.ul r1, r[4:5], r[6:7]
	.loc	1 1111 13 is_stmt 1             # parallel-rne.mlir:1111:13
	add.s r3, r10, r8
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	stores.w r9, 0(r3)
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	beq r1, zero, .LBB0_845
.LBB0_849:                              # %scalar.ph313
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_846 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.ul r[8:9], r[4:5], r[13:14]
	lui r17, 523264
	slli r8, r8, 2
	lui r9, 523264
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.s r1, r12, r8
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.s r3, r2, r8
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	loads.w r1, 0(r1)
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	loads.w r20, 0(r3)
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	and r11, r1, r27
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	beq r11, r23, .LBB0_851
# %bb.850:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_851:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	add.s r1, r1, r8
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r16, zero, .LBB0_859
# %bb.852:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r11, zero, .LBB0_860
.LBB0_853:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	beq r16, r23, .LBB0_855
.LBB0_854:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_855:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r1, zero, .LBB0_857
# %bb.856:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_857:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	setlt.u r1, r23, r16
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r1, zero, .LBB0_848
# %bb.858:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_848
.LBB0_859:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	beq r11, zero, .LBB0_853
.LBB0_860:                              # %scalar.ph313
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r16, r23, .LBB0_854
	j .LBB0_855
.LBB0_861:                              # %vector.body315.preheader
                                        #   in Loop: Header=BB0_846 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_863
.LBB0_862:                              # %vector.body315
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 1089 11 is_stmt 1             # parallel-rne.mlir:1089:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	add.s r3, r10, r4
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	seteq.d r1, r[20:21], r[24:25]
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	stores.w r26, 8(r3)
	lui r26, 524288
	stores.w r8, 12(r3)
	stores.w r17, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	bneq r1, zero, .LBB0_845
.LBB0_863:                              # %vector.body315
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_846 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.ul r[4:5], r[20:21], r[13:14]
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	add.s r9, r1, r4
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.s r11, r12, r4
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	loads.w r1, 0(r9)
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	loads.w r5, 0(r11)
	.loc	1 1097 19                       # parallel-rne.mlir:1097:19
	and r1, r1, r27
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	and r5, r5, r27
	.loc	1 1098 19                       # parallel-rne.mlir:1098:19
	seteq r8, r1, r23
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	seteq r17, r1, zero
	.loc	1 1099 19                       # parallel-rne.mlir:1099:19
	seteq r15, r5, zero
	.loc	1 1101 19                       # parallel-rne.mlir:1101:19
	seteq r16, r5, r23
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 1100 19                       # parallel-rne.mlir:1100:19
	and r5, r8, r15
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	and r8, r17, r16
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.s r16, r2, r4
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	or r5, r5, r8
	lui r8, 523264
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r1, zero, .LBB0_865
# %bb.864:                              # %vector.body315
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r16)
.LBB0_865:                              # %vector.body315
                                        #   in Loop: Header=BB0_863 Depth=3
	loads.w r1, 4(r9)
	loads.w r15, 4(r11)
	and r1, r1, r27
	and r15, r15, r27
	seteq r17, r1, r23
	seteq r18, r1, zero
	seteq r3, r15, r23
	seteq r26, r15, zero
	max.u r1, r1, r15
	setlt.u r1, r23, r1
	and r15, r17, r26
	and r3, r18, r3
	lui r17, 523264
	or r3, r15, r3
	or r1, r1, r3
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r1, zero, .LBB0_867
# %bb.866:                              # %vector.body315
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r16)
.LBB0_867:                              # %vector.body315
                                        #   in Loop: Header=BB0_863 Depth=3
	loads.w r1, 8(r9)
	loads.w r3, 8(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r15, r1, r23
	seteq r26, r1, zero
	seteq r18, r3, zero
	seteq r19, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r15, r18
	and r15, r26, r19
	lui r26, 523264
	or r3, r3, r15
	or r1, r1, r3
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r1, zero, .LBB0_869
# %bb.868:                              # %vector.body315
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r16)
.LBB0_869:                              # %vector.body315
                                        #   in Loop: Header=BB0_863 Depth=3
	loads.w r1, 12(r9)
	loads.w r3, 12(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r9, r1, r23
	seteq r18, r1, zero
	seteq r11, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r9, r11
	and r9, r18, r15
	or r3, r3, r9
	or r1, r1, r3
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r1, zero, .LBB0_862
# %bb.870:                              # %vector.body315
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 12(r16)
	j .LBB0_862
.LBB0_871:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 1080 7                        # parallel-rne.mlir:1080:7
	mfence { sm }
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	addli r3, zero, 2
	bneq r1, r3, .LBB0_812
.LBB0_872:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	storeli.w r1, -1760(r30)                # 4-byte Folded Spill
	addli r1, zero, 8
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_874
.LBB0_873:                              # %middle.block306
                                        #   in Loop: Header=BB0_874 Depth=2
	.loc	1 1124 9 is_stmt 1              # parallel-rne.mlir:1124:9
	load.d r[3:4], -1768(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1744(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_899
.LBB0_874:                              # %.preheader96
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_891 Depth 3
                                        #       Child Loop BB0_877 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1744(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r1
	.loc	1 1125 11 is_stmt 1             # parallel-rne.mlir:1125:11
	loadli.w r1,  -1760(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_889
# %bb.875:                              # %scalar.ph298.preheader
                                        #   in Loop: Header=BB0_874 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_877
.LBB0_876:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	.loc	1 1125 11                       # parallel-rne.mlir:1125:11
	setlt.ul r1, r[4:5], r[6:7]
	.loc	1 1147 13 is_stmt 1             # parallel-rne.mlir:1147:13
	add.s r3, r10, r8
	.loc	1 1125 11                       # parallel-rne.mlir:1125:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1147 13                       # parallel-rne.mlir:1147:13
	stores.w r9, 0(r3)
	.loc	1 1125 11                       # parallel-rne.mlir:1125:11
	beq r1, zero, .LBB0_873
.LBB0_877:                              # %scalar.ph298
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_874 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.ul r[8:9], r[4:5], r[13:14]
	lui r17, 523264
	slli r8, r8, 2
	lui r9, 523264
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.s r1, r12, r8
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	add.s r3, r2, r8
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	loads.w r1, 0(r1)
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	loads.w r20, 0(r3)
	.loc	1 1131 19                       # parallel-rne.mlir:1131:19
	and r11, r1, r27
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	beq r11, r23, .LBB0_879
# %bb.878:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_879:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	add.s r1, r1, r8
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r16, zero, .LBB0_887
# %bb.880:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r11, zero, .LBB0_888
.LBB0_881:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	beq r16, r23, .LBB0_883
.LBB0_882:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_883:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r1, zero, .LBB0_885
# %bb.884:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_885:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	setlt.u r1, r23, r16
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r1, zero, .LBB0_876
# %bb.886:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_876
.LBB0_887:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	beq r11, zero, .LBB0_881
.LBB0_888:                              # %scalar.ph298
                                        #   in Loop: Header=BB0_877 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r16, r23, .LBB0_882
	j .LBB0_883
.LBB0_889:                              # %vector.body300.preheader
                                        #   in Loop: Header=BB0_874 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_891
.LBB0_890:                              # %vector.body300
                                        #   in Loop: Header=BB0_891 Depth=3
	.loc	1 1125 11 is_stmt 1             # parallel-rne.mlir:1125:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 1147 13                       # parallel-rne.mlir:1147:13
	add.s r3, r10, r4
	.loc	1 1125 11                       # parallel-rne.mlir:1125:11
	seteq.d r1, r[20:21], r[24:25]
	.loc	1 1147 13                       # parallel-rne.mlir:1147:13
	stores.w r26, 8(r3)
	lui r26, 524288
	stores.w r8, 12(r3)
	stores.w r17, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 1125 11                       # parallel-rne.mlir:1125:11
	bneq r1, zero, .LBB0_873
.LBB0_891:                              # %vector.body300
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_874 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.ul r[4:5], r[20:21], r[13:14]
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	add.s r9, r1, r4
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.s r11, r12, r4
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	loads.w r1, 0(r9)
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	loads.w r5, 0(r11)
	.loc	1 1133 19                       # parallel-rne.mlir:1133:19
	and r1, r1, r27
	.loc	1 1131 19                       # parallel-rne.mlir:1131:19
	and r5, r5, r27
	.loc	1 1134 19                       # parallel-rne.mlir:1134:19
	seteq r8, r1, r23
	.loc	1 1138 19                       # parallel-rne.mlir:1138:19
	seteq r17, r1, zero
	.loc	1 1135 19                       # parallel-rne.mlir:1135:19
	seteq r15, r5, zero
	.loc	1 1137 19                       # parallel-rne.mlir:1137:19
	seteq r16, r5, r23
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	and r5, r8, r15
	.loc	1 1139 19                       # parallel-rne.mlir:1139:19
	and r8, r17, r16
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	add.s r16, r2, r4
	.loc	1 1140 19                       # parallel-rne.mlir:1140:19
	or r5, r5, r8
	lui r8, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r1, zero, .LBB0_893
# %bb.892:                              # %vector.body300
                                        #   in Loop: Header=BB0_891 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r16)
.LBB0_893:                              # %vector.body300
                                        #   in Loop: Header=BB0_891 Depth=3
	loads.w r1, 4(r9)
	loads.w r15, 4(r11)
	and r1, r1, r27
	and r15, r15, r27
	seteq r17, r1, r23
	seteq r18, r1, zero
	seteq r3, r15, r23
	seteq r26, r15, zero
	max.u r1, r1, r15
	setlt.u r1, r23, r1
	and r15, r17, r26
	and r3, r18, r3
	lui r17, 523264
	or r3, r15, r3
	or r1, r1, r3
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r1, zero, .LBB0_895
# %bb.894:                              # %vector.body300
                                        #   in Loop: Header=BB0_891 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r16)
.LBB0_895:                              # %vector.body300
                                        #   in Loop: Header=BB0_891 Depth=3
	loads.w r1, 8(r9)
	loads.w r3, 8(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r15, r1, r23
	seteq r26, r1, zero
	seteq r18, r3, zero
	seteq r19, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r15, r18
	and r15, r26, r19
	lui r26, 523264
	or r3, r3, r15
	or r1, r1, r3
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r1, zero, .LBB0_897
# %bb.896:                              # %vector.body300
                                        #   in Loop: Header=BB0_891 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r16)
.LBB0_897:                              # %vector.body300
                                        #   in Loop: Header=BB0_891 Depth=3
	loads.w r1, 12(r9)
	loads.w r3, 12(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r9, r1, r23
	seteq r18, r1, zero
	seteq r11, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r9, r11
	and r9, r18, r15
	or r3, r3, r9
	or r1, r1, r3
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r1, zero, .LBB0_890
# %bb.898:                              # %vector.body300
                                        #   in Loop: Header=BB0_891 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 12(r16)
	j .LBB0_890
.LBB0_899:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	mfence { sm }
	.loc	1 1152 7                        # parallel-rne.mlir:1152:7
	addli r3, zero, 3
	bneq r1, r3, .LBB0_813
.LBB0_900:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	storeli.w r1, -1760(r30)                # 4-byte Folded Spill
	addli r1, zero, 12
	.loc	1 1152 7                        # parallel-rne.mlir:1152:7
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_902
.LBB0_901:                              # %middle.block291
                                        #   in Loop: Header=BB0_902 Depth=2
	.loc	1 1160 9 is_stmt 1              # parallel-rne.mlir:1160:9
	load.d r[3:4], -1776(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1744(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_927
.LBB0_902:                              # %.preheader95
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_919 Depth 3
                                        #       Child Loop BB0_905 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1744(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r1
	.loc	1 1161 11 is_stmt 1             # parallel-rne.mlir:1161:11
	loadli.w r1,  -1760(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_917
# %bb.903:                              # %scalar.ph283.preheader
                                        #   in Loop: Header=BB0_902 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_905
.LBB0_904:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	setlt.ul r1, r[4:5], r[6:7]
	.loc	1 1183 13 is_stmt 1             # parallel-rne.mlir:1183:13
	add.s r3, r10, r8
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1183 13                       # parallel-rne.mlir:1183:13
	stores.w r9, 0(r3)
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	beq r1, zero, .LBB0_901
.LBB0_905:                              # %scalar.ph283
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_902 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.ul r[8:9], r[4:5], r[13:14]
	lui r17, 523264
	slli r8, r8, 2
	lui r9, 523264
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	add.s r1, r12, r8
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	add.s r3, r2, r8
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	loads.w r1, 0(r1)
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	loads.w r20, 0(r3)
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	and r11, r1, r27
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	beq r11, r23, .LBB0_907
# %bb.906:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_907:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	add.s r1, r1, r8
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r16, zero, .LBB0_915
# %bb.908:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r11, zero, .LBB0_916
.LBB0_909:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	beq r16, r23, .LBB0_911
.LBB0_910:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_911:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r1, zero, .LBB0_913
# %bb.912:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_913:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	setlt.u r1, r23, r16
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r1, zero, .LBB0_904
# %bb.914:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_904
.LBB0_915:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	beq r11, zero, .LBB0_909
.LBB0_916:                              # %scalar.ph283
                                        #   in Loop: Header=BB0_905 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r16, r23, .LBB0_910
	j .LBB0_911
.LBB0_917:                              # %vector.body285.preheader
                                        #   in Loop: Header=BB0_902 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_919
.LBB0_918:                              # %vector.body285
                                        #   in Loop: Header=BB0_919 Depth=3
	.loc	1 1161 11 is_stmt 1             # parallel-rne.mlir:1161:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 1183 13                       # parallel-rne.mlir:1183:13
	add.s r3, r10, r4
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	seteq.d r1, r[20:21], r[24:25]
	.loc	1 1183 13                       # parallel-rne.mlir:1183:13
	stores.w r26, 8(r3)
	lui r26, 524288
	stores.w r8, 12(r3)
	stores.w r17, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	bneq r1, zero, .LBB0_901
.LBB0_919:                              # %vector.body285
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_902 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.ul r[4:5], r[20:21], r[13:14]
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	add.s r9, r1, r4
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	add.s r11, r12, r4
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	loads.w r1, 0(r9)
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	loads.w r5, 0(r11)
	.loc	1 1169 19                       # parallel-rne.mlir:1169:19
	and r1, r1, r27
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	and r5, r5, r27
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	seteq r8, r1, r23
	.loc	1 1174 19                       # parallel-rne.mlir:1174:19
	seteq r17, r1, zero
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	seteq r15, r5, zero
	.loc	1 1173 19                       # parallel-rne.mlir:1173:19
	seteq r16, r5, r23
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 1172 19                       # parallel-rne.mlir:1172:19
	and r5, r8, r15
	.loc	1 1175 19                       # parallel-rne.mlir:1175:19
	and r8, r17, r16
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	add.s r16, r2, r4
	.loc	1 1176 19                       # parallel-rne.mlir:1176:19
	or r5, r5, r8
	lui r8, 523264
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r1, zero, .LBB0_921
# %bb.920:                              # %vector.body285
                                        #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r16)
.LBB0_921:                              # %vector.body285
                                        #   in Loop: Header=BB0_919 Depth=3
	loads.w r1, 4(r9)
	loads.w r15, 4(r11)
	and r1, r1, r27
	and r15, r15, r27
	seteq r17, r1, r23
	seteq r18, r1, zero
	seteq r3, r15, r23
	seteq r26, r15, zero
	max.u r1, r1, r15
	setlt.u r1, r23, r1
	and r15, r17, r26
	and r3, r18, r3
	lui r17, 523264
	or r3, r15, r3
	or r1, r1, r3
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r1, zero, .LBB0_923
# %bb.922:                              # %vector.body285
                                        #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r16)
.LBB0_923:                              # %vector.body285
                                        #   in Loop: Header=BB0_919 Depth=3
	loads.w r1, 8(r9)
	loads.w r3, 8(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r15, r1, r23
	seteq r26, r1, zero
	seteq r18, r3, zero
	seteq r19, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r15, r18
	and r15, r26, r19
	lui r26, 523264
	or r3, r3, r15
	or r1, r1, r3
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r1, zero, .LBB0_925
# %bb.924:                              # %vector.body285
                                        #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r16)
.LBB0_925:                              # %vector.body285
                                        #   in Loop: Header=BB0_919 Depth=3
	loads.w r1, 12(r9)
	loads.w r3, 12(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r9, r1, r23
	seteq r18, r1, zero
	seteq r11, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r9, r11
	and r9, r18, r15
	or r3, r3, r9
	or r1, r1, r3
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r1, zero, .LBB0_918
# %bb.926:                              # %vector.body285
                                        #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 12(r16)
	j .LBB0_918
.LBB0_927:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 1152 7                        # parallel-rne.mlir:1152:7
	mfence { sm }
	.loc	1 1188 7                        # parallel-rne.mlir:1188:7
	addli r3, zero, 4
	bneq r1, r3, .LBB0_814
.LBB0_928:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	zext_int2long r[3:4], r3
	storeli.w r1, -1760(r30)                # 4-byte Folded Spill
	.loc	1 1188 7                        # parallel-rne.mlir:1188:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_930
.LBB0_929:                              # %middle.block276
                                        #   in Loop: Header=BB0_930 Depth=2
	.loc	1 1196 9 is_stmt 1              # parallel-rne.mlir:1196:9
	load.d r[3:4], -1784(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1744(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_955
.LBB0_930:                              # %.preheader94
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_947 Depth 3
                                        #       Child Loop BB0_933 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1744(r30)              # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r1
	.loc	1 1197 11 is_stmt 1             # parallel-rne.mlir:1197:11
	loadli.w r1,  -1760(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_945
# %bb.931:                              # %scalar.ph268.preheader
                                        #   in Loop: Header=BB0_930 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_933
.LBB0_932:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 1197 11                       # parallel-rne.mlir:1197:11
	setlt.ul r1, r[4:5], r[6:7]
	.loc	1 1219 13 is_stmt 1             # parallel-rne.mlir:1219:13
	add.s r3, r10, r8
	.loc	1 1197 11                       # parallel-rne.mlir:1197:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1219 13                       # parallel-rne.mlir:1219:13
	stores.w r9, 0(r3)
	.loc	1 1197 11                       # parallel-rne.mlir:1197:11
	beq r1, zero, .LBB0_929
.LBB0_933:                              # %scalar.ph268
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_930 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	add.ul r[8:9], r[4:5], r[13:14]
	lui r17, 523264
	slli r8, r8, 2
	lui r9, 523264
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	add.s r1, r12, r8
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	add.s r3, r2, r8
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	loads.w r1, 0(r1)
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	loads.w r20, 0(r3)
	.loc	1 1203 19                       # parallel-rne.mlir:1203:19
	and r11, r1, r27
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	beq r11, r23, .LBB0_935
# %bb.934:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_935:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	add.s r1, r1, r8
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r16, zero, .LBB0_943
# %bb.936:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r11, zero, .LBB0_944
.LBB0_937:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	beq r16, r23, .LBB0_939
.LBB0_938:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_939:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r1, zero, .LBB0_941
# %bb.940:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_941:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	setlt.u r1, r23, r16
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r1, zero, .LBB0_932
# %bb.942:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_932
.LBB0_943:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	beq r11, zero, .LBB0_937
.LBB0_944:                              # %scalar.ph268
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r16, r23, .LBB0_938
	j .LBB0_939
.LBB0_945:                              # %vector.body270.preheader
                                        #   in Loop: Header=BB0_930 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_947
.LBB0_946:                              # %vector.body270
                                        #   in Loop: Header=BB0_947 Depth=3
	.loc	1 1197 11 is_stmt 1             # parallel-rne.mlir:1197:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 1219 13                       # parallel-rne.mlir:1219:13
	add.s r3, r10, r4
	.loc	1 1197 11                       # parallel-rne.mlir:1197:11
	seteq.d r1, r[20:21], r[24:25]
	.loc	1 1219 13                       # parallel-rne.mlir:1219:13
	stores.w r26, 8(r3)
	lui r26, 524288
	stores.w r8, 12(r3)
	stores.w r17, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 1197 11                       # parallel-rne.mlir:1197:11
	bneq r1, zero, .LBB0_929
.LBB0_947:                              # %vector.body270
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_930 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	add.ul r[4:5], r[20:21], r[13:14]
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	add.s r9, r1, r4
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	add.s r11, r12, r4
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	loads.w r1, 0(r9)
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	loads.w r5, 0(r11)
	.loc	1 1205 19                       # parallel-rne.mlir:1205:19
	and r1, r1, r27
	.loc	1 1203 19                       # parallel-rne.mlir:1203:19
	and r5, r5, r27
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	seteq r8, r1, r23
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	seteq r17, r1, zero
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	seteq r15, r5, zero
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	seteq r16, r5, r23
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	and r5, r8, r15
	.loc	1 1211 19                       # parallel-rne.mlir:1211:19
	and r8, r17, r16
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	add.s r16, r2, r4
	.loc	1 1212 19                       # parallel-rne.mlir:1212:19
	or r5, r5, r8
	lui r8, 523264
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r1, zero, .LBB0_949
# %bb.948:                              # %vector.body270
                                        #   in Loop: Header=BB0_947 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r16)
.LBB0_949:                              # %vector.body270
                                        #   in Loop: Header=BB0_947 Depth=3
	loads.w r1, 4(r9)
	loads.w r15, 4(r11)
	and r1, r1, r27
	and r15, r15, r27
	seteq r17, r1, r23
	seteq r18, r1, zero
	seteq r3, r15, r23
	seteq r26, r15, zero
	max.u r1, r1, r15
	setlt.u r1, r23, r1
	and r15, r17, r26
	and r3, r18, r3
	lui r17, 523264
	or r3, r15, r3
	or r1, r1, r3
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r1, zero, .LBB0_951
# %bb.950:                              # %vector.body270
                                        #   in Loop: Header=BB0_947 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r16)
.LBB0_951:                              # %vector.body270
                                        #   in Loop: Header=BB0_947 Depth=3
	loads.w r1, 8(r9)
	loads.w r3, 8(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r15, r1, r23
	seteq r26, r1, zero
	seteq r18, r3, zero
	seteq r19, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r15, r18
	and r15, r26, r19
	lui r26, 523264
	or r3, r3, r15
	or r1, r1, r3
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r1, zero, .LBB0_953
# %bb.952:                              # %vector.body270
                                        #   in Loop: Header=BB0_947 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r16)
.LBB0_953:                              # %vector.body270
                                        #   in Loop: Header=BB0_947 Depth=3
	loads.w r1, 12(r9)
	loads.w r3, 12(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r9, r1, r23
	seteq r18, r1, zero
	seteq r11, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r9, r11
	and r9, r18, r15
	or r3, r3, r9
	or r1, r1, r3
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r1, zero, .LBB0_946
# %bb.954:                              # %vector.body270
                                        #   in Loop: Header=BB0_947 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 12(r16)
	j .LBB0_946
.LBB0_955:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 1188 7                        # parallel-rne.mlir:1188:7
	mfence { sm }
	.loc	1 1224 7                        # parallel-rne.mlir:1224:7
	addli r3, zero, 5
	bneq r1, r3, .LBB0_815
.LBB0_956:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	storeli.w r1, -1760(r30)                # 4-byte Folded Spill
	addli r1, zero, 20
	.loc	1 1224 7                        # parallel-rne.mlir:1224:7
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_958
.LBB0_957:                              # %middle.block261
                                        #   in Loop: Header=BB0_958 Depth=2
	.loc	1 1232 9 is_stmt 1              # parallel-rne.mlir:1232:9
	load.d r[3:4], -1792(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1744(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_983
.LBB0_958:                              # %.preheader93
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_975 Depth 3
                                        #       Child Loop BB0_961 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1744(r30)              # 8-byte Folded Spill
	sll.d r[18:19], r[3:4], r1
	.loc	1 1233 11 is_stmt 1             # parallel-rne.mlir:1233:11
	loadli.w r1,  -1760(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_973
# %bb.959:                              # %scalar.ph253.preheader
                                        #   in Loop: Header=BB0_958 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_961
.LBB0_960:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 1233 11                       # parallel-rne.mlir:1233:11
	setlt.ul r1, r[4:5], r[6:7]
	.loc	1 1255 13 is_stmt 1             # parallel-rne.mlir:1255:13
	add.s r3, r10, r8
	.loc	1 1233 11                       # parallel-rne.mlir:1233:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1255 13                       # parallel-rne.mlir:1255:13
	stores.w r9, 0(r3)
	.loc	1 1233 11                       # parallel-rne.mlir:1233:11
	beq r1, zero, .LBB0_957
.LBB0_961:                              # %scalar.ph253
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_958 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	add.ul r[8:9], r[4:5], r[18:19]
	lui r17, 523264
	slli r8, r8, 2
	lui r9, 523264
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	add.s r1, r12, r8
	.loc	1 1236 19                       # parallel-rne.mlir:1236:19
	add.s r3, r2, r8
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	loads.w r1, 0(r1)
	.loc	1 1236 19                       # parallel-rne.mlir:1236:19
	loads.w r20, 0(r3)
	.loc	1 1239 19                       # parallel-rne.mlir:1239:19
	and r11, r1, r27
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	beq r11, r23, .LBB0_963
# %bb.962:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_963:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	add.s r1, r1, r8
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r16, zero, .LBB0_971
# %bb.964:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r11, zero, .LBB0_972
.LBB0_965:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	beq r16, r23, .LBB0_967
.LBB0_966:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_967:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r1, zero, .LBB0_969
# %bb.968:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_969:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	setlt.u r1, r23, r16
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r1, zero, .LBB0_960
# %bb.970:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_960
.LBB0_971:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	beq r11, zero, .LBB0_965
.LBB0_972:                              # %scalar.ph253
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r16, r23, .LBB0_966
	j .LBB0_967
.LBB0_973:                              # %vector.body255.preheader
                                        #   in Loop: Header=BB0_958 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_975
.LBB0_974:                              # %vector.body255
                                        #   in Loop: Header=BB0_975 Depth=3
	.loc	1 1233 11 is_stmt 1             # parallel-rne.mlir:1233:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 1255 13                       # parallel-rne.mlir:1255:13
	add.s r3, r10, r4
	.loc	1 1233 11                       # parallel-rne.mlir:1233:11
	seteq.d r1, r[20:21], r[24:25]
	.loc	1 1255 13                       # parallel-rne.mlir:1255:13
	stores.w r26, 8(r3)
	lui r26, 524288
	stores.w r8, 12(r3)
	stores.w r17, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 1233 11                       # parallel-rne.mlir:1233:11
	bneq r1, zero, .LBB0_957
.LBB0_975:                              # %vector.body255
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_958 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	add.ul r[4:5], r[20:21], r[18:19]
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	add.s r9, r1, r4
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	add.s r11, r12, r4
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	loads.w r1, 0(r9)
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	loads.w r5, 0(r11)
	.loc	1 1241 19                       # parallel-rne.mlir:1241:19
	and r1, r1, r27
	.loc	1 1239 19                       # parallel-rne.mlir:1239:19
	and r5, r5, r27
	.loc	1 1242 19                       # parallel-rne.mlir:1242:19
	seteq r8, r1, r23
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	seteq r17, r1, zero
	.loc	1 1243 19                       # parallel-rne.mlir:1243:19
	seteq r15, r5, zero
	.loc	1 1245 19                       # parallel-rne.mlir:1245:19
	seteq r16, r5, r23
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 1244 19                       # parallel-rne.mlir:1244:19
	and r5, r8, r15
	.loc	1 1247 19                       # parallel-rne.mlir:1247:19
	and r8, r17, r16
	.loc	1 1236 19                       # parallel-rne.mlir:1236:19
	add.s r16, r2, r4
	.loc	1 1248 19                       # parallel-rne.mlir:1248:19
	or r5, r5, r8
	lui r8, 523264
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r1, zero, .LBB0_977
# %bb.976:                              # %vector.body255
                                        #   in Loop: Header=BB0_975 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r16)
.LBB0_977:                              # %vector.body255
                                        #   in Loop: Header=BB0_975 Depth=3
	loads.w r1, 4(r9)
	loads.w r15, 4(r11)
	and r1, r1, r27
	and r15, r15, r27
	seteq r17, r1, r23
	seteq r26, r15, zero
	seteq r13, r1, zero
	seteq r3, r15, r23
	max.u r1, r1, r15
	setlt.u r1, r23, r1
	and r14, r17, r26
	and r3, r13, r3
	lui r17, 523264
	or r3, r14, r3
	or r1, r1, r3
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r1, zero, .LBB0_979
# %bb.978:                              # %vector.body255
                                        #   in Loop: Header=BB0_975 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r16)
.LBB0_979:                              # %vector.body255
                                        #   in Loop: Header=BB0_975 Depth=3
	loads.w r1, 8(r9)
	loads.w r3, 8(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r13, r1, r23
	seteq r26, r1, zero
	seteq r14, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r13, r14
	and r13, r26, r15
	lui r26, 523264
	or r3, r3, r13
	or r1, r1, r3
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r1, zero, .LBB0_981
# %bb.980:                              # %vector.body255
                                        #   in Loop: Header=BB0_975 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r16)
.LBB0_981:                              # %vector.body255
                                        #   in Loop: Header=BB0_975 Depth=3
	loads.w r1, 12(r9)
	loads.w r3, 12(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r9, r1, r23
	seteq r14, r1, zero
	seteq r11, r3, zero
	seteq r13, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r9, r11
	and r9, r14, r13
	or r3, r3, r9
	or r1, r1, r3
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r1, zero, .LBB0_974
# %bb.982:                              # %vector.body255
                                        #   in Loop: Header=BB0_975 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 12(r16)
	j .LBB0_974
.LBB0_983:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 1224 7                        # parallel-rne.mlir:1224:7
	mfence { sm }
	.loc	1 1260 7                        # parallel-rne.mlir:1260:7
	addli r3, zero, 6
	bneq r1, r3, .LBB0_1012
.LBB0_984:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	storeli.w r1, -1760(r30)                # 4-byte Folded Spill
	addli r1, zero, 24
	.loc	1 1260 7                        # parallel-rne.mlir:1260:7
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_986
.LBB0_985:                              # %middle.block246
                                        #   in Loop: Header=BB0_986 Depth=2
	.loc	1 1268 9 is_stmt 1              # parallel-rne.mlir:1268:9
	load.d r[3:4], -1800(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1744(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_1011
.LBB0_986:                              # %.preheader92
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1003 Depth 3
                                        #       Child Loop BB0_989 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1744(r30)              # 8-byte Folded Spill
	sll.d r[18:19], r[3:4], r1
	.loc	1 1269 11 is_stmt 1             # parallel-rne.mlir:1269:11
	loadli.w r1,  -1760(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_1001
# %bb.987:                              # %scalar.ph238.preheader
                                        #   in Loop: Header=BB0_986 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_989
.LBB0_988:                              # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	.loc	1 1269 11                       # parallel-rne.mlir:1269:11
	setlt.ul r1, r[4:5], r[6:7]
	.loc	1 1291 13 is_stmt 1             # parallel-rne.mlir:1291:13
	add.s r3, r10, r8
	.loc	1 1269 11                       # parallel-rne.mlir:1269:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1291 13                       # parallel-rne.mlir:1291:13
	stores.w r9, 0(r3)
	.loc	1 1269 11                       # parallel-rne.mlir:1269:11
	beq r1, zero, .LBB0_985
.LBB0_989:                              # %scalar.ph238
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_986 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	add.ul r[8:9], r[4:5], r[18:19]
	lui r17, 523264
	slli r8, r8, 2
	lui r9, 523264
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	add.s r1, r12, r8
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	add.s r3, r2, r8
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	loads.w r1, 0(r1)
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	loads.w r20, 0(r3)
	.loc	1 1275 19                       # parallel-rne.mlir:1275:19
	and r11, r1, r27
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	beq r11, r23, .LBB0_991
# %bb.990:                              # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_991:                              # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	add.s r1, r1, r8
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r16, zero, .LBB0_999
# %bb.992:                              # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r11, zero, .LBB0_1000
.LBB0_993:                              # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	beq r16, r23, .LBB0_995
.LBB0_994:                              # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_995:                              # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r1, zero, .LBB0_997
# %bb.996:                              # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_997:                              # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	setlt.u r1, r23, r16
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r1, zero, .LBB0_988
# %bb.998:                              # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_988
.LBB0_999:                              # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	beq r11, zero, .LBB0_993
.LBB0_1000:                             # %scalar.ph238
                                        #   in Loop: Header=BB0_989 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r16, r23, .LBB0_994
	j .LBB0_995
.LBB0_1001:                             # %vector.body240.preheader
                                        #   in Loop: Header=BB0_986 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_1003
.LBB0_1002:                             # %vector.body240
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 1269 11 is_stmt 1             # parallel-rne.mlir:1269:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 1291 13                       # parallel-rne.mlir:1291:13
	add.s r3, r10, r4
	.loc	1 1269 11                       # parallel-rne.mlir:1269:11
	seteq.d r1, r[20:21], r[24:25]
	.loc	1 1291 13                       # parallel-rne.mlir:1291:13
	stores.w r26, 8(r3)
	lui r26, 524288
	stores.w r8, 12(r3)
	stores.w r17, 4(r3)
	stores.w r5, 0(r3)
	.loc	1 1269 11                       # parallel-rne.mlir:1269:11
	bneq r1, zero, .LBB0_985
.LBB0_1003:                             # %vector.body240
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_986 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	add.ul r[4:5], r[20:21], r[18:19]
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	add.s r9, r1, r4
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	add.s r11, r12, r4
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	loads.w r1, 0(r9)
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	loads.w r5, 0(r11)
	.loc	1 1277 19                       # parallel-rne.mlir:1277:19
	and r1, r1, r27
	.loc	1 1275 19                       # parallel-rne.mlir:1275:19
	and r5, r5, r27
	.loc	1 1278 19                       # parallel-rne.mlir:1278:19
	seteq r8, r1, r23
	.loc	1 1282 19                       # parallel-rne.mlir:1282:19
	seteq r17, r1, zero
	.loc	1 1279 19                       # parallel-rne.mlir:1279:19
	seteq r15, r5, zero
	.loc	1 1281 19                       # parallel-rne.mlir:1281:19
	seteq r16, r5, r23
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	max.u r1, r1, r5
	setlt.u r1, r23, r1
	.loc	1 1280 19                       # parallel-rne.mlir:1280:19
	and r5, r8, r15
	.loc	1 1283 19                       # parallel-rne.mlir:1283:19
	and r8, r17, r16
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	add.s r16, r2, r4
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	or r5, r5, r8
	lui r8, 523264
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r1, zero, .LBB0_1005
# %bb.1004:                             # %vector.body240
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r16)
.LBB0_1005:                             # %vector.body240
                                        #   in Loop: Header=BB0_1003 Depth=3
	loads.w r1, 4(r9)
	loads.w r15, 4(r11)
	and r1, r1, r27
	and r15, r15, r27
	seteq r17, r1, r23
	seteq r26, r15, zero
	seteq r13, r1, zero
	seteq r3, r15, r23
	max.u r1, r1, r15
	setlt.u r1, r23, r1
	and r14, r17, r26
	and r3, r13, r3
	lui r17, 523264
	or r3, r14, r3
	or r1, r1, r3
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r1, zero, .LBB0_1007
# %bb.1006:                             # %vector.body240
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r16)
.LBB0_1007:                             # %vector.body240
                                        #   in Loop: Header=BB0_1003 Depth=3
	loads.w r1, 8(r9)
	loads.w r3, 8(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r13, r1, r23
	seteq r26, r1, zero
	seteq r14, r3, zero
	seteq r15, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r13, r14
	and r13, r26, r15
	lui r26, 523264
	or r3, r3, r13
	or r1, r1, r3
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r1, zero, .LBB0_1009
# %bb.1008:                             # %vector.body240
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r16)
.LBB0_1009:                             # %vector.body240
                                        #   in Loop: Header=BB0_1003 Depth=3
	loads.w r1, 12(r9)
	loads.w r3, 12(r11)
	and r1, r1, r27
	and r3, r3, r27
	seteq r9, r1, r23
	seteq r14, r1, zero
	seteq r11, r3, zero
	seteq r13, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r9, r11
	and r9, r14, r13
	or r3, r3, r9
	or r1, r1, r3
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r1, zero, .LBB0_1002
# %bb.1010:                             # %vector.body240
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 12(r16)
	j .LBB0_1002
.LBB0_1011:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 1260 7                        # parallel-rne.mlir:1260:7
	mfence { sm }
.LBB0_1012:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[3:4], zero
	.loc	1 1296 7 is_stmt 1              # parallel-rne.mlir:1296:7
	store.d r[3:4], -1768(r30)              # 8-byte Folded Spill
	addli r3, zero, 7
	bneq r1, r3, .LBB0_1041
# %bb.1013:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1836(r30)                # 4-byte Folded Reload
	min.u r1, r1, r3
	addli r3, zero, 16
	setlt.u r1, r1, r3
	storeli.w r1, -1760(r30)                # 4-byte Folded Spill
	addli r1, zero, 28
	.loc	1 1296 7                        # parallel-rne.mlir:1296:7
	xfence
	zext_int2long r[3:4], r1
	mfence { lm, sm, gm }
	j .LBB0_1015
.LBB0_1014:                             # %middle.block
                                        #   in Loop: Header=BB0_1015 Depth=2
	.loc	1 1304 9 is_stmt 1              # parallel-rne.mlir:1304:9
	load.d r[3:4], -1808(r30)               # 8-byte Folded Reload
	load.d r[8:9], -1744(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[3:4]
	addli.d r[3:4], r[8:9], 1
	beq r1, zero, .LBB0_1040
.LBB0_1015:                             # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1032 Depth 3
                                        #       Child Loop BB0_1018 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[3:4], -1744(r30)              # 8-byte Folded Spill
	sll.d r[18:19], r[3:4], r1
	.loc	1 1305 11 is_stmt 1             # parallel-rne.mlir:1305:11
	loadli.w r1,  -1760(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_1030
# %bb.1016:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1015 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[3:4], zero
	j .LBB0_1018
.LBB0_1017:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	setlt.ul r1, r[3:4], r[6:7]
	.loc	1 1327 13 is_stmt 1             # parallel-rne.mlir:1327:13
	add.s r5, r10, r5
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	addli.d r[3:4], r[3:4], 1
	.loc	1 1327 13                       # parallel-rne.mlir:1327:13
	stores.w r9, 0(r5)
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	beq r1, zero, .LBB0_1014
.LBB0_1018:                             # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1015 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.ul r[8:9], r[3:4], r[18:19]
	lui r17, 523264
	slli r5, r8, 2
	lui r9, 523264
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	add.s r1, r12, r5
	.loc	1 1308 19                       # parallel-rne.mlir:1308:19
	add.s r8, r2, r5
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	loads.w r1, 0(r1)
	.loc	1 1308 19                       # parallel-rne.mlir:1308:19
	loads.w r20, 0(r8)
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	and r11, r1, r27
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	beq r11, r23, .LBB0_1020
# %bb.1019:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_1020:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	add.s r1, r1, r5
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r16, zero, .LBB0_1028
# %bb.1021:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r11, zero, .LBB0_1029
.LBB0_1022:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	beq r16, r23, .LBB0_1024
.LBB0_1023:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
.LBB0_1024:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r1, zero, .LBB0_1026
# %bb.1025:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
.LBB0_1026:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	setlt.u r1, r23, r16
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r1, zero, .LBB0_1017
# %bb.1027:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_1017
.LBB0_1028:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	addli r17, r20, 0
	lui r20, 523264
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	beq r11, zero, .LBB0_1022
.LBB0_1029:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1018 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r17, 0
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r16, r23, .LBB0_1023
	j .LBB0_1024
.LBB0_1030:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1015 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	load.d r[20:21], -1768(r30)             # 8-byte Folded Reload
	j .LBB0_1032
.LBB0_1031:                             # %vector.body
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 1305 11 is_stmt 1             # parallel-rne.mlir:1305:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 1327 13                       # parallel-rne.mlir:1327:13
	add.s r8, r10, r9
	lui r26, 524288
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	seteq.d r1, r[20:21], r[24:25]
	.loc	1 1327 13                       # parallel-rne.mlir:1327:13
	stores.w r11, 12(r8)
	stores.w r4, 8(r8)
	stores.w r3, 4(r8)
	stores.w r5, 0(r8)
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	bneq r1, zero, .LBB0_1014
.LBB0_1032:                             # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1015 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.ul r[3:4], r[20:21], r[18:19]
	loadli.w r1,  -1748(r30)                # 4-byte Folded Reload
	slli r9, r3, 2
	add.s r16, r1, r9
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	add.s r17, r12, r9
	.loc	1 1308 19                       # parallel-rne.mlir:1308:19
	add.s r26, r2, r9
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	loads.w r1, 0(r16)
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	loads.w r3, 0(r17)
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	and r1, r1, r27
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	and r3, r3, r27
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	seteq r4, r1, r23
	.loc	1 1318 19                       # parallel-rne.mlir:1318:19
	seteq r15, r1, zero
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	seteq r5, r3, zero
	.loc	1 1317 19                       # parallel-rne.mlir:1317:19
	seteq r11, r3, r23
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	.loc	1 1316 19                       # parallel-rne.mlir:1316:19
	and r3, r4, r5
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	and r4, r15, r11
	lui r11, 523264
	lui r5, 523264
	.loc	1 1320 19                       # parallel-rne.mlir:1320:19
	or r3, r3, r4
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	or r1, r1, r3
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r1, zero, .LBB0_1034
# %bb.1033:                             # %vector.body
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r26)
.LBB0_1034:                             # %vector.body
                                        #   in Loop: Header=BB0_1032 Depth=3
	loads.w r1, 4(r16)
	loads.w r3, 4(r17)
	and r1, r1, r27
	and r3, r3, r27
	seteq r4, r1, r23
	seteq r13, r1, zero
	seteq r15, r3, zero
	seteq r8, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r4, r15
	and r4, r13, r8
	or r3, r3, r4
	or r1, r1, r3
	lui r3, 523264
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r1, zero, .LBB0_1036
# %bb.1035:                             # %vector.body
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r26)
.LBB0_1036:                             # %vector.body
                                        #   in Loop: Header=BB0_1032 Depth=3
	loads.w r1, 8(r16)
	loads.w r4, 8(r17)
	and r1, r1, r27
	and r4, r4, r27
	seteq r8, r1, r23
	seteq r15, r1, zero
	seteq r13, r4, zero
	seteq r14, r4, r23
	max.u r1, r1, r4
	setlt.u r1, r23, r1
	and r4, r8, r13
	and r8, r15, r14
	or r4, r4, r8
	or r1, r1, r4
	lui r4, 523264
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r1, zero, .LBB0_1038
# %bb.1037:                             # %vector.body
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 8(r26)
.LBB0_1038:                             # %vector.body
                                        #   in Loop: Header=BB0_1032 Depth=3
	loads.w r1, 12(r16)
	loads.w r8, 12(r17)
	and r1, r1, r27
	and r8, r8, r27
	seteq r13, r1, r23
	seteq r16, r1, zero
	seteq r14, r8, zero
	seteq r15, r8, r23
	max.u r1, r1, r8
	setlt.u r1, r23, r1
	and r8, r13, r14
	and r13, r16, r15
	or r8, r8, r13
	or r1, r1, r8
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r1, zero, .LBB0_1031
# %bb.1039:                             # %vector.body
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r26)
	j .LBB0_1031
.LBB0_1040:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r1
	.loc	1 1296 7                        # parallel-rne.mlir:1296:7
	mfence { sm }
.LBB0_1041:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1332 7                        # parallel-rne.mlir:1332:7
	addli r2, zero, 255
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	.loc	1 1332 7                        # parallel-rne.mlir:1332:7
	csr_set csr5, r2
	.loc	1 1333 7                        # parallel-rne.mlir:1333:7
	addli r2, zero, 3
	.loc	1 1332 7                        # parallel-rne.mlir:1332:7
	sync_core
	.loc	1 1333 7                        # parallel-rne.mlir:1333:7
	beq r1, r2, .LBB0_5
# %bb.1042:                             # %.critedge32
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[13:14], -1848(r30)             # 8-byte Folded Reload
	addli r6, zero, 2
	lui r25, 71
	.loc	1 1344 7 is_stmt 1              # parallel-rne.mlir:1344:7
	bneq r1, zero, .LBB0_6
# %bb.1043:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1876(r30)                # 4-byte Folded Reload
	load.d r[3:4], -1768(r30)               # 8-byte Folded Reload
	addli r8, zero, 32
	.loc	1 1344 7                        # parallel-rne.mlir:1344:7
	load.d r[11:12], -1872(r30)             # 8-byte Folded Reload
	addli r5, zero, 15
	sext_int2long r[1:2], r1
	sll.d r[5:6], r[11:12], r5
	min.sl r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 32
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	zext_int2long r[3:4], r8
	load.d r[8:9], 24(r30)
	.loc	1 1340 13 is_stmt 1             # parallel-rne.mlir:1340:13
	min.sl r[1:2], r[1:2], r[3:4]
	addli r4, zero, 5
	.loc	1 1344 7                        # parallel-rne.mlir:1344:7
	addli r3, zero, 1
	add.ul r[5:6], r[8:9], r[5:6]
	addli r8, zero, 17
	xwait r8, 0
	load.d r[8:9], -1864(r30)               # 8-byte Folded Reload
	lock zero, r4
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r3, zero, 1
	add.ul r[5:6], r[5:6], r[8:9]
	load.d r[8:9], -1888(r30)               # 8-byte Folded Reload
	dma_cfg r6, zero, zero, 2
	slli r3, r8, 2
	dma_cfg r5, r10, r3, 3
	addli r3, zero, 512
	addli r5, zero, 1024
	addli r6, zero, 2
	dma_cfg r5, r3, r1, 4
	addli r1, zero, 18
	dma_run zero
	unlock r4
	xsignal r1, 0
	j .LBB0_6
.LBB0_1044:                             # %.thread193
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	storeli.w r6, -692(r30)
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	storeli.w r5, -368(r30)
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	storeli.w r3, -1720(r30)
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	storeli.w r4, -948(r30)
	lui r26, 524288
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	j .LBB0_30
.LBB0_1045:                             # %._crit_edge
	.loc	1 1346 5                        # parallel-rne.mlir:1346:5
	xsignal zero, 0
	bneq r7, zero, .LBB0_1047
# %bb.1046:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1346 5                        # parallel-rne.mlir:1346:5
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
.LBB0_1047:
	.loc	1 1347 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1347:5
	addli sp, sp, 1936
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_PARAM_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0:
	.long	52                              # 0x34
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	2000                            # 0x7d0
	.size	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0,@object # @XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0, 4

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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-qb1y7lra" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
