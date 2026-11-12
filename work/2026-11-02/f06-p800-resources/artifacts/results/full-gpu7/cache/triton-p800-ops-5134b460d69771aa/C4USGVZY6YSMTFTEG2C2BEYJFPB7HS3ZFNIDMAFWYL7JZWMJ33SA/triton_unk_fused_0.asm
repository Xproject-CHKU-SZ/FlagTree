	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-g_81zah4" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1968
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r27
	addli r30, sp, 1904
	xsignal_mode_cfg r1
	beq r27, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	xwait r1, 0
	xwait r1, 0
	xwait zero, 0
	ori r1, r2, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r4, zero, 2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	uni_sram_cfg r1, r1
	addli r5, zero, 4
	load.d r[2:3], 32(r30)
	addli r6, zero, 4096
	lock zero, r4
	ew_cfg r1, zero, zero, 16
	unlock r4
	lock zero, r5
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg zero, r2, r6, 3
	addli r2, zero, 32
	addli r3, zero, 1024
	dma_cfg zero, zero, r1, 4
	dma_run zero
	unlock r5
	xsignal r1, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r2, zero, 13
	addli r2, zero, 5
	ds_cfg r3, zero, 14
	shuffle_batch r6, zero, r3, 4
	addli r3, zero, 3
	unlock zero
	xsignal r1, 0
	xwait r1, 0
	lock zero, r4
	lui r1, 17
	ewtable_cfg r6, 0
	ewtable_cfg r1, 1
	lui r1, 1048575
	unlock r4
	xsignal zero, 0
	xwait zero, 0
	ori r1, r1, 4095
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 7
	addli r1, zero, 15
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 19
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 17
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 21
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r7, 0
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -20(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -40(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -60(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -80(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -408(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -1052(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -1384(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -1772(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r1, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r6, r2, r4
	ori r4, r5, 4095
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	storeli.w r4, -24(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	storeli.w r4, -48(r30)
	storeli.w r4, -44(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r4, -76(r30)
	storeli.w r4, -72(r30)
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 49 11                         # parallel-rne.mlir:49:11
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
	.loc	1 50 11                         # parallel-rne.mlir:50:11
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
	storeli.w r4, -1400(r30)
	storeli.w r4, -1396(r30)
	storeli.w r4, -1392(r30)
	storeli.w r4, -1388(r30)
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r2, r6, r7
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r6, r6, r7
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r3, r6, r1
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	ble.s r3, r2, .LBB0_275
# %bb.4:                                # %.lr.ph
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	loadli.w r1,  -408(r30)
	sext_int2long r[3:4], r3
	loadli.w r12,  -20(r30)
	loadli.w r16,  -40(r30)
	loadli.w r23,  -60(r30)
	loadli.w r24,  -80(r30)
	addli r11, zero, 6
	addli r21, zero, 4
	addli r22, zero, 2
	lui r28, 522240
	addli r10, zero, 0
	store.d r[3:4], -1888(r30)              # 8-byte Folded Spill
	lui r3, 40
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[4:5], r2
	loadli.w r2,  -1384(r30)
	storeli.w r1, -1776(r30)                # 4-byte Folded Spill
	lui r1, 358
	ori r1, r1, 1024
	storeli.w r1, -1892(r30)                # 4-byte Folded Spill
	ori r1, r3, 2114
	lui r3, 524287
	storeli.w r1, -1900(r30)                # 4-byte Folded Spill
	lui r1, 374
	ori r18, r3, 4095
	ori r1, r1, 1024
	storeli.w r1, -1896(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	addli r1, zero, 12
	xsignal r1, 0
	.loc	1 443 7                         # parallel-rne.mlir:443:7
	addli r1, zero, 17
	xsignal r1, 0
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	addli r1, zero, 19
	xsignal r1, 0
	.loc	1 445 7                         # parallel-rne.mlir:445:7
	addli r1, zero, 21
	xsignal r1, 0
	loadli.w r12,  -1816(r30)               # 4-byte Folded Reload
	loadli.w r16,  -1820(r30)               # 4-byte Folded Reload
	loadli.w r23,  -1824(r30)               # 4-byte Folded Reload
	loadli.w r24,  -1828(r30)               # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[4:5], -1840(r30)               # 8-byte Folded Reload
	.loc	1 52 5 is_stmt 1                # parallel-rne.mlir:52:5
	load.d r[1:2], -1888(r30)               # 8-byte Folded Reload
	loadli.w r3,  -1780(r30)                # 4-byte Folded Reload
	loadli.w r10,  -1844(r30)               # 4-byte Folded Reload
	addli r24, r24, 1
	addli r23, r23, 1
	addli r16, r16, 1
	addli r12, r12, 1
	addli r11, zero, 6
	addli.d r[4:5], r[4:5], 1
	setlt.sl r1, r[4:5], r[1:2]
	addli r2, r3, 1
	beq r1, zero, .LBB0_274
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #       Child Loop BB0_64 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #     Child Loop BB0_75 Depth 2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_78 Depth 3
                                        #     Child Loop BB0_103 Depth 2
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_134 Depth 3
                                        #     Child Loop BB0_159 Depth 2
                                        #       Child Loop BB0_176 Depth 3
                                        #       Child Loop BB0_162 Depth 3
                                        #     Child Loop BB0_187 Depth 2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_190 Depth 3
                                        #     Child Loop BB0_217 Depth 2
                                        #       Child Loop BB0_234 Depth 3
                                        #       Child Loop BB0_220 Depth 3
                                        #     Child Loop BB0_244 Depth 2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_247 Depth 3
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	bneq r27, r21, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 13
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r3,  48(r30)
	store.d r[4:5], -1840(r30)              # 8-byte Folded Spill
	addli r6, zero, 1
	addli r8, zero, 8
	mod.s r7, r10, r21
	addli r10, r10, 1
	addli r1, zero, 0
	storeli.w r10, -1844(r30)               # 4-byte Folded Spill
	div.s r3, r4, r3
	loadli.w r4,  44(r30)
	div.s r3, r3, r4
	addli r4, zero, 128
	div.s r4, r3, r4
	slli r5, r4, 3
	slli r4, r4, 7
	sub.s r6, r6, r5
	sub.s r4, r3, r4
	min.s r6, r6, r8
	slli r8, r7, 14
	mod.s r3, r3, r6
	div.s r9, r4, r6
	loadli.w r6,  -1772(r30)
	loadli.w r4,  -1052(r30)
	add.s r5, r5, r3
	slli r3, r9, 6
	zext_int2long r[9:10], r9
	sll.d r[9:10], r[9:10], r11
	slli r7, r5, 6
	zext_int2long r[13:14], r5
	addli r5, zero, 14
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	sll.d r[19:20], r[9:10], r22
	load.d r[9:10], 8(r30)
	store.d r[13:14], -1864(r30)            # 8-byte Folded Spill
	sll.d r[13:14], r[13:14], r5
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	storeli.w r7, -1868(r30)                # 4-byte Folded Spill
	addli r7, zero, 0
	store.d r[19:20], -1856(r30)            # 8-byte Folded Spill
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	add.ul r[10:11], r[9:10], r[19:20]
	load.d r[19:20], 0(r30)
	add.ul r[13:14], r[19:20], r[13:14]
	addli r20, zero, 1
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r1, zero, 5
	xwait r22, 0
	addli r9, zero, 64
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r22, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r9, zero, 13
	shuffle_batch r5, r17, r1, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	xsignal r21, 0
.LBB0_11:                               # %.thread23
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r1,  -1776(r30)                # 4-byte Folded Reload
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r4, r4, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r1, r1, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	storeli.w r1, -1776(r30)                # 4-byte Folded Spill
.LBB0_12:                               # %.thread25
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	andi r1, r20, 1
	beq r1, zero, .LBB0_28
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r7, r7, 1
	addli r1, zero, 1
	addli r20, zero, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.s r9, r2, r7
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r5, zero, 82
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.s r15, r6, r7
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r5, r9, r5
	storeli.w r9, -1780(r30)                # 4-byte Folded Spill
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r9, zero, 96
	mod.s r17, r15, r9
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	lui r9, 16
	slli r19, r5, 13
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r5, r17, 13
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	add.s r17, r19, r9
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r27, r22, .LBB0_10
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[21:22], r1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r1, zero, 1
	bneq r27, r1, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 7
	addli r5, zero, 64
	addli r9, zero, 256
	sll.d r[21:22], r[21:22], r1
	addli r1, zero, 3
	xwait r1, 0
	addli r1, zero, 4
	add.ul r[21:22], r[13:14], r[21:22]
	lock zero, r1
	addli r1, zero, 128
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r22, zero, 2
	dma_cfg r17, r21, r1, 3
	addli r21, zero, 4
	addli r22, zero, 2
	dma_cfg r1, r9, r5, 4
	dma_run zero
	unlock r21
	xsignal r22, 0
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	loadli.w r9,  -1776(r30)                # 4-byte Folded Reload
	.loc	1 114 15 is_stmt 1              # parallel-rne.mlir:114:15
	addli r1, zero, 81
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r17, zero, 160
	mod.s r17, r4, r17
	addli r4, r4, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r1, r9, r1
	addli r9, r9, 1
	storeli.w r9, -1776(r30)                # 4-byte Folded Spill
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r9, zero, 7
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r19, r1, 13
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r1, r17, 13
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	lui r17, 180
	add.s r17, r19, r17
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r27, r9, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 6
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	bneq r27, r9, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 17
	addli r5, zero, 256
	sll.d r[21:22], r[21:22], r1
	addli r1, zero, 7
	xwait r1, 0
	addli r1, zero, 4
	add.ul r[21:22], r[10:11], r[21:22]
	lock zero, r1
	addli r1, zero, 32
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r22, zero, 2
	dma_cfg r17, r21, r5, 3
	addli r17, zero, 4096
	addli r21, zero, 4
	addli r22, zero, 2
	dma_cfg r5, r17, r1, 4
	dma_run zero
	unlock r21
	xsignal r9, 0
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	addli r5, zero, 6
	addli r22, zero, 2
	addli r9, zero, 64
	addli r21, zero, 4
	xwait r5, 0
	addli r5, zero, 9
	xwait r5, 0
	lock zero, zero
	addli r5, zero, 32
	ds_cfg r22, zero, 0
	ds_cfg r9, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r9, zero, 13
	shuffle_coa r1, r17, r5, 2
	addli r1, zero, 7
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	andi r17, r20, 1
	addli r21, zero, 4
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r27, r21, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r9, zero, 8
	xwait r21, 0
	addli r19, zero, 32
	addli r20, zero, 64
	addli r22, zero, 2
	xwait r9, 0
	addli r9, zero, 1
	lock zero, r9
	mm_cfg r20, r19, r20, 0
	mm_cfg r22, r22, r9, 2
	beq r7, zero, .LBB0_25
# %bb.23:                               # %.preheader38
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r8, r5, r1, 8
	j .LBB0_26
.LBB0_24:                               # %.thread25.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r22, zero, 2
	bneq r17, zero, .LBB0_13
	j .LBB0_273
.LBB0_25:                               # %.preheader37
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r8, r5, r1, 8
.LBB0_26:                               # %.thread25.thread76
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 1
	unlock r1
	addli r1, zero, 5
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	bneq r17, zero, .LBB0_13
# %bb.27:                               # %.thread77
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r1, r15, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r4, -1052(r30)
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	storeli.w r1, -1772(r30)
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r1, r15, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r4, -1052(r30)
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	storeli.w r1, -1772(r30)
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r27, r21, .LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	zext_int2long r[1:2], r3
	addli r3, zero, 960
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	mod.s r5, r24, r21
	addli r6, zero, 64
	lui r7, 4
	storeli.w r24, -1828(r30)               # 4-byte Folded Spill
	zext_int2long r[3:4], r3
	zext_int2long r[10:11], r6
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	min.ul r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 64
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	slli r3, r5, 8
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	min.ul r[13:14], r[1:2], r[10:11]
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	lui r1, 342
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	addli r2, zero, 1
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	add.s r1, r3, r1
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	bneq r27, r2, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[2:3], 16(r30)
	load.d r[4:5], -1856(r30)               # 8-byte Folded Reload
	add.ul r[2:3], r[2:3], r[4:5]
	addli r4, zero, 15
	xwait r4, 0
	lock zero, r21
	slli r4, r13, 2
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg r1, r2, r4, 3
	addli r2, zero, 1
	addli r3, zero, 256
	dma_cfg r3, r3, r2, 4
	addli r2, zero, 14
	dma_run zero
	unlock r21
	xsignal r2, 0
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	mod.s r3, r23, r21
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	mod.s r4, r16, r21
	lui r2, 342
	store.d r[13:14], -1880(r30)            # 8-byte Folded Spill
	storeli.w r23, -1824(r30)               # 4-byte Folded Spill
	storeli.w r16, -1820(r30)               # 4-byte Folded Spill
	storeli.w r12, -1816(r30)               # 4-byte Folded Spill
	ori r5, r2, 1024
	mod.s r2, r12, r21
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	slli r3, r3, 14
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	slli r4, r4, 14
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	add.s r24, r3, r5
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r3,  -1892(r30)                # 4-byte Folded Reload
	add.s r3, r4, r3
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	addli r4, zero, 5
	bneq r27, r4, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 10
	addli r4, zero, 0
	xwait r5, 0
	addli r5, zero, 14
	xwait r5, 0
	addli r5, zero, 17
	xwait r5, 0
	lock zero, r22
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 63
	ew_cfg zero, r5, zero, 2
	addli r5, zero, 1
	ew_cfg r5, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r3, r4
	add.s r6, r8, r4
	addli r4, r4, 256
	dsmadd r5, r6, r1, 0
	bneq r4, r7, .LBB0_34
# %bb.35:                               # %.thread29
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	storeli.w zero, -1812(r30)              # 4-byte Folded Spill
	addli r5, zero, 2047
	unlock r22
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r1, 0
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r22
	addli r1, zero, 1
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r5, zero, 2
	ew_cfg r22, zero, zero, 3
	ew_cfg r22, r22, zero, 19
	ew_cfg r22, zero, zero, 10
	loadli.w r4,  -1900(r30)                # 4-byte Folded Reload
	ew_cfg r22, r1, r4, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r21, r1, 14
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	slli r1, r2, 14
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	ew_cfg zero, zero, zero, 15
	sslut r24, r3, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r22
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	loadli.w r2,  -1896(r30)                # 4-byte Folded Reload
	add.s r2, r1, r2
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	addli r1, zero, 21
	xwait r1, 0
	lock zero, r22
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 16
	ew_cfg zero, r5, zero, 2
	ew_cfg r22, zero, zero, 3
	ew_cfg r22, r22, r22, 19
	dsmul r2, r3, r24, 0
	ew_cfg zero, zero, zero, 19
	unlock r22
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	j .LBB0_39
.LBB0_36:                               # %.thread26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	slli r1, r2, 14
	loadli.w r2,  -1896(r30)                # 4-byte Folded Reload
	add.s r2, r1, r2
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	addli r1, zero, 3
	bneq r27, r1, .LBB0_38
# %bb.37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	addli r1, zero, 16
	xwait r1, 0
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	addli r1, zero, 18
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	storeli.w r1, -1812(r30)                # 4-byte Folded Spill
	addli r1, zero, 20
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -1812(r30)              # 4-byte Folded Spill
.LBB0_39:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 160 7 is_stmt 1               # parallel-rne.mlir:160:7
	addli r1, zero, 255
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	xfence
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	mfence { lm, sm, gm }
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	csr_set csr5, r1
	addli r1, zero, 63
	sync_core
	zext_int2long r[6:7], r1
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	beq r27, zero, .LBB0_45
# %bb.40:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	addli r1, zero, 1
	beq r27, r1, .LBB0_73
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 231 7                         # parallel-rne.mlir:231:7
	beq r27, r22, .LBB0_101
.LBB0_42:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	loadli.w r1,  -1812(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_129
.LBB0_43:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	beq r27, r21, .LBB0_157
.LBB0_44:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 336 7                         # parallel-rne.mlir:336:7
	addli r1, zero, 5
	beq r27, r1, .LBB0_185
	j .LBB0_213
.LBB0_45:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 168 9                         # parallel-rne.mlir:168:9
	sub.s r1, r8, r2
	addli r4, zero, 16
	setlt.u r1, r1, r4
	zext_int2long r[4:5], zero
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	storeli.w r1, -1796(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_47
.LBB0_46:                               # %middle.block218
                                        #   in Loop: Header=BB0_47 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	load.d r[12:13], -1792(r30)             # 8-byte Folded Reload
	zext_int2long r[4:5], r1
	.loc	1 168 9 is_stmt 1               # parallel-rne.mlir:168:9
	setlt.ul r1, r[12:13], r[4:5]
	addli.d r[4:5], r[12:13], 1
	beq r1, zero, .LBB0_72
.LBB0_47:                               # %.preheader36
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_64 Depth 3
                                        #       Child Loop BB0_50 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	store.d r[4:5], -1792(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[4:5], r1
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	loadli.w r1,  -1796(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_62
# %bb.48:                               # %scalar.ph210.preheader
                                        #   in Loop: Header=BB0_47 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_50
.LBB0_49:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 191 13 is_stmt 1              # parallel-rne.mlir:191:13
	add.s r1, r8, r1
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	stores.w r17, 0(r1)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	beq r9, zero, .LBB0_46
.LBB0_50:                               # %scalar.ph210
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[12:13], r[4:5], r[26:27]
	lui r17, 523264
	lui r21, 523264
	slli r1, r12, 2
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.s r9, r24, r1
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.s r12, r2, r1
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	loads.w r9, 0(r9)
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	loads.w r22, 0(r12)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r19, r9, r18
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r19, r28, .LBB0_52
# %bb.51:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_52:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	add.s r9, r3, r1
	loads.w r9, 0(r9)
	and r20, r9, r18
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r20, zero, .LBB0_60
# %bb.53:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r19, zero, .LBB0_61
.LBB0_54:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	beq r20, r28, .LBB0_56
.LBB0_55:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_56:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r9, r28, r19
	lui r19, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r9, zero, .LBB0_58
# %bb.57:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_58:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r9, r28, r20
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r9, zero, .LBB0_49
# %bb.59:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_49
.LBB0_60:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r19, zero, .LBB0_54
.LBB0_61:                               # %scalar.ph210
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r20, r28, .LBB0_55
	j .LBB0_56
.LBB0_62:                               # %vector.body212.preheader
                                        #   in Loop: Header=BB0_47 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_64
.LBB0_63:                               # %vector.body212
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	add.s r4, r8, r4
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	seteq.d r9, r[20:21], r[10:11]
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	stores.w r5, 12(r4)
	stores.w r19, 8(r4)
	stores.w r1, 4(r4)
	stores.w r22, 0(r4)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	bneq r9, zero, .LBB0_46
.LBB0_64:                               # %vector.body212
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[4:5], r[20:21], r[26:27]
	slli r4, r4, 2
	add.s r23, r3, r4
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.s r17, r24, r4
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	loads.w r1, 0(r23)
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	loads.w r5, 0(r17)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r1, r1, r18
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r5, r5, r18
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	seteq r19, r1, r28
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	seteq r16, r1, zero
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	seteq r25, r5, r28
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	seteq r22, r5, zero
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	max.u r1, r1, r5
	setlt.u r1, r28, r1
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r5, r19, r22
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	and r16, r16, r25
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.s r25, r2, r4
	lui r22, 523264
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	or r5, r5, r16
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r1, zero, .LBB0_66
# %bb.65:                               # %vector.body212
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r22, 0(r25)
.LBB0_66:                               # %vector.body212
                                        #   in Loop: Header=BB0_64 Depth=3
	loads.w r1, 4(r23)
	loads.w r16, 4(r17)
	and r1, r1, r18
	and r16, r16, r18
	seteq r19, r1, r28
	seteq r9, r16, zero
	seteq r13, r1, zero
	seteq r12, r16, r28
	max.u r1, r1, r16
	setlt.u r1, r28, r1
	and r9, r19, r9
	and r12, r13, r12
	or r9, r9, r12
	or r9, r1, r9
	lui r1, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r9, zero, .LBB0_68
# %bb.67:                               # %vector.body212
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r25)
.LBB0_68:                               # %vector.body212
                                        #   in Loop: Header=BB0_64 Depth=3
	loads.w r9, 8(r23)
	loads.w r12, 8(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r14, r9, zero
	seteq r16, r12, zero
	seteq r19, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r16
	and r13, r14, r19
	lui r19, 523264
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r9, zero, .LBB0_70
# %bb.69:                               # %vector.body212
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r25)
.LBB0_70:                               # %vector.body212
                                        #   in Loop: Header=BB0_64 Depth=3
	loads.w r9, 12(r23)
	loads.w r12, 12(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r16, r9, zero
	seteq r14, r12, zero
	seteq r15, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r14
	and r13, r16, r15
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r9, zero, .LBB0_63
# %bb.71:                               # %vector.body212
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r25)
	j .LBB0_63
.LBB0_72:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r27
	addli r21, zero, 4
	addli r22, zero, 2
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	mfence { sm }
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	addli r1, zero, 1
	bneq r27, r1, .LBB0_41
.LBB0_73:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 203 9                         # parallel-rne.mlir:203:9
	sub.s r1, r8, r2
	addli r4, zero, 16
	setlt.u r1, r1, r4
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	storeli.w r1, -1796(r30)                # 4-byte Folded Spill
	addli r1, zero, 8
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_75
.LBB0_74:                               # %middle.block203
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[12:13], -1792(r30)             # 8-byte Folded Reload
	zext_int2long r[4:5], r1
	.loc	1 203 9 is_stmt 1               # parallel-rne.mlir:203:9
	setlt.ul r1, r[12:13], r[4:5]
	addli.d r[4:5], r[12:13], 1
	beq r1, zero, .LBB0_100
.LBB0_75:                               # %.preheader35
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_78 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	store.d r[4:5], -1792(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[4:5], r1
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	loadli.w r1,  -1796(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_90
# %bb.76:                               # %scalar.ph195.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_78
.LBB0_77:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 226 13 is_stmt 1              # parallel-rne.mlir:226:13
	add.s r1, r8, r1
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 226 13                        # parallel-rne.mlir:226:13
	stores.w r17, 0(r1)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	beq r9, zero, .LBB0_74
.LBB0_78:                               # %scalar.ph195
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[12:13], r[4:5], r[26:27]
	lui r17, 523264
	lui r21, 523264
	slli r1, r12, 2
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.s r9, r24, r1
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.s r12, r2, r1
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	loads.w r9, 0(r9)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	loads.w r22, 0(r12)
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	and r19, r9, r18
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	beq r19, r28, .LBB0_80
# %bb.79:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_80:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	add.s r9, r3, r1
	loads.w r9, 0(r9)
	and r20, r9, r18
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r20, zero, .LBB0_88
# %bb.81:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r19, zero, .LBB0_89
.LBB0_82:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	beq r20, r28, .LBB0_84
.LBB0_83:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_84:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	setlt.u r9, r28, r19
	lui r19, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r9, zero, .LBB0_86
# %bb.85:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_86:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	setlt.u r9, r28, r20
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r9, zero, .LBB0_77
# %bb.87:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_77
.LBB0_88:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	beq r19, zero, .LBB0_82
.LBB0_89:                               # %scalar.ph195
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r20, r28, .LBB0_83
	j .LBB0_84
.LBB0_90:                               # %vector.body197.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_92
.LBB0_91:                               # %vector.body197
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 226 13                        # parallel-rne.mlir:226:13
	add.s r4, r8, r4
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	seteq.d r9, r[20:21], r[10:11]
	.loc	1 226 13                        # parallel-rne.mlir:226:13
	stores.w r5, 12(r4)
	stores.w r19, 8(r4)
	stores.w r1, 4(r4)
	stores.w r22, 0(r4)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	bneq r9, zero, .LBB0_74
.LBB0_92:                               # %vector.body197
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[4:5], r[20:21], r[26:27]
	lui r22, 523264
	slli r4, r4, 2
	add.s r23, r3, r4
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.s r17, r24, r4
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.s r25, r2, r4
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	loads.w r1, 0(r23)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	loads.w r5, 0(r17)
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	and r1, r1, r18
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	and r5, r5, r18
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	seteq r9, r1, r28
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	seteq r19, r1, zero
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	seteq r12, r5, zero
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	seteq r16, r5, r28
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	max.u r1, r1, r5
	setlt.u r1, r28, r1
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	and r5, r9, r12
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r9, r19, r16
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	or r5, r5, r9
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r1, zero, .LBB0_94
# %bb.93:                               # %vector.body197
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r22, 0(r25)
.LBB0_94:                               # %vector.body197
                                        #   in Loop: Header=BB0_92 Depth=3
	loads.w r1, 4(r23)
	loads.w r9, 4(r17)
	and r1, r1, r18
	and r9, r9, r18
	seteq r12, r1, r28
	seteq r13, r1, zero
	seteq r16, r9, zero
	seteq r19, r9, r28
	max.u r1, r1, r9
	setlt.u r1, r28, r1
	and r9, r12, r16
	and r12, r13, r19
	or r9, r9, r12
	or r9, r1, r9
	lui r1, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r9, zero, .LBB0_96
# %bb.95:                               # %vector.body197
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r25)
.LBB0_96:                               # %vector.body197
                                        #   in Loop: Header=BB0_92 Depth=3
	loads.w r9, 8(r23)
	loads.w r12, 8(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r14, r9, zero
	seteq r16, r12, zero
	seteq r19, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r16
	and r13, r14, r19
	lui r19, 523264
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r9, zero, .LBB0_98
# %bb.97:                               # %vector.body197
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r25)
.LBB0_98:                               # %vector.body197
                                        #   in Loop: Header=BB0_92 Depth=3
	loads.w r9, 12(r23)
	loads.w r12, 12(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r16, r9, zero
	seteq r14, r12, zero
	seteq r15, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r14
	and r13, r16, r15
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r9, zero, .LBB0_91
# %bb.99:                               # %vector.body197
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r25)
	j .LBB0_91
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r27
	addli r21, zero, 4
	addli r22, zero, 2
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	mfence { sm }
	.loc	1 231 7                         # parallel-rne.mlir:231:7
	bneq r27, r22, .LBB0_42
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 238 9                         # parallel-rne.mlir:238:9
	sub.s r1, r8, r2
	addli r4, zero, 16
	setlt.u r1, r1, r4
	zext_int2long r[4:5], r4
	.loc	1 231 7                         # parallel-rne.mlir:231:7
	storeli.w r1, -1796(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_103
.LBB0_102:                              # %middle.block188
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[12:13], -1792(r30)             # 8-byte Folded Reload
	zext_int2long r[4:5], r1
	.loc	1 238 9 is_stmt 1               # parallel-rne.mlir:238:9
	setlt.ul r1, r[12:13], r[4:5]
	addli.d r[4:5], r[12:13], 1
	beq r1, zero, .LBB0_128
.LBB0_103:                              # %.preheader34
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	store.d r[4:5], -1792(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[4:5], r1
	.loc	1 239 11 is_stmt 1              # parallel-rne.mlir:239:11
	loadli.w r1,  -1796(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_118
# %bb.104:                              # %scalar.ph180.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_106
.LBB0_105:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 261 13 is_stmt 1              # parallel-rne.mlir:261:13
	add.s r1, r8, r1
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r17, 0(r1)
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	beq r9, zero, .LBB0_102
.LBB0_106:                              # %scalar.ph180
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	add.ul r[12:13], r[4:5], r[26:27]
	lui r17, 523264
	lui r21, 523264
	slli r1, r12, 2
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	add.s r9, r24, r1
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.s r12, r2, r1
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	loads.w r9, 0(r9)
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	loads.w r22, 0(r12)
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	and r19, r9, r18
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r19, r28, .LBB0_108
# %bb.107:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_108:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	add.s r9, r3, r1
	loads.w r9, 0(r9)
	and r20, r9, r18
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r20, zero, .LBB0_116
# %bb.109:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r19, zero, .LBB0_117
.LBB0_110:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	beq r20, r28, .LBB0_112
.LBB0_111:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_112:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r9, r28, r19
	lui r19, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_114
# %bb.113:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_114:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r9, r28, r20
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_105
# %bb.115:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_105
.LBB0_116:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r19, zero, .LBB0_110
.LBB0_117:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r20, r28, .LBB0_111
	j .LBB0_112
.LBB0_118:                              # %vector.body182.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_120
.LBB0_119:                              # %vector.body182
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 239 11 is_stmt 1              # parallel-rne.mlir:239:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	add.s r4, r8, r4
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	seteq.d r9, r[20:21], r[10:11]
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r5, 12(r4)
	stores.w r19, 8(r4)
	stores.w r1, 4(r4)
	stores.w r22, 0(r4)
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	bneq r9, zero, .LBB0_102
.LBB0_120:                              # %vector.body182
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	add.ul r[4:5], r[20:21], r[26:27]
	lui r22, 523264
	slli r4, r4, 2
	add.s r23, r3, r4
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	add.s r17, r24, r4
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.s r25, r2, r4
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	loads.w r1, 0(r23)
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	loads.w r5, 0(r17)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r1, r1, r18
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	and r5, r5, r18
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	seteq r9, r1, r28
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	seteq r19, r1, zero
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	seteq r12, r5, zero
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	seteq r16, r5, r28
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	max.u r1, r1, r5
	setlt.u r1, r28, r1
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	and r5, r9, r12
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	and r9, r19, r16
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	or r5, r5, r9
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r1, zero, .LBB0_122
# %bb.121:                              # %vector.body182
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r22, 0(r25)
.LBB0_122:                              # %vector.body182
                                        #   in Loop: Header=BB0_120 Depth=3
	loads.w r1, 4(r23)
	loads.w r9, 4(r17)
	and r1, r1, r18
	and r9, r9, r18
	seteq r12, r1, r28
	seteq r13, r1, zero
	seteq r16, r9, zero
	seteq r19, r9, r28
	max.u r1, r1, r9
	setlt.u r1, r28, r1
	and r9, r12, r16
	and r12, r13, r19
	or r9, r9, r12
	or r9, r1, r9
	lui r1, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_124
# %bb.123:                              # %vector.body182
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r25)
.LBB0_124:                              # %vector.body182
                                        #   in Loop: Header=BB0_120 Depth=3
	loads.w r9, 8(r23)
	loads.w r12, 8(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r14, r9, zero
	seteq r16, r12, zero
	seteq r19, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r16
	and r13, r14, r19
	lui r19, 523264
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_126
# %bb.125:                              # %vector.body182
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r25)
.LBB0_126:                              # %vector.body182
                                        #   in Loop: Header=BB0_120 Depth=3
	loads.w r9, 12(r23)
	loads.w r12, 12(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r16, r9, zero
	seteq r14, r12, zero
	seteq r15, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r14
	and r13, r16, r15
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_119
# %bb.127:                              # %vector.body182
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r25)
	j .LBB0_119
.LBB0_128:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r27
	addli r21, zero, 4
	addli r22, zero, 2
	.loc	1 231 7                         # parallel-rne.mlir:231:7
	mfence { sm }
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	loadli.w r1,  -1812(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_43
.LBB0_129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 273 9                         # parallel-rne.mlir:273:9
	sub.s r1, r8, r2
	addli r4, zero, 16
	setlt.u r1, r1, r4
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	storeli.w r1, -1796(r30)                # 4-byte Folded Spill
	addli r1, zero, 24
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_131
.LBB0_130:                              # %middle.block173
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[12:13], -1792(r30)             # 8-byte Folded Reload
	zext_int2long r[4:5], r1
	.loc	1 273 9 is_stmt 1               # parallel-rne.mlir:273:9
	setlt.ul r1, r[12:13], r[4:5]
	addli.d r[4:5], r[12:13], 1
	beq r1, zero, .LBB0_156
.LBB0_131:                              # %.preheader33
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_134 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	store.d r[4:5], -1792(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[4:5], r1
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	loadli.w r1,  -1796(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_146
# %bb.132:                              # %scalar.ph165.preheader
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_134
.LBB0_133:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 296 13 is_stmt 1              # parallel-rne.mlir:296:13
	add.s r1, r8, r1
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r17, 0(r1)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	beq r9, zero, .LBB0_130
.LBB0_134:                              # %scalar.ph165
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[12:13], r[4:5], r[26:27]
	lui r17, 523264
	lui r21, 523264
	slli r1, r12, 2
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.s r9, r24, r1
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	add.s r12, r2, r1
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	loads.w r9, 0(r9)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	loads.w r22, 0(r12)
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	and r19, r9, r18
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r19, r28, .LBB0_136
# %bb.135:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_136:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	add.s r9, r3, r1
	loads.w r9, 0(r9)
	and r20, r9, r18
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r20, zero, .LBB0_144
# %bb.137:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r19, zero, .LBB0_145
.LBB0_138:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	beq r20, r28, .LBB0_140
.LBB0_139:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_140:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r9, r28, r19
	lui r19, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r9, zero, .LBB0_142
# %bb.141:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_142:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r9, r28, r20
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r9, zero, .LBB0_133
# %bb.143:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_133
.LBB0_144:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r19, zero, .LBB0_138
.LBB0_145:                              # %scalar.ph165
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r20, r28, .LBB0_139
	j .LBB0_140
.LBB0_146:                              # %vector.body167.preheader
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_148
.LBB0_147:                              # %vector.body167
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	add.s r4, r8, r4
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	seteq.d r9, r[20:21], r[10:11]
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r5, 12(r4)
	stores.w r19, 8(r4)
	stores.w r1, 4(r4)
	stores.w r22, 0(r4)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	bneq r9, zero, .LBB0_130
.LBB0_148:                              # %vector.body167
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[4:5], r[20:21], r[26:27]
	lui r22, 523264
	slli r4, r4, 2
	add.s r23, r3, r4
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.s r17, r24, r4
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	add.s r25, r2, r4
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	loads.w r1, 0(r23)
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	loads.w r5, 0(r17)
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	and r1, r1, r18
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	and r5, r5, r18
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	seteq r9, r1, r28
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	seteq r19, r1, zero
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	seteq r12, r5, zero
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	seteq r16, r5, r28
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	max.u r1, r1, r5
	setlt.u r1, r28, r1
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	and r5, r9, r12
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r9, r19, r16
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	or r5, r5, r9
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r1, zero, .LBB0_150
# %bb.149:                              # %vector.body167
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r22, 0(r25)
.LBB0_150:                              # %vector.body167
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r1, 4(r23)
	loads.w r9, 4(r17)
	and r1, r1, r18
	and r9, r9, r18
	seteq r12, r1, r28
	seteq r13, r1, zero
	seteq r16, r9, zero
	seteq r19, r9, r28
	max.u r1, r1, r9
	setlt.u r1, r28, r1
	and r9, r12, r16
	and r12, r13, r19
	or r9, r9, r12
	or r9, r1, r9
	lui r1, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r9, zero, .LBB0_152
# %bb.151:                              # %vector.body167
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r25)
.LBB0_152:                              # %vector.body167
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r9, 8(r23)
	loads.w r12, 8(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r14, r9, zero
	seteq r16, r12, zero
	seteq r19, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r16
	and r13, r14, r19
	lui r19, 523264
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r9, zero, .LBB0_154
# %bb.153:                              # %vector.body167
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r25)
.LBB0_154:                              # %vector.body167
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r9, 12(r23)
	loads.w r12, 12(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r16, r9, zero
	seteq r14, r12, zero
	seteq r15, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r14
	and r13, r16, r15
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r9, zero, .LBB0_147
# %bb.155:                              # %vector.body167
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r25)
	j .LBB0_147
.LBB0_156:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r27
	addli r21, zero, 4
	addli r22, zero, 2
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	mfence { sm }
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	bneq r27, r21, .LBB0_44
.LBB0_157:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 308 9                         # parallel-rne.mlir:308:9
	sub.s r1, r8, r2
	addli r4, zero, 16
	setlt.u r1, r1, r4
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	storeli.w r1, -1796(r30)                # 4-byte Folded Spill
	addli r1, zero, 32
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_159
.LBB0_158:                              # %middle.block158
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[12:13], -1792(r30)             # 8-byte Folded Reload
	zext_int2long r[4:5], r1
	.loc	1 308 9 is_stmt 1               # parallel-rne.mlir:308:9
	setlt.ul r1, r[12:13], r[4:5]
	addli.d r[4:5], r[12:13], 1
	beq r1, zero, .LBB0_184
.LBB0_159:                              # %.preheader32
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_176 Depth 3
                                        #       Child Loop BB0_162 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	store.d r[4:5], -1792(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[4:5], r1
	.loc	1 309 11 is_stmt 1              # parallel-rne.mlir:309:11
	loadli.w r1,  -1796(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_174
# %bb.160:                              # %scalar.ph150.preheader
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_162
.LBB0_161:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 331 13 is_stmt 1              # parallel-rne.mlir:331:13
	add.s r1, r8, r1
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 331 13                        # parallel-rne.mlir:331:13
	stores.w r17, 0(r1)
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	beq r9, zero, .LBB0_158
.LBB0_162:                              # %scalar.ph150
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	add.ul r[12:13], r[4:5], r[26:27]
	lui r17, 523264
	lui r21, 523264
	slli r1, r12, 2
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	add.s r9, r24, r1
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.s r12, r2, r1
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	loads.w r9, 0(r9)
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	loads.w r22, 0(r12)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r19, r9, r18
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	beq r19, r28, .LBB0_164
# %bb.163:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_164:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	add.s r9, r3, r1
	loads.w r9, 0(r9)
	and r20, r9, r18
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r20, zero, .LBB0_172
# %bb.165:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r19, zero, .LBB0_173
.LBB0_166:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	beq r20, r28, .LBB0_168
.LBB0_167:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_168:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	setlt.u r9, r28, r19
	lui r19, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r9, zero, .LBB0_170
# %bb.169:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_170:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	setlt.u r9, r28, r20
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r9, zero, .LBB0_161
# %bb.171:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_161
.LBB0_172:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	beq r19, zero, .LBB0_166
.LBB0_173:                              # %scalar.ph150
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r20, r28, .LBB0_167
	j .LBB0_168
.LBB0_174:                              # %vector.body152.preheader
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_176
.LBB0_175:                              # %vector.body152
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 309 11 is_stmt 1              # parallel-rne.mlir:309:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 331 13                        # parallel-rne.mlir:331:13
	add.s r4, r8, r4
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	seteq.d r9, r[20:21], r[10:11]
	.loc	1 331 13                        # parallel-rne.mlir:331:13
	stores.w r5, 12(r4)
	stores.w r19, 8(r4)
	stores.w r1, 4(r4)
	stores.w r22, 0(r4)
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	bneq r9, zero, .LBB0_158
.LBB0_176:                              # %vector.body152
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	add.ul r[4:5], r[20:21], r[26:27]
	lui r22, 523264
	slli r4, r4, 2
	add.s r23, r3, r4
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	add.s r17, r24, r4
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.s r25, r2, r4
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	loads.w r1, 0(r23)
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	loads.w r5, 0(r17)
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	and r1, r1, r18
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r5, r5, r18
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	seteq r9, r1, r28
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	seteq r19, r1, zero
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	seteq r12, r5, zero
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	seteq r16, r5, r28
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	max.u r1, r1, r5
	setlt.u r1, r28, r1
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	and r5, r9, r12
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r9, r19, r16
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	or r5, r5, r9
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r1, zero, .LBB0_178
# %bb.177:                              # %vector.body152
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r22, 0(r25)
.LBB0_178:                              # %vector.body152
                                        #   in Loop: Header=BB0_176 Depth=3
	loads.w r1, 4(r23)
	loads.w r9, 4(r17)
	and r1, r1, r18
	and r9, r9, r18
	seteq r12, r1, r28
	seteq r13, r1, zero
	seteq r16, r9, zero
	seteq r19, r9, r28
	max.u r1, r1, r9
	setlt.u r1, r28, r1
	and r9, r12, r16
	and r12, r13, r19
	or r9, r9, r12
	or r9, r1, r9
	lui r1, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r9, zero, .LBB0_180
# %bb.179:                              # %vector.body152
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r25)
.LBB0_180:                              # %vector.body152
                                        #   in Loop: Header=BB0_176 Depth=3
	loads.w r9, 8(r23)
	loads.w r12, 8(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r14, r9, zero
	seteq r16, r12, zero
	seteq r19, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r16
	and r13, r14, r19
	lui r19, 523264
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r9, zero, .LBB0_182
# %bb.181:                              # %vector.body152
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r25)
.LBB0_182:                              # %vector.body152
                                        #   in Loop: Header=BB0_176 Depth=3
	loads.w r9, 12(r23)
	loads.w r12, 12(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r16, r9, zero
	seteq r14, r12, zero
	seteq r15, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r14
	and r13, r16, r15
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r9, zero, .LBB0_175
# %bb.183:                              # %vector.body152
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r25)
	j .LBB0_175
.LBB0_184:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r27
	addli r21, zero, 4
	addli r22, zero, 2
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	mfence { sm }
	.loc	1 336 7                         # parallel-rne.mlir:336:7
	addli r1, zero, 5
	bneq r27, r1, .LBB0_213
.LBB0_185:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 343 9                         # parallel-rne.mlir:343:9
	sub.s r1, r8, r2
	addli r4, zero, 16
	setlt.u r1, r1, r4
	.loc	1 336 7                         # parallel-rne.mlir:336:7
	storeli.w r1, -1796(r30)                # 4-byte Folded Spill
	addli r1, zero, 40
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_187
.LBB0_186:                              # %middle.block143
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[12:13], -1792(r30)             # 8-byte Folded Reload
	zext_int2long r[4:5], r1
	.loc	1 343 9 is_stmt 1               # parallel-rne.mlir:343:9
	setlt.ul r1, r[12:13], r[4:5]
	addli.d r[4:5], r[12:13], 1
	beq r1, zero, .LBB0_212
.LBB0_187:                              # %.preheader31
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_190 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	store.d r[4:5], -1792(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[4:5], r1
	.loc	1 344 11 is_stmt 1              # parallel-rne.mlir:344:11
	loadli.w r1,  -1796(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_202
# %bb.188:                              # %scalar.ph135.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_190
.LBB0_189:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	setlt.ul r9, r[4:5], r[6:7]
	.loc	1 366 13 is_stmt 1              # parallel-rne.mlir:366:13
	add.s r1, r8, r1
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r17, 0(r1)
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	beq r9, zero, .LBB0_186
.LBB0_190:                              # %scalar.ph135
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	add.ul r[12:13], r[4:5], r[26:27]
	lui r17, 523264
	lui r21, 523264
	slli r1, r12, 2
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	add.s r9, r24, r1
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	add.s r12, r2, r1
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	loads.w r9, 0(r9)
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	loads.w r22, 0(r12)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r19, r9, r18
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r19, r28, .LBB0_192
# %bb.191:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_192:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	add.s r9, r3, r1
	loads.w r9, 0(r9)
	and r20, r9, r18
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r20, zero, .LBB0_200
# %bb.193:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r19, zero, .LBB0_201
.LBB0_194:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	beq r20, r28, .LBB0_196
.LBB0_195:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_196:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r9, r28, r19
	lui r19, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_198
# %bb.197:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_198:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r9, r28, r20
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_189
# %bb.199:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_189
.LBB0_200:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r19, zero, .LBB0_194
.LBB0_201:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r20, r28, .LBB0_195
	j .LBB0_196
.LBB0_202:                              # %vector.body137.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_204
.LBB0_203:                              # %vector.body137
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 344 11 is_stmt 1              # parallel-rne.mlir:344:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	add.s r4, r8, r4
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	seteq.d r9, r[20:21], r[10:11]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r5, 12(r4)
	stores.w r19, 8(r4)
	stores.w r1, 4(r4)
	stores.w r22, 0(r4)
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	bneq r9, zero, .LBB0_186
.LBB0_204:                              # %vector.body137
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	add.ul r[4:5], r[20:21], r[26:27]
	lui r22, 523264
	slli r4, r4, 2
	add.s r23, r3, r4
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	add.s r17, r24, r4
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	add.s r25, r2, r4
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	loads.w r1, 0(r23)
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	loads.w r5, 0(r17)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r1, r1, r18
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r5, r5, r18
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	seteq r9, r1, r28
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	seteq r19, r1, zero
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	seteq r12, r5, zero
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	seteq r16, r5, r28
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	max.u r1, r1, r5
	setlt.u r1, r28, r1
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	and r5, r9, r12
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	and r9, r19, r16
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	or r5, r5, r9
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	or r1, r1, r5
	lui r5, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r1, zero, .LBB0_206
# %bb.205:                              # %vector.body137
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r22, 0(r25)
.LBB0_206:                              # %vector.body137
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r1, 4(r23)
	loads.w r9, 4(r17)
	and r1, r1, r18
	and r9, r9, r18
	seteq r12, r1, r28
	seteq r13, r1, zero
	seteq r16, r9, zero
	seteq r19, r9, r28
	max.u r1, r1, r9
	setlt.u r1, r28, r1
	and r9, r12, r16
	and r12, r13, r19
	or r9, r9, r12
	or r9, r1, r9
	lui r1, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_208
# %bb.207:                              # %vector.body137
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r25)
.LBB0_208:                              # %vector.body137
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r9, 8(r23)
	loads.w r12, 8(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r14, r9, zero
	seteq r16, r12, zero
	seteq r19, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r16
	and r13, r14, r19
	lui r19, 523264
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_210
# %bb.209:                              # %vector.body137
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r25)
.LBB0_210:                              # %vector.body137
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r9, 12(r23)
	loads.w r12, 12(r17)
	and r9, r9, r18
	and r12, r12, r18
	seteq r13, r9, r28
	seteq r16, r9, zero
	seteq r14, r12, zero
	seteq r15, r12, r28
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r13, r14
	and r13, r16, r15
	or r12, r12, r13
	or r9, r9, r12
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_203
# %bb.211:                              # %vector.body137
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 12(r25)
	j .LBB0_203
.LBB0_212:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r27
	addli r21, zero, 4
	addli r22, zero, 2
	.loc	1 336 7                         # parallel-rne.mlir:336:7
	mfence { sm }
.LBB0_213:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[4:5], zero
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	addli r1, zero, 7
	store.d r[4:5], -1808(r30)              # 8-byte Folded Spill
	beq r27, r1, .LBB0_242
# %bb.214:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	bneq r27, r1, .LBB0_270
# %bb.215:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 378 9                         # parallel-rne.mlir:378:9
	sub.s r1, r8, r2
	addli r4, zero, 16
	setlt.u r1, r1, r4
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	storeli.w r1, -1796(r30)                # 4-byte Folded Spill
	addli r1, zero, 48
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_217
.LBB0_216:                              # %middle.block
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[12:13], -1792(r30)             # 8-byte Folded Reload
	zext_int2long r[4:5], r1
	.loc	1 378 9 is_stmt 1               # parallel-rne.mlir:378:9
	setlt.ul r1, r[12:13], r[4:5]
	addli.d r[4:5], r[12:13], 1
	beq r1, zero, .LBB0_269
.LBB0_217:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_234 Depth 3
                                        #       Child Loop BB0_220 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 379 11 is_stmt 1              # parallel-rne.mlir:379:11
	store.d r[4:5], -1792(r30)              # 8-byte Folded Spill
	sll.d r[20:21], r[4:5], r1
	loadli.w r1,  -1796(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_232
# %bb.218:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[13:14], zero
	j .LBB0_220
.LBB0_219:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	setlt.ul r4, r[13:14], r[6:7]
	.loc	1 401 13 is_stmt 1              # parallel-rne.mlir:401:13
	add.s r1, r8, r1
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	addli.d r[13:14], r[13:14], 1
	.loc	1 401 13                        # parallel-rne.mlir:401:13
	stores.w r5, 0(r1)
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	beq r4, zero, .LBB0_216
.LBB0_220:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	add.ul r[4:5], r[13:14], r[20:21]
	lui r19, 523264
	slli r1, r4, 2
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	add.s r4, r24, r1
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	add.s r5, r2, r1
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	loads.w r4, 0(r4)
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	loads.w r22, 0(r5)
	lui r5, 523264
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r15, r4, r18
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	beq r15, r28, .LBB0_222
# %bb.221:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_222:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	add.s r4, r3, r1
	loads.w r4, 0(r4)
	and r17, r4, r18
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r17, zero, .LBB0_230
# %bb.223:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r15, zero, .LBB0_231
.LBB0_224:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	beq r17, r28, .LBB0_226
.LBB0_225:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
.LBB0_226:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	setlt.u r4, r28, r15
	lui r15, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r4, zero, .LBB0_228
# %bb.227:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r22, 0
.LBB0_228:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	setlt.u r4, r28, r17
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r4, zero, .LBB0_219
# %bb.229:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	j .LBB0_219
.LBB0_230:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	addli r19, r22, 0
	lui r22, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	beq r15, zero, .LBB0_224
.LBB0_231:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r17, r28, .LBB0_225
	j .LBB0_226
.LBB0_232:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	load.d r[22:23], -1808(r30)             # 8-byte Folded Reload
	j .LBB0_234
.LBB0_233:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 379 11 is_stmt 1              # parallel-rne.mlir:379:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 401 13                        # parallel-rne.mlir:401:13
	add.s r4, r8, r15
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	seteq.d r1, r[22:23], r[10:11]
	.loc	1 401 13                        # parallel-rne.mlir:401:13
	stores.w r25, 12(r4)
	stores.w r19, 8(r4)
	stores.w r14, 4(r4)
	stores.w r5, 0(r4)
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	bneq r1, zero, .LBB0_216
.LBB0_234:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	add.ul r[12:13], r[22:23], r[20:21]
	lui r25, 523264
	slli r15, r12, 2
	add.s r17, r3, r15
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	add.s r1, r24, r15
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	loads.w r5, 0(r17)
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	loads.w r9, 0(r1)
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	and r5, r5, r18
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r9, r9, r18
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	seteq r12, r5, r28
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	seteq r16, r5, zero
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	seteq r13, r9, zero
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	seteq r14, r9, r28
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	max.u r5, r5, r9
	setlt.u r5, r28, r5
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	and r9, r12, r13
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	and r12, r16, r14
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	add.s r13, r2, r15
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	or r9, r9, r12
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	or r9, r5, r9
	lui r5, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r9, zero, .LBB0_236
# %bb.235:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r13)
.LBB0_236:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r9, 4(r17)
	loads.w r12, 4(r1)
	and r9, r9, r18
	and r12, r12, r18
	seteq r14, r9, r28
	seteq r4, r9, zero
	seteq r19, r12, r28
	seteq r16, r12, zero
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r14, r16
	and r4, r4, r19
	lui r14, 523264
	or r4, r12, r4
	or r4, r9, r4
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r4, zero, .LBB0_238
# %bb.237:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r13)
.LBB0_238:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r4, 8(r17)
	loads.w r9, 8(r1)
	and r4, r4, r18
	and r9, r9, r18
	seteq r12, r4, r28
	seteq r26, r4, zero
	seteq r16, r9, zero
	seteq r19, r9, r28
	max.u r4, r4, r9
	setlt.u r4, r28, r4
	and r9, r12, r16
	and r12, r26, r19
	lui r19, 523264
	or r9, r9, r12
	or r4, r4, r9
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r4, zero, .LBB0_240
# %bb.239:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r13)
.LBB0_240:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r4, 12(r17)
	loads.w r1, 12(r1)
	and r4, r4, r18
	and r1, r1, r18
	seteq r9, r4, r28
	seteq r12, r1, zero
	seteq r16, r1, r28
	seteq r17, r4, zero
	max.u r1, r4, r1
	setlt.u r1, r28, r1
	and r4, r9, r12
	and r9, r17, r16
	or r4, r4, r9
	or r1, r1, r4
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r1, zero, .LBB0_233
# %bb.241:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r13)
	j .LBB0_233
.LBB0_242:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 413 9 is_stmt 1               # parallel-rne.mlir:413:9
	sub.s r1, r8, r2
	addli r4, zero, 16
	setlt.u r1, r1, r4
	.loc	1 406 7                         # parallel-rne.mlir:406:7
	storeli.w r1, -1796(r30)                # 4-byte Folded Spill
	addli r1, zero, 56
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_244
.LBB0_243:                              # %middle.block128
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[4:5], -1792(r30)               # 8-byte Folded Reload
	.loc	1 413 9 is_stmt 1               # parallel-rne.mlir:413:9
	setlt.ul r1, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_269
.LBB0_244:                              # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_247 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	store.d r[4:5], -1792(r30)              # 8-byte Folded Spill
	sll.d r[20:21], r[4:5], r1
	.loc	1 414 11 is_stmt 1              # parallel-rne.mlir:414:11
	loadli.w r1,  -1796(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_259
# %bb.245:                              # %scalar.ph120.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[13:14], zero
	j .LBB0_247
.LBB0_246:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	setlt.ul r4, r[13:14], r[6:7]
	.loc	1 436 13 is_stmt 1              # parallel-rne.mlir:436:13
	add.s r1, r8, r1
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	addli.d r[13:14], r[13:14], 1
	.loc	1 436 13                        # parallel-rne.mlir:436:13
	stores.w r5, 0(r1)
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	beq r4, zero, .LBB0_243
.LBB0_247:                              # %scalar.ph120
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	add.ul r[4:5], r[13:14], r[20:21]
	lui r19, 523264
	slli r1, r4, 2
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	add.s r4, r24, r1
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	add.s r5, r2, r1
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	loads.w r4, 0(r4)
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	loads.w r22, 0(r5)
	lui r5, 523264
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	and r15, r4, r18
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	beq r15, r28, .LBB0_249
# %bb.248:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_249:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	add.s r4, r3, r1
	loads.w r4, 0(r4)
	and r17, r4, r18
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r17, zero, .LBB0_257
# %bb.250:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r15, zero, .LBB0_258
.LBB0_251:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	beq r17, r28, .LBB0_253
.LBB0_252:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
.LBB0_253:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r4, r28, r15
	lui r15, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r4, zero, .LBB0_255
# %bb.254:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r22, 0
.LBB0_255:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r4, r28, r17
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r4, zero, .LBB0_246
# %bb.256:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	j .LBB0_246
.LBB0_257:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	addli r19, r22, 0
	lui r22, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	beq r15, zero, .LBB0_251
.LBB0_258:                              # %scalar.ph120
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r17, r28, .LBB0_252
	j .LBB0_253
.LBB0_259:                              # %vector.body122.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[22:23], zero
	j .LBB0_261
.LBB0_260:                              # %vector.body122
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 414 11 is_stmt 1              # parallel-rne.mlir:414:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 436 13                        # parallel-rne.mlir:436:13
	add.s r4, r8, r15
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	seteq.d r1, r[22:23], r[10:11]
	.loc	1 436 13                        # parallel-rne.mlir:436:13
	stores.w r25, 12(r4)
	stores.w r19, 8(r4)
	stores.w r14, 4(r4)
	stores.w r5, 0(r4)
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	bneq r1, zero, .LBB0_243
.LBB0_261:                              # %vector.body122
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	add.ul r[12:13], r[22:23], r[20:21]
	lui r25, 523264
	slli r15, r12, 2
	add.s r17, r3, r15
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	add.s r1, r24, r15
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	loads.w r5, 0(r17)
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	loads.w r9, 0(r1)
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	and r5, r5, r18
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	and r9, r9, r18
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	seteq r12, r5, r28
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	seteq r16, r5, zero
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	seteq r13, r9, zero
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	seteq r14, r9, r28
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	max.u r5, r5, r9
	setlt.u r5, r28, r5
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	and r9, r12, r13
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	and r12, r16, r14
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	add.s r13, r2, r15
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	or r9, r9, r12
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	or r9, r5, r9
	lui r5, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r9, zero, .LBB0_263
# %bb.262:                              # %vector.body122
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r13)
.LBB0_263:                              # %vector.body122
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r9, 4(r17)
	loads.w r12, 4(r1)
	and r9, r9, r18
	and r12, r12, r18
	seteq r14, r9, r28
	seteq r4, r9, zero
	seteq r19, r12, r28
	seteq r16, r12, zero
	max.u r9, r9, r12
	setlt.u r9, r28, r9
	and r12, r14, r16
	and r4, r4, r19
	lui r14, 523264
	or r4, r12, r4
	or r4, r9, r4
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r4, zero, .LBB0_265
# %bb.264:                              # %vector.body122
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r13)
.LBB0_265:                              # %vector.body122
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r4, 8(r17)
	loads.w r9, 8(r1)
	and r4, r4, r18
	and r9, r9, r18
	seteq r12, r4, r28
	seteq r26, r4, zero
	seteq r16, r9, zero
	seteq r19, r9, r28
	max.u r4, r4, r9
	setlt.u r4, r28, r4
	and r9, r12, r16
	and r12, r26, r19
	lui r19, 523264
	or r9, r9, r12
	or r4, r4, r9
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r4, zero, .LBB0_267
# %bb.266:                              # %vector.body122
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r13)
.LBB0_267:                              # %vector.body122
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r4, 12(r17)
	loads.w r1, 12(r1)
	and r4, r4, r18
	and r1, r1, r18
	seteq r9, r4, r28
	seteq r12, r1, zero
	seteq r16, r1, r28
	seteq r17, r4, zero
	max.u r1, r4, r1
	setlt.u r1, r28, r1
	and r4, r9, r12
	and r9, r17, r16
	or r4, r4, r9
	or r1, r1, r4
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r1, zero, .LBB0_260
# %bb.268:                              # %vector.body122
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r13)
	j .LBB0_260
.LBB0_269:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r21, zero, 4
	addli r22, zero, 2
	mfence { sm }
.LBB0_270:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 441 7 is_stmt 1               # parallel-rne.mlir:441:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	loadli.w r1,  -1812(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.271:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r12,  -1816(r30)               # 4-byte Folded Reload
	loadli.w r16,  -1820(r30)               # 4-byte Folded Reload
	loadli.w r23,  -1824(r30)               # 4-byte Folded Reload
	loadli.w r24,  -1828(r30)               # 4-byte Folded Reload
	.loc	1 453 7 is_stmt 1               # parallel-rne.mlir:453:7
	bneq r27, zero, .LBB0_6
# %bb.272:                              #   in Loop: Header=BB0_7 Depth=1
	load.d r[4:5], -1864(r30)               # 8-byte Folded Reload
	loadli.w r1,  -1868(r30)                # 4-byte Folded Reload
	addli r3, zero, 18
	addli r7, zero, 12
	load.d r[13:14], 24(r30)
	sll.d r[3:4], r[4:5], r3
	load.d r[5:6], -1808(r30)               # 8-byte Folded Reload
	sext_int2long r[1:2], r1
	xwait r7, 0
	addli r7, zero, 5
	lock zero, r7
	add.ul r[3:4], r[13:14], r[3:4]
	min.sl r[5:6], r[1:2], r[5:6]
	addli.d r[5:6], r[5:6], 64
	max.sl r[5:6], r[5:6], r[1:2]
	sub.sl r[1:2], r[5:6], r[1:2]
	load.d r[5:6], -1856(r30)               # 8-byte Folded Reload
	dma_cfg zero, zero, zero, 0
	.loc	1 449 13                        # parallel-rne.mlir:449:13
	min.sl r[1:2], r[1:2], r[10:11]
	.loc	1 453 7                         # parallel-rne.mlir:453:7
	add.ul r[3:4], r[3:4], r[5:6]
	addli r5, zero, 1
	dma_cfg zero, r5, zero, 1
	load.d r[5:6], -1880(r30)               # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r5, r5, 2
	dma_cfg r3, r8, r5, 3
	addli r3, zero, 256
	addli r4, zero, 4096
	dma_cfg r4, r3, r1, 4
	addli r1, zero, 13
	dma_run zero
	unlock r7
	xsignal r1, 0
	j .LBB0_6
.LBB0_273:                              # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r1, r15, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r4, -1052(r30)
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	storeli.w r1, -1772(r30)
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	j .LBB0_30
.LBB0_274:                              # %._crit_edge.loopexit
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, r3, 1
	storeli.w r1, -1384(r30)
	loadli.w r1,  -1776(r30)                # 4-byte Folded Reload
	storeli.w r1, -408(r30)
.LBB0_275:                              # %._crit_edge
	.loc	1 455 5 is_stmt 1               # parallel-rne.mlir:455:5
	xsignal zero, 0
	bneq r27, zero, .LBB0_277
# %bb.276:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 455 5                         # parallel-rne.mlir:455:5
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
.LBB0_277:
	.loc	1 456 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:456:5
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
.asciz	"parallel-rne.mlir"             # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-g_81zah4" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
