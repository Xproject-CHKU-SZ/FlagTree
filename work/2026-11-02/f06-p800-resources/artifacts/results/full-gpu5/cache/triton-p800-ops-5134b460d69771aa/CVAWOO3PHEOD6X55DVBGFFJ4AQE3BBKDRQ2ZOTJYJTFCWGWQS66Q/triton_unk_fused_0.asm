	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-k6icghhn" "gelu-lut-refined.mlir"
	.loc	1 7 0                           # gelu-lut-refined.mlir:7:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1968
	addli r2, zero, 1
.Ltmp0:
	.loc	1 27 5 prologue_end             # gelu-lut-refined.mlir:27:5
	core_id r1
	addli r30, sp, 1904
	xsignal_mode_cfg r2
	beq r1, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	lui r3, 1048575
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
	xwait r2, 0
	xwait r2, 0
	xwait zero, 0
	ori r2, r3, 4095
	csr_set csr3, r2
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # gelu-lut-refined.mlir:0:5
	addli r5, zero, 2
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
	uni_sram_cfg r2, r2
	addli r6, zero, 4
	load.d r[3:4], 32(r30)
	addli r7, zero, 4096
	lock zero, r5
	ew_cfg r2, zero, zero, 16
	unlock r5
	lock zero, r6
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg zero, r3, r7, 3
	addli r3, zero, 32
	addli r4, zero, 1024
	dma_cfg zero, zero, r2, 4
	dma_run zero
	unlock r6
	xsignal r2, 0
	xwait r2, 0
	lock zero, zero
	ds_cfg r5, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r3, zero, 13
	addli r3, zero, 11
	ds_cfg r4, zero, 14
	shuffle_batch r7, zero, r4, 4
	unlock zero
	xsignal r2, 0
	xwait r2, 0
	lock zero, r5
	lui r2, 17
	ewtable_cfg r7, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r2, zero, 13
	addli r3, zero, 15
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r2, zero, 19
	addli r3, zero, 20
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	.loc	1 0 5                           # gelu-lut-refined.mlir:0:5
	loadli.w r2,  40(r30)
	loadli.w r3,  44(r30)
	load_param_i r4, 1
	loadli.w r5,  48(r30)
	load_param_i r7, 0
	lui r6, 1048575
	storeli.w zero, -16(r30)
	storeli.w zero, -32(r30)
	storeli.w zero, -48(r30)
	storeli.w zero, -64(r30)
	storeli.w zero, -408(r30)
	storeli.w zero, -1052(r30)
	storeli.w zero, -1400(r30)
	storeli.w zero, -1788(r30)
	mul.s r2, r3, r2
	addli r3, r4, 0
	fmac.s r3, r2, r5
	mul.s r5, r2, r5
	addli r3, r3, -1
	div.s r3, r3, r4
	ori r4, r6, 4095
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	storeli.w r4, -28(r30)
	storeli.w r4, -24(r30)
	storeli.w r4, -20(r30)
	storeli.w r4, -44(r30)
	storeli.w r4, -40(r30)
	storeli.w r4, -36(r30)
	storeli.w r4, -60(r30)
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
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
	storeli.w r4, -1404(r30)
	mul.s r2, r3, r7
	fmac.s r3, r3, r7
	min.s r3, r3, r5
	ble.s r3, r2, .LBB0_46
# %bb.4:                                # %.lr.ph
	sext_int2long r[10:11], r2
	lui r2, 366
	sext_int2long r[3:4], r3
	loadli.w r17,  -16(r30)
	loadli.w r22,  -32(r30)
	loadli.w r26,  -48(r30)
	loadli.w r12,  -64(r30)
	loadli.w r9,  -408(r30)
	loadli.w r13,  -1052(r30)
	loadli.w r6,  -1400(r30)
	loadli.w r5,  -1788(r30)
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
	core_id r14
	addli r18, zero, 6
	addli r19, zero, 4
	addli r21, zero, 2
	addli r23, zero, 96
	addli r27, zero, 32
	addli r1, zero, 256
	addli r15, zero, 0
	ori r2, r2, 768
	store.d r[3:4], -1880(r30)              # 8-byte Folded Spill
	lui r3, 378
	addli r4, zero, 1
	storeli.w r2, -1884(r30)                # 4-byte Folded Spill
	lui r2, 216
	ori r2, r2, 2893
	storeli.w r2, -1888(r30)                # 4-byte Folded Spill
	ori r2, r3, 768
	lui r3, 522239
	storeli.w r2, -1892(r30)                # 4-byte Folded Spill
	lui r2, 1046527
	ori r2, r2, 4095
	storeli.w r2, -1896(r30)                # 4-byte Folded Spill
	ori r2, r3, 4095
	storeli.w r2, -1900(r30)                # 4-byte Folded Spill
	addli r2, zero, 64
	j .LBB0_8
.LBB0_5:                                # %.thread68
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 107 5 is_stmt 1               # gelu-lut-refined.mlir:107:5
	load.d r[17:18], 16(r30)
	load.d r[3:4], -1856(r30)               # 8-byte Folded Reload
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
	core_id r14
	.loc	1 107 5                         # gelu-lut-refined.mlir:107:5
	add.ul r[17:18], r[17:18], r[3:4]
	addli r3, zero, 13
	addli r4, zero, 1
	xwait r3, 0
	lock zero, r19
	slli r3, r10, 2
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r18, zero, 2
	dma_cfg r6, r17, r3, 3
	addli r3, zero, 12
	dma_cfg r1, r1, r15, 4
	dma_run zero
	unlock r19
	loadli.w r26,  -1824(r30)               # 4-byte Folded Reload
	xsignal r3, 0
	loadli.w r17,  -1808(r30)               # 4-byte Folded Reload
	loadli.w r22,  -1812(r30)               # 4-byte Folded Reload
	.loc	1 108 16                        # gelu-lut-refined.mlir:108:16
	addli r26, r26, 1
.LBB0_6:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	addli r18, zero, 6
.LBB0_7:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[10:11], -1832(r30)             # 8-byte Folded Reload
	load.d r[5:6], -1880(r30)               # 8-byte Folded Reload
	loadli.w r15,  -1836(r30)               # 4-byte Folded Reload
	addli r12, r12, 1
	.loc	1 110 16 is_stmt 1              # gelu-lut-refined.mlir:110:16
	addli r22, r22, 1
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	addli r17, r17, 1
	addli.d r[10:11], r[10:11], 1
	setlt.sl r3, r[10:11], r[5:6]
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	addli r5, r8, 1
	addli r6, r16, 1
	beq r3, zero, .LBB0_45
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_40 Depth 2
                                        #     Child Loop BB0_33 Depth 2
	storeli.w r12, -1804(r30)               # 4-byte Folded Spill
	storeli.w r26, -1824(r30)               # 4-byte Folded Spill
	storeli.w r22, -1812(r30)               # 4-byte Folded Spill
	storeli.w r17, -1808(r30)               # 4-byte Folded Spill
	.loc	1 49 5 is_stmt 1                # gelu-lut-refined.mlir:49:5
	bneq r14, r19, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	xwait r3, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r3,  48(r30)
	loadli.w r8,  44(r30)
	addli r7, zero, 128
	store.d r[10:11], -1832(r30)            # 8-byte Folded Spill
	addli r16, zero, 8
	addli r22, zero, 0
	addli r14, zero, 6
	addli r26, zero, 0
	div.s r3, r10, r3
	div.s r3, r3, r8
	div.s r8, r3, r7
	addli r7, zero, 3
	mod.s r11, r15, r7
	addli r15, r15, 1
	storeli.w r15, -1836(r30)               # 4-byte Folded Spill
	slli r10, r8, 3
	slli r8, r8, 7
	sub.s r12, r4, r10
	sub.s r8, r3, r8
	slli r20, r11, 14
	min.s r12, r12, r16
	mod.s r3, r3, r12
	div.s r8, r8, r12
	addli r12, zero, 1
	add.s r3, r10, r3
	slli r10, r8, 6
	storeli.w r10, -1848(r30)               # 4-byte Folded Spill
	zext_int2long r[10:11], r8
	slli r8, r3, 6
	zext_int2long r[15:16], r3
	addli r3, zero, 14
	sll.d r[10:11], r[10:11], r18
	store.d r[15:16], -1864(r30)            # 8-byte Folded Spill
	storeli.w r8, -1868(r30)                # 4-byte Folded Spill
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	sll.d r[24:25], r[10:11], r21
	sll.d r[10:11], r[15:16], r3
	load.d r[16:17], 8(r30)
	store.d r[24:25], -1856(r30)            # 8-byte Folded Spill
	add.ul r[15:16], r[16:17], r[24:25]
	addli r24, zero, 86
	lui r25, 12
	store.d r[15:16], -1800(r30)            # 8-byte Folded Spill
	load.d r[16:17], 0(r30)
	add.ul r[17:18], r[16:17], r[10:11]
	.loc	1 27 5 is_stmt 1                # gelu-lut-refined.mlir:27:5
	core_id r11
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 71 7                          # gelu-lut-refined.mlir:71:7
	addli r10, zero, 5
	xwait r21, 0
	xwait r10, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r27, zero, 1
	ds_cfg r27, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r28, r3, r27, 1
	unlock zero
	xsignal r7, 0
	xsignal r19, 0
.LBB0_12:                               # %.thread14
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r13, r13, 1
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r9, r9, 1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	andi r3, r12, 1
	bneq r3, zero, .LBB0_21
	j .LBB0_28
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 50 13                         # gelu-lut-refined.mlir:50:13
	add.s r16, r6, r26
	add.s r8, r5, r26
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	mod.s r3, r16, r24
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	mod.s r10, r8, r23
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	slli r3, r3, 13
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	slli r28, r10, 13
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	add.s r3, r3, r25
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	beq r11, r21, .LBB0_11
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
	core_id r15
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	zext_int2long r[10:11], r22
	.loc	1 70 7 is_stmt 1                # gelu-lut-refined.mlir:70:7
	bneq r15, r4, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	addli r15, zero, 7
	xwait r7, 0
	lock zero, r19
	addli r7, zero, 128
	dma_cfg zero, zero, zero, 0
	sll.d r[10:11], r[10:11], r15
	add.ul r[10:11], r[17:18], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r3, r10, r7, 3
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
	core_id r11
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	dma_cfg r7, r1, r2, 4
	dma_run zero
	unlock r19
	addli r7, zero, 3
	xsignal r21, 0
	.loc	1 71 7                          # gelu-lut-refined.mlir:71:7
	j .LBB0_12
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r3, zero, 85
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r22, zero, 160
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	lui r23, 184
	mod.s r3, r9, r3
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	mod.s r22, r13, r22
	addli r13, r13, 1
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r9, r9, 1
	slli r3, r3, 13
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	slli r22, r22, 13
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	add.s r3, r3, r23
	.loc	1 85 7                          # gelu-lut-refined.mlir:85:7
	addli r23, zero, 7
	beq r15, r23, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 7 is_stmt 0                 # gelu-lut-refined.mlir:0:7
	addli r7, zero, 6
	.loc	1 85 7                          # gelu-lut-refined.mlir:85:7
	bneq r15, r7, .LBB0_22
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 17
	sll.d r[10:11], r[10:11], r1
	addli r1, zero, 7
	xwait r1, 0
	load.d r[14:15], -1800(r30)             # 8-byte Folded Reload
	lock zero, r19
	addli r1, zero, 256
	dma_cfg zero, zero, zero, 0
	add.ul r[10:11], r[14:15], r[10:11]
	addli r14, zero, 256
	dma_cfg zero, r11, zero, 2
	dma_cfg r3, r10, r14, 3
	addli r3, zero, 4096
	dma_cfg r14, r3, r27, 4
	dma_run zero
	unlock r19
	xsignal r7, 0
	addli r14, zero, 6
	addli r7, zero, 3
	.loc	1 27 5 is_stmt 1                # gelu-lut-refined.mlir:27:5
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 86 7                          # gelu-lut-refined.mlir:86:7
	addli r10, zero, 9
	xwait r14, 0
	xwait r10, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r27, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r22, r3, r27, 2
	addli r3, zero, 7
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
	xsignal r3, 0
.LBB0_20:                               # %.thread16
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
	core_id r11
	addli r23, zero, 96
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	andi r3, r12, 1
	beq r3, zero, .LBB0_28
.LBB0_21:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 13                         # gelu-lut-refined.mlir:89:13
	addli r26, r26, 1
	addli r22, zero, 1
	addli r12, zero, 0
	.loc	1 50 13                         # gelu-lut-refined.mlir:50:13
	j .LBB0_13
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13 is_stmt 0                # gelu-lut-refined.mlir:0:13
	addli r14, zero, 6
	addli r7, zero, 3
	.loc	1 27 5 is_stmt 1                # gelu-lut-refined.mlir:27:5
	core_id r11
	addli r23, zero, 96
	.loc	1 88 7                          # gelu-lut-refined.mlir:88:7
	bneq r11, r19, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 8
	xwait r19, 0
	xwait r3, 0
	addli r3, zero, 1
	lock zero, r3
	mm_cfg r2, r27, r2, 0
	mm_cfg r21, r21, r3, 2
	beq r26, zero, .LBB0_26
# %bb.24:                               # %.preheader17
                                        #   in Loop: Header=BB0_13 Depth=2
	mm_acc r20, r28, r22, 8
	j .LBB0_27
.LBB0_25:                               # %.thread16.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	andi r3, r12, 1
	bneq r3, zero, .LBB0_21
	j .LBB0_30
.LBB0_26:                               # %.preheader
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 88 7                          # gelu-lut-refined.mlir:88:7
	mm r20, r28, r22, 8
.LBB0_27:                               # %.thread16.thread66
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r10, zero, 5
	unlock r3
	addli r4, zero, 1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	andi r3, r12, 1
	.loc	1 88 7                          # gelu-lut-refined.mlir:88:7
	xsignal r10, 0
	addli r10, zero, 9
	xsignal r10, 0
	bneq r3, zero, .LBB0_21
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # gelu-lut-refined.mlir:0:7
	bneq r11, r19, .LBB0_30
.LBB0_29:                               # %.thread67
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 49 5 is_stmt 1                # gelu-lut-refined.mlir:49:5
	addli r3, zero, 10
	xsignal r3, 0
.LBB0_30:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 98 11                         # gelu-lut-refined.mlir:98:11
	loadli.w r3,  -1848(r30)                # 4-byte Folded Reload
	loadli.w r12,  -1804(r30)               # 4-byte Folded Reload
	zext_int2long r[17:18], r2
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
	core_id r28
	addli r15, zero, 1
	.loc	1 98 11                         # gelu-lut-refined.mlir:98:11
	zext_int2long r[5:6], r3
	addli r3, zero, 960
	zext_int2long r[10:11], r3
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	mod.s r3, r12, r7
	.loc	1 100 11                        # gelu-lut-refined.mlir:100:11
	min.ul r[10:11], r[5:6], r[10:11]
	addli.d r[10:11], r[10:11], 64
	.loc	1 102 11                        # gelu-lut-refined.mlir:102:11
	max.ul r[10:11], r[10:11], r[5:6]
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	slli r3, r3, 8
	.loc	1 102 11                        # gelu-lut-refined.mlir:102:11
	sub.sl r[5:6], r[10:11], r[5:6]
	.loc	1 103 11                        # gelu-lut-refined.mlir:103:11
	min.ul r[10:11], r[5:6], r[17:18]
	lui r5, 354
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	add.s r6, r3, r5
	beq r28, r15, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	loadli.w r26,  -1824(r30)               # 4-byte Folded Reload
	ori r5, r5, 768
	loadli.w r22,  -1812(r30)               # 4-byte Folded Reload
	addli r4, zero, 1
	.loc	1 108 16 is_stmt 1              # gelu-lut-refined.mlir:108:16
	mod.s r3, r26, r7
	addli r26, r26, 1
	slli r3, r3, 14
	add.s r5, r3, r5
	.loc	1 109 5                         # gelu-lut-refined.mlir:109:5
	bneq r28, r7, .LBB0_36
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	addli r7, zero, 10
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
	core_id r14
	addli r3, zero, 0
	.loc	1 109 5                         # gelu-lut-refined.mlir:109:5
	xwait r7, 0
	addli r7, zero, 12
	xwait r7, 0
	addli r7, zero, 15
	xwait r7, 0
	lock zero, r21
	lui r7, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r7, r7, zero, 0
	addli r7, zero, 63
	ew_cfg zero, r7, zero, 2
	lui r7, 4
	ew_cfg r4, zero, zero, 3
.LBB0_33:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r10, r5, r3
	add.s r11, r20, r3
	addli r3, r3, 256
	dsmadd r10, r11, r6, 0
	bneq r3, r7, .LBB0_33
# %bb.34:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	unlock r21
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r3, 0
	addli r3, zero, 16
	xsignal r3, 0
	addli r3, zero, 17
	xsignal r3, 0
	addli r3, zero, 14
.LBB0_35:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	xsignal r3, 0
	j .LBB0_43
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 110 16 is_stmt 1              # gelu-lut-refined.mlir:110:16
	mod.s r3, r22, r7
	loadli.w r6,  -1884(r30)                # 4-byte Folded Reload
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
	core_id r14
	.loc	1 110 16                        # gelu-lut-refined.mlir:110:16
	slli r3, r3, 14
	add.s r20, r3, r6
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	addli r3, zero, 5
	bneq r28, r3, .LBB0_42
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 14
	addli r12, zero, 1
	lui r4, 266232
	lui r6, 790528
	addli r11, zero, 0
	addli r18, zero, 6
	xwait r3, 0
	addli r3, zero, 19
	xwait r3, 0
	lock zero, r21
	addli r3, zero, 2047
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r3, zero, 2
	addli r3, zero, 13
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, zero, 19
	ew_cfg r3, zero, zero, 10
	loadli.w r3,  -1888(r30)                # 4-byte Folded Reload
	ew_cfg r21, r12, r3, 11
	ew_cfg zero, zero, r7, 13
	loadli.w r17,  -1808(r30)               # 4-byte Folded Reload
	ew_cfg r6, r19, r4, 14
	lui r4, 260096
	ew_cfg zero, r4, zero, 15
	addli r4, zero, 1
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	mod.s r3, r17, r7
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	sslut r20, r5, 0
	lui r7, 4
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r21
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	loadli.w r6,  -1892(r30)                # 4-byte Folded Reload
	slli r3, r3, 14
	add.s r10, r3, r6
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	addli r3, zero, 16
	xwait r3, 0
	addli r3, zero, 20
	xwait r3, 0
	lock zero, r21
	addli r3, zero, 63
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r3, zero, 2
	ew_cfg r12, zero, zero, 3
	loadli.w r3,  -1896(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r3, zero, zero, 0
.LBB0_38:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r10, r11
	add.s r12, r5, r11
	addli r11, r11, 256
	dscmpnsel r3, r12, r12, 0
	bneq r11, r7, .LBB0_38
# %bb.39:                               #   in Loop: Header=BB0_8 Depth=1
	unlock r21
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	addli r6, zero, 63
	addli r3, zero, 0
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r6, zero, 2
	ew_cfg r4, zero, zero, 3
	loadli.w r6,  -1900(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r6, zero, zero, 0
.LBB0_40:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r11, r10, r3
	addli r3, r3, 256
	dscmpnsel r11, r11, r11, 4
	bneq r3, r7, .LBB0_40
# %bb.41:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	addli r3, zero, 17
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	unlock r21
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	lui r6, 784384
	addli r7, zero, 20
	xwait r3, 0
	lock zero, r21
	lui r3, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r3, r6, zero, 0
	addli r6, zero, 2047
	ew_cfg zero, r6, zero, 2
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, r21, 19
	dsmadd r5, r5, r10, 0
	ew_cfg zero, zero, zero, 19
	unlock r21
	xsignal r7, 0
	.loc	1 116 5                         # gelu-lut-refined.mlir:116:5
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r3, r3, zero, 0
	addli r3, zero, 15
	ew_cfg zero, r6, zero, 2
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, r21, 19
	dsmadd r20, r20, r5, 0
	ew_cfg zero, zero, zero, 19
	unlock r21
	xsignal r3, 0
	addli r3, zero, 18
	xsignal r3, 0
	loadli.w r12,  -1804(r30)               # 4-byte Folded Reload
	j .LBB0_7
.LBB0_42:                               # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	beq r28, zero, .LBB0_44
.LBB0_43:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r17,  -1808(r30)               # 4-byte Folded Reload
	j .LBB0_6
.LBB0_44:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r3,  -1868(r30)                # 4-byte Folded Reload
	zext_int2long r[5:6], zero
	addli r7, zero, 5
	sext_int2long r[24:25], r3
	addli r3, zero, 18
	min.sl r[5:6], r[24:25], r[5:6]
	store.d r[24:25], -1848(r30)            # 8-byte Folded Spill
	store.d r[5:6], -1800(r30)              # 8-byte Folded Spill
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	load.d r[5:6], -1864(r30)               # 8-byte Folded Reload
	sll.d r[5:6], r[5:6], r3
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	store.d r[5:6], -1824(r30)              # 8-byte Folded Spill
	load.d r[5:6], -1800(r30)               # 8-byte Folded Reload
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	xwait r3, 0
	slli r3, r10, 2
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	addli.d r[5:6], r[5:6], 64
	max.sl r[5:6], r[5:6], r[24:25]
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	load.d r[24:25], -1824(r30)             # 8-byte Folded Reload
	store.d r[5:6], -1800(r30)              # 8-byte Folded Spill
	load.d r[5:6], 24(r30)
	add.ul r[5:6], r[5:6], r[24:25]
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	load.d r[24:25], -1848(r30)             # 8-byte Folded Reload
	store.d r[5:6], -1824(r30)              # 8-byte Folded Spill
	load.d r[5:6], -1800(r30)               # 8-byte Folded Reload
	sub.sl r[5:6], r[5:6], r[24:25]
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	load.d r[24:25], -1824(r30)             # 8-byte Folded Reload
	store.d r[5:6], -1800(r30)              # 8-byte Folded Spill
	load.d r[5:6], -1856(r30)               # 8-byte Folded Reload
	add.ul r[5:6], r[24:25], r[5:6]
	.loc	1 120 11 is_stmt 1              # gelu-lut-refined.mlir:120:11
	load.d r[24:25], -1800(r30)             # 8-byte Folded Reload
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	lock zero, r7
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 1
	dma_cfg r6, zero, zero, 2
	.loc	1 120 11                        # gelu-lut-refined.mlir:120:11
	min.sl r[17:18], r[24:25], r[17:18]
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	dma_cfg r5, r20, r3, 3
	addli r3, zero, 4096
	dma_cfg r3, r1, r17, 4
	addli r3, zero, 19
	dma_run zero
	unlock r7
	j .LBB0_35
.LBB0_45:                               # %._crit_edge
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
	core_id r1
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	storeli.w r13, -1052(r30)
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	storeli.w r9, -408(r30)
.LBB0_46:
	.loc	1 125 5                         # gelu-lut-refined.mlir:125:5
	xsignal zero, 0
	bneq r1, zero, .LBB0_48
# %bb.47:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r1, zero, 2
	.loc	1 125 5                         # gelu-lut-refined.mlir:125:5
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
.LBB0_48:
	.loc	1 125 5 epilogue_begin          # gelu-lut-refined.mlir:125:5
	addli sp, sp, 1904
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
	.long	1968                            # 0x7b0
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
.asciz	"gelu-lut-refined.mlir"         # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-k6icghhn" # string offset=29
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
