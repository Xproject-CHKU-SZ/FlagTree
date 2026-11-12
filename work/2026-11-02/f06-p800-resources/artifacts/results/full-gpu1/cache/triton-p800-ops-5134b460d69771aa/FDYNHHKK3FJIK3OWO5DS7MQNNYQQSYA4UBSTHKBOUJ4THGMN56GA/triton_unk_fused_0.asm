	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-rnzpkkyb" "parallel-rne.mlir"
	.loc	1 11 0                          # parallel-rne.mlir:11:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2088
	addli r2, zero, 1
.Ltmp0:
	.loc	1 39 5 prologue_end             # parallel-rne.mlir:39:5
	core_id r1
	core_id r9
	addli r30, sp, 2024
	xsignal_mode_cfg r2
	beq r1, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	.loc	1 39 5                          # parallel-rne.mlir:39:5
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
	.loc	1 39 5                          # parallel-rne.mlir:39:5
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
	addli r2, zero, 20
	addli r3, zero, 23
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r2, zero, 26
	addli r3, zero, 28
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r2, zero, 30
	addli r3, zero, 35
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r2, zero, 38
	addli r1, zero, 40
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 41 10 is_stmt 1               # parallel-rne.mlir:41:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -20(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -40(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -60(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -80(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -100(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -120(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -140(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -160(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -180(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -284(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -928(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -1036(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w zero, -1808(r30)
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w zero, -1828(r30)
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	mul.s r1, r2, r1
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	mul.s r4, r1, r4
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	addli r2, r2, -1
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	storeli.w r3, -24(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	storeli.w r3, -48(r30)
	storeli.w r3, -44(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -96(r30)
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	storeli.w r3, -128(r30)
	storeli.w r3, -124(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r3, -156(r30)
	storeli.w r3, -152(r30)
	storeli.w r3, -148(r30)
	storeli.w r3, -144(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r3, -176(r30)
	storeli.w r3, -172(r30)
	storeli.w r3, -168(r30)
	storeli.w r3, -164(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
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
	.loc	1 62 11                         # parallel-rne.mlir:62:11
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
	.loc	1 63 11                         # parallel-rne.mlir:63:11
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
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w r3, -1804(r30)
	storeli.w r3, -1800(r30)
	storeli.w r3, -1796(r30)
	storeli.w r3, -1792(r30)
	storeli.w r3, -1788(r30)
	storeli.w r3, -1784(r30)
	storeli.w r3, -1780(r30)
	storeli.w r3, -1776(r30)
	storeli.w r3, -1772(r30)
	storeli.w r3, -1768(r30)
	storeli.w r3, -1764(r30)
	storeli.w r3, -1760(r30)
	storeli.w r3, -1756(r30)
	storeli.w r3, -1752(r30)
	storeli.w r3, -1748(r30)
	storeli.w r3, -1744(r30)
	storeli.w r3, -1740(r30)
	storeli.w r3, -1736(r30)
	storeli.w r3, -1732(r30)
	storeli.w r3, -1728(r30)
	storeli.w r3, -1724(r30)
	storeli.w r3, -1720(r30)
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
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w r3, -1824(r30)
	storeli.w r3, -1820(r30)
	storeli.w r3, -1816(r30)
	storeli.w r3, -1812(r30)
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	mul.s r1, r2, r6
	.loc	1 48 10                         # parallel-rne.mlir:48:10
	fmac.s r2, r2, r6
	.loc	1 49 10                         # parallel-rne.mlir:49:10
	min.s r2, r2, r4
	.loc	1 66 5                          # parallel-rne.mlir:66:5
	ble.s r2, r1, .LBB0_1045
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 50 11 is_stmt 1               # parallel-rne.mlir:50:11
	sext_int2long r[4:5], r1
	lui r1, 166
	addli r13, zero, 64
	addli r21, zero, 1
	addli r24, zero, 8
	addli r26, zero, 4
	addli r25, zero, 192
	lui r23, 522240
	lui r28, 268288
	store.d r[2:3], -1984(r30)              # 8-byte Folded Spill
	ori r1, r1, 2048
	lui r2, 198
	storeli.w r1, -1988(r30)                # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 262
	storeli.w r1, -1992(r30)                # 4-byte Folded Spill
	lui r1, 230
	ori r1, r1, 2048
	storeli.w r1, -1996(r30)                # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 294
	storeli.w r1, -2000(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r27, r1, 4095
	ori r1, r2, 2048
	lui r2, 2047
	storeli.w r1, -2004(r30)                # 4-byte Folded Spill
	lui r1, 326
	ori r22, r2, 4095
	lui r2, 56
	ori r1, r1, 2048
	storeli.w r1, -2008(r30)                # 4-byte Folded Spill
	lui r1, 358
	ori r1, r1, 2048
	storeli.w r1, -2012(r30)                # 4-byte Folded Spill
	ori r1, r2, 2115
	lui r2, 259268
	storeli.w r1, -2016(r30)                # 4-byte Folded Spill
	lui r1, 250738
	ori r1, r1, 1811
	storeli.w r1, -2020(r30)                # 4-byte Folded Spill
	ori r1, r2, 554
	storeli.w r1, -2024(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1334 7                        # parallel-rne.mlir:1334:7
	addli r1, zero, 17
	addli r13, zero, 64
	addli r21, zero, 1
	addli r24, zero, 8
	addli r26, zero, 4
	addli r25, zero, 192
	xsignal r1, 0
	.loc	1 1335 7                        # parallel-rne.mlir:1335:7
	addli r1, zero, 26
	xsignal r1, 0
	.loc	1 1336 7                        # parallel-rne.mlir:1336:7
	addli r1, zero, 38
	xsignal r1, 0
	.loc	1 1337 7                        # parallel-rne.mlir:1337:7
	addli r1, zero, 40
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], -1936(r30)               # 8-byte Folded Reload
	.loc	1 66 5 is_stmt 1                # parallel-rne.mlir:66:5
	load.d r[1:2], -1984(r30)               # 8-byte Folded Reload
	addli.d r[4:5], r[4:5], 1
	setlt.sl r1, r[4:5], r[1:2]
	beq r1, zero, .LBB0_1045
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_68 Depth 2
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #     Child Loop BB0_97 Depth 2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #     Child Loop BB0_126 Depth 2
                                        #       Child Loop BB0_143 Depth 3
                                        #       Child Loop BB0_129 Depth 3
                                        #     Child Loop BB0_155 Depth 2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_157 Depth 3
                                        #     Child Loop BB0_182 Depth 2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_185 Depth 3
                                        #     Child Loop BB0_211 Depth 2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_214 Depth 3
                                        #     Child Loop BB0_240 Depth 2
                                        #       Child Loop BB0_257 Depth 3
                                        #       Child Loop BB0_243 Depth 3
                                        #     Child Loop BB0_295 Depth 2
                                        #       Child Loop BB0_297 Depth 3
                                        #       Child Loop BB0_296 Depth 3
                                        #     Child Loop BB0_274 Depth 2
                                        #       Child Loop BB0_276 Depth 3
                                        #       Child Loop BB0_275 Depth 3
                                        #     Child Loop BB0_302 Depth 2
                                        #       Child Loop BB0_304 Depth 3
                                        #       Child Loop BB0_303 Depth 3
                                        #     Child Loop BB0_281 Depth 2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_282 Depth 3
                                        #     Child Loop BB0_309 Depth 2
                                        #       Child Loop BB0_311 Depth 3
                                        #       Child Loop BB0_310 Depth 3
                                        #     Child Loop BB0_288 Depth 2
                                        #       Child Loop BB0_290 Depth 3
                                        #       Child Loop BB0_289 Depth 3
                                        #     Child Loop BB0_316 Depth 2
                                        #       Child Loop BB0_318 Depth 3
                                        #       Child Loop BB0_317 Depth 3
                                        #     Child Loop BB0_322 Depth 2
                                        #       Child Loop BB0_324 Depth 3
                                        #       Child Loop BB0_323 Depth 3
                                        #     Child Loop BB0_398 Depth 2
                                        #       Child Loop BB0_400 Depth 3
                                        #     Child Loop BB0_332 Depth 2
                                        #       Child Loop BB0_334 Depth 3
                                        #     Child Loop BB0_420 Depth 2
                                        #       Child Loop BB0_422 Depth 3
                                        #     Child Loop BB0_354 Depth 2
                                        #       Child Loop BB0_356 Depth 3
                                        #     Child Loop BB0_442 Depth 2
                                        #       Child Loop BB0_444 Depth 3
                                        #     Child Loop BB0_376 Depth 2
                                        #       Child Loop BB0_378 Depth 3
                                        #     Child Loop BB0_464 Depth 2
                                        #       Child Loop BB0_466 Depth 3
                                        #     Child Loop BB0_485 Depth 2
                                        #       Child Loop BB0_487 Depth 3
                                        #     Child Loop BB0_624 Depth 2
                                        #       Child Loop BB0_634 Depth 3
                                        #       Child Loop BB0_628 Depth 3
                                        #     Child Loop BB0_513 Depth 2
                                        #       Child Loop BB0_523 Depth 3
                                        #       Child Loop BB0_517 Depth 3
                                        #     Child Loop BB0_661 Depth 2
                                        #       Child Loop BB0_671 Depth 3
                                        #       Child Loop BB0_665 Depth 3
                                        #     Child Loop BB0_550 Depth 2
                                        #       Child Loop BB0_560 Depth 3
                                        #       Child Loop BB0_554 Depth 3
                                        #     Child Loop BB0_698 Depth 2
                                        #       Child Loop BB0_708 Depth 3
                                        #       Child Loop BB0_702 Depth 3
                                        #     Child Loop BB0_587 Depth 2
                                        #       Child Loop BB0_597 Depth 3
                                        #       Child Loop BB0_591 Depth 3
                                        #     Child Loop BB0_735 Depth 2
                                        #       Child Loop BB0_745 Depth 3
                                        #       Child Loop BB0_739 Depth 3
                                        #     Child Loop BB0_771 Depth 2
                                        #       Child Loop BB0_781 Depth 3
                                        #       Child Loop BB0_775 Depth 3
                                        #     Child Loop BB0_900 Depth 2
                                        #       Child Loop BB0_917 Depth 3
                                        #       Child Loop BB0_903 Depth 3
                                        #     Child Loop BB0_814 Depth 2
                                        #       Child Loop BB0_831 Depth 3
                                        #       Child Loop BB0_817 Depth 3
                                        #     Child Loop BB0_929 Depth 2
                                        #       Child Loop BB0_946 Depth 3
                                        #       Child Loop BB0_932 Depth 3
                                        #     Child Loop BB0_843 Depth 2
                                        #       Child Loop BB0_860 Depth 3
                                        #       Child Loop BB0_846 Depth 3
                                        #     Child Loop BB0_958 Depth 2
                                        #       Child Loop BB0_975 Depth 3
                                        #       Child Loop BB0_961 Depth 3
                                        #     Child Loop BB0_872 Depth 2
                                        #       Child Loop BB0_889 Depth 3
                                        #       Child Loop BB0_875 Depth 3
                                        #     Child Loop BB0_987 Depth 2
                                        #       Child Loop BB0_1004 Depth 3
                                        #       Child Loop BB0_990 Depth 3
                                        #     Child Loop BB0_1016 Depth 2
                                        #       Child Loop BB0_1033 Depth 3
                                        #       Child Loop BB0_1019 Depth 3
	.loc	1 90 13                         # parallel-rne.mlir:90:13
	loadli.w r2,  -1828(r30)
	addli r3, r2, 1
	storeli.w r3, -1828(r30)
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	bneq r9, r26, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 18
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  48(r30)
	store.d r[4:5], -1936(r30)              # 8-byte Folded Spill
	mod.s r8, r2, r26
	loadli.w r2,  -1808(r30)
	loadli.w r7,  -928(r30)
	addli r16, zero, 0
	div.s r3, r4, r1
	loadli.w r1,  44(r30)
	slli r10, r8, 15
	div.s r4, r3, r1
	addli r3, zero, 1
	div.s r5, r4, r13
	slli r9, r5, 3
	slli r5, r5, 6
	sub.s r6, r21, r9
	sub.s r5, r4, r5
	min.s r6, r6, r24
	div.s r11, r5, r6
	mod.s r4, r4, r6
	loadli.w r5,  -1036(r30)
	loadli.w r6,  -284(r30)
	slli r1, r11, 7
	add.s r8, r9, r4
	zext_int2long r[11:12], r11
	storeli.w r1, -1832(r30)                # 4-byte Folded Spill
	slli r1, r8, 6
	zext_int2long r[14:15], r8
	storeli.w r1, -1964(r30)                # 4-byte Folded Spill
	addli r1, zero, 7
	store.d r[14:15], -1960(r30)            # 8-byte Folded Spill
	sll.d r[11:12], r[11:12], r1
	addli r1, zero, 13
	store.d r[11:12], -1952(r30)            # 8-byte Folded Spill
	.loc	1 92 7 is_stmt 1                # parallel-rne.mlir:92:7
	sll.d r[8:9], r[11:12], r3
	sll.d r[11:12], r[14:15], r1
	load.d r[14:15], 8(r30)
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	add.ul r[8:9], r[14:15], r[8:9]
	load.d r[14:15], 0(r30)
	add.ul r[14:15], r[14:15], r[11:12]
	addli r12, zero, 0
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	addli r16, zero, 2
	addli r4, zero, 32
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	addli r7, r7, 1
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	xwait r16, 0
	addli r16, zero, 5
	xwait r16, 0
	addli r16, zero, 3
	lock zero, zero
	ds_cfg r16, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r13, zero, 13
	shuffle_batch r11, r17, r4, 1
	unlock zero
	xsignal r16, 0
	xsignal r26, 0
.LBB0_12:                               # %.thread80
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	andi r11, r3, 1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	addli r2, r2, 1
	addli r5, r5, 1
	.loc	1 128 15 is_stmt 1              # parallel-rne.mlir:128:15
	addli r6, r6, 1
	.loc	1 136 15                        # parallel-rne.mlir:136:15
	addli r12, r12, 1
	addli r16, zero, 1
	addli r3, zero, 0
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	beq r11, zero, .LBB0_25
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r11, zero, 26
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	mod.s r17, r2, r25
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r11, r5, r11
	slli r18, r11, 13
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	slli r11, r17, 12
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	lui r17, 32
	add.s r17, r18, r17
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	addli r18, zero, 2
	beq r1, r18, .LBB0_11
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[18:19], r16
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	bneq r1, r21, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	addli r4, zero, 6
	addli r11, zero, 3
	.loc	1 126 15 is_stmt 1              # parallel-rne.mlir:126:15
	addli r7, r7, 1
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	sll.d r[18:19], r[18:19], r4
	xwait r11, 0
	lock zero, r26
	addli r4, zero, 128
	addli r11, zero, 2
	dma_cfg r21, r21, zero, 0
	add.ul r[18:19], r[14:15], r[18:19]
	dma_cfg zero, r19, zero, 2
	dma_cfg r17, r18, r13, 3
	dma_cfg r4, r4, r13, 4
	dma_run zero
	unlock r26
	xsignal r11, 0
	.loc	1 132 9                         # parallel-rne.mlir:132:9
	j .LBB0_12
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	addli r4, zero, 160
	.loc	1 132 9                         # parallel-rne.mlir:132:9
	addli r20, zero, 7
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	mod.s r16, r7, r4
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	addli r4, zero, 25
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	addli r7, r7, 1
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	mod.s r17, r6, r4
	lui r4, 84
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	slli r16, r16, 13
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	slli r17, r17, 13
	add.s r17, r17, r4
	.loc	1 132 9                         # parallel-rne.mlir:132:9
	beq r1, r20, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r20, zero, 6
	.loc	1 132 9                         # parallel-rne.mlir:132:9
	bneq r1, r20, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=2
	addli r4, zero, 16
	addli r11, zero, 7
	addli r16, zero, 2048
	sll.d r[18:19], r[18:19], r4
	xwait r11, 0
	lock zero, r26
	addli r11, zero, 256
	addli r4, zero, 32
	dma_cfg r21, r21, zero, 0
	add.ul r[18:19], r[8:9], r[18:19]
	dma_cfg zero, r19, zero, 2
	dma_cfg r17, r18, r11, 3
	dma_cfg r11, r16, r4, 4
	dma_run zero
	unlock r26
	xsignal r20, 0
	.loc	1 133 9 is_stmt 1               # parallel-rne.mlir:133:9
	j .LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=2
	addli r4, zero, 6
	addli r11, zero, 3
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 32
	ds_cfg r11, zero, 0
	addli r11, zero, 128
	ds_cfg r11, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r11, zero, 13
	addli r11, zero, 7
	shuffle_coa r16, r17, r4, 2
	unlock zero
	xsignal r11, 0
	xsignal r24, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 135 9                         # parallel-rne.mlir:135:9
	bneq r1, r26, .LBB0_12
# %bb.21:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r17, zero, 1
	addli r18, zero, 1
	addli r19, zero, 0
	addli r4, zero, 32
	.loc	1 135 9                         # parallel-rne.mlir:135:9
	xwait r26, 0
	xwait r24, 0
	beq r12, zero, .LBB0_23
.LBB0_22:                               # %.preheader132
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r20, r19, 12
	slli r19, r19, 8
	lock zero, r17
	mm_cfg r13, r4, r13, 0
	or r20, r20, r16
	or r19, r19, r10
	mm_cfg r17, r26, r17, 2
	mm_acc r19, r11, r20, 5
	andi r20, r18, 1
	addli r19, zero, 1
	addli r18, zero, 0
	unlock r17
	bneq r20, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader131
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r20, r19, 12
	slli r19, r19, 8
	lock zero, r17
	mm_cfg r13, r4, r13, 0
	or r20, r20, r16
	or r19, r19, r10
	mm_cfg r17, r26, r17, 2
	mm r19, r11, r20, 5
	andi r20, r18, 1
	addli r19, zero, 1
	addli r18, zero, 0
	unlock r17
	bneq r20, zero, .LBB0_23
.LBB0_24:                               # %.loopexit
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r11, zero, 5
	addli r4, zero, 9
	xsignal r11, 0
	xsignal r4, 0
	j .LBB0_12
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 126 15 is_stmt 1              # parallel-rne.mlir:126:15
	storeli.w r7, -928(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	storeli.w r2, -1808(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r5, -1036(r30)
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	storeli.w r6, -284(r30)
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	bneq r1, r26, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r2,  -1832(r30)                # 4-byte Folded Reload
	addli r4, zero, 896
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	loadli.w r6,  -180(r30)
	zext_int2long r[4:5], r4
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	zext_int2long r[2:3], r2
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	mod.s r7, r6, r26
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	min.ul r[4:5], r[2:3], r[4:5]
	addli.d r[4:5], r[4:5], 128
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	max.ul r[4:5], r[4:5], r[2:3]
	sub.sl r[2:3], r[4:5], r[2:3]
	addli r4, zero, 128
	zext_int2long r[24:25], r4
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	slli r4, r7, 9
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	min.ul r[8:9], r[2:3], r[24:25]
	lui r3, 134
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	add.s r2, r4, r3
	addli r4, r6, 1
	ori r3, r3, 2048
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	store.d r[8:9], -1976(r30)              # 8-byte Folded Spill
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	storeli.w r4, -180(r30)
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	bneq r1, r21, .LBB0_29
# %bb.28:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], -1952(r30)               # 8-byte Folded Reload
	addli r6, zero, 20
	xwait r6, 0
	load.d r[6:7], 16(r30)
	lock zero, r26
	sll.d r[4:5], r[4:5], r21
	dma_cfg zero, r21, zero, 0
	add.ul r[4:5], r[6:7], r[4:5]
	slli r6, r8, 1
	dma_cfg zero, r5, zero, 2
	dma_cfg r2, r4, r6, 3
	addli r2, zero, 256
	addli r4, zero, 512
	dma_cfg r4, r2, r21, 4
	addli r2, zero, 19
	dma_run zero
	unlock r26
	xsignal r2, 0
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	loadli.w r2,  -160(r30)
	mod.s r4, r2, r26
	addli r2, r2, 1
	storeli.w r2, -160(r30)
	slli r4, r4, 15
	add.s r7, r4, r3
	j .LBB0_33
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r4,  -160(r30)
	mod.s r5, r4, r26
	addli r4, r4, 1
	storeli.w r4, -160(r30)
	slli r5, r5, 15
	add.s r7, r5, r3
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	addli r3, zero, 5
	bneq r1, r3, .LBB0_33
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	addli r3, zero, 0
	addli r8, r7, 0
	lui r6, 8
	xwait r4, 0
	addli r4, zero, 19
	xwait r4, 0
	addli r4, zero, 23
	xwait r4, 0
	addli r4, zero, 2
	lock zero, r4
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r21, zero, zero, 3
.LBB0_31:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r8, r3
	add.s r5, r10, r3
	addli r3, r3, 512
	dsmadd r4, r5, r2, 0
	bneq r3, r6, .LBB0_31
# %bb.32:                               # %.thread194
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 2
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	addli r2, zero, 11
	addli r7, zero, 2047
	lui r6, 260096
	addli r4, zero, 4
	lui r21, 524288
	unlock r5
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 161 13 is_stmt 1              # parallel-rne.mlir:161:13
	loadli.w r2,  -140(r30)
	mod.s r3, r2, r26
	addli r2, r2, 1
	storeli.w r2, -140(r30)
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r5
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	slli r2, r3, 15
	loadli.w r3,  -1988(r30)                # 4-byte Folded Reload
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	ew_cfg zero, zero, zero, 1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r3, r2, r3
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	lui r2, 258048
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 25
	ew_cfg zero, r7, zero, 2
	ew_cfg r26, zero, zero, 3
	ew_cfg r26, r26, zero, 19
	storeli.w r3, -1832(r30)                # 4-byte Folded Spill
	hp_ssmul r3, r8, r8, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	loadli.w r2,  -120(r30)
	mod.s r3, r2, r26
	addli r2, r2, 1
	storeli.w r2, -120(r30)
	loadli.w r2,  -1992(r30)                # 4-byte Folded Reload
	slli r3, r3, 15
	add.s r26, r3, r2
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r2, zero, 28
	xwait r2, 0
	lock zero, r5
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r6, 0
	ew_cfg zero, r7, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	dsmul r26, r8, r8, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	loadli.w r2,  -100(r30)
	mod.s r3, r2, r4
	addli r2, r2, 1
	storeli.w r2, -100(r30)
	loadli.w r2,  -1996(r30)                # 4-byte Folded Reload
	slli r3, r3, 15
	add.s r12, r3, r2
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	addli r2, zero, 30
	xwait r2, 0
	lock zero, r5
	addli r2, zero, 21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r6, 0
	addli r6, r8, 0
	ew_cfg zero, r7, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	dsmul r12, r26, r8, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	addli r2, zero, 27
	xsignal r2, 0
	addli r2, zero, 29
	xsignal r2, 0
	.loc	1 170 13                        # parallel-rne.mlir:170:13
	loadli.w r2,  -80(r30)
	storeli.w r2, -1940(r30)                # 4-byte Folded Spill
	addli r2, r2, 1
	storeli.w r2, -80(r30)
	j .LBB0_36
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	loadli.w r2,  -140(r30)
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	loadli.w r3,  -120(r30)
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	loadli.w r6,  -100(r30)
	.loc	1 170 13                        # parallel-rne.mlir:170:13
	loadli.w r8,  -80(r30)
	lui r21, 524288
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	mod.s r4, r2, r26
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	mod.s r5, r3, r26
	addli r3, r3, 1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	addli r2, r2, 1
	storeli.w r8, -1940(r30)                # 4-byte Folded Spill
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	storeli.w r3, -120(r30)
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	storeli.w r2, -140(r30)
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	mod.s r2, r6, r26
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	slli r3, r4, 15
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	slli r4, r5, 15
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	loadli.w r5,  -1988(r30)                # 4-byte Folded Reload
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	slli r2, r2, 15
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r3, r3, r5
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	storeli.w r3, -1832(r30)                # 4-byte Folded Spill
	loadli.w r3,  -1992(r30)                # 4-byte Folded Reload
	add.s r26, r4, r3
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	loadli.w r4,  -1996(r30)                # 4-byte Folded Reload
	addli r3, r6, 1
	storeli.w r3, -100(r30)
	.loc	1 170 13                        # parallel-rne.mlir:170:13
	addli r3, r8, 1
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	add.s r12, r2, r4
	.loc	1 172 7                         # parallel-rne.mlir:172:7
	addli r2, zero, 3
	.loc	1 170 13                        # parallel-rne.mlir:170:13
	storeli.w r3, -80(r30)
	bneq r1, r2, .LBB0_35
# %bb.34:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 172 7                         # parallel-rne.mlir:172:7
	addli r2, zero, 11
	xwait r2, 0
	.loc	1 173 7                         # parallel-rne.mlir:173:7
	addli r2, zero, 21
	xwait r2, 0
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	addli r2, zero, 27
	xwait r2, 0
	.loc	1 175 7                         # parallel-rne.mlir:175:7
	addli r2, zero, 29
	xwait r2, 0
.LBB0_35:                               # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, r7, 0
.LBB0_36:                               # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 179 7 is_stmt 1               # parallel-rne.mlir:179:7
	addli r2, zero, 255
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	xfence
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	mfence { lm, sm, gm }
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	csr_set csr5, r2
	sub.s r2, r10, r26
	storeli.w r2, -1916(r30)                # 4-byte Folded Spill
	sub.s r2, r10, r6
	storeli.w r2, -1920(r30)                # 4-byte Folded Spill
	sub.s r2, r10, r12
	storeli.w r2, -1924(r30)                # 4-byte Folded Spill
	addli r2, zero, 7
	zext_int2long r[2:3], r2
	store.d r[2:3], -1904(r30)              # 8-byte Folded Spill
	addli r2, zero, 127
	sync_core
	storeli.w r6, -1840(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r2
	.loc	1 180 7                         # parallel-rne.mlir:180:7
	bneq r1, zero, .LBB0_65
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r2, r1, r2
	loadli.w r1,  -1924(r30)                # 4-byte Folded Reload
	min.u r2, r2, r1
	addli r1, zero, 16
	setlt.u r1, r2, r1
	zext_int2long r[2:3], zero
	.loc	1 180 7                         # parallel-rne.mlir:180:7
	storeli.w r1, -1856(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_39
.LBB0_38:                               # %middle.block705
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 188 9 is_stmt 1               # parallel-rne.mlir:188:9
	load.d r[1:2], -1904(r30)               # 8-byte Folded Reload
	load.d r[7:8], -1848(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_64
.LBB0_39:                               # %.preheader130
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_42 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 189 11 is_stmt 1              # parallel-rne.mlir:189:11
	store.d r[2:3], -1848(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[2:3], r1
	loadli.w r1,  -1856(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_54
# %bb.40:                               # %scalar.ph697.preheader
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[14:15], zero
	j .LBB0_42
.LBB0_41:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 189 11                        # parallel-rne.mlir:189:11
	setlt.ul r1, r[14:15], r[4:5]
	.loc	1 211 13 is_stmt 1              # parallel-rne.mlir:211:13
	add.s r2, r10, r3
	.loc	1 189 11                        # parallel-rne.mlir:189:11
	addli.d r[14:15], r[14:15], 1
	.loc	1 211 13                        # parallel-rne.mlir:211:13
	stores.w r11, 0(r2)
	.loc	1 189 11                        # parallel-rne.mlir:189:11
	beq r1, zero, .LBB0_38
.LBB0_42:                               # %scalar.ph697
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	add.ul r[1:2], r[14:15], r[8:9]
	lui r11, 523264
	lui r17, 523264
	slli r3, r1, 2
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.s r1, r6, r3
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	add.s r2, r12, r3
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	loads.w r1, 0(r1)
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	loads.w r18, 0(r2)
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	and r2, r1, r27
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	beq r2, r23, .LBB0_44
# %bb.43:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_44:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	add.s r1, r26, r3
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	beq r16, zero, .LBB0_52
# %bb.45:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_53
.LBB0_46:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	beq r16, r23, .LBB0_48
.LBB0_47:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_48:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.u r1, r23, r2
	lui r2, 523264
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r1, zero, .LBB0_50
# %bb.49:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r18, 0
.LBB0_50:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.u r1, r23, r16
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r1, zero, .LBB0_41
# %bb.51:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_41
.LBB0_52:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	lui r18, 523264
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	beq r2, zero, .LBB0_46
.LBB0_53:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r16, r23, .LBB0_47
	j .LBB0_48
.LBB0_54:                               # %vector.body699.preheader
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[15:16], zero
	j .LBB0_56
.LBB0_55:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 189 11 is_stmt 1              # parallel-rne.mlir:189:11
	addli.d r[15:16], r[15:16], 4
	loadli.w r6,  -1840(r30)                # 4-byte Folded Reload
	.loc	1 211 13                        # parallel-rne.mlir:211:13
	add.s r3, r10, r3
	.loc	1 189 11                        # parallel-rne.mlir:189:11
	seteq.d r1, r[15:16], r[24:25]
	.loc	1 211 13                        # parallel-rne.mlir:211:13
	stores.w r14, 12(r3)
	stores.w r2, 8(r3)
	stores.w r20, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 189 11                        # parallel-rne.mlir:189:11
	bneq r1, zero, .LBB0_38
.LBB0_56:                               # %vector.body699
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	add.ul r[2:3], r[15:16], r[8:9]
	slli r3, r2, 2
	add.s r17, r26, r3
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.s r18, r6, r3
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	loads.w r2, 0(r17)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	loads.w r11, 0(r18)
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	and r2, r2, r27
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	and r11, r11, r27
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	seteq r14, r2, r23
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	seteq r19, r11, zero
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	seteq r6, r2, zero
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	seteq r20, r11, r23
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	max.u r2, r2, r11
	lui r11, 523264
	setlt.u r2, r23, r2
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r7, r14, r19
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r6, r6, r20
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	add.s r19, r12, r3
	lui r14, 523264
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	or r6, r7, r6
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	or r2, r2, r6
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_58
# %bb.57:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r19)
.LBB0_58:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r2, 4(r17)
	loads.w r6, 4(r18)
	and r2, r2, r27
	and r6, r6, r27
	seteq r7, r2, r23
	seteq r21, r2, zero
	seteq r20, r6, zero
	seteq r13, r6, r23
	max.u r2, r2, r6
	setlt.u r2, r23, r2
	and r6, r7, r20
	and r7, r21, r13
	lui r20, 523264
	or r6, r6, r7
	or r2, r2, r6
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_60
# %bb.59:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_60:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r2, 8(r17)
	loads.w r6, 8(r18)
	and r2, r2, r27
	and r6, r6, r27
	seteq r7, r2, r23
	seteq r1, r2, zero
	seteq r21, r6, r23
	seteq r13, r6, zero
	max.u r2, r2, r6
	setlt.u r2, r23, r2
	and r6, r7, r13
	and r1, r1, r21
	or r1, r6, r1
	or r1, r2, r1
	lui r2, 523264
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r1, zero, .LBB0_62
# %bb.61:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r19)
.LBB0_62:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r1, 12(r17)
	loads.w r6, 12(r18)
	lui r21, 524288
	and r1, r1, r27
	and r6, r6, r27
	seteq r7, r1, r23
	seteq r18, r1, zero
	seteq r13, r6, zero
	seteq r17, r6, r23
	max.u r1, r1, r6
	setlt.u r1, r23, r1
	and r6, r7, r13
	and r7, r18, r17
	or r6, r6, r7
	or r1, r1, r6
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r1, zero, .LBB0_55
# %bb.63:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r19)
	j .LBB0_55
.LBB0_64:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 180 7                         # parallel-rne.mlir:180:7
	mfence { sm }
.LBB0_65:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	zext_int2long r[2:3], r2
	.loc	1 216 7 is_stmt 1               # parallel-rne.mlir:216:7
	store.d r[2:3], -1848(r30)              # 8-byte Folded Spill
	addli r2, zero, 1
	bneq r1, r2, .LBB0_94
# %bb.66:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -1924(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 216 7                         # parallel-rne.mlir:216:7
	storeli.w r1, -1864(r30)                # 4-byte Folded Spill
	addli r1, zero, 8
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_68
.LBB0_67:                               # %middle.block690
                                        #   in Loop: Header=BB0_68 Depth=2
	.loc	1 224 9 is_stmt 1               # parallel-rne.mlir:224:9
	load.d r[1:2], -1848(r30)               # 8-byte Folded Reload
	load.d r[7:8], -1856(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_93
.LBB0_68:                               # %.preheader129
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_71 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 225 11 is_stmt 1              # parallel-rne.mlir:225:11
	store.d r[2:3], -1856(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[2:3], r1
	loadli.w r1,  -1864(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_83
# %bb.69:                               # %scalar.ph682.preheader
                                        #   in Loop: Header=BB0_68 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[14:15], zero
	j .LBB0_71
.LBB0_70:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	setlt.ul r1, r[14:15], r[4:5]
	.loc	1 247 13 is_stmt 1              # parallel-rne.mlir:247:13
	add.s r2, r10, r3
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	addli.d r[14:15], r[14:15], 1
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	stores.w r11, 0(r2)
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	beq r1, zero, .LBB0_67
.LBB0_71:                               # %scalar.ph682
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.ul r[1:2], r[14:15], r[8:9]
	lui r11, 523264
	lui r17, 523264
	slli r3, r1, 2
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	add.s r1, r6, r3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.s r2, r12, r3
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	loads.w r1, 0(r1)
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	loads.w r18, 0(r2)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r2, r1, r27
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r2, r23, .LBB0_73
# %bb.72:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_73:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	add.s r1, r26, r3
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r16, zero, .LBB0_81
# %bb.74:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r2, zero, .LBB0_82
.LBB0_75:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	beq r16, r23, .LBB0_77
.LBB0_76:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_77:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	setlt.u r1, r23, r2
	lui r2, 523264
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r1, zero, .LBB0_79
# %bb.78:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r18, 0
.LBB0_79:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	setlt.u r1, r23, r16
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r1, zero, .LBB0_70
# %bb.80:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_70
.LBB0_81:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	lui r18, 523264
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r2, zero, .LBB0_75
.LBB0_82:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r16, r23, .LBB0_76
	j .LBB0_77
.LBB0_83:                               # %vector.body684.preheader
                                        #   in Loop: Header=BB0_68 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[15:16], zero
	j .LBB0_85
.LBB0_84:                               # %vector.body684
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 225 11 is_stmt 1              # parallel-rne.mlir:225:11
	addli.d r[15:16], r[15:16], 4
	loadli.w r6,  -1840(r30)                # 4-byte Folded Reload
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	add.s r3, r10, r3
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	seteq.d r1, r[15:16], r[24:25]
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	stores.w r14, 12(r3)
	stores.w r2, 8(r3)
	stores.w r20, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	bneq r1, zero, .LBB0_67
.LBB0_85:                               # %vector.body684
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.ul r[1:2], r[15:16], r[8:9]
	slli r3, r1, 2
	add.s r17, r26, r3
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	add.s r18, r6, r3
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	loads.w r1, 0(r17)
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	loads.w r2, 0(r18)
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	and r1, r1, r27
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r2, r2, r27
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	seteq r11, r1, r23
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	seteq r19, r1, zero
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	seteq r13, r2, zero
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	seteq r14, r2, r23
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r2, r11, r13
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	and r11, r19, r14
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.s r19, r12, r3
	lui r14, 523264
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	or r2, r2, r11
	lui r11, 523264
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	or r1, r1, r2
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r1, zero, .LBB0_87
# %bb.86:                               # %vector.body684
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r19)
.LBB0_87:                               # %vector.body684
                                        #   in Loop: Header=BB0_85 Depth=3
	loads.w r1, 4(r17)
	loads.w r2, 4(r18)
	and r1, r1, r27
	and r2, r2, r27
	seteq r13, r1, r23
	seteq r6, r1, zero
	seteq r21, r2, r23
	seteq r20, r2, zero
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	and r2, r13, r20
	and r6, r6, r21
	lui r20, 523264
	or r2, r2, r6
	or r1, r1, r2
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r1, zero, .LBB0_89
# %bb.88:                               # %vector.body684
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_89:                               # %vector.body684
                                        #   in Loop: Header=BB0_85 Depth=3
	loads.w r1, 8(r17)
	loads.w r2, 8(r18)
	and r1, r1, r27
	and r2, r2, r27
	seteq r6, r1, r23
	seteq r21, r1, zero
	seteq r7, r2, zero
	seteq r13, r2, r23
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	and r2, r6, r7
	and r6, r21, r13
	or r2, r2, r6
	or r1, r1, r2
	lui r2, 523264
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r1, zero, .LBB0_91
# %bb.90:                               # %vector.body684
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r19)
.LBB0_91:                               # %vector.body684
                                        #   in Loop: Header=BB0_85 Depth=3
	loads.w r1, 12(r17)
	loads.w r6, 12(r18)
	lui r21, 524288
	and r1, r1, r27
	and r6, r6, r27
	seteq r7, r1, r23
	seteq r18, r1, zero
	seteq r13, r6, zero
	seteq r17, r6, r23
	max.u r1, r1, r6
	setlt.u r1, r23, r1
	and r6, r7, r13
	and r7, r18, r17
	or r6, r6, r7
	or r1, r1, r6
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r1, zero, .LBB0_84
# %bb.92:                               # %vector.body684
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r19)
	j .LBB0_84
.LBB0_93:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 216 7                         # parallel-rne.mlir:216:7
	mfence { sm }
.LBB0_94:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[2:3], r2
	.loc	1 252 7 is_stmt 1               # parallel-rne.mlir:252:7
	store.d r[2:3], -1856(r30)              # 8-byte Folded Spill
	addli r2, zero, 2
	bneq r1, r2, .LBB0_123
# %bb.95:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -1924(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[2:3], r2
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	storeli.w r1, -1872(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_97
.LBB0_96:                               # %middle.block675
                                        #   in Loop: Header=BB0_97 Depth=2
	.loc	1 260 9 is_stmt 1               # parallel-rne.mlir:260:9
	load.d r[1:2], -1856(r30)               # 8-byte Folded Reload
	load.d r[7:8], -1864(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_122
.LBB0_97:                               # %.preheader128
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_100 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	store.d r[2:3], -1864(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[2:3], r1
	loadli.w r1,  -1872(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_112
# %bb.98:                               # %scalar.ph667.preheader
                                        #   in Loop: Header=BB0_97 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[14:15], zero
	j .LBB0_100
.LBB0_99:                               # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	setlt.ul r1, r[14:15], r[4:5]
	.loc	1 283 13 is_stmt 1              # parallel-rne.mlir:283:13
	add.s r2, r10, r3
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	addli.d r[14:15], r[14:15], 1
	.loc	1 283 13                        # parallel-rne.mlir:283:13
	stores.w r11, 0(r2)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	beq r1, zero, .LBB0_96
.LBB0_100:                              # %scalar.ph667
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[1:2], r[14:15], r[8:9]
	lui r11, 523264
	lui r17, 523264
	slli r3, r1, 2
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.s r1, r6, r3
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	add.s r2, r12, r3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	loads.w r1, 0(r1)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	loads.w r18, 0(r2)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r2, r1, r27
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	beq r2, r23, .LBB0_102
# %bb.101:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_102:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	add.s r1, r26, r3
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	beq r16, zero, .LBB0_110
# %bb.103:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r2, zero, .LBB0_111
.LBB0_104:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	beq r16, r23, .LBB0_106
.LBB0_105:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_106:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	setlt.u r1, r23, r2
	lui r2, 523264
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r1, zero, .LBB0_108
# %bb.107:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r18, 0
.LBB0_108:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	setlt.u r1, r23, r16
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r1, zero, .LBB0_99
# %bb.109:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_99
.LBB0_110:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	lui r18, 523264
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	beq r2, zero, .LBB0_104
.LBB0_111:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r16, r23, .LBB0_105
	j .LBB0_106
.LBB0_112:                              # %vector.body669.preheader
                                        #   in Loop: Header=BB0_97 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[15:16], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body669
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	addli.d r[15:16], r[15:16], 4
	loadli.w r6,  -1840(r30)                # 4-byte Folded Reload
	.loc	1 283 13                        # parallel-rne.mlir:283:13
	add.s r3, r10, r3
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	seteq.d r1, r[15:16], r[24:25]
	.loc	1 283 13                        # parallel-rne.mlir:283:13
	stores.w r14, 12(r3)
	stores.w r2, 8(r3)
	stores.w r20, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	bneq r1, zero, .LBB0_96
.LBB0_114:                              # %vector.body669
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[1:2], r[15:16], r[8:9]
	slli r3, r1, 2
	add.s r17, r26, r3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.s r18, r6, r3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	loads.w r1, 0(r17)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	loads.w r2, 0(r18)
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	and r1, r1, r27
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r2, r2, r27
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	seteq r11, r1, r23
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	seteq r19, r1, zero
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	seteq r13, r2, zero
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	seteq r14, r2, r23
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	and r2, r11, r13
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	and r11, r19, r14
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	add.s r19, r12, r3
	lui r14, 523264
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	or r2, r2, r11
	lui r11, 523264
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	or r1, r1, r2
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r1, zero, .LBB0_116
# %bb.115:                              # %vector.body669
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r19)
.LBB0_116:                              # %vector.body669
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r1, 4(r17)
	loads.w r2, 4(r18)
	and r1, r1, r27
	and r2, r2, r27
	seteq r13, r1, r23
	seteq r6, r1, zero
	seteq r21, r2, r23
	seteq r20, r2, zero
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	and r2, r13, r20
	and r6, r6, r21
	lui r20, 523264
	or r2, r2, r6
	or r1, r1, r2
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r1, zero, .LBB0_118
# %bb.117:                              # %vector.body669
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_118:                              # %vector.body669
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r1, 8(r17)
	loads.w r2, 8(r18)
	and r1, r1, r27
	and r2, r2, r27
	seteq r6, r1, r23
	seteq r21, r1, zero
	seteq r7, r2, zero
	seteq r13, r2, r23
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	and r2, r6, r7
	and r6, r21, r13
	or r2, r2, r6
	or r1, r1, r2
	lui r2, 523264
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r1, zero, .LBB0_120
# %bb.119:                              # %vector.body669
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r19)
.LBB0_120:                              # %vector.body669
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r1, 12(r17)
	loads.w r6, 12(r18)
	lui r21, 524288
	and r1, r1, r27
	and r6, r6, r27
	seteq r7, r1, r23
	seteq r18, r1, zero
	seteq r13, r6, zero
	seteq r17, r6, r23
	max.u r1, r1, r6
	setlt.u r1, r23, r1
	and r6, r7, r13
	and r7, r18, r17
	or r6, r6, r7
	or r1, r1, r6
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r1, zero, .LBB0_113
# %bb.121:                              # %vector.body669
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r19)
	j .LBB0_113
.LBB0_122:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	mfence { sm }
.LBB0_123:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	zext_int2long r[2:3], r2
	.loc	1 288 7 is_stmt 1               # parallel-rne.mlir:288:7
	store.d r[2:3], -1864(r30)              # 8-byte Folded Spill
	addli r2, zero, 3
	bneq r1, r2, .LBB0_152
# %bb.124:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -1924(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 288 7                         # parallel-rne.mlir:288:7
	storeli.w r1, -1880(r30)                # 4-byte Folded Spill
	addli r1, zero, 24
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_126
.LBB0_125:                              # %middle.block660
                                        #   in Loop: Header=BB0_126 Depth=2
	.loc	1 296 9 is_stmt 1               # parallel-rne.mlir:296:9
	load.d r[1:2], -1864(r30)               # 8-byte Folded Reload
	load.d r[7:8], -1872(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_151
.LBB0_126:                              # %.preheader127
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_143 Depth 3
                                        #       Child Loop BB0_129 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 297 11 is_stmt 1              # parallel-rne.mlir:297:11
	store.d r[2:3], -1872(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[2:3], r1
	loadli.w r1,  -1880(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_141
# %bb.127:                              # %scalar.ph652.preheader
                                        #   in Loop: Header=BB0_126 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[14:15], zero
	j .LBB0_129
.LBB0_128:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 297 11                        # parallel-rne.mlir:297:11
	setlt.ul r1, r[14:15], r[4:5]
	.loc	1 319 13 is_stmt 1              # parallel-rne.mlir:319:13
	add.s r2, r10, r3
	.loc	1 297 11                        # parallel-rne.mlir:297:11
	addli.d r[14:15], r[14:15], 1
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	stores.w r11, 0(r2)
	.loc	1 297 11                        # parallel-rne.mlir:297:11
	beq r1, zero, .LBB0_125
.LBB0_129:                              # %scalar.ph652
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	add.ul r[1:2], r[14:15], r[8:9]
	lui r11, 523264
	lui r17, 523264
	slli r3, r1, 2
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.s r1, r6, r3
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	add.s r2, r12, r3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	loads.w r1, 0(r1)
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	loads.w r18, 0(r2)
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	and r2, r1, r27
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r2, r23, .LBB0_131
# %bb.130:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_131:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	add.s r1, r26, r3
	loads.w r1, 0(r1)
	and r16, r1, r27
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r16, zero, .LBB0_139
# %bb.132:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r2, zero, .LBB0_140
.LBB0_133:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	beq r16, r23, .LBB0_135
.LBB0_134:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_135:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	setlt.u r1, r23, r2
	lui r2, 523264
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_137
# %bb.136:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r18, 0
.LBB0_137:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	setlt.u r1, r23, r16
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_128
# %bb.138:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_128
.LBB0_139:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	lui r18, 523264
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r2, zero, .LBB0_133
.LBB0_140:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_129 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r16, r23, .LBB0_134
	j .LBB0_135
.LBB0_141:                              # %vector.body654.preheader
                                        #   in Loop: Header=BB0_126 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[15:16], zero
	j .LBB0_143
.LBB0_142:                              # %vector.body654
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 297 11 is_stmt 1              # parallel-rne.mlir:297:11
	addli.d r[15:16], r[15:16], 4
	loadli.w r6,  -1840(r30)                # 4-byte Folded Reload
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	add.s r3, r10, r3
	.loc	1 297 11                        # parallel-rne.mlir:297:11
	seteq.d r1, r[15:16], r[24:25]
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	stores.w r14, 12(r3)
	stores.w r2, 8(r3)
	stores.w r20, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 297 11                        # parallel-rne.mlir:297:11
	bneq r1, zero, .LBB0_125
.LBB0_143:                              # %vector.body654
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	add.ul r[1:2], r[15:16], r[8:9]
	slli r3, r1, 2
	add.s r17, r26, r3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.s r18, r6, r3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	loads.w r1, 0(r17)
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	loads.w r2, 0(r18)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r1, r1, r27
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	and r2, r2, r27
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	seteq r11, r1, r23
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	seteq r19, r1, zero
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	seteq r13, r2, zero
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	seteq r14, r2, r23
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	and r2, r11, r13
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	and r11, r19, r14
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	add.s r19, r12, r3
	lui r14, 523264
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	or r2, r2, r11
	lui r11, 523264
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	or r1, r1, r2
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_145
# %bb.144:                              # %vector.body654
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r19)
.LBB0_145:                              # %vector.body654
                                        #   in Loop: Header=BB0_143 Depth=3
	loads.w r1, 4(r17)
	loads.w r2, 4(r18)
	and r1, r1, r27
	and r2, r2, r27
	seteq r13, r1, r23
	seteq r6, r1, zero
	seteq r21, r2, r23
	seteq r20, r2, zero
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	and r2, r13, r20
	and r6, r6, r21
	lui r20, 523264
	or r2, r2, r6
	or r1, r1, r2
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_147
# %bb.146:                              # %vector.body654
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_147:                              # %vector.body654
                                        #   in Loop: Header=BB0_143 Depth=3
	loads.w r1, 8(r17)
	loads.w r2, 8(r18)
	and r1, r1, r27
	and r2, r2, r27
	seteq r6, r1, r23
	seteq r21, r1, zero
	seteq r7, r2, zero
	seteq r13, r2, r23
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	and r2, r6, r7
	and r6, r21, r13
	or r2, r2, r6
	or r1, r1, r2
	lui r2, 523264
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_149
# %bb.148:                              # %vector.body654
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r19)
.LBB0_149:                              # %vector.body654
                                        #   in Loop: Header=BB0_143 Depth=3
	loads.w r1, 12(r17)
	loads.w r6, 12(r18)
	lui r21, 524288
	and r1, r1, r27
	and r6, r6, r27
	seteq r7, r1, r23
	seteq r18, r1, zero
	seteq r13, r6, zero
	seteq r17, r6, r23
	max.u r1, r1, r6
	setlt.u r1, r23, r1
	and r6, r7, r13
	and r7, r18, r17
	or r6, r6, r7
	or r1, r1, r6
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_142
# %bb.150:                              # %vector.body654
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r19)
	j .LBB0_142
.LBB0_151:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 288 7                         # parallel-rne.mlir:288:7
	mfence { sm }
.LBB0_152:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 39
	zext_int2long r[2:3], r2
	.loc	1 324 7 is_stmt 1               # parallel-rne.mlir:324:7
	store.d r[2:3], -1872(r30)              # 8-byte Folded Spill
	addli r2, zero, 4
	bneq r1, r2, .LBB0_179
# %bb.153:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -1924(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	storeli.w r1, -1888(r30)                # 4-byte Folded Spill
	addli r1, zero, 32
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_155
.LBB0_154:                              # %middle.block645
                                        #   in Loop: Header=BB0_155 Depth=2
	.loc	1 332 9 is_stmt 1               # parallel-rne.mlir:332:9
	load.d r[1:2], -1872(r30)               # 8-byte Folded Reload
	load.d r[7:8], -1880(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[2:3], r[7:8], 1
	beq r1, zero, .LBB0_178
.LBB0_155:                              # %.preheader126
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_157 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	.loc	1 333 11 is_stmt 1              # parallel-rne.mlir:333:11
	store.d r[2:3], -1880(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[2:3], r1
	loadli.w r1,  -1888(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_157
	j .LBB0_170
.LBB0_156:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	setlt.ul r1, r[8:9], r[4:5]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	add.s r2, r10, r3
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r11, 0(r2)
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	beq r1, zero, .LBB0_154
.LBB0_157:                              # %scalar.ph637
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.ul r[1:2], r[8:9], r[15:16]
	lui r11, 523264
	lui r17, 523264
	slli r3, r1, 2
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	add.s r1, r6, r3
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	add.s r2, r12, r3
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	loads.w r1, 0(r1)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	loads.w r18, 0(r2)
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	and r2, r1, r27
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r2, r23, .LBB0_159
# %bb.158:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_159:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	add.s r1, r26, r3
	loads.w r1, 0(r1)
	and r14, r1, r27
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r14, zero, .LBB0_167
# %bb.160:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r2, zero, .LBB0_168
.LBB0_161:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	beq r14, r23, .LBB0_163
.LBB0_162:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_163:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	setlt.u r1, r23, r2
	lui r2, 523264
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_165
# %bb.164:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r18, 0
.LBB0_165:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	setlt.u r1, r23, r14
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_156
# %bb.166:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_156
.LBB0_167:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	lui r18, 523264
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r2, zero, .LBB0_161
.LBB0_168:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_157 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r14, r23, .LBB0_162
	j .LBB0_163
.LBB0_169:                              # %vector.body639
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 333 11 is_stmt 1              # parallel-rne.mlir:333:11
	addli.d r[8:9], r[8:9], 4
	loadli.w r6,  -1840(r30)                # 4-byte Folded Reload
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	add.s r3, r10, r3
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	seteq.d r1, r[8:9], r[24:25]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r14, 12(r3)
	stores.w r2, 8(r3)
	stores.w r20, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	bneq r1, zero, .LBB0_154
.LBB0_170:                              # %vector.body639
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.ul r[1:2], r[8:9], r[15:16]
	slli r3, r1, 2
	add.s r17, r26, r3
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	add.s r18, r6, r3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	loads.w r1, 0(r17)
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	loads.w r2, 0(r18)
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	and r1, r1, r27
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	and r2, r2, r27
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	seteq r11, r1, r23
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	seteq r19, r1, zero
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	seteq r13, r2, zero
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	seteq r14, r2, r23
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r2, r11, r13
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	and r11, r19, r14
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	add.s r19, r12, r3
	lui r14, 523264
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	or r2, r2, r11
	lui r11, 523264
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	or r1, r1, r2
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_172
# %bb.171:                              # %vector.body639
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r19)
.LBB0_172:                              # %vector.body639
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r1, 4(r17)
	loads.w r2, 4(r18)
	and r1, r1, r27
	and r2, r2, r27
	seteq r13, r1, r23
	seteq r6, r1, zero
	seteq r21, r2, r23
	seteq r20, r2, zero
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	and r2, r13, r20
	and r6, r6, r21
	lui r20, 523264
	or r2, r2, r6
	or r1, r1, r2
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_174
# %bb.173:                              # %vector.body639
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_174:                              # %vector.body639
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r1, 8(r17)
	loads.w r2, 8(r18)
	and r1, r1, r27
	and r2, r2, r27
	seteq r6, r1, r23
	seteq r21, r1, zero
	seteq r7, r2, zero
	seteq r13, r2, r23
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	and r2, r6, r7
	and r6, r21, r13
	or r2, r2, r6
	or r1, r1, r2
	lui r2, 523264
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_176
# %bb.175:                              # %vector.body639
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r19)
.LBB0_176:                              # %vector.body639
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r1, 12(r17)
	loads.w r6, 12(r18)
	lui r21, 524288
	and r1, r1, r27
	and r6, r6, r27
	seteq r7, r1, r23
	seteq r18, r1, zero
	seteq r13, r6, zero
	seteq r17, r6, r23
	max.u r1, r1, r6
	setlt.u r1, r23, r1
	and r6, r7, r13
	and r7, r18, r17
	or r6, r6, r7
	or r1, r1, r6
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_169
# %bb.177:                              # %vector.body639
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r19)
	j .LBB0_169
.LBB0_178:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	mfence { sm }
.LBB0_179:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	zext_int2long r[2:3], r2
	.loc	1 360 7 is_stmt 1               # parallel-rne.mlir:360:7
	store.d r[2:3], -1880(r30)              # 8-byte Folded Spill
	addli r2, zero, 5
	bneq r1, r2, .LBB0_208
# %bb.180:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -1924(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	storeli.w r1, -1896(r30)                # 4-byte Folded Spill
	addli r1, zero, 40
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_182
.LBB0_181:                              # %middle.block630
                                        #   in Loop: Header=BB0_182 Depth=2
	.loc	1 368 9 is_stmt 1               # parallel-rne.mlir:368:9
	load.d r[1:2], -1880(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1888(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_207
.LBB0_182:                              # %.preheader125
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_185 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1888(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[2:3], r1
	.loc	1 369 11 is_stmt 1              # parallel-rne.mlir:369:11
	loadli.w r1,  -1896(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_197
# %bb.183:                              # %scalar.ph622.preheader
                                        #   in Loop: Header=BB0_182 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_185
.LBB0_184:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 369 11                        # parallel-rne.mlir:369:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 391 13 is_stmt 1              # parallel-rne.mlir:391:13
	add.s r6, r10, r7
	.loc	1 369 11                        # parallel-rne.mlir:369:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 391 13                        # parallel-rne.mlir:391:13
	stores.w r8, 0(r6)
	.loc	1 369 11                        # parallel-rne.mlir:369:11
	beq r1, zero, .LBB0_181
.LBB0_185:                              # %scalar.ph622
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_182 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	add.ul r[6:7], r[2:3], r[17:18]
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	loadli.w r1,  -1840(r30)                # 4-byte Folded Reload
	lui r8, 523264
	lui r11, 523264
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	slli r7, r6, 2
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	add.s r1, r1, r7
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	add.s r6, r12, r7
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	loads.w r1, 0(r1)
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	loads.w r14, 0(r6)
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	and r6, r1, r27
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	beq r6, r23, .LBB0_187
# %bb.186:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r14, 0
.LBB0_187:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	add.s r1, r26, r7
	loads.w r1, 0(r1)
	and r9, r1, r27
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	beq r9, zero, .LBB0_195
# %bb.188:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r14, 0
	lui r14, 523264
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	bneq r6, zero, .LBB0_196
.LBB0_189:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	beq r9, r23, .LBB0_191
.LBB0_190:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
.LBB0_191:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	setlt.u r1, r23, r6
	lui r6, 523264
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	bneq r1, zero, .LBB0_193
# %bb.192:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r14, 0
.LBB0_193:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	setlt.u r1, r23, r9
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	bneq r1, zero, .LBB0_184
# %bb.194:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r6, 0
	j .LBB0_184
.LBB0_195:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	lui r14, 523264
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	beq r6, zero, .LBB0_189
.LBB0_196:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	bneq r9, r23, .LBB0_190
	j .LBB0_191
.LBB0_197:                              # %vector.body624.preheader
                                        #   in Loop: Header=BB0_182 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_199
.LBB0_198:                              # %vector.body624
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 369 11 is_stmt 1              # parallel-rne.mlir:369:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 391 13                        # parallel-rne.mlir:391:13
	add.s r7, r10, r7
	.loc	1 369 11                        # parallel-rne.mlir:369:11
	seteq.d r1, r[2:3], r[24:25]
	.loc	1 391 13                        # parallel-rne.mlir:391:13
	stores.w r9, 12(r7)
	stores.w r6, 8(r7)
	stores.w r20, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 369 11                        # parallel-rne.mlir:369:11
	bneq r1, zero, .LBB0_181
.LBB0_199:                              # %vector.body624
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_182 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	add.ul r[6:7], r[2:3], r[17:18]
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	loadli.w r1,  -1840(r30)                # 4-byte Folded Reload
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	slli r7, r6, 2
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	add.s r14, r1, r7
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	add.s r11, r26, r7
	loads.w r1, 0(r11)
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	loads.w r6, 0(r14)
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	and r1, r1, r27
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	and r6, r6, r27
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	seteq r8, r1, r23
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	seteq r19, r1, zero
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	seteq r9, r6, zero
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	seteq r13, r6, r23
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	max.u r1, r1, r6
	setlt.u r1, r23, r1
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	and r6, r8, r9
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	and r8, r19, r13
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	add.s r19, r12, r7
	lui r9, 523264
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	or r6, r6, r8
	lui r8, 523264
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	or r1, r1, r6
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	bneq r1, zero, .LBB0_201
# %bb.200:                              # %vector.body624
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r19)
.LBB0_201:                              # %vector.body624
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r1, 4(r11)
	loads.w r6, 4(r14)
	and r1, r1, r27
	and r6, r6, r27
	seteq r13, r1, r23
	seteq r15, r1, zero
	seteq r20, r6, zero
	seteq r21, r6, r23
	max.u r1, r1, r6
	setlt.u r1, r23, r1
	and r6, r13, r20
	and r13, r15, r21
	lui r20, 523264
	or r6, r6, r13
	or r1, r1, r6
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	bneq r1, zero, .LBB0_203
# %bb.202:                              # %vector.body624
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_203:                              # %vector.body624
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r1, 8(r11)
	loads.w r6, 8(r14)
	and r1, r1, r27
	and r6, r6, r27
	seteq r13, r1, r23
	seteq r21, r1, zero
	seteq r15, r6, zero
	seteq r16, r6, r23
	max.u r1, r1, r6
	setlt.u r1, r23, r1
	and r6, r13, r15
	and r13, r21, r16
	or r6, r6, r13
	or r1, r1, r6
	lui r6, 523264
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	bneq r1, zero, .LBB0_205
# %bb.204:                              # %vector.body624
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r19)
.LBB0_205:                              # %vector.body624
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r1, 12(r11)
	loads.w r11, 12(r14)
	lui r21, 524288
	and r1, r1, r27
	and r11, r11, r27
	seteq r13, r1, r23
	seteq r16, r1, zero
	seteq r14, r11, zero
	seteq r15, r11, r23
	max.u r1, r1, r11
	setlt.u r1, r23, r1
	and r11, r13, r14
	and r13, r16, r15
	or r11, r11, r13
	or r1, r1, r11
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	bneq r1, zero, .LBB0_198
# %bb.206:                              # %vector.body624
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r19)
	j .LBB0_198
.LBB0_207:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	mfence { sm }
.LBB0_208:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	zext_int2long r[2:3], r2
	.loc	1 396 7 is_stmt 1               # parallel-rne.mlir:396:7
	store.d r[2:3], -1888(r30)              # 8-byte Folded Spill
	addli r2, zero, 6
	bneq r1, r2, .LBB0_237
# %bb.209:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -1924(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 396 7                         # parallel-rne.mlir:396:7
	storeli.w r1, -1912(r30)                # 4-byte Folded Spill
	addli r1, zero, 48
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_211
.LBB0_210:                              # %middle.block615
                                        #   in Loop: Header=BB0_211 Depth=2
	.loc	1 404 9 is_stmt 1               # parallel-rne.mlir:404:9
	load.d r[1:2], -1888(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1896(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_236
.LBB0_211:                              # %.preheader124
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_214 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1896(r30)              # 8-byte Folded Spill
	sll.d r[18:19], r[2:3], r1
	.loc	1 405 11 is_stmt 1              # parallel-rne.mlir:405:11
	loadli.w r1,  -1912(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_226
# %bb.212:                              # %scalar.ph607.preheader
                                        #   in Loop: Header=BB0_211 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_214
.LBB0_213:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 405 11                        # parallel-rne.mlir:405:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 427 13 is_stmt 1              # parallel-rne.mlir:427:13
	add.s r6, r10, r6
	.loc	1 405 11                        # parallel-rne.mlir:405:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 427 13                        # parallel-rne.mlir:427:13
	stores.w r7, 0(r6)
	.loc	1 405 11                        # parallel-rne.mlir:405:11
	beq r1, zero, .LBB0_210
.LBB0_214:                              # %scalar.ph607
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	add.ul r[6:7], r[2:3], r[18:19]
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	loadli.w r1,  -1840(r30)                # 4-byte Folded Reload
	lui r11, 523264
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	slli r6, r6, 2
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	add.s r1, r1, r6
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	add.s r7, r12, r6
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	loads.w r1, 0(r1)
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	loads.w r14, 0(r7)
	lui r7, 523264
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	and r8, r1, r27
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	beq r8, r23, .LBB0_216
# %bb.215:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r14, 0
.LBB0_216:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	add.s r1, r26, r6
	loads.w r1, 0(r1)
	and r9, r1, r27
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	beq r9, zero, .LBB0_224
# %bb.217:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r14, 0
	lui r14, 523264
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	bneq r8, zero, .LBB0_225
.LBB0_218:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	beq r9, r23, .LBB0_220
.LBB0_219:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
.LBB0_220:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	setlt.u r1, r23, r8
	lui r8, 523264
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	bneq r1, zero, .LBB0_222
# %bb.221:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r14, 0
.LBB0_222:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	setlt.u r1, r23, r9
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	bneq r1, zero, .LBB0_213
# %bb.223:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_213
.LBB0_224:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	lui r14, 523264
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	beq r8, zero, .LBB0_218
.LBB0_225:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	bneq r9, r23, .LBB0_219
	j .LBB0_220
.LBB0_226:                              # %vector.body609.preheader
                                        #   in Loop: Header=BB0_211 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_228
.LBB0_227:                              # %vector.body609
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 405 11 is_stmt 1              # parallel-rne.mlir:405:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 427 13                        # parallel-rne.mlir:427:13
	add.s r6, r10, r6
	.loc	1 405 11                        # parallel-rne.mlir:405:11
	seteq.d r1, r[2:3], r[24:25]
	.loc	1 427 13                        # parallel-rne.mlir:427:13
	stores.w r8, 12(r6)
	stores.w r15, 8(r6)
	stores.w r20, 4(r6)
	stores.w r7, 0(r6)
	.loc	1 405 11                        # parallel-rne.mlir:405:11
	bneq r1, zero, .LBB0_210
.LBB0_228:                              # %vector.body609
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	add.ul r[6:7], r[2:3], r[18:19]
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	loadli.w r1,  -1840(r30)                # 4-byte Folded Reload
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	slli r6, r6, 2
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	add.s r11, r1, r6
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	add.s r9, r26, r6
	loads.w r1, 0(r9)
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	loads.w r7, 0(r11)
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	and r1, r1, r27
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	and r7, r7, r27
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	seteq r8, r1, r23
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	seteq r15, r1, zero
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	seteq r13, r7, zero
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	seteq r14, r7, r23
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	max.u r1, r1, r7
	setlt.u r1, r23, r1
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	and r7, r8, r13
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	and r8, r15, r14
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	add.s r14, r12, r6
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	or r7, r7, r8
	lui r8, 523264
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	or r1, r1, r7
	lui r7, 523264
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	bneq r1, zero, .LBB0_230
# %bb.229:                              # %vector.body609
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r14)
.LBB0_230:                              # %vector.body609
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r1, 4(r9)
	loads.w r13, 4(r11)
	and r1, r1, r27
	and r13, r13, r27
	seteq r15, r1, r23
	seteq r16, r1, zero
	seteq r20, r13, zero
	seteq r21, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r15, r20
	and r15, r16, r21
	lui r20, 523264
	or r13, r13, r15
	or r1, r1, r13
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	bneq r1, zero, .LBB0_232
# %bb.231:                              # %vector.body609
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r14)
.LBB0_232:                              # %vector.body609
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r1, 8(r9)
	loads.w r13, 8(r11)
	and r1, r1, r27
	and r13, r13, r27
	seteq r15, r1, r23
	seteq r21, r1, zero
	seteq r16, r13, zero
	seteq r17, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r15, r16
	and r15, r21, r17
	or r13, r13, r15
	lui r15, 523264
	or r1, r1, r13
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	bneq r1, zero, .LBB0_234
# %bb.233:                              # %vector.body609
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 8(r14)
.LBB0_234:                              # %vector.body609
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r1, 12(r9)
	loads.w r9, 12(r11)
	lui r21, 524288
	and r1, r1, r27
	and r9, r9, r27
	seteq r11, r1, r23
	seteq r17, r1, zero
	seteq r13, r9, zero
	seteq r16, r9, r23
	max.u r1, r1, r9
	setlt.u r1, r23, r1
	and r9, r11, r13
	and r11, r17, r16
	or r9, r9, r11
	or r1, r1, r9
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	bneq r1, zero, .LBB0_227
# %bb.235:                              # %vector.body609
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 12(r14)
	j .LBB0_227
.LBB0_236:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 396 7                         # parallel-rne.mlir:396:7
	mfence { sm }
.LBB0_237:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	zext_int2long r[2:3], r2
	.loc	1 432 7 is_stmt 1               # parallel-rne.mlir:432:7
	store.d r[2:3], -1896(r30)              # 8-byte Folded Spill
	addli r2, zero, 7
	bneq r1, r2, .LBB0_266
# %bb.238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -1924(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 432 7                         # parallel-rne.mlir:432:7
	storeli.w r1, -1916(r30)                # 4-byte Folded Spill
	addli r1, zero, 56
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_240
.LBB0_239:                              # %middle.block600
                                        #   in Loop: Header=BB0_240 Depth=2
	.loc	1 440 9 is_stmt 1               # parallel-rne.mlir:440:9
	load.d r[1:2], -1896(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1912(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_265
.LBB0_240:                              # %.preheader123
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_257 Depth 3
                                        #       Child Loop BB0_243 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1912(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[2:3], r1
	.loc	1 441 11 is_stmt 1              # parallel-rne.mlir:441:11
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_255
# %bb.241:                              # %scalar.ph592.preheader
                                        #   in Loop: Header=BB0_240 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_243
.LBB0_242:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 441 11                        # parallel-rne.mlir:441:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 463 13 is_stmt 1              # parallel-rne.mlir:463:13
	add.s r6, r10, r6
	.loc	1 441 11                        # parallel-rne.mlir:441:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 463 13                        # parallel-rne.mlir:463:13
	stores.w r7, 0(r6)
	.loc	1 441 11                        # parallel-rne.mlir:441:11
	beq r1, zero, .LBB0_239
.LBB0_243:                              # %scalar.ph592
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_240 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	add.ul r[6:7], r[2:3], r[8:9]
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	loadli.w r1,  -1840(r30)                # 4-byte Folded Reload
	lui r15, 523264
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	slli r6, r6, 2
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	add.s r1, r1, r6
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	add.s r7, r12, r6
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	loads.w r1, 0(r1)
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	loads.w r16, 0(r7)
	lui r7, 523264
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	and r11, r1, r27
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	beq r11, r23, .LBB0_245
# %bb.244:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_245:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	add.s r1, r26, r6
	loads.w r1, 0(r1)
	and r14, r1, r27
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	beq r14, zero, .LBB0_253
# %bb.246:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r11, zero, .LBB0_254
.LBB0_247:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	beq r14, r23, .LBB0_249
.LBB0_248:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_249:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r1, zero, .LBB0_251
# %bb.250:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r16, 0
.LBB0_251:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	setlt.u r1, r23, r14
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r1, zero, .LBB0_242
# %bb.252:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r11, 0
	j .LBB0_242
.LBB0_253:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	lui r16, 523264
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	beq r11, zero, .LBB0_247
.LBB0_254:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r14, r23, .LBB0_248
	j .LBB0_249
.LBB0_255:                              # %vector.body594.preheader
                                        #   in Loop: Header=BB0_240 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_257
.LBB0_256:                              # %vector.body594
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 441 11 is_stmt 1              # parallel-rne.mlir:441:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 463 13                        # parallel-rne.mlir:463:13
	add.s r6, r10, r6
	.loc	1 441 11                        # parallel-rne.mlir:441:11
	seteq.d r1, r[2:3], r[24:25]
	.loc	1 463 13                        # parallel-rne.mlir:463:13
	stores.w r11, 12(r6)
	stores.w r19, 8(r6)
	stores.w r20, 4(r6)
	stores.w r7, 0(r6)
	.loc	1 441 11                        # parallel-rne.mlir:441:11
	bneq r1, zero, .LBB0_239
.LBB0_257:                              # %vector.body594
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_240 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	add.ul r[6:7], r[2:3], r[8:9]
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	loadli.w r1,  -1840(r30)                # 4-byte Folded Reload
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	slli r6, r6, 2
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	add.s r15, r1, r6
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	add.s r14, r26, r6
	loads.w r1, 0(r14)
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	loads.w r7, 0(r15)
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	and r1, r1, r27
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	and r7, r7, r27
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	seteq r11, r1, r23
	.loc	1 454 19                        # parallel-rne.mlir:454:19
	seteq r19, r1, zero
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	seteq r13, r7, zero
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	seteq r16, r7, r23
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	max.u r1, r1, r7
	setlt.u r1, r23, r1
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	and r7, r11, r13
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	and r11, r19, r16
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	add.s r16, r12, r6
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	or r7, r7, r11
	lui r11, 523264
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	or r1, r1, r7
	lui r7, 523264
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r1, zero, .LBB0_259
# %bb.258:                              # %vector.body594
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r16)
.LBB0_259:                              # %vector.body594
                                        #   in Loop: Header=BB0_257 Depth=3
	loads.w r1, 4(r14)
	loads.w r13, 4(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r19, r1, r23
	seteq r17, r1, zero
	seteq r21, r13, r23
	seteq r20, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r19, r20
	and r17, r17, r21
	lui r20, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r1, zero, .LBB0_261
# %bb.260:                              # %vector.body594
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r16)
.LBB0_261:                              # %vector.body594
                                        #   in Loop: Header=BB0_257 Depth=3
	loads.w r1, 8(r14)
	loads.w r13, 8(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r17, r1, r23
	seteq r21, r1, zero
	seteq r18, r13, zero
	seteq r19, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r17, r18
	and r17, r21, r19
	lui r19, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r1, zero, .LBB0_263
# %bb.262:                              # %vector.body594
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r16)
.LBB0_263:                              # %vector.body594
                                        #   in Loop: Header=BB0_257 Depth=3
	loads.w r1, 12(r14)
	loads.w r13, 12(r15)
	lui r21, 524288
	and r1, r1, r27
	and r13, r13, r27
	seteq r14, r1, r23
	seteq r18, r1, zero
	seteq r15, r13, zero
	seteq r17, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r14, r15
	and r14, r18, r17
	or r13, r13, r14
	or r1, r1, r13
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r1, zero, .LBB0_256
# %bb.264:                              # %vector.body594
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r16)
	j .LBB0_256
.LBB0_265:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 432 7 is_stmt 1               # parallel-rne.mlir:432:7
	mfence { sm }
.LBB0_266:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	addli r1, zero, 255
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r3
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	csr_set csr5, r1
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	addli r1, zero, 3
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	sync_core
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	bneq r3, r1, .LBB0_268
# %bb.267:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	addli r6, zero, 4
	xsignal r1, 0
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	addli r1, zero, 22
	xsignal r1, 0
	.loc	1 471 7                         # parallel-rne.mlir:471:7
	addli r1, zero, 28
	xsignal r1, 0
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	addli r1, zero, 30
	xsignal r1, 0
	.loc	1 474 13                        # parallel-rne.mlir:474:13
	loadli.w r1,  -60(r30)
	mod.s r2, r1, r6
	addli r1, r1, 1
	storeli.w r1, -60(r30)
	loadli.w r1,  -2004(r30)                # 4-byte Folded Reload
	slli r2, r2, 15
	add.s r12, r2, r1
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	addli r1, zero, 31
	xwait r1, 0
	.loc	1 479 7                         # parallel-rne.mlir:479:7
	addli r1, zero, 35
	xwait r1, 0
	j .LBB0_270
.LBB0_268:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 474 13                        # parallel-rne.mlir:474:13
	loadli.w r1,  -60(r30)
	addli r6, zero, 4
	loadli.w r7,  -2004(r30)                # 4-byte Folded Reload
	mod.s r2, r1, r6
	addli r1, r1, 1
	storeli.w r1, -60(r30)
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	addli r1, zero, 5
	.loc	1 474 13                        # parallel-rne.mlir:474:13
	slli r2, r2, 15
	add.s r12, r2, r7
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	bneq r3, r1, .LBB0_270
# %bb.269:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	addli r2, zero, 2
	lui r3, 260096
	xwait r1, 0
	addli r1, zero, 22
	xwait r1, 0
	addli r1, zero, 32
	xwait r1, 0
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -2020(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r3, r1, zero, 0
	addli r3, zero, 2047
	ew_cfg zero, r3, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, r6, 19
	loadli.w r1,  -1840(r30)                # 4-byte Folded Reload
	dsmadd r12, r1, r10, 0
	addli r1, zero, 13
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r1, 0
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -2024(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r3, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, zero, 19
	hp_ssmul r12, r12, r12, 0
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r1, 0
.LBB0_270:                              # %.critedge12
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1940(r30)                # 4-byte Folded Reload
	.loc	1 481 7 is_stmt 1               # parallel-rne.mlir:481:7
	xfence
	loadli.w r2,  -2000(r30)                # 4-byte Folded Reload
	.loc	1 482 7                         # parallel-rne.mlir:482:7
	mfence { lm, sm, gm }
	mod.s r1, r1, r6
	slli r1, r1, 15
	add.s r26, r1, r2
	.loc	1 483 7                         # parallel-rne.mlir:483:7
	addli r1, zero, 255
	csr_set csr5, r1
	sub.s r1, r26, r12
	storeli.w r1, -1912(r30)                # 4-byte Folded Spill
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 483 7                         # parallel-rne.mlir:483:7
	sync_core
	.loc	1 484 7                         # parallel-rne.mlir:484:7
	beq r1, zero, .LBB0_293
# %bb.271:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 501 7                         # parallel-rne.mlir:501:7
	addli r2, zero, 1
	bneq r1, r2, .LBB0_299
.LBB0_272:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -1912(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 501 7                         # parallel-rne.mlir:501:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 8
	zext_int2long r[6:7], r1
	j .LBB0_274
.LBB0_273:                              # %middle.block575
                                        #   in Loop: Header=BB0_274 Depth=2
	.loc	1 509 9 is_stmt 1               # parallel-rne.mlir:509:9
	load.d r[8:9], -1848(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_277
.LBB0_274:                              # %.preheader121
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_276 Depth 3
                                        #       Child Loop BB0_275 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[14:15], zero
	sll.d r[8:9], r[6:7], r1
	.loc	1 510 11 is_stmt 1              # parallel-rne.mlir:510:11
	beq r2, zero, .LBB0_276
.LBB0_275:                              # %scalar.ph568
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_274 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 510 11                        # parallel-rne.mlir:510:11
	setlt.ul r11, r[14:15], r[4:5]
	addli.d r[14:15], r[14:15], 1
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	slli r1, r16, 2
	add.s r3, r12, r1
	.loc	1 513 13                        # parallel-rne.mlir:513:13
	add.s r1, r26, r1
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	loads.w r3, 0(r3)
	.loc	1 513 13                        # parallel-rne.mlir:513:13
	stores.w r3, 0(r1)
	.loc	1 510 11                        # parallel-rne.mlir:510:11
	bneq r11, zero, .LBB0_275
	j .LBB0_273
.LBB0_276:                              # %vector.body570
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_274 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 510 11                        # parallel-rne.mlir:510:11
	addli.d r[14:15], r[14:15], 8
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	slli r1, r16, 2
	.loc	1 510 11                        # parallel-rne.mlir:510:11
	seteq.d r3, r[14:15], r[24:25]
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	add.s r11, r12, r1
	.loc	1 513 13                        # parallel-rne.mlir:513:13
	add.s r1, r26, r1
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	loads.w r13, 12(r11)
	loads.w r16, 8(r11)
	loads.w r17, 4(r11)
	loads.w r18, 0(r11)
	loads.w r19, 28(r11)
	loads.w r20, 24(r11)
	loads.w r21, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 513 13                        # parallel-rne.mlir:513:13
	stores.w r13, 12(r1)
	stores.w r16, 8(r1)
	stores.w r17, 4(r1)
	stores.w r18, 0(r1)
	stores.w r19, 28(r1)
	stores.w r20, 24(r1)
	stores.w r21, 20(r1)
	stores.w r11, 16(r1)
	.loc	1 510 11                        # parallel-rne.mlir:510:11
	beq r3, zero, .LBB0_276
	j .LBB0_273
.LBB0_277:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	lui r21, 524288
	.loc	1 501 7                         # parallel-rne.mlir:501:7
	mfence { sm }
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	addli r2, zero, 2
	beq r1, r2, .LBB0_300
.LBB0_278:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 535 7                         # parallel-rne.mlir:535:7
	addli r2, zero, 3
	bneq r1, r2, .LBB0_306
.LBB0_279:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -1912(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 535 7                         # parallel-rne.mlir:535:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 24
	zext_int2long r[6:7], r1
	j .LBB0_281
.LBB0_280:                              # %middle.block555
                                        #   in Loop: Header=BB0_281 Depth=2
	.loc	1 543 9 is_stmt 1               # parallel-rne.mlir:543:9
	load.d r[8:9], -1864(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_284
.LBB0_281:                              # %.preheader119
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_282 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[14:15], zero
	sll.d r[8:9], r[6:7], r1
	.loc	1 544 11 is_stmt 1              # parallel-rne.mlir:544:11
	beq r2, zero, .LBB0_283
.LBB0_282:                              # %scalar.ph548
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 544 11                        # parallel-rne.mlir:544:11
	setlt.ul r11, r[14:15], r[4:5]
	addli.d r[14:15], r[14:15], 1
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	slli r1, r16, 2
	add.s r3, r12, r1
	.loc	1 547 13                        # parallel-rne.mlir:547:13
	add.s r1, r26, r1
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	loads.w r3, 0(r3)
	.loc	1 547 13                        # parallel-rne.mlir:547:13
	stores.w r3, 0(r1)
	.loc	1 544 11                        # parallel-rne.mlir:544:11
	bneq r11, zero, .LBB0_282
	j .LBB0_280
.LBB0_283:                              # %vector.body550
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 544 11                        # parallel-rne.mlir:544:11
	addli.d r[14:15], r[14:15], 8
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	slli r1, r16, 2
	.loc	1 544 11                        # parallel-rne.mlir:544:11
	seteq.d r3, r[14:15], r[24:25]
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	add.s r11, r12, r1
	.loc	1 547 13                        # parallel-rne.mlir:547:13
	add.s r1, r26, r1
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	loads.w r13, 12(r11)
	loads.w r16, 8(r11)
	loads.w r17, 4(r11)
	loads.w r18, 0(r11)
	loads.w r19, 28(r11)
	loads.w r20, 24(r11)
	loads.w r21, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 547 13                        # parallel-rne.mlir:547:13
	stores.w r13, 12(r1)
	stores.w r16, 8(r1)
	stores.w r17, 4(r1)
	stores.w r18, 0(r1)
	stores.w r19, 28(r1)
	stores.w r20, 24(r1)
	stores.w r21, 20(r1)
	stores.w r11, 16(r1)
	.loc	1 544 11                        # parallel-rne.mlir:544:11
	beq r3, zero, .LBB0_283
	j .LBB0_280
.LBB0_284:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	lui r21, 524288
	.loc	1 535 7                         # parallel-rne.mlir:535:7
	mfence { sm }
	.loc	1 552 7                         # parallel-rne.mlir:552:7
	addli r2, zero, 4
	beq r1, r2, .LBB0_307
.LBB0_285:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 569 7                         # parallel-rne.mlir:569:7
	addli r2, zero, 5
	bneq r1, r2, .LBB0_313
.LBB0_286:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -1912(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 569 7                         # parallel-rne.mlir:569:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 40
	zext_int2long r[6:7], r1
	j .LBB0_288
.LBB0_287:                              # %middle.block535
                                        #   in Loop: Header=BB0_288 Depth=2
	.loc	1 577 9 is_stmt 1               # parallel-rne.mlir:577:9
	load.d r[8:9], -1880(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_291
.LBB0_288:                              # %.preheader117
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_290 Depth 3
                                        #       Child Loop BB0_289 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[14:15], zero
	sll.d r[8:9], r[6:7], r1
	.loc	1 578 11 is_stmt 1              # parallel-rne.mlir:578:11
	beq r2, zero, .LBB0_290
.LBB0_289:                              # %scalar.ph528
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	setlt.ul r11, r[14:15], r[4:5]
	addli.d r[14:15], r[14:15], 1
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	slli r1, r16, 2
	add.s r3, r12, r1
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	add.s r1, r26, r1
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	loads.w r3, 0(r3)
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	stores.w r3, 0(r1)
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	bneq r11, zero, .LBB0_289
	j .LBB0_287
.LBB0_290:                              # %vector.body530
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	addli.d r[14:15], r[14:15], 8
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	slli r1, r16, 2
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	seteq.d r3, r[14:15], r[24:25]
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	add.s r11, r12, r1
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	add.s r1, r26, r1
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	loads.w r13, 12(r11)
	loads.w r16, 8(r11)
	loads.w r17, 4(r11)
	loads.w r18, 0(r11)
	loads.w r19, 28(r11)
	loads.w r20, 24(r11)
	loads.w r21, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 581 13                        # parallel-rne.mlir:581:13
	stores.w r13, 12(r1)
	stores.w r16, 8(r1)
	stores.w r17, 4(r1)
	stores.w r18, 0(r1)
	stores.w r19, 28(r1)
	stores.w r20, 24(r1)
	stores.w r21, 20(r1)
	stores.w r11, 16(r1)
	.loc	1 578 11                        # parallel-rne.mlir:578:11
	beq r3, zero, .LBB0_290
	j .LBB0_287
.LBB0_291:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	lui r21, 524288
	.loc	1 569 7                         # parallel-rne.mlir:569:7
	mfence { sm }
	.loc	1 586 7                         # parallel-rne.mlir:586:7
	addli r2, zero, 6
	beq r1, r2, .LBB0_314
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	addli r2, zero, 7
	beq r1, r2, .LBB0_320
	j .LBB0_326
.LBB0_293:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -1912(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 484 7 is_stmt 1               # parallel-rne.mlir:484:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	j .LBB0_295
.LBB0_294:                              # %middle.block585
                                        #   in Loop: Header=BB0_295 Depth=2
	.loc	1 492 9                         # parallel-rne.mlir:492:9
	load.d r[8:9], -1904(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_298
.LBB0_295:                              # %.preheader122
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_297 Depth 3
                                        #       Child Loop BB0_296 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[14:15], zero
	sll.d r[8:9], r[6:7], r1
	.loc	1 493 11 is_stmt 1              # parallel-rne.mlir:493:11
	beq r2, zero, .LBB0_297
.LBB0_296:                              # %scalar.ph578
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 494 19                        # parallel-rne.mlir:494:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 493 11                        # parallel-rne.mlir:493:11
	setlt.ul r11, r[14:15], r[4:5]
	addli.d r[14:15], r[14:15], 1
	.loc	1 494 19                        # parallel-rne.mlir:494:19
	slli r1, r16, 2
	add.s r3, r12, r1
	.loc	1 496 13                        # parallel-rne.mlir:496:13
	add.s r1, r26, r1
	.loc	1 494 19                        # parallel-rne.mlir:494:19
	loads.w r3, 0(r3)
	.loc	1 496 13                        # parallel-rne.mlir:496:13
	stores.w r3, 0(r1)
	.loc	1 493 11                        # parallel-rne.mlir:493:11
	bneq r11, zero, .LBB0_296
	j .LBB0_294
.LBB0_297:                              # %vector.body580
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 494 19                        # parallel-rne.mlir:494:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 493 11                        # parallel-rne.mlir:493:11
	addli.d r[14:15], r[14:15], 8
	.loc	1 494 19                        # parallel-rne.mlir:494:19
	slli r1, r16, 2
	.loc	1 493 11                        # parallel-rne.mlir:493:11
	seteq.d r3, r[14:15], r[24:25]
	.loc	1 494 19                        # parallel-rne.mlir:494:19
	add.s r11, r12, r1
	.loc	1 496 13                        # parallel-rne.mlir:496:13
	add.s r1, r26, r1
	.loc	1 494 19                        # parallel-rne.mlir:494:19
	loads.w r13, 12(r11)
	loads.w r16, 8(r11)
	loads.w r17, 4(r11)
	loads.w r18, 0(r11)
	loads.w r19, 28(r11)
	loads.w r20, 24(r11)
	loads.w r21, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 496 13                        # parallel-rne.mlir:496:13
	stores.w r13, 12(r1)
	stores.w r16, 8(r1)
	stores.w r17, 4(r1)
	stores.w r18, 0(r1)
	stores.w r19, 28(r1)
	stores.w r20, 24(r1)
	stores.w r21, 20(r1)
	stores.w r11, 16(r1)
	.loc	1 493 11                        # parallel-rne.mlir:493:11
	beq r3, zero, .LBB0_297
	j .LBB0_294
.LBB0_298:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	lui r21, 524288
	.loc	1 484 7                         # parallel-rne.mlir:484:7
	mfence { sm }
	.loc	1 501 7                         # parallel-rne.mlir:501:7
	addli r2, zero, 1
	beq r1, r2, .LBB0_272
.LBB0_299:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	addli r2, zero, 2
	bneq r1, r2, .LBB0_278
.LBB0_300:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -1912(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 16
	zext_int2long r[6:7], r1
	j .LBB0_302
.LBB0_301:                              # %middle.block565
                                        #   in Loop: Header=BB0_302 Depth=2
	.loc	1 526 9 is_stmt 1               # parallel-rne.mlir:526:9
	load.d r[8:9], -1856(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_305
.LBB0_302:                              # %.preheader120
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_304 Depth 3
                                        #       Child Loop BB0_303 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[14:15], zero
	sll.d r[8:9], r[6:7], r1
	.loc	1 527 11 is_stmt 1              # parallel-rne.mlir:527:11
	beq r2, zero, .LBB0_304
.LBB0_303:                              # %scalar.ph558
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_302 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 527 11                        # parallel-rne.mlir:527:11
	setlt.ul r11, r[14:15], r[4:5]
	addli.d r[14:15], r[14:15], 1
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	slli r1, r16, 2
	add.s r3, r12, r1
	.loc	1 530 13                        # parallel-rne.mlir:530:13
	add.s r1, r26, r1
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	loads.w r3, 0(r3)
	.loc	1 530 13                        # parallel-rne.mlir:530:13
	stores.w r3, 0(r1)
	.loc	1 527 11                        # parallel-rne.mlir:527:11
	bneq r11, zero, .LBB0_303
	j .LBB0_301
.LBB0_304:                              # %vector.body560
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_302 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 527 11                        # parallel-rne.mlir:527:11
	addli.d r[14:15], r[14:15], 8
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	slli r1, r16, 2
	.loc	1 527 11                        # parallel-rne.mlir:527:11
	seteq.d r3, r[14:15], r[24:25]
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	add.s r11, r12, r1
	.loc	1 530 13                        # parallel-rne.mlir:530:13
	add.s r1, r26, r1
	.loc	1 528 19                        # parallel-rne.mlir:528:19
	loads.w r13, 12(r11)
	loads.w r16, 8(r11)
	loads.w r17, 4(r11)
	loads.w r18, 0(r11)
	loads.w r19, 28(r11)
	loads.w r20, 24(r11)
	loads.w r21, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 530 13                        # parallel-rne.mlir:530:13
	stores.w r13, 12(r1)
	stores.w r16, 8(r1)
	stores.w r17, 4(r1)
	stores.w r18, 0(r1)
	stores.w r19, 28(r1)
	stores.w r20, 24(r1)
	stores.w r21, 20(r1)
	stores.w r11, 16(r1)
	.loc	1 527 11                        # parallel-rne.mlir:527:11
	beq r3, zero, .LBB0_304
	j .LBB0_301
.LBB0_305:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	lui r21, 524288
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	mfence { sm }
	.loc	1 535 7                         # parallel-rne.mlir:535:7
	addli r2, zero, 3
	beq r1, r2, .LBB0_279
.LBB0_306:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 552 7                         # parallel-rne.mlir:552:7
	addli r2, zero, 4
	bneq r1, r2, .LBB0_285
.LBB0_307:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -1912(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 552 7                         # parallel-rne.mlir:552:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	setlt.u r2, r2, r1
	j .LBB0_309
.LBB0_308:                              # %middle.block545
                                        #   in Loop: Header=BB0_309 Depth=2
	.loc	1 560 9 is_stmt 1               # parallel-rne.mlir:560:9
	load.d r[8:9], -1872(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_312
.LBB0_309:                              # %.preheader118
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_311 Depth 3
                                        #       Child Loop BB0_310 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[14:15], zero
	sll.d r[8:9], r[6:7], r1
	.loc	1 561 11 is_stmt 1              # parallel-rne.mlir:561:11
	beq r2, zero, .LBB0_311
.LBB0_310:                              # %scalar.ph538
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_309 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 561 11                        # parallel-rne.mlir:561:11
	setlt.ul r11, r[14:15], r[4:5]
	addli.d r[14:15], r[14:15], 1
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	slli r1, r16, 2
	add.s r3, r12, r1
	.loc	1 564 13                        # parallel-rne.mlir:564:13
	add.s r1, r26, r1
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	loads.w r3, 0(r3)
	.loc	1 564 13                        # parallel-rne.mlir:564:13
	stores.w r3, 0(r1)
	.loc	1 561 11                        # parallel-rne.mlir:561:11
	bneq r11, zero, .LBB0_310
	j .LBB0_308
.LBB0_311:                              # %vector.body540
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_309 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 561 11                        # parallel-rne.mlir:561:11
	addli.d r[14:15], r[14:15], 8
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	slli r1, r16, 2
	.loc	1 561 11                        # parallel-rne.mlir:561:11
	seteq.d r3, r[14:15], r[24:25]
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	add.s r11, r12, r1
	.loc	1 564 13                        # parallel-rne.mlir:564:13
	add.s r1, r26, r1
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	loads.w r13, 12(r11)
	loads.w r16, 8(r11)
	loads.w r17, 4(r11)
	loads.w r18, 0(r11)
	loads.w r19, 28(r11)
	loads.w r20, 24(r11)
	loads.w r21, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 564 13                        # parallel-rne.mlir:564:13
	stores.w r13, 12(r1)
	stores.w r16, 8(r1)
	stores.w r17, 4(r1)
	stores.w r18, 0(r1)
	stores.w r19, 28(r1)
	stores.w r20, 24(r1)
	stores.w r21, 20(r1)
	stores.w r11, 16(r1)
	.loc	1 561 11                        # parallel-rne.mlir:561:11
	beq r3, zero, .LBB0_311
	j .LBB0_308
.LBB0_312:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	lui r21, 524288
	.loc	1 552 7                         # parallel-rne.mlir:552:7
	mfence { sm }
	.loc	1 569 7                         # parallel-rne.mlir:569:7
	addli r2, zero, 5
	beq r1, r2, .LBB0_286
.LBB0_313:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 586 7                         # parallel-rne.mlir:586:7
	addli r2, zero, 6
	bneq r1, r2, .LBB0_292
.LBB0_314:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -1912(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 586 7                         # parallel-rne.mlir:586:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 48
	zext_int2long r[6:7], r1
	j .LBB0_316
.LBB0_315:                              # %middle.block525
                                        #   in Loop: Header=BB0_316 Depth=2
	.loc	1 594 9 is_stmt 1               # parallel-rne.mlir:594:9
	load.d r[8:9], -1888(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_319
.LBB0_316:                              # %.preheader116
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_318 Depth 3
                                        #       Child Loop BB0_317 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[14:15], zero
	sll.d r[8:9], r[6:7], r1
	.loc	1 595 11 is_stmt 1              # parallel-rne.mlir:595:11
	beq r2, zero, .LBB0_318
.LBB0_317:                              # %scalar.ph518
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_316 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 595 11                        # parallel-rne.mlir:595:11
	setlt.ul r11, r[14:15], r[4:5]
	addli.d r[14:15], r[14:15], 1
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	slli r1, r16, 2
	add.s r3, r12, r1
	.loc	1 598 13                        # parallel-rne.mlir:598:13
	add.s r1, r26, r1
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	loads.w r3, 0(r3)
	.loc	1 598 13                        # parallel-rne.mlir:598:13
	stores.w r3, 0(r1)
	.loc	1 595 11                        # parallel-rne.mlir:595:11
	bneq r11, zero, .LBB0_317
	j .LBB0_315
.LBB0_318:                              # %vector.body520
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_316 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 595 11                        # parallel-rne.mlir:595:11
	addli.d r[14:15], r[14:15], 8
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	slli r1, r16, 2
	.loc	1 595 11                        # parallel-rne.mlir:595:11
	seteq.d r3, r[14:15], r[24:25]
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	add.s r11, r12, r1
	.loc	1 598 13                        # parallel-rne.mlir:598:13
	add.s r1, r26, r1
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	loads.w r13, 12(r11)
	loads.w r16, 8(r11)
	loads.w r17, 4(r11)
	loads.w r18, 0(r11)
	loads.w r19, 28(r11)
	loads.w r20, 24(r11)
	loads.w r21, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 598 13                        # parallel-rne.mlir:598:13
	stores.w r13, 12(r1)
	stores.w r16, 8(r1)
	stores.w r17, 4(r1)
	stores.w r18, 0(r1)
	stores.w r19, 28(r1)
	stores.w r20, 24(r1)
	stores.w r21, 20(r1)
	stores.w r11, 16(r1)
	.loc	1 595 11                        # parallel-rne.mlir:595:11
	beq r3, zero, .LBB0_318
	j .LBB0_315
.LBB0_319:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	lui r21, 524288
	.loc	1 586 7                         # parallel-rne.mlir:586:7
	mfence { sm }
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	addli r2, zero, 7
	bneq r1, r2, .LBB0_326
.LBB0_320:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -1912(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 56
	zext_int2long r[6:7], r1
	j .LBB0_322
.LBB0_321:                              # %middle.block515
                                        #   in Loop: Header=BB0_322 Depth=2
	.loc	1 611 9 is_stmt 1               # parallel-rne.mlir:611:9
	load.d r[8:9], -1896(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_325
.LBB0_322:                              # %.preheader115
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_324 Depth 3
                                        #       Child Loop BB0_323 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[14:15], zero
	sll.d r[8:9], r[6:7], r1
	.loc	1 612 11 is_stmt 1              # parallel-rne.mlir:612:11
	beq r2, zero, .LBB0_324
.LBB0_323:                              # %scalar.ph508
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_322 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 612 11                        # parallel-rne.mlir:612:11
	setlt.ul r11, r[14:15], r[4:5]
	addli.d r[14:15], r[14:15], 1
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	slli r1, r16, 2
	add.s r3, r12, r1
	.loc	1 615 13                        # parallel-rne.mlir:615:13
	add.s r1, r26, r1
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	loads.w r3, 0(r3)
	.loc	1 615 13                        # parallel-rne.mlir:615:13
	stores.w r3, 0(r1)
	.loc	1 612 11                        # parallel-rne.mlir:612:11
	bneq r11, zero, .LBB0_323
	j .LBB0_321
.LBB0_324:                              # %vector.body510
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_322 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	add.ul r[16:17], r[14:15], r[8:9]
	.loc	1 612 11                        # parallel-rne.mlir:612:11
	addli.d r[14:15], r[14:15], 8
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	slli r1, r16, 2
	.loc	1 612 11                        # parallel-rne.mlir:612:11
	seteq.d r3, r[14:15], r[24:25]
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	add.s r11, r12, r1
	.loc	1 615 13                        # parallel-rne.mlir:615:13
	add.s r1, r26, r1
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	loads.w r13, 12(r11)
	loads.w r16, 8(r11)
	loads.w r17, 4(r11)
	loads.w r18, 0(r11)
	loads.w r19, 28(r11)
	loads.w r20, 24(r11)
	loads.w r21, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 615 13                        # parallel-rne.mlir:615:13
	stores.w r13, 12(r1)
	stores.w r16, 8(r1)
	stores.w r17, 4(r1)
	stores.w r18, 0(r1)
	stores.w r19, 28(r1)
	stores.w r20, 24(r1)
	stores.w r21, 20(r1)
	stores.w r11, 16(r1)
	.loc	1 612 11                        # parallel-rne.mlir:612:11
	beq r3, zero, .LBB0_324
	j .LBB0_321
.LBB0_325:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	lui r21, 524288
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	mfence { sm }
.LBB0_326:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r2, zero, 255
	addli r3, zero, 32
	csr_set csr5, r2
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	addli r2, zero, 3
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	sync_core
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	bneq r1, r2, .LBB0_328
# %bb.327:                              # %.critedge14
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 33
	.loc	1 624 7 is_stmt 1               # parallel-rne.mlir:624:7
	addli r2, zero, 13
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	xsignal r3, 0
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	xsignal r6, 0
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	xwait r2, 0
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	xwait r6, 0
.LBB0_328:                              # %.critedge16
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	xfence
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	addli r2, zero, 255
	addli r6, zero, 6
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	mfence { lm, sm, gm }
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	csr_set csr5, r2
	sync_core
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	beq r1, zero, .LBB0_396
# %bb.329:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 652 7                         # parallel-rne.mlir:652:7
	addli r2, zero, 1
	bneq r1, r2, .LBB0_417
.LBB0_330:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 652 7                         # parallel-rne.mlir:652:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_332
.LBB0_331:                              # %middle.block495
                                        #   in Loop: Header=BB0_332 Depth=2
	.loc	1 660 9 is_stmt 1               # parallel-rne.mlir:660:9
	load.d r[1:2], -1848(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_350
.LBB0_332:                              # %.preheader113
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_334 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[2:3], r[8:9], r1
	j .LBB0_334
.LBB0_333:                              # %vector.body490
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 661 11 is_stmt 1              # parallel-rne.mlir:661:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 669 13                        # parallel-rne.mlir:669:13
	add.s r1, r10, r14
	.loc	1 661 11                        # parallel-rne.mlir:661:11
	setneq.d r13, r[17:18], r[24:25]
	.loc	1 669 13                        # parallel-rne.mlir:669:13
	stores.w r20, 12(r1)
	stores.w r19, 8(r1)
	stores.w r11, 4(r1)
	stores.w r6, 0(r1)
	stores.w r16, 28(r1)
	stores.w r15, 24(r1)
	stores.w r12, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 661 11                        # parallel-rne.mlir:661:11
	beq r13, zero, .LBB0_331
.LBB0_334:                              # %vector.body490
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_332 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 662 19                        # parallel-rne.mlir:662:19
	add.ul r[6:7], r[17:18], r[2:3]
	slli r14, r6, 2
	add.s r1, r26, r14
	loads.w r6, 0(r1)
	loads.w r20, 12(r1)
	loads.w r19, 8(r1)
	loads.w r11, 4(r1)
	loads.w r16, 28(r1)
	loads.w r15, 24(r1)
	loads.w r12, 20(r1)
	loads.w r7, 16(r1)
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	and r1, r6, r27
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	setlt.u r1, r28, r1
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	beq r1, zero, .LBB0_336
# %bb.335:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r21
	or r6, r1, r28
.LBB0_336:                              # %vector.body490
                                        #   in Loop: Header=BB0_334 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	beq r1, zero, .LBB0_338
# %bb.337:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r21
	or r11, r1, r28
.LBB0_338:                              # %vector.body490
                                        #   in Loop: Header=BB0_334 Depth=3
	and r1, r19, r27
	setlt.u r1, r28, r1
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	beq r1, zero, .LBB0_340
# %bb.339:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r21
	or r19, r1, r28
.LBB0_340:                              # %vector.body490
                                        #   in Loop: Header=BB0_334 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	beq r1, zero, .LBB0_342
# %bb.341:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r21
	or r20, r1, r28
.LBB0_342:                              # %vector.body490
                                        #   in Loop: Header=BB0_334 Depth=3
	and r1, r7, r27
	setlt.u r1, r28, r1
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	beq r1, zero, .LBB0_344
# %bb.343:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r7, r21
	or r7, r1, r28
.LBB0_344:                              # %vector.body490
                                        #   in Loop: Header=BB0_334 Depth=3
	and r1, r12, r27
	setlt.u r1, r28, r1
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	beq r1, zero, .LBB0_346
# %bb.345:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r21
	or r12, r1, r28
.LBB0_346:                              # %vector.body490
                                        #   in Loop: Header=BB0_334 Depth=3
	and r1, r15, r27
	setlt.u r1, r28, r1
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	beq r1, zero, .LBB0_348
# %bb.347:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r21
	or r15, r1, r28
.LBB0_348:                              # %vector.body490
                                        #   in Loop: Header=BB0_334 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	beq r1, zero, .LBB0_333
# %bb.349:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r21
	or r16, r1, r28
	j .LBB0_333
.LBB0_350:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	addli r3, zero, 32
	addli r6, zero, 6
	.loc	1 652 7                         # parallel-rne.mlir:652:7
	mfence { sm }
	.loc	1 674 7                         # parallel-rne.mlir:674:7
	addli r2, zero, 2
	beq r1, r2, .LBB0_418
.LBB0_351:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 696 7                         # parallel-rne.mlir:696:7
	addli r2, zero, 3
	bneq r1, r2, .LBB0_439
.LBB0_352:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 696 7                         # parallel-rne.mlir:696:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_354
.LBB0_353:                              # %middle.block475
                                        #   in Loop: Header=BB0_354 Depth=2
	.loc	1 704 9 is_stmt 1               # parallel-rne.mlir:704:9
	load.d r[1:2], -1864(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_372
.LBB0_354:                              # %.preheader111
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_356 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[2:3], r[8:9], r1
	j .LBB0_356
.LBB0_355:                              # %vector.body470
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 705 11 is_stmt 1              # parallel-rne.mlir:705:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 713 13                        # parallel-rne.mlir:713:13
	add.s r1, r10, r14
	.loc	1 705 11                        # parallel-rne.mlir:705:11
	setneq.d r13, r[17:18], r[24:25]
	.loc	1 713 13                        # parallel-rne.mlir:713:13
	stores.w r20, 12(r1)
	stores.w r19, 8(r1)
	stores.w r11, 4(r1)
	stores.w r6, 0(r1)
	stores.w r16, 28(r1)
	stores.w r15, 24(r1)
	stores.w r12, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 705 11                        # parallel-rne.mlir:705:11
	beq r13, zero, .LBB0_353
.LBB0_356:                              # %vector.body470
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_354 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	add.ul r[6:7], r[17:18], r[2:3]
	slli r14, r6, 2
	add.s r1, r26, r14
	loads.w r6, 0(r1)
	loads.w r20, 12(r1)
	loads.w r19, 8(r1)
	loads.w r11, 4(r1)
	loads.w r16, 28(r1)
	loads.w r15, 24(r1)
	loads.w r12, 20(r1)
	loads.w r7, 16(r1)
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	and r1, r6, r27
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	setlt.u r1, r28, r1
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	beq r1, zero, .LBB0_358
# %bb.357:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r21
	or r6, r1, r28
.LBB0_358:                              # %vector.body470
                                        #   in Loop: Header=BB0_356 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	beq r1, zero, .LBB0_360
# %bb.359:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r21
	or r11, r1, r28
.LBB0_360:                              # %vector.body470
                                        #   in Loop: Header=BB0_356 Depth=3
	and r1, r19, r27
	setlt.u r1, r28, r1
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	beq r1, zero, .LBB0_362
# %bb.361:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r21
	or r19, r1, r28
.LBB0_362:                              # %vector.body470
                                        #   in Loop: Header=BB0_356 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	beq r1, zero, .LBB0_364
# %bb.363:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r21
	or r20, r1, r28
.LBB0_364:                              # %vector.body470
                                        #   in Loop: Header=BB0_356 Depth=3
	and r1, r7, r27
	setlt.u r1, r28, r1
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	beq r1, zero, .LBB0_366
# %bb.365:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r7, r21
	or r7, r1, r28
.LBB0_366:                              # %vector.body470
                                        #   in Loop: Header=BB0_356 Depth=3
	and r1, r12, r27
	setlt.u r1, r28, r1
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	beq r1, zero, .LBB0_368
# %bb.367:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r21
	or r12, r1, r28
.LBB0_368:                              # %vector.body470
                                        #   in Loop: Header=BB0_356 Depth=3
	and r1, r15, r27
	setlt.u r1, r28, r1
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	beq r1, zero, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r21
	or r15, r1, r28
.LBB0_370:                              # %vector.body470
                                        #   in Loop: Header=BB0_356 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	beq r1, zero, .LBB0_355
# %bb.371:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r21
	or r16, r1, r28
	j .LBB0_355
.LBB0_372:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	addli r3, zero, 32
	addli r6, zero, 6
	.loc	1 696 7                         # parallel-rne.mlir:696:7
	mfence { sm }
	.loc	1 718 7                         # parallel-rne.mlir:718:7
	addli r2, zero, 4
	beq r1, r2, .LBB0_440
.LBB0_373:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 740 7                         # parallel-rne.mlir:740:7
	addli r2, zero, 5
	bneq r1, r2, .LBB0_461
.LBB0_374:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 740 7                         # parallel-rne.mlir:740:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_376
.LBB0_375:                              # %middle.block455
                                        #   in Loop: Header=BB0_376 Depth=2
	.loc	1 748 9 is_stmt 1               # parallel-rne.mlir:748:9
	load.d r[1:2], -1880(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_394
.LBB0_376:                              # %.preheader109
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_378 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[2:3], r[8:9], r1
	j .LBB0_378
.LBB0_377:                              # %vector.body450
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 749 11 is_stmt 1              # parallel-rne.mlir:749:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 757 13                        # parallel-rne.mlir:757:13
	add.s r1, r10, r14
	.loc	1 749 11                        # parallel-rne.mlir:749:11
	setneq.d r13, r[17:18], r[24:25]
	.loc	1 757 13                        # parallel-rne.mlir:757:13
	stores.w r20, 12(r1)
	stores.w r19, 8(r1)
	stores.w r11, 4(r1)
	stores.w r6, 0(r1)
	stores.w r16, 28(r1)
	stores.w r15, 24(r1)
	stores.w r12, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 749 11                        # parallel-rne.mlir:749:11
	beq r13, zero, .LBB0_375
.LBB0_378:                              # %vector.body450
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_376 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	add.ul r[6:7], r[17:18], r[2:3]
	slli r14, r6, 2
	add.s r1, r26, r14
	loads.w r6, 0(r1)
	loads.w r20, 12(r1)
	loads.w r19, 8(r1)
	loads.w r11, 4(r1)
	loads.w r16, 28(r1)
	loads.w r15, 24(r1)
	loads.w r12, 20(r1)
	loads.w r7, 16(r1)
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	and r1, r6, r27
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	setlt.u r1, r28, r1
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	beq r1, zero, .LBB0_380
# %bb.379:                              #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r21
	or r6, r1, r28
.LBB0_380:                              # %vector.body450
                                        #   in Loop: Header=BB0_378 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	beq r1, zero, .LBB0_382
# %bb.381:                              #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r21
	or r11, r1, r28
.LBB0_382:                              # %vector.body450
                                        #   in Loop: Header=BB0_378 Depth=3
	and r1, r19, r27
	setlt.u r1, r28, r1
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	beq r1, zero, .LBB0_384
# %bb.383:                              #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r21
	or r19, r1, r28
.LBB0_384:                              # %vector.body450
                                        #   in Loop: Header=BB0_378 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	beq r1, zero, .LBB0_386
# %bb.385:                              #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r21
	or r20, r1, r28
.LBB0_386:                              # %vector.body450
                                        #   in Loop: Header=BB0_378 Depth=3
	and r1, r7, r27
	setlt.u r1, r28, r1
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	beq r1, zero, .LBB0_388
# %bb.387:                              #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r7, r21
	or r7, r1, r28
.LBB0_388:                              # %vector.body450
                                        #   in Loop: Header=BB0_378 Depth=3
	and r1, r12, r27
	setlt.u r1, r28, r1
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	beq r1, zero, .LBB0_390
# %bb.389:                              #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r21
	or r12, r1, r28
.LBB0_390:                              # %vector.body450
                                        #   in Loop: Header=BB0_378 Depth=3
	and r1, r15, r27
	setlt.u r1, r28, r1
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	beq r1, zero, .LBB0_392
# %bb.391:                              #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r21
	or r15, r1, r28
.LBB0_392:                              # %vector.body450
                                        #   in Loop: Header=BB0_378 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	beq r1, zero, .LBB0_377
# %bb.393:                              #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r21
	or r16, r1, r28
	j .LBB0_377
.LBB0_394:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	addli r6, zero, 6
	.loc	1 740 7                         # parallel-rne.mlir:740:7
	mfence { sm }
	.loc	1 762 7                         # parallel-rne.mlir:762:7
	beq r1, r6, .LBB0_462
.LBB0_395:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 784 7                         # parallel-rne.mlir:784:7
	addli r2, zero, 7
	beq r1, r2, .LBB0_483
	j .LBB0_504
.LBB0_396:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	store.d r[2:3], -1912(r30)              # 8-byte Folded Spill
	j .LBB0_398
.LBB0_397:                              # %middle.block505
                                        #   in Loop: Header=BB0_398 Depth=2
	.loc	1 638 9                         # parallel-rne.mlir:638:9
	load.d r[1:2], -1904(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[13:14], r[1:2]
	addli.d r[2:3], r[13:14], 1
	beq r1, zero, .LBB0_416
.LBB0_398:                              # %.preheader114
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_400 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	load.d r[19:20], -1912(r30)             # 8-byte Folded Reload
	addli.d r[13:14], r[2:3], 0
	sll.d r[2:3], r[2:3], r1
	j .LBB0_400
.LBB0_399:                              # %vector.body500
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 647 13 is_stmt 1              # parallel-rne.mlir:647:13
	add.s r1, r10, r17
	.loc	1 639 11                        # parallel-rne.mlir:639:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 647 13                        # parallel-rne.mlir:647:13
	stores.w r9, 12(r1)
	.loc	1 639 11                        # parallel-rne.mlir:639:11
	setneq.d r9, r[19:20], r[24:25]
	.loc	1 647 13                        # parallel-rne.mlir:647:13
	stores.w r8, 8(r1)
	stores.w r11, 4(r1)
	stores.w r6, 0(r1)
	stores.w r16, 28(r1)
	stores.w r15, 24(r1)
	stores.w r12, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 639 11                        # parallel-rne.mlir:639:11
	beq r9, zero, .LBB0_397
.LBB0_400:                              # %vector.body500
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_398 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	add.ul r[6:7], r[19:20], r[2:3]
	slli r17, r6, 2
	add.s r1, r26, r17
	loads.w r6, 0(r1)
	loads.w r9, 12(r1)
	loads.w r8, 8(r1)
	loads.w r11, 4(r1)
	loads.w r16, 28(r1)
	loads.w r15, 24(r1)
	loads.w r12, 20(r1)
	loads.w r7, 16(r1)
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	and r1, r6, r27
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	setlt.u r1, r28, r1
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	beq r1, zero, .LBB0_402
# %bb.401:                              #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r21
	or r6, r1, r28
.LBB0_402:                              # %vector.body500
                                        #   in Loop: Header=BB0_400 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	beq r1, zero, .LBB0_404
# %bb.403:                              #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r21
	or r11, r1, r28
.LBB0_404:                              # %vector.body500
                                        #   in Loop: Header=BB0_400 Depth=3
	and r1, r8, r27
	setlt.u r1, r28, r1
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	beq r1, zero, .LBB0_406
# %bb.405:                              #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r8, r21
	or r8, r1, r28
.LBB0_406:                              # %vector.body500
                                        #   in Loop: Header=BB0_400 Depth=3
	and r1, r9, r27
	setlt.u r1, r28, r1
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	beq r1, zero, .LBB0_408
# %bb.407:                              #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r9, r21
	or r9, r1, r28
.LBB0_408:                              # %vector.body500
                                        #   in Loop: Header=BB0_400 Depth=3
	and r1, r7, r27
	setlt.u r1, r28, r1
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	beq r1, zero, .LBB0_410
# %bb.409:                              #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r7, r21
	or r7, r1, r28
.LBB0_410:                              # %vector.body500
                                        #   in Loop: Header=BB0_400 Depth=3
	and r1, r12, r27
	setlt.u r1, r28, r1
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	beq r1, zero, .LBB0_412
# %bb.411:                              #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r21
	or r12, r1, r28
.LBB0_412:                              # %vector.body500
                                        #   in Loop: Header=BB0_400 Depth=3
	and r1, r15, r27
	setlt.u r1, r28, r1
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	beq r1, zero, .LBB0_414
# %bb.413:                              #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r21
	or r15, r1, r28
.LBB0_414:                              # %vector.body500
                                        #   in Loop: Header=BB0_400 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	beq r1, zero, .LBB0_399
# %bb.415:                              #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r21
	or r16, r1, r28
	j .LBB0_399
.LBB0_416:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	addli r3, zero, 32
	addli r6, zero, 6
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	mfence { sm }
	.loc	1 652 7                         # parallel-rne.mlir:652:7
	addli r2, zero, 1
	beq r1, r2, .LBB0_330
.LBB0_417:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 674 7                         # parallel-rne.mlir:674:7
	addli r2, zero, 2
	bneq r1, r2, .LBB0_351
.LBB0_418:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 674 7                         # parallel-rne.mlir:674:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_420
.LBB0_419:                              # %middle.block485
                                        #   in Loop: Header=BB0_420 Depth=2
	.loc	1 682 9 is_stmt 1               # parallel-rne.mlir:682:9
	load.d r[1:2], -1856(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_438
.LBB0_420:                              # %.preheader112
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_422 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[2:3], r[8:9], r1
	j .LBB0_422
.LBB0_421:                              # %vector.body480
                                        #   in Loop: Header=BB0_422 Depth=3
	.loc	1 683 11 is_stmt 1              # parallel-rne.mlir:683:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 691 13                        # parallel-rne.mlir:691:13
	add.s r1, r10, r14
	.loc	1 683 11                        # parallel-rne.mlir:683:11
	setneq.d r13, r[17:18], r[24:25]
	.loc	1 691 13                        # parallel-rne.mlir:691:13
	stores.w r20, 12(r1)
	stores.w r19, 8(r1)
	stores.w r11, 4(r1)
	stores.w r6, 0(r1)
	stores.w r16, 28(r1)
	stores.w r15, 24(r1)
	stores.w r12, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 683 11                        # parallel-rne.mlir:683:11
	beq r13, zero, .LBB0_419
.LBB0_422:                              # %vector.body480
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_420 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	add.ul r[6:7], r[17:18], r[2:3]
	slli r14, r6, 2
	add.s r1, r26, r14
	loads.w r6, 0(r1)
	loads.w r20, 12(r1)
	loads.w r19, 8(r1)
	loads.w r11, 4(r1)
	loads.w r16, 28(r1)
	loads.w r15, 24(r1)
	loads.w r12, 20(r1)
	loads.w r7, 16(r1)
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	and r1, r6, r27
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	setlt.u r1, r28, r1
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r1, zero, .LBB0_424
# %bb.423:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r21
	or r6, r1, r28
.LBB0_424:                              # %vector.body480
                                        #   in Loop: Header=BB0_422 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r1, zero, .LBB0_426
# %bb.425:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r21
	or r11, r1, r28
.LBB0_426:                              # %vector.body480
                                        #   in Loop: Header=BB0_422 Depth=3
	and r1, r19, r27
	setlt.u r1, r28, r1
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r1, zero, .LBB0_428
# %bb.427:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r21
	or r19, r1, r28
.LBB0_428:                              # %vector.body480
                                        #   in Loop: Header=BB0_422 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r1, zero, .LBB0_430
# %bb.429:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r21
	or r20, r1, r28
.LBB0_430:                              # %vector.body480
                                        #   in Loop: Header=BB0_422 Depth=3
	and r1, r7, r27
	setlt.u r1, r28, r1
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r1, zero, .LBB0_432
# %bb.431:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r7, r21
	or r7, r1, r28
.LBB0_432:                              # %vector.body480
                                        #   in Loop: Header=BB0_422 Depth=3
	and r1, r12, r27
	setlt.u r1, r28, r1
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r1, zero, .LBB0_434
# %bb.433:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r21
	or r12, r1, r28
.LBB0_434:                              # %vector.body480
                                        #   in Loop: Header=BB0_422 Depth=3
	and r1, r15, r27
	setlt.u r1, r28, r1
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r1, zero, .LBB0_436
# %bb.435:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r21
	or r15, r1, r28
.LBB0_436:                              # %vector.body480
                                        #   in Loop: Header=BB0_422 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	beq r1, zero, .LBB0_421
# %bb.437:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r21
	or r16, r1, r28
	j .LBB0_421
.LBB0_438:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	addli r3, zero, 32
	addli r6, zero, 6
	.loc	1 674 7                         # parallel-rne.mlir:674:7
	mfence { sm }
	.loc	1 696 7                         # parallel-rne.mlir:696:7
	addli r2, zero, 3
	beq r1, r2, .LBB0_352
.LBB0_439:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 718 7                         # parallel-rne.mlir:718:7
	addli r2, zero, 4
	bneq r1, r2, .LBB0_373
.LBB0_440:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_442
.LBB0_441:                              # %middle.block465
                                        #   in Loop: Header=BB0_442 Depth=2
	.loc	1 726 9                         # parallel-rne.mlir:726:9
	load.d r[1:2], -1872(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_460
.LBB0_442:                              # %.preheader110
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_444 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[2:3], r[8:9], r1
	j .LBB0_444
.LBB0_443:                              # %vector.body460
                                        #   in Loop: Header=BB0_444 Depth=3
	.loc	1 727 11 is_stmt 1              # parallel-rne.mlir:727:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 735 13                        # parallel-rne.mlir:735:13
	add.s r1, r10, r14
	.loc	1 727 11                        # parallel-rne.mlir:727:11
	setneq.d r13, r[17:18], r[24:25]
	.loc	1 735 13                        # parallel-rne.mlir:735:13
	stores.w r20, 12(r1)
	stores.w r19, 8(r1)
	stores.w r11, 4(r1)
	stores.w r6, 0(r1)
	stores.w r16, 28(r1)
	stores.w r15, 24(r1)
	stores.w r12, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 727 11                        # parallel-rne.mlir:727:11
	beq r13, zero, .LBB0_441
.LBB0_444:                              # %vector.body460
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_442 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 728 19                        # parallel-rne.mlir:728:19
	add.ul r[6:7], r[17:18], r[2:3]
	slli r14, r6, 2
	add.s r1, r26, r14
	loads.w r6, 0(r1)
	loads.w r20, 12(r1)
	loads.w r19, 8(r1)
	loads.w r11, 4(r1)
	loads.w r16, 28(r1)
	loads.w r15, 24(r1)
	loads.w r12, 20(r1)
	loads.w r7, 16(r1)
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	and r1, r6, r27
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	setlt.u r1, r28, r1
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r1, zero, .LBB0_446
# %bb.445:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r21
	or r6, r1, r28
.LBB0_446:                              # %vector.body460
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r1, zero, .LBB0_448
# %bb.447:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r21
	or r11, r1, r28
.LBB0_448:                              # %vector.body460
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r19, r27
	setlt.u r1, r28, r1
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r1, zero, .LBB0_450
# %bb.449:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r21
	or r19, r1, r28
.LBB0_450:                              # %vector.body460
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r1, zero, .LBB0_452
# %bb.451:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r21
	or r20, r1, r28
.LBB0_452:                              # %vector.body460
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r7, r27
	setlt.u r1, r28, r1
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r1, zero, .LBB0_454
# %bb.453:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r7, r21
	or r7, r1, r28
.LBB0_454:                              # %vector.body460
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r12, r27
	setlt.u r1, r28, r1
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r1, zero, .LBB0_456
# %bb.455:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r21
	or r12, r1, r28
.LBB0_456:                              # %vector.body460
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r15, r27
	setlt.u r1, r28, r1
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r1, zero, .LBB0_458
# %bb.457:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r21
	or r15, r1, r28
.LBB0_458:                              # %vector.body460
                                        #   in Loop: Header=BB0_444 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	beq r1, zero, .LBB0_443
# %bb.459:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r21
	or r16, r1, r28
	j .LBB0_443
.LBB0_460:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	addli r6, zero, 6
	.loc	1 718 7                         # parallel-rne.mlir:718:7
	mfence { sm }
	.loc	1 740 7                         # parallel-rne.mlir:740:7
	addli r2, zero, 5
	beq r1, r2, .LBB0_374
.LBB0_461:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 762 7                         # parallel-rne.mlir:762:7
	bneq r1, r6, .LBB0_395
.LBB0_462:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 762 7                         # parallel-rne.mlir:762:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_464
.LBB0_463:                              # %middle.block445
                                        #   in Loop: Header=BB0_464 Depth=2
	.loc	1 770 9 is_stmt 1               # parallel-rne.mlir:770:9
	load.d r[1:2], -1888(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_482
.LBB0_464:                              # %.preheader108
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_466 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[2:3], r[8:9], r1
	j .LBB0_466
.LBB0_465:                              # %vector.body440
                                        #   in Loop: Header=BB0_466 Depth=3
	.loc	1 771 11 is_stmt 1              # parallel-rne.mlir:771:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 779 13                        # parallel-rne.mlir:779:13
	add.s r1, r10, r14
	.loc	1 771 11                        # parallel-rne.mlir:771:11
	setneq.d r13, r[17:18], r[24:25]
	.loc	1 779 13                        # parallel-rne.mlir:779:13
	stores.w r20, 12(r1)
	stores.w r19, 8(r1)
	stores.w r11, 4(r1)
	stores.w r6, 0(r1)
	stores.w r16, 28(r1)
	stores.w r15, 24(r1)
	stores.w r12, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 771 11                        # parallel-rne.mlir:771:11
	beq r13, zero, .LBB0_463
.LBB0_466:                              # %vector.body440
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_464 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	add.ul r[6:7], r[17:18], r[2:3]
	slli r14, r6, 2
	add.s r1, r26, r14
	loads.w r6, 0(r1)
	loads.w r20, 12(r1)
	loads.w r19, 8(r1)
	loads.w r11, 4(r1)
	loads.w r16, 28(r1)
	loads.w r15, 24(r1)
	loads.w r12, 20(r1)
	loads.w r7, 16(r1)
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	and r1, r6, r27
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	setlt.u r1, r28, r1
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	beq r1, zero, .LBB0_468
# %bb.467:                              #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r21
	or r6, r1, r28
.LBB0_468:                              # %vector.body440
                                        #   in Loop: Header=BB0_466 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	beq r1, zero, .LBB0_470
# %bb.469:                              #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r21
	or r11, r1, r28
.LBB0_470:                              # %vector.body440
                                        #   in Loop: Header=BB0_466 Depth=3
	and r1, r19, r27
	setlt.u r1, r28, r1
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	beq r1, zero, .LBB0_472
# %bb.471:                              #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r21
	or r19, r1, r28
.LBB0_472:                              # %vector.body440
                                        #   in Loop: Header=BB0_466 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	beq r1, zero, .LBB0_474
# %bb.473:                              #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r21
	or r20, r1, r28
.LBB0_474:                              # %vector.body440
                                        #   in Loop: Header=BB0_466 Depth=3
	and r1, r7, r27
	setlt.u r1, r28, r1
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	beq r1, zero, .LBB0_476
# %bb.475:                              #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r7, r21
	or r7, r1, r28
.LBB0_476:                              # %vector.body440
                                        #   in Loop: Header=BB0_466 Depth=3
	and r1, r12, r27
	setlt.u r1, r28, r1
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	beq r1, zero, .LBB0_478
# %bb.477:                              #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r21
	or r12, r1, r28
.LBB0_478:                              # %vector.body440
                                        #   in Loop: Header=BB0_466 Depth=3
	and r1, r15, r27
	setlt.u r1, r28, r1
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	beq r1, zero, .LBB0_480
# %bb.479:                              #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r21
	or r15, r1, r28
.LBB0_480:                              # %vector.body440
                                        #   in Loop: Header=BB0_466 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	beq r1, zero, .LBB0_465
# %bb.481:                              #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r21
	or r16, r1, r28
	j .LBB0_465
.LBB0_482:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 762 7                         # parallel-rne.mlir:762:7
	mfence { sm }
	.loc	1 784 7                         # parallel-rne.mlir:784:7
	addli r2, zero, 7
	bneq r1, r2, .LBB0_504
.LBB0_483:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 784 7                         # parallel-rne.mlir:784:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_485
.LBB0_484:                              # %middle.block435
                                        #   in Loop: Header=BB0_485 Depth=2
	.loc	1 792 9 is_stmt 1               # parallel-rne.mlir:792:9
	load.d r[1:2], -1896(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_503
.LBB0_485:                              # %.preheader107
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_487 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[2:3], r[8:9], r1
	j .LBB0_487
.LBB0_486:                              # %vector.body430
                                        #   in Loop: Header=BB0_487 Depth=3
	.loc	1 793 11 is_stmt 1              # parallel-rne.mlir:793:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 801 13                        # parallel-rne.mlir:801:13
	add.s r1, r10, r14
	.loc	1 793 11                        # parallel-rne.mlir:793:11
	setneq.d r13, r[17:18], r[24:25]
	.loc	1 801 13                        # parallel-rne.mlir:801:13
	stores.w r20, 12(r1)
	stores.w r19, 8(r1)
	stores.w r11, 4(r1)
	stores.w r6, 0(r1)
	stores.w r16, 28(r1)
	stores.w r15, 24(r1)
	stores.w r12, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 793 11                        # parallel-rne.mlir:793:11
	beq r13, zero, .LBB0_484
.LBB0_487:                              # %vector.body430
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_485 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 794 19                        # parallel-rne.mlir:794:19
	add.ul r[6:7], r[17:18], r[2:3]
	slli r14, r6, 2
	add.s r1, r26, r14
	loads.w r6, 0(r1)
	loads.w r20, 12(r1)
	loads.w r19, 8(r1)
	loads.w r11, 4(r1)
	loads.w r16, 28(r1)
	loads.w r15, 24(r1)
	loads.w r12, 20(r1)
	loads.w r7, 16(r1)
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	and r1, r6, r27
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	setlt.u r1, r28, r1
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	beq r1, zero, .LBB0_489
# %bb.488:                              #   in Loop: Header=BB0_487 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r21
	or r6, r1, r28
.LBB0_489:                              # %vector.body430
                                        #   in Loop: Header=BB0_487 Depth=3
	and r1, r11, r27
	setlt.u r1, r28, r1
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	beq r1, zero, .LBB0_491
# %bb.490:                              #   in Loop: Header=BB0_487 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r11, r21
	or r11, r1, r28
.LBB0_491:                              # %vector.body430
                                        #   in Loop: Header=BB0_487 Depth=3
	and r1, r19, r27
	setlt.u r1, r28, r1
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	beq r1, zero, .LBB0_493
# %bb.492:                              #   in Loop: Header=BB0_487 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r21
	or r19, r1, r28
.LBB0_493:                              # %vector.body430
                                        #   in Loop: Header=BB0_487 Depth=3
	and r1, r20, r27
	setlt.u r1, r28, r1
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	beq r1, zero, .LBB0_495
# %bb.494:                              #   in Loop: Header=BB0_487 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r21
	or r20, r1, r28
.LBB0_495:                              # %vector.body430
                                        #   in Loop: Header=BB0_487 Depth=3
	and r1, r7, r27
	setlt.u r1, r28, r1
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	beq r1, zero, .LBB0_497
# %bb.496:                              #   in Loop: Header=BB0_487 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r7, r21
	or r7, r1, r28
.LBB0_497:                              # %vector.body430
                                        #   in Loop: Header=BB0_487 Depth=3
	and r1, r12, r27
	setlt.u r1, r28, r1
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	beq r1, zero, .LBB0_499
# %bb.498:                              #   in Loop: Header=BB0_487 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r21
	or r12, r1, r28
.LBB0_499:                              # %vector.body430
                                        #   in Loop: Header=BB0_487 Depth=3
	and r1, r15, r27
	setlt.u r1, r28, r1
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	beq r1, zero, .LBB0_501
# %bb.500:                              #   in Loop: Header=BB0_487 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r21
	or r15, r1, r28
.LBB0_501:                              # %vector.body430
                                        #   in Loop: Header=BB0_487 Depth=3
	and r1, r16, r27
	setlt.u r1, r28, r1
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	beq r1, zero, .LBB0_486
# %bb.502:                              #   in Loop: Header=BB0_487 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r21
	or r16, r1, r28
	j .LBB0_486
.LBB0_503:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 784 7                         # parallel-rne.mlir:784:7
	mfence { sm }
.LBB0_504:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 807 7                         # parallel-rne.mlir:807:7
	addli r2, zero, 3
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	sync_core
	.loc	1 807 7                         # parallel-rne.mlir:807:7
	bneq r1, r2, .LBB0_506
# %bb.505:                              # %.critedge20
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 14
	addli r3, zero, 34
	lui r21, 1024
	xsignal r1, 0
	.loc	1 808 7                         # parallel-rne.mlir:808:7
	xsignal r3, 0
	.loc	1 811 13                        # parallel-rne.mlir:811:13
	loadli.w r2,  -40(r30)
	addli r1, r2, 1
	storeli.w r1, -40(r30)
	.loc	1 813 7                         # parallel-rne.mlir:813:7
	addli r1, zero, 15
	xwait r1, 0
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	addli r1, zero, 38
	.loc	1 814 7                         # parallel-rne.mlir:814:7
	xwait r3, 0
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	xwait r1, 0
	j .LBB0_509
.LBB0_506:                              # %.critedge18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 809 7                         # parallel-rne.mlir:809:7
	addli r2, zero, 5
	lui r21, 1024
	bneq r1, r2, .LBB0_508
# %bb.507:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 14
	addli r3, zero, 2
	addli r2, zero, 4
	xwait r1, 0
	lock zero, r3
	addli r1, zero, 2047
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 3
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	ew_cfg r1, zero, zero, 10
	addli r1, zero, 1
	loadli.w r6,  -2016(r30)                # 4-byte Folded Reload
	ew_cfg r3, r1, r6, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r2, r1, 14
	addli r1, zero, 15
	ew_cfg zero, zero, zero, 15
	sslut r10, r10, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r1, 0
.LBB0_508:                              # %.thread86
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 811 13                        # parallel-rne.mlir:811:13
	loadli.w r2,  -40(r30)
	addli r1, r2, 1
	storeli.w r1, -40(r30)
.LBB0_509:                              # %.critedge21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 4
	.loc	1 817 7                         # parallel-rne.mlir:817:7
	xfence
	.loc	1 818 7                         # parallel-rne.mlir:818:7
	mfence { lm, sm, gm }
	.loc	1 811 13                        # parallel-rne.mlir:811:13
	mod.s r1, r2, r1
	loadli.w r2,  -2008(r30)                # 4-byte Folded Reload
	slli r1, r1, 15
	add.s r12, r1, r2
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	sync_core
	.loc	1 820 7                         # parallel-rne.mlir:820:7
	beq r1, zero, .LBB0_622
# %bb.510:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 846 7                         # parallel-rne.mlir:846:7
	addli r2, zero, 1
	bneq r1, r2, .LBB0_658
.LBB0_511:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 846 7                         # parallel-rne.mlir:846:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_513
.LBB0_512:                              # %middle.block411
                                        #   in Loop: Header=BB0_513 Depth=2
	.loc	1 854 9 is_stmt 1               # parallel-rne.mlir:854:9
	load.d r[1:2], -1848(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1912(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_546
.LBB0_513:                              # %.preheader105
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_523 Depth 3
                                        #       Child Loop BB0_517 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1912(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[2:3], r1
	.loc	1 855 11 is_stmt 1              # parallel-rne.mlir:855:11
	bneq r12, r26, .LBB0_520
# %bb.514:                              # %scalar.ph402.preheader
                                        #   in Loop: Header=BB0_513 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_517
.LBB0_515:                              # %scalar.ph402
                                        #   in Loop: Header=BB0_517 Depth=3
	addli r7, r8, 0
.LBB0_516:                              # %scalar.ph402
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 855 11                        # parallel-rne.mlir:855:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 867 13 is_stmt 1              # parallel-rne.mlir:867:13
	add.s r6, r12, r6
	.loc	1 855 11                        # parallel-rne.mlir:855:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 867 13                        # parallel-rne.mlir:867:13
	stores.w r7, 0(r6)
	.loc	1 855 11                        # parallel-rne.mlir:855:11
	beq r1, zero, .LBB0_512
.LBB0_517:                              # %scalar.ph402
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_513 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	add.ul r[6:7], r[2:3], r[17:18]
	slli r6, r6, 2
	add.s r1, r26, r6
	loads.w r9, 0(r1)
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	add.s r1, r10, r6
	loads.w r8, 0(r1)
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	and r1, r9, r22
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	bneq r1, zero, .LBB0_519
# %bb.518:                              # %scalar.ph402
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r1, r9, r23
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	beq r1, r23, .LBB0_516
	j .LBB0_515
.LBB0_519:                              #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r21
	and r1, r9, r23
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	beq r1, r23, .LBB0_516
	j .LBB0_515
.LBB0_520:                              # %vector.body404.preheader
                                        #   in Loop: Header=BB0_513 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_523
.LBB0_521:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r6, 28(r7)
.LBB0_522:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 855 11 is_stmt 1              # parallel-rne.mlir:855:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 867 13                        # parallel-rne.mlir:867:13
	add.s r1, r12, r2
	.loc	1 855 11                        # parallel-rne.mlir:855:11
	seteq.d r2, r[8:9], r[24:25]
	.loc	1 867 13                        # parallel-rne.mlir:867:13
	stores.w r14, 12(r1)
	stores.w r11, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	stores.w r6, 28(r1)
	stores.w r20, 24(r1)
	stores.w r19, 20(r1)
	stores.w r16, 16(r1)
	.loc	1 855 11                        # parallel-rne.mlir:855:11
	bneq r2, zero, .LBB0_512
.LBB0_523:                              # %vector.body404
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_513 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	add.ul r[1:2], r[8:9], r[17:18]
	slli r2, r1, 2
	add.s r6, r26, r2
	loads.w r3, 0(r6)
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	and r1, r3, r23
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	and r7, r3, r22
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	seteq r1, r1, r23
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	setneq r7, r7, zero
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	and r1, r1, r7
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	add.s r7, r10, r2
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	bneq r1, zero, .LBB0_525
# %bb.524:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r7)
	j .LBB0_526
.LBB0_525:                              #   in Loop: Header=BB0_523 Depth=3
	or r3, r3, r21
.LBB0_526:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r11, 4(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	bneq r1, zero, .LBB0_528
# %bb.527:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 4(r7)
	j .LBB0_529
.LBB0_528:                              #   in Loop: Header=BB0_523 Depth=3
	or r15, r11, r21
.LBB0_529:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r11, 8(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	bneq r1, zero, .LBB0_531
# %bb.530:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r7)
	j .LBB0_532
.LBB0_531:                              #   in Loop: Header=BB0_523 Depth=3
	or r11, r11, r21
.LBB0_532:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r14, 12(r6)
	and r1, r14, r23
	and r13, r14, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	bneq r1, zero, .LBB0_534
# %bb.533:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r7)
	j .LBB0_535
.LBB0_534:                              #   in Loop: Header=BB0_523 Depth=3
	or r14, r14, r21
.LBB0_535:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r16, 16(r6)
	and r1, r16, r23
	and r13, r16, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	bneq r1, zero, .LBB0_537
# %bb.536:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r7)
	j .LBB0_538
.LBB0_537:                              #   in Loop: Header=BB0_523 Depth=3
	or r16, r16, r21
.LBB0_538:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r19, 20(r6)
	and r1, r19, r23
	and r13, r19, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	bneq r1, zero, .LBB0_540
# %bb.539:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r7)
	j .LBB0_541
.LBB0_540:                              #   in Loop: Header=BB0_523 Depth=3
	or r19, r19, r21
.LBB0_541:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r20, 24(r6)
	and r1, r20, r23
	and r13, r20, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	bneq r1, zero, .LBB0_543
# %bb.542:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r7)
	j .LBB0_544
.LBB0_543:                              #   in Loop: Header=BB0_523 Depth=3
	or r20, r20, r21
.LBB0_544:                              # %vector.body404
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r6, 28(r6)
	and r1, r6, r23
	and r13, r6, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	beq r1, zero, .LBB0_521
# %bb.545:                              #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r6, r21
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	j .LBB0_522
.LBB0_546:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 846 7                         # parallel-rne.mlir:846:7
	mfence { sm }
	.loc	1 872 7                         # parallel-rne.mlir:872:7
	addli r2, zero, 2
	beq r1, r2, .LBB0_659
.LBB0_547:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 898 7                         # parallel-rne.mlir:898:7
	addli r2, zero, 3
	bneq r1, r2, .LBB0_695
.LBB0_548:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 898 7                         # parallel-rne.mlir:898:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_550
.LBB0_549:                              # %middle.block383
                                        #   in Loop: Header=BB0_550 Depth=2
	.loc	1 906 9 is_stmt 1               # parallel-rne.mlir:906:9
	load.d r[1:2], -1864(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1912(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_583
.LBB0_550:                              # %.preheader103
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_560 Depth 3
                                        #       Child Loop BB0_554 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1912(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[2:3], r1
	.loc	1 907 11 is_stmt 1              # parallel-rne.mlir:907:11
	bneq r12, r26, .LBB0_557
# %bb.551:                              # %scalar.ph374.preheader
                                        #   in Loop: Header=BB0_550 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_554
.LBB0_552:                              # %scalar.ph374
                                        #   in Loop: Header=BB0_554 Depth=3
	addli r7, r8, 0
.LBB0_553:                              # %scalar.ph374
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 907 11                        # parallel-rne.mlir:907:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 919 13 is_stmt 1              # parallel-rne.mlir:919:13
	add.s r6, r12, r6
	.loc	1 907 11                        # parallel-rne.mlir:907:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 919 13                        # parallel-rne.mlir:919:13
	stores.w r7, 0(r6)
	.loc	1 907 11                        # parallel-rne.mlir:907:11
	beq r1, zero, .LBB0_549
.LBB0_554:                              # %scalar.ph374
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_550 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	add.ul r[6:7], r[2:3], r[17:18]
	slli r6, r6, 2
	add.s r1, r26, r6
	loads.w r9, 0(r1)
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	add.s r1, r10, r6
	loads.w r8, 0(r1)
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	and r1, r9, r22
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	bneq r1, zero, .LBB0_556
# %bb.555:                              # %scalar.ph374
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r1, r9, r23
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	beq r1, r23, .LBB0_553
	j .LBB0_552
.LBB0_556:                              #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r21
	and r1, r9, r23
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	beq r1, r23, .LBB0_553
	j .LBB0_552
.LBB0_557:                              # %vector.body376.preheader
                                        #   in Loop: Header=BB0_550 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_560
.LBB0_558:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r6, 28(r7)
.LBB0_559:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 907 11 is_stmt 1              # parallel-rne.mlir:907:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 919 13                        # parallel-rne.mlir:919:13
	add.s r1, r12, r2
	.loc	1 907 11                        # parallel-rne.mlir:907:11
	seteq.d r2, r[8:9], r[24:25]
	.loc	1 919 13                        # parallel-rne.mlir:919:13
	stores.w r14, 12(r1)
	stores.w r11, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	stores.w r6, 28(r1)
	stores.w r20, 24(r1)
	stores.w r19, 20(r1)
	stores.w r16, 16(r1)
	.loc	1 907 11                        # parallel-rne.mlir:907:11
	bneq r2, zero, .LBB0_549
.LBB0_560:                              # %vector.body376
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_550 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	add.ul r[1:2], r[8:9], r[17:18]
	slli r2, r1, 2
	add.s r6, r26, r2
	loads.w r3, 0(r6)
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	and r1, r3, r23
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	and r7, r3, r22
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	seteq r1, r1, r23
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	setneq r7, r7, zero
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	and r1, r1, r7
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	add.s r7, r10, r2
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	bneq r1, zero, .LBB0_562
# %bb.561:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r7)
	j .LBB0_563
.LBB0_562:                              #   in Loop: Header=BB0_560 Depth=3
	or r3, r3, r21
.LBB0_563:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r11, 4(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	bneq r1, zero, .LBB0_565
# %bb.564:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 4(r7)
	j .LBB0_566
.LBB0_565:                              #   in Loop: Header=BB0_560 Depth=3
	or r15, r11, r21
.LBB0_566:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r11, 8(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	bneq r1, zero, .LBB0_568
# %bb.567:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r7)
	j .LBB0_569
.LBB0_568:                              #   in Loop: Header=BB0_560 Depth=3
	or r11, r11, r21
.LBB0_569:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r14, 12(r6)
	and r1, r14, r23
	and r13, r14, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	bneq r1, zero, .LBB0_571
# %bb.570:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r7)
	j .LBB0_572
.LBB0_571:                              #   in Loop: Header=BB0_560 Depth=3
	or r14, r14, r21
.LBB0_572:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r16, 16(r6)
	and r1, r16, r23
	and r13, r16, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	bneq r1, zero, .LBB0_574
# %bb.573:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r7)
	j .LBB0_575
.LBB0_574:                              #   in Loop: Header=BB0_560 Depth=3
	or r16, r16, r21
.LBB0_575:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r19, 20(r6)
	and r1, r19, r23
	and r13, r19, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	bneq r1, zero, .LBB0_577
# %bb.576:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r7)
	j .LBB0_578
.LBB0_577:                              #   in Loop: Header=BB0_560 Depth=3
	or r19, r19, r21
.LBB0_578:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r20, 24(r6)
	and r1, r20, r23
	and r13, r20, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	bneq r1, zero, .LBB0_580
# %bb.579:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r7)
	j .LBB0_581
.LBB0_580:                              #   in Loop: Header=BB0_560 Depth=3
	or r20, r20, r21
.LBB0_581:                              # %vector.body376
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r6, 28(r6)
	and r1, r6, r23
	and r13, r6, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	beq r1, zero, .LBB0_558
# %bb.582:                              #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r6, r21
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	j .LBB0_559
.LBB0_583:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 898 7                         # parallel-rne.mlir:898:7
	mfence { sm }
	.loc	1 924 7                         # parallel-rne.mlir:924:7
	addli r2, zero, 4
	beq r1, r2, .LBB0_696
.LBB0_584:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 950 7                         # parallel-rne.mlir:950:7
	addli r2, zero, 5
	bneq r1, r2, .LBB0_732
.LBB0_585:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 950 7                         # parallel-rne.mlir:950:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_587
.LBB0_586:                              # %middle.block355
                                        #   in Loop: Header=BB0_587 Depth=2
	.loc	1 958 9 is_stmt 1               # parallel-rne.mlir:958:9
	load.d r[1:2], -1880(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1912(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_620
.LBB0_587:                              # %.preheader101
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_597 Depth 3
                                        #       Child Loop BB0_591 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1912(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[2:3], r1
	.loc	1 959 11 is_stmt 1              # parallel-rne.mlir:959:11
	bneq r12, r26, .LBB0_594
# %bb.588:                              # %scalar.ph346.preheader
                                        #   in Loop: Header=BB0_587 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_591
.LBB0_589:                              # %scalar.ph346
                                        #   in Loop: Header=BB0_591 Depth=3
	addli r7, r8, 0
.LBB0_590:                              # %scalar.ph346
                                        #   in Loop: Header=BB0_591 Depth=3
	.loc	1 959 11                        # parallel-rne.mlir:959:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 971 13 is_stmt 1              # parallel-rne.mlir:971:13
	add.s r6, r12, r6
	.loc	1 959 11                        # parallel-rne.mlir:959:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 971 13                        # parallel-rne.mlir:971:13
	stores.w r7, 0(r6)
	.loc	1 959 11                        # parallel-rne.mlir:959:11
	beq r1, zero, .LBB0_586
.LBB0_591:                              # %scalar.ph346
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_587 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	add.ul r[6:7], r[2:3], r[17:18]
	slli r6, r6, 2
	add.s r1, r26, r6
	loads.w r9, 0(r1)
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	add.s r1, r10, r6
	loads.w r8, 0(r1)
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	and r1, r9, r22
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	bneq r1, zero, .LBB0_593
# %bb.592:                              # %scalar.ph346
                                        #   in Loop: Header=BB0_591 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r1, r9, r23
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	beq r1, r23, .LBB0_590
	j .LBB0_589
.LBB0_593:                              #   in Loop: Header=BB0_591 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r21
	and r1, r9, r23
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	beq r1, r23, .LBB0_590
	j .LBB0_589
.LBB0_594:                              # %vector.body348.preheader
                                        #   in Loop: Header=BB0_587 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_597
.LBB0_595:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	loads.w r6, 28(r7)
.LBB0_596:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	.loc	1 959 11 is_stmt 1              # parallel-rne.mlir:959:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 971 13                        # parallel-rne.mlir:971:13
	add.s r1, r12, r2
	.loc	1 959 11                        # parallel-rne.mlir:959:11
	seteq.d r2, r[8:9], r[24:25]
	.loc	1 971 13                        # parallel-rne.mlir:971:13
	stores.w r14, 12(r1)
	stores.w r11, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	stores.w r6, 28(r1)
	stores.w r20, 24(r1)
	stores.w r19, 20(r1)
	stores.w r16, 16(r1)
	.loc	1 959 11                        # parallel-rne.mlir:959:11
	bneq r2, zero, .LBB0_586
.LBB0_597:                              # %vector.body348
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_587 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	add.ul r[1:2], r[8:9], r[17:18]
	slli r2, r1, 2
	add.s r6, r26, r2
	loads.w r3, 0(r6)
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	and r1, r3, r23
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	and r7, r3, r22
	.loc	1 965 19                        # parallel-rne.mlir:965:19
	seteq r1, r1, r23
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	setneq r7, r7, zero
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	and r1, r1, r7
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	add.s r7, r10, r2
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	bneq r1, zero, .LBB0_599
# %bb.598:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r7)
	j .LBB0_600
.LBB0_599:                              #   in Loop: Header=BB0_597 Depth=3
	or r3, r3, r21
.LBB0_600:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	loads.w r11, 4(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	bneq r1, zero, .LBB0_602
# %bb.601:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 4(r7)
	j .LBB0_603
.LBB0_602:                              #   in Loop: Header=BB0_597 Depth=3
	or r15, r11, r21
.LBB0_603:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	loads.w r11, 8(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	bneq r1, zero, .LBB0_605
# %bb.604:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r7)
	j .LBB0_606
.LBB0_605:                              #   in Loop: Header=BB0_597 Depth=3
	or r11, r11, r21
.LBB0_606:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	loads.w r14, 12(r6)
	and r1, r14, r23
	and r13, r14, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	bneq r1, zero, .LBB0_608
# %bb.607:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r7)
	j .LBB0_609
.LBB0_608:                              #   in Loop: Header=BB0_597 Depth=3
	or r14, r14, r21
.LBB0_609:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	loads.w r16, 16(r6)
	and r1, r16, r23
	and r13, r16, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	bneq r1, zero, .LBB0_611
# %bb.610:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r7)
	j .LBB0_612
.LBB0_611:                              #   in Loop: Header=BB0_597 Depth=3
	or r16, r16, r21
.LBB0_612:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	loads.w r19, 20(r6)
	and r1, r19, r23
	and r13, r19, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	bneq r1, zero, .LBB0_614
# %bb.613:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r7)
	j .LBB0_615
.LBB0_614:                              #   in Loop: Header=BB0_597 Depth=3
	or r19, r19, r21
.LBB0_615:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	loads.w r20, 24(r6)
	and r1, r20, r23
	and r13, r20, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	bneq r1, zero, .LBB0_617
# %bb.616:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r7)
	j .LBB0_618
.LBB0_617:                              #   in Loop: Header=BB0_597 Depth=3
	or r20, r20, r21
.LBB0_618:                              # %vector.body348
                                        #   in Loop: Header=BB0_597 Depth=3
	loads.w r6, 28(r6)
	and r1, r6, r23
	and r13, r6, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	beq r1, zero, .LBB0_595
# %bb.619:                              #   in Loop: Header=BB0_597 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r6, r21
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	j .LBB0_596
.LBB0_620:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 950 7                         # parallel-rne.mlir:950:7
	mfence { sm }
	.loc	1 976 7                         # parallel-rne.mlir:976:7
	addli r2, zero, 6
	beq r1, r2, .LBB0_733
.LBB0_621:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1002 7                        # parallel-rne.mlir:1002:7
	addli r2, zero, 7
	beq r1, r2, .LBB0_769
	j .LBB0_805
.LBB0_622:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 820 7                         # parallel-rne.mlir:820:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_624
.LBB0_623:                              # %middle.block425
                                        #   in Loop: Header=BB0_624 Depth=2
	.loc	1 828 9                         # parallel-rne.mlir:828:9
	load.d r[1:2], -1904(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1912(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_657
.LBB0_624:                              # %.preheader106
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_634 Depth 3
                                        #       Child Loop BB0_628 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1912(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[2:3], r1
	.loc	1 829 11 is_stmt 1              # parallel-rne.mlir:829:11
	bneq r12, r26, .LBB0_631
# %bb.625:                              # %scalar.ph416.preheader
                                        #   in Loop: Header=BB0_624 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_628
.LBB0_626:                              # %scalar.ph416
                                        #   in Loop: Header=BB0_628 Depth=3
	addli r7, r8, 0
.LBB0_627:                              # %scalar.ph416
                                        #   in Loop: Header=BB0_628 Depth=3
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 841 13 is_stmt 1              # parallel-rne.mlir:841:13
	add.s r6, r12, r6
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 841 13                        # parallel-rne.mlir:841:13
	stores.w r7, 0(r6)
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	beq r1, zero, .LBB0_623
.LBB0_628:                              # %scalar.ph416
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_624 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.ul r[6:7], r[2:3], r[17:18]
	slli r6, r6, 2
	add.s r1, r26, r6
	loads.w r9, 0(r1)
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	add.s r1, r10, r6
	loads.w r8, 0(r1)
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	and r1, r9, r22
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r1, zero, .LBB0_630
# %bb.629:                              # %scalar.ph416
                                        #   in Loop: Header=BB0_628 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r1, r9, r23
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	beq r1, r23, .LBB0_627
	j .LBB0_626
.LBB0_630:                              #   in Loop: Header=BB0_628 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r21
	and r1, r9, r23
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	beq r1, r23, .LBB0_627
	j .LBB0_626
.LBB0_631:                              # %vector.body418.preheader
                                        #   in Loop: Header=BB0_624 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_634
.LBB0_632:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	loads.w r6, 28(r7)
.LBB0_633:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 829 11 is_stmt 1              # parallel-rne.mlir:829:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 841 13                        # parallel-rne.mlir:841:13
	add.s r1, r12, r2
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	seteq.d r2, r[8:9], r[24:25]
	.loc	1 841 13                        # parallel-rne.mlir:841:13
	stores.w r14, 12(r1)
	stores.w r11, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	stores.w r6, 28(r1)
	stores.w r20, 24(r1)
	stores.w r19, 20(r1)
	stores.w r16, 16(r1)
	.loc	1 829 11                        # parallel-rne.mlir:829:11
	bneq r2, zero, .LBB0_623
.LBB0_634:                              # %vector.body418
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_624 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.ul r[1:2], r[8:9], r[17:18]
	slli r2, r1, 2
	add.s r6, r26, r2
	loads.w r3, 0(r6)
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	and r1, r3, r23
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	and r7, r3, r22
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	seteq r1, r1, r23
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	setneq r7, r7, zero
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	and r1, r1, r7
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	add.s r7, r10, r2
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r1, zero, .LBB0_636
# %bb.635:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r7)
	j .LBB0_637
.LBB0_636:                              #   in Loop: Header=BB0_634 Depth=3
	or r3, r3, r21
.LBB0_637:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	loads.w r11, 4(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r1, zero, .LBB0_639
# %bb.638:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 4(r7)
	j .LBB0_640
.LBB0_639:                              #   in Loop: Header=BB0_634 Depth=3
	or r15, r11, r21
.LBB0_640:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	loads.w r11, 8(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r1, zero, .LBB0_642
# %bb.641:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r7)
	j .LBB0_643
.LBB0_642:                              #   in Loop: Header=BB0_634 Depth=3
	or r11, r11, r21
.LBB0_643:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	loads.w r14, 12(r6)
	and r1, r14, r23
	and r13, r14, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r1, zero, .LBB0_645
# %bb.644:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r7)
	j .LBB0_646
.LBB0_645:                              #   in Loop: Header=BB0_634 Depth=3
	or r14, r14, r21
.LBB0_646:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	loads.w r16, 16(r6)
	and r1, r16, r23
	and r13, r16, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r1, zero, .LBB0_648
# %bb.647:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r7)
	j .LBB0_649
.LBB0_648:                              #   in Loop: Header=BB0_634 Depth=3
	or r16, r16, r21
.LBB0_649:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	loads.w r19, 20(r6)
	and r1, r19, r23
	and r13, r19, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r1, zero, .LBB0_651
# %bb.650:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r7)
	j .LBB0_652
.LBB0_651:                              #   in Loop: Header=BB0_634 Depth=3
	or r19, r19, r21
.LBB0_652:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	loads.w r20, 24(r6)
	and r1, r20, r23
	and r13, r20, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r1, zero, .LBB0_654
# %bb.653:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r7)
	j .LBB0_655
.LBB0_654:                              #   in Loop: Header=BB0_634 Depth=3
	or r20, r20, r21
.LBB0_655:                              # %vector.body418
                                        #   in Loop: Header=BB0_634 Depth=3
	loads.w r6, 28(r6)
	and r1, r6, r23
	and r13, r6, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	beq r1, zero, .LBB0_632
# %bb.656:                              #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r6, r21
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	j .LBB0_633
.LBB0_657:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 820 7                         # parallel-rne.mlir:820:7
	mfence { sm }
	.loc	1 846 7                         # parallel-rne.mlir:846:7
	addli r2, zero, 1
	beq r1, r2, .LBB0_511
.LBB0_658:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 872 7                         # parallel-rne.mlir:872:7
	addli r2, zero, 2
	bneq r1, r2, .LBB0_547
.LBB0_659:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 872 7                         # parallel-rne.mlir:872:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_661
.LBB0_660:                              # %middle.block397
                                        #   in Loop: Header=BB0_661 Depth=2
	.loc	1 880 9 is_stmt 1               # parallel-rne.mlir:880:9
	load.d r[1:2], -1856(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1912(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_694
.LBB0_661:                              # %.preheader104
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_671 Depth 3
                                        #       Child Loop BB0_665 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1912(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[2:3], r1
	.loc	1 881 11 is_stmt 1              # parallel-rne.mlir:881:11
	bneq r12, r26, .LBB0_668
# %bb.662:                              # %scalar.ph388.preheader
                                        #   in Loop: Header=BB0_661 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_665
.LBB0_663:                              # %scalar.ph388
                                        #   in Loop: Header=BB0_665 Depth=3
	addli r7, r8, 0
.LBB0_664:                              # %scalar.ph388
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 881 11                        # parallel-rne.mlir:881:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 893 13 is_stmt 1              # parallel-rne.mlir:893:13
	add.s r6, r12, r6
	.loc	1 881 11                        # parallel-rne.mlir:881:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 893 13                        # parallel-rne.mlir:893:13
	stores.w r7, 0(r6)
	.loc	1 881 11                        # parallel-rne.mlir:881:11
	beq r1, zero, .LBB0_660
.LBB0_665:                              # %scalar.ph388
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_661 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	add.ul r[6:7], r[2:3], r[17:18]
	slli r6, r6, 2
	add.s r1, r26, r6
	loads.w r9, 0(r1)
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	add.s r1, r10, r6
	loads.w r8, 0(r1)
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	and r1, r9, r22
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	bneq r1, zero, .LBB0_667
# %bb.666:                              # %scalar.ph388
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r1, r9, r23
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	beq r1, r23, .LBB0_664
	j .LBB0_663
.LBB0_667:                              #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r21
	and r1, r9, r23
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	beq r1, r23, .LBB0_664
	j .LBB0_663
.LBB0_668:                              # %vector.body390.preheader
                                        #   in Loop: Header=BB0_661 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_671
.LBB0_669:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	loads.w r6, 28(r7)
.LBB0_670:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	.loc	1 881 11 is_stmt 1              # parallel-rne.mlir:881:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 893 13                        # parallel-rne.mlir:893:13
	add.s r1, r12, r2
	.loc	1 881 11                        # parallel-rne.mlir:881:11
	seteq.d r2, r[8:9], r[24:25]
	.loc	1 893 13                        # parallel-rne.mlir:893:13
	stores.w r14, 12(r1)
	stores.w r11, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	stores.w r6, 28(r1)
	stores.w r20, 24(r1)
	stores.w r19, 20(r1)
	stores.w r16, 16(r1)
	.loc	1 881 11                        # parallel-rne.mlir:881:11
	bneq r2, zero, .LBB0_660
.LBB0_671:                              # %vector.body390
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_661 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	add.ul r[1:2], r[8:9], r[17:18]
	slli r2, r1, 2
	add.s r6, r26, r2
	loads.w r3, 0(r6)
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	and r1, r3, r23
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	and r7, r3, r22
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	seteq r1, r1, r23
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	setneq r7, r7, zero
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	and r1, r1, r7
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	add.s r7, r10, r2
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	bneq r1, zero, .LBB0_673
# %bb.672:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r7)
	j .LBB0_674
.LBB0_673:                              #   in Loop: Header=BB0_671 Depth=3
	or r3, r3, r21
.LBB0_674:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	loads.w r11, 4(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	bneq r1, zero, .LBB0_676
# %bb.675:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 4(r7)
	j .LBB0_677
.LBB0_676:                              #   in Loop: Header=BB0_671 Depth=3
	or r15, r11, r21
.LBB0_677:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	loads.w r11, 8(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	bneq r1, zero, .LBB0_679
# %bb.678:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r7)
	j .LBB0_680
.LBB0_679:                              #   in Loop: Header=BB0_671 Depth=3
	or r11, r11, r21
.LBB0_680:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	loads.w r14, 12(r6)
	and r1, r14, r23
	and r13, r14, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	bneq r1, zero, .LBB0_682
# %bb.681:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r7)
	j .LBB0_683
.LBB0_682:                              #   in Loop: Header=BB0_671 Depth=3
	or r14, r14, r21
.LBB0_683:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	loads.w r16, 16(r6)
	and r1, r16, r23
	and r13, r16, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	bneq r1, zero, .LBB0_685
# %bb.684:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r7)
	j .LBB0_686
.LBB0_685:                              #   in Loop: Header=BB0_671 Depth=3
	or r16, r16, r21
.LBB0_686:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	loads.w r19, 20(r6)
	and r1, r19, r23
	and r13, r19, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	bneq r1, zero, .LBB0_688
# %bb.687:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r7)
	j .LBB0_689
.LBB0_688:                              #   in Loop: Header=BB0_671 Depth=3
	or r19, r19, r21
.LBB0_689:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	loads.w r20, 24(r6)
	and r1, r20, r23
	and r13, r20, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	bneq r1, zero, .LBB0_691
# %bb.690:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r7)
	j .LBB0_692
.LBB0_691:                              #   in Loop: Header=BB0_671 Depth=3
	or r20, r20, r21
.LBB0_692:                              # %vector.body390
                                        #   in Loop: Header=BB0_671 Depth=3
	loads.w r6, 28(r6)
	and r1, r6, r23
	and r13, r6, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	beq r1, zero, .LBB0_669
# %bb.693:                              #   in Loop: Header=BB0_671 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r6, r21
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	j .LBB0_670
.LBB0_694:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 872 7                         # parallel-rne.mlir:872:7
	mfence { sm }
	.loc	1 898 7                         # parallel-rne.mlir:898:7
	addli r2, zero, 3
	beq r1, r2, .LBB0_548
.LBB0_695:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 924 7                         # parallel-rne.mlir:924:7
	addli r2, zero, 4
	bneq r1, r2, .LBB0_584
.LBB0_696:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 924 7                         # parallel-rne.mlir:924:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_698
.LBB0_697:                              # %middle.block369
                                        #   in Loop: Header=BB0_698 Depth=2
	.loc	1 932 9 is_stmt 1               # parallel-rne.mlir:932:9
	load.d r[1:2], -1872(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1912(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_731
.LBB0_698:                              # %.preheader102
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_708 Depth 3
                                        #       Child Loop BB0_702 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1912(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[2:3], r1
	.loc	1 933 11 is_stmt 1              # parallel-rne.mlir:933:11
	bneq r12, r26, .LBB0_705
# %bb.699:                              # %scalar.ph360.preheader
                                        #   in Loop: Header=BB0_698 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_702
.LBB0_700:                              # %scalar.ph360
                                        #   in Loop: Header=BB0_702 Depth=3
	addli r7, r8, 0
.LBB0_701:                              # %scalar.ph360
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 933 11                        # parallel-rne.mlir:933:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 945 13 is_stmt 1              # parallel-rne.mlir:945:13
	add.s r6, r12, r6
	.loc	1 933 11                        # parallel-rne.mlir:933:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 945 13                        # parallel-rne.mlir:945:13
	stores.w r7, 0(r6)
	.loc	1 933 11                        # parallel-rne.mlir:933:11
	beq r1, zero, .LBB0_697
.LBB0_702:                              # %scalar.ph360
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_698 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	add.ul r[6:7], r[2:3], r[17:18]
	slli r6, r6, 2
	add.s r1, r26, r6
	loads.w r9, 0(r1)
	.loc	1 935 19                        # parallel-rne.mlir:935:19
	add.s r1, r10, r6
	loads.w r8, 0(r1)
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	and r1, r9, r22
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	bneq r1, zero, .LBB0_704
# %bb.703:                              # %scalar.ph360
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r1, r9, r23
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	beq r1, r23, .LBB0_701
	j .LBB0_700
.LBB0_704:                              #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r21
	and r1, r9, r23
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	beq r1, r23, .LBB0_701
	j .LBB0_700
.LBB0_705:                              # %vector.body362.preheader
                                        #   in Loop: Header=BB0_698 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_708
.LBB0_706:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r6, 28(r7)
.LBB0_707:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 933 11 is_stmt 1              # parallel-rne.mlir:933:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 945 13                        # parallel-rne.mlir:945:13
	add.s r1, r12, r2
	.loc	1 933 11                        # parallel-rne.mlir:933:11
	seteq.d r2, r[8:9], r[24:25]
	.loc	1 945 13                        # parallel-rne.mlir:945:13
	stores.w r14, 12(r1)
	stores.w r11, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	stores.w r6, 28(r1)
	stores.w r20, 24(r1)
	stores.w r19, 20(r1)
	stores.w r16, 16(r1)
	.loc	1 933 11                        # parallel-rne.mlir:933:11
	bneq r2, zero, .LBB0_697
.LBB0_708:                              # %vector.body362
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_698 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	add.ul r[1:2], r[8:9], r[17:18]
	slli r2, r1, 2
	add.s r6, r26, r2
	loads.w r3, 0(r6)
	.loc	1 938 19                        # parallel-rne.mlir:938:19
	and r1, r3, r23
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	and r7, r3, r22
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	seteq r1, r1, r23
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	setneq r7, r7, zero
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	and r1, r1, r7
	.loc	1 935 19                        # parallel-rne.mlir:935:19
	add.s r7, r10, r2
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	bneq r1, zero, .LBB0_710
# %bb.709:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r7)
	j .LBB0_711
.LBB0_710:                              #   in Loop: Header=BB0_708 Depth=3
	or r3, r3, r21
.LBB0_711:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r11, 4(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	bneq r1, zero, .LBB0_713
# %bb.712:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 4(r7)
	j .LBB0_714
.LBB0_713:                              #   in Loop: Header=BB0_708 Depth=3
	or r15, r11, r21
.LBB0_714:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r11, 8(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	bneq r1, zero, .LBB0_716
# %bb.715:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r7)
	j .LBB0_717
.LBB0_716:                              #   in Loop: Header=BB0_708 Depth=3
	or r11, r11, r21
.LBB0_717:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r14, 12(r6)
	and r1, r14, r23
	and r13, r14, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	bneq r1, zero, .LBB0_719
# %bb.718:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r7)
	j .LBB0_720
.LBB0_719:                              #   in Loop: Header=BB0_708 Depth=3
	or r14, r14, r21
.LBB0_720:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r16, 16(r6)
	and r1, r16, r23
	and r13, r16, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	bneq r1, zero, .LBB0_722
# %bb.721:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r7)
	j .LBB0_723
.LBB0_722:                              #   in Loop: Header=BB0_708 Depth=3
	or r16, r16, r21
.LBB0_723:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r19, 20(r6)
	and r1, r19, r23
	and r13, r19, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	bneq r1, zero, .LBB0_725
# %bb.724:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r7)
	j .LBB0_726
.LBB0_725:                              #   in Loop: Header=BB0_708 Depth=3
	or r19, r19, r21
.LBB0_726:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r20, 24(r6)
	and r1, r20, r23
	and r13, r20, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	bneq r1, zero, .LBB0_728
# %bb.727:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r7)
	j .LBB0_729
.LBB0_728:                              #   in Loop: Header=BB0_708 Depth=3
	or r20, r20, r21
.LBB0_729:                              # %vector.body362
                                        #   in Loop: Header=BB0_708 Depth=3
	loads.w r6, 28(r6)
	and r1, r6, r23
	and r13, r6, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	beq r1, zero, .LBB0_706
# %bb.730:                              #   in Loop: Header=BB0_708 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r6, r21
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	j .LBB0_707
.LBB0_731:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 924 7                         # parallel-rne.mlir:924:7
	mfence { sm }
	.loc	1 950 7                         # parallel-rne.mlir:950:7
	addli r2, zero, 5
	beq r1, r2, .LBB0_585
.LBB0_732:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 976 7                         # parallel-rne.mlir:976:7
	addli r2, zero, 6
	bneq r1, r2, .LBB0_621
.LBB0_733:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 976 7                         # parallel-rne.mlir:976:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_735
.LBB0_734:                              # %middle.block341
                                        #   in Loop: Header=BB0_735 Depth=2
	.loc	1 984 9 is_stmt 1               # parallel-rne.mlir:984:9
	load.d r[1:2], -1888(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1912(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_768
.LBB0_735:                              # %.preheader100
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_745 Depth 3
                                        #       Child Loop BB0_739 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1912(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[2:3], r1
	.loc	1 985 11 is_stmt 1              # parallel-rne.mlir:985:11
	bneq r12, r26, .LBB0_742
# %bb.736:                              # %scalar.ph332.preheader
                                        #   in Loop: Header=BB0_735 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_739
.LBB0_737:                              # %scalar.ph332
                                        #   in Loop: Header=BB0_739 Depth=3
	addli r7, r8, 0
.LBB0_738:                              # %scalar.ph332
                                        #   in Loop: Header=BB0_739 Depth=3
	.loc	1 985 11                        # parallel-rne.mlir:985:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 997 13 is_stmt 1              # parallel-rne.mlir:997:13
	add.s r6, r12, r6
	.loc	1 985 11                        # parallel-rne.mlir:985:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 997 13                        # parallel-rne.mlir:997:13
	stores.w r7, 0(r6)
	.loc	1 985 11                        # parallel-rne.mlir:985:11
	beq r1, zero, .LBB0_734
.LBB0_739:                              # %scalar.ph332
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_735 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	add.ul r[6:7], r[2:3], r[17:18]
	slli r6, r6, 2
	add.s r1, r26, r6
	loads.w r9, 0(r1)
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	add.s r1, r10, r6
	loads.w r8, 0(r1)
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	and r1, r9, r22
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r1, zero, .LBB0_741
# %bb.740:                              # %scalar.ph332
                                        #   in Loop: Header=BB0_739 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r1, r9, r23
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	beq r1, r23, .LBB0_738
	j .LBB0_737
.LBB0_741:                              #   in Loop: Header=BB0_739 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r21
	and r1, r9, r23
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	beq r1, r23, .LBB0_738
	j .LBB0_737
.LBB0_742:                              # %vector.body334.preheader
                                        #   in Loop: Header=BB0_735 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_745
.LBB0_743:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	loads.w r6, 28(r7)
.LBB0_744:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	.loc	1 985 11 is_stmt 1              # parallel-rne.mlir:985:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 997 13                        # parallel-rne.mlir:997:13
	add.s r1, r12, r2
	.loc	1 985 11                        # parallel-rne.mlir:985:11
	seteq.d r2, r[8:9], r[24:25]
	.loc	1 997 13                        # parallel-rne.mlir:997:13
	stores.w r14, 12(r1)
	stores.w r11, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	stores.w r6, 28(r1)
	stores.w r20, 24(r1)
	stores.w r19, 20(r1)
	stores.w r16, 16(r1)
	.loc	1 985 11                        # parallel-rne.mlir:985:11
	bneq r2, zero, .LBB0_734
.LBB0_745:                              # %vector.body334
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_735 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	add.ul r[1:2], r[8:9], r[17:18]
	slli r2, r1, 2
	add.s r6, r26, r2
	loads.w r3, 0(r6)
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	and r1, r3, r23
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	and r7, r3, r22
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	seteq r1, r1, r23
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	setneq r7, r7, zero
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	and r1, r1, r7
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	add.s r7, r10, r2
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r1, zero, .LBB0_747
# %bb.746:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r7)
	j .LBB0_748
.LBB0_747:                              #   in Loop: Header=BB0_745 Depth=3
	or r3, r3, r21
.LBB0_748:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	loads.w r11, 4(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r1, zero, .LBB0_750
# %bb.749:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 4(r7)
	j .LBB0_751
.LBB0_750:                              #   in Loop: Header=BB0_745 Depth=3
	or r15, r11, r21
.LBB0_751:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	loads.w r11, 8(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r1, zero, .LBB0_753
# %bb.752:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r7)
	j .LBB0_754
.LBB0_753:                              #   in Loop: Header=BB0_745 Depth=3
	or r11, r11, r21
.LBB0_754:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	loads.w r14, 12(r6)
	and r1, r14, r23
	and r13, r14, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r1, zero, .LBB0_756
# %bb.755:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r7)
	j .LBB0_757
.LBB0_756:                              #   in Loop: Header=BB0_745 Depth=3
	or r14, r14, r21
.LBB0_757:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	loads.w r16, 16(r6)
	and r1, r16, r23
	and r13, r16, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r1, zero, .LBB0_759
# %bb.758:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r7)
	j .LBB0_760
.LBB0_759:                              #   in Loop: Header=BB0_745 Depth=3
	or r16, r16, r21
.LBB0_760:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	loads.w r19, 20(r6)
	and r1, r19, r23
	and r13, r19, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r1, zero, .LBB0_762
# %bb.761:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r7)
	j .LBB0_763
.LBB0_762:                              #   in Loop: Header=BB0_745 Depth=3
	or r19, r19, r21
.LBB0_763:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	loads.w r20, 24(r6)
	and r1, r20, r23
	and r13, r20, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	bneq r1, zero, .LBB0_765
# %bb.764:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r7)
	j .LBB0_766
.LBB0_765:                              #   in Loop: Header=BB0_745 Depth=3
	or r20, r20, r21
.LBB0_766:                              # %vector.body334
                                        #   in Loop: Header=BB0_745 Depth=3
	loads.w r6, 28(r6)
	and r1, r6, r23
	and r13, r6, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	beq r1, zero, .LBB0_743
# %bb.767:                              #   in Loop: Header=BB0_745 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r6, r21
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	j .LBB0_744
.LBB0_768:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 976 7                         # parallel-rne.mlir:976:7
	mfence { sm }
	.loc	1 1002 7                        # parallel-rne.mlir:1002:7
	addli r2, zero, 7
	bneq r1, r2, .LBB0_805
.LBB0_769:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 1002 7                        # parallel-rne.mlir:1002:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_771
.LBB0_770:                              # %middle.block327
                                        #   in Loop: Header=BB0_771 Depth=2
	.loc	1 1010 9 is_stmt 1              # parallel-rne.mlir:1010:9
	load.d r[1:2], -1896(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1912(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_804
.LBB0_771:                              # %.preheader99
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_781 Depth 3
                                        #       Child Loop BB0_775 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1912(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[2:3], r1
	.loc	1 1011 11 is_stmt 1             # parallel-rne.mlir:1011:11
	bneq r12, r26, .LBB0_778
# %bb.772:                              # %scalar.ph318.preheader
                                        #   in Loop: Header=BB0_771 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_775
.LBB0_773:                              # %scalar.ph318
                                        #   in Loop: Header=BB0_775 Depth=3
	addli r7, r8, 0
.LBB0_774:                              # %scalar.ph318
                                        #   in Loop: Header=BB0_775 Depth=3
	.loc	1 1011 11                       # parallel-rne.mlir:1011:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 1023 13 is_stmt 1             # parallel-rne.mlir:1023:13
	add.s r6, r12, r6
	.loc	1 1011 11                       # parallel-rne.mlir:1011:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1023 13                       # parallel-rne.mlir:1023:13
	stores.w r7, 0(r6)
	.loc	1 1011 11                       # parallel-rne.mlir:1011:11
	beq r1, zero, .LBB0_770
.LBB0_775:                              # %scalar.ph318
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_771 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1012 19                       # parallel-rne.mlir:1012:19
	add.ul r[6:7], r[2:3], r[17:18]
	slli r6, r6, 2
	add.s r1, r26, r6
	loads.w r9, 0(r1)
	.loc	1 1013 19                       # parallel-rne.mlir:1013:19
	add.s r1, r10, r6
	loads.w r8, 0(r1)
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	and r1, r9, r22
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	bneq r1, zero, .LBB0_777
# %bb.776:                              # %scalar.ph318
                                        #   in Loop: Header=BB0_775 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r1, r9, r23
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	beq r1, r23, .LBB0_774
	j .LBB0_773
.LBB0_777:                              #   in Loop: Header=BB0_775 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r21
	and r1, r9, r23
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	beq r1, r23, .LBB0_774
	j .LBB0_773
.LBB0_778:                              # %vector.body320.preheader
                                        #   in Loop: Header=BB0_771 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_781
.LBB0_779:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	loads.w r6, 28(r7)
.LBB0_780:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	.loc	1 1011 11 is_stmt 1             # parallel-rne.mlir:1011:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 1023 13                       # parallel-rne.mlir:1023:13
	add.s r1, r12, r2
	.loc	1 1011 11                       # parallel-rne.mlir:1011:11
	seteq.d r2, r[8:9], r[24:25]
	.loc	1 1023 13                       # parallel-rne.mlir:1023:13
	stores.w r14, 12(r1)
	stores.w r11, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	stores.w r6, 28(r1)
	stores.w r20, 24(r1)
	stores.w r19, 20(r1)
	stores.w r16, 16(r1)
	.loc	1 1011 11                       # parallel-rne.mlir:1011:11
	bneq r2, zero, .LBB0_770
.LBB0_781:                              # %vector.body320
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_771 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1012 19                       # parallel-rne.mlir:1012:19
	add.ul r[1:2], r[8:9], r[17:18]
	slli r2, r1, 2
	add.s r6, r26, r2
	loads.w r3, 0(r6)
	.loc	1 1016 19                       # parallel-rne.mlir:1016:19
	and r1, r3, r23
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	and r7, r3, r22
	.loc	1 1017 19                       # parallel-rne.mlir:1017:19
	seteq r1, r1, r23
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	setneq r7, r7, zero
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	and r1, r1, r7
	.loc	1 1013 19                       # parallel-rne.mlir:1013:19
	add.s r7, r10, r2
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	bneq r1, zero, .LBB0_783
# %bb.782:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r7)
	j .LBB0_784
.LBB0_783:                              #   in Loop: Header=BB0_781 Depth=3
	or r3, r3, r21
.LBB0_784:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	loads.w r11, 4(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	bneq r1, zero, .LBB0_786
# %bb.785:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 4(r7)
	j .LBB0_787
.LBB0_786:                              #   in Loop: Header=BB0_781 Depth=3
	or r15, r11, r21
.LBB0_787:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	loads.w r11, 8(r6)
	and r1, r11, r23
	and r13, r11, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	bneq r1, zero, .LBB0_789
# %bb.788:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r7)
	j .LBB0_790
.LBB0_789:                              #   in Loop: Header=BB0_781 Depth=3
	or r11, r11, r21
.LBB0_790:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	loads.w r14, 12(r6)
	and r1, r14, r23
	and r13, r14, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	bneq r1, zero, .LBB0_792
# %bb.791:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r7)
	j .LBB0_793
.LBB0_792:                              #   in Loop: Header=BB0_781 Depth=3
	or r14, r14, r21
.LBB0_793:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	loads.w r16, 16(r6)
	and r1, r16, r23
	and r13, r16, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	bneq r1, zero, .LBB0_795
# %bb.794:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r7)
	j .LBB0_796
.LBB0_795:                              #   in Loop: Header=BB0_781 Depth=3
	or r16, r16, r21
.LBB0_796:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	loads.w r19, 20(r6)
	and r1, r19, r23
	and r13, r19, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	bneq r1, zero, .LBB0_798
# %bb.797:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r7)
	j .LBB0_799
.LBB0_798:                              #   in Loop: Header=BB0_781 Depth=3
	or r19, r19, r21
.LBB0_799:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	loads.w r20, 24(r6)
	and r1, r20, r23
	and r13, r20, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	bneq r1, zero, .LBB0_801
# %bb.800:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r7)
	j .LBB0_802
.LBB0_801:                              #   in Loop: Header=BB0_781 Depth=3
	or r20, r20, r21
.LBB0_802:                              # %vector.body320
                                        #   in Loop: Header=BB0_781 Depth=3
	loads.w r6, 28(r6)
	and r1, r6, r23
	and r13, r6, r22
	seteq r1, r1, r23
	setneq r13, r13, zero
	and r1, r1, r13
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	beq r1, zero, .LBB0_779
# %bb.803:                              #   in Loop: Header=BB0_781 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r6, r21
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	j .LBB0_780
.LBB0_804:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 1002 7                        # parallel-rne.mlir:1002:7
	mfence { sm }
.LBB0_805:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 1029 7                        # parallel-rne.mlir:1029:7
	addli r2, zero, 3
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	sync_core
	.loc	1 1029 7                        # parallel-rne.mlir:1029:7
	bneq r1, r2, .LBB0_807
# %bb.806:                              # %.critedge26
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 16
	.loc	1 1030 7 is_stmt 1              # parallel-rne.mlir:1030:7
	addli r1, zero, 35
	.loc	1 1034 13                       # parallel-rne.mlir:1034:13
	addli r2, zero, 4
	.loc	1 1029 7                        # parallel-rne.mlir:1029:7
	xsignal r3, 0
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	xsignal r1, 0
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	addli r1, zero, 36
	xsignal r1, 0
	.loc	1 1034 13                       # parallel-rne.mlir:1034:13
	loadli.w r1,  -20(r30)
	mod.s r2, r1, r2
	addli r1, r1, 1
	storeli.w r1, -20(r30)
	.loc	1 1037 7                        # parallel-rne.mlir:1037:7
	xwait r3, 0
	.loc	1 1034 13                       # parallel-rne.mlir:1034:13
	slli r1, r2, 15
	.loc	1 1038 7                        # parallel-rne.mlir:1038:7
	addli r2, zero, 25
	xwait r2, 0
	.loc	1 1034 13                       # parallel-rne.mlir:1034:13
	loadli.w r2,  -2012(r30)                # 4-byte Folded Reload
	add.s r26, r1, r2
	.loc	1 1039 7                        # parallel-rne.mlir:1039:7
	addli r1, zero, 37
	xwait r1, 0
	.loc	1 1040 7                        # parallel-rne.mlir:1040:7
	addli r1, zero, 39
	xwait r1, 0
	j .LBB0_810
.LBB0_807:                              # %.critedge24
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 4
	.loc	1 1032 7 is_stmt 1              # parallel-rne.mlir:1032:7
	addli r2, zero, 5
	bneq r1, r2, .LBB0_809
# %bb.808:                              # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 36
	addli r6, zero, 2
	addli r7, zero, 2047
	xwait r1, 0
	lock zero, r6
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, r1, 0
	ew_cfg zero, r7, zero, 2
	ew_cfg r3, zero, zero, 3
	ew_cfg r3, r3, zero, 19
	dsmadd r12, r12, r12, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	.loc	1 1034 13                       # parallel-rne.mlir:1034:13
	loadli.w r1,  -20(r30)
	addli r2, r1, 1
	mod.s r1, r1, r3
	storeli.w r2, -20(r30)
	.loc	1 1035 7                        # parallel-rne.mlir:1035:7
	addli r2, zero, 24
	xwait r2, 0
	addli r2, zero, 40
	xwait r2, 0
	lock zero, r6
	lui r2, 258048
	.loc	1 1034 13                       # parallel-rne.mlir:1034:13
	slli r1, r1, 15
	.loc	1 1035 7                        # parallel-rne.mlir:1035:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	addli r2, zero, 4
	.loc	1 1034 13                       # parallel-rne.mlir:1034:13
	loadli.w r3,  -2012(r30)                # 4-byte Folded Reload
	.loc	1 1035 7                        # parallel-rne.mlir:1035:7
	ew_cfg zero, r7, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, r2, 19
	.loc	1 1034 13                       # parallel-rne.mlir:1034:13
	add.s r26, r1, r3
	.loc	1 1035 7                        # parallel-rne.mlir:1035:7
	loadli.w r1,  -1840(r30)                # 4-byte Folded Reload
	dsmul r26, r1, r12, 0
	addli r1, zero, 23
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r1, 0
	addli r1, zero, 37
	xsignal r1, 0
	addli r1, zero, 39
	xsignal r1, 0
	.loc	1 1037 7                        # parallel-rne.mlir:1037:7
	j .LBB0_810
.LBB0_809:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1034 13                       # parallel-rne.mlir:1034:13
	loadli.w r1,  -20(r30)
	mod.s r2, r1, r3
	loadli.w r3,  -2012(r30)                # 4-byte Folded Reload
	addli r1, r1, 1
	storeli.w r1, -20(r30)
	slli r2, r2, 15
	add.s r26, r2, r3
.LBB0_810:                              # %.critedge28
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	addli r1, zero, 255
	.loc	1 1042 7                        # parallel-rne.mlir:1042:7
	xfence
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	mfence { lm, sm, gm }
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	csr_set csr5, r1
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	sub.s r1, r10, r1
	storeli.w r1, -1916(r30)                # 4-byte Folded Spill
	sub.s r1, r10, r26
	storeli.w r1, -1920(r30)                # 4-byte Folded Spill
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	sync_core
	.loc	1 1045 7                        # parallel-rne.mlir:1045:7
	beq r1, zero, .LBB0_898
# %bb.811:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	addli r2, zero, 1
	bneq r1, r2, .LBB0_926
.LBB0_812:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -1904(r30)                # 4-byte Folded Spill
	addli r1, zero, 8
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_814
.LBB0_813:                              # %middle.block298
                                        #   in Loop: Header=BB0_814 Depth=2
	.loc	1 1089 9 is_stmt 1              # parallel-rne.mlir:1089:9
	load.d r[1:2], -1848(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1840(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_839
.LBB0_814:                              # %.preheader97
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_831 Depth 3
                                        #       Child Loop BB0_817 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1840(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[2:3], r1
	.loc	1 1090 11 is_stmt 1             # parallel-rne.mlir:1090:11
	loadli.w r1,  -1904(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_829
# %bb.815:                              # %scalar.ph290.preheader
                                        #   in Loop: Header=BB0_814 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_817
.LBB0_816:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	.loc	1 1090 11                       # parallel-rne.mlir:1090:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 1112 13 is_stmt 1             # parallel-rne.mlir:1112:13
	add.s r6, r10, r6
	.loc	1 1090 11                       # parallel-rne.mlir:1090:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1112 13                       # parallel-rne.mlir:1112:13
	stores.w r7, 0(r6)
	.loc	1 1090 11                       # parallel-rne.mlir:1090:11
	beq r1, zero, .LBB0_813
.LBB0_817:                              # %scalar.ph290
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_814 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.ul r[6:7], r[2:3], r[8:9]
	lui r15, 523264
	slli r6, r6, 2
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.s r1, r12, r6
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	add.s r7, r26, r6
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	loads.w r1, 0(r1)
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	loads.w r16, 0(r7)
	lui r7, 523264
	.loc	1 1096 19                       # parallel-rne.mlir:1096:19
	and r11, r1, r27
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	beq r11, r23, .LBB0_819
# %bb.818:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_819:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	add.s r1, r1, r6
	loads.w r1, 0(r1)
	and r14, r1, r27
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	beq r14, zero, .LBB0_827
# %bb.820:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	bneq r11, zero, .LBB0_828
.LBB0_821:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	beq r14, r23, .LBB0_823
.LBB0_822:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_823:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	bneq r1, zero, .LBB0_825
# %bb.824:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r16, 0
.LBB0_825:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	setlt.u r1, r23, r14
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	bneq r1, zero, .LBB0_816
# %bb.826:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r11, 0
	j .LBB0_816
.LBB0_827:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	lui r16, 523264
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	beq r11, zero, .LBB0_821
.LBB0_828:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_817 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	bneq r14, r23, .LBB0_822
	j .LBB0_823
.LBB0_829:                              # %vector.body292.preheader
                                        #   in Loop: Header=BB0_814 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_831
.LBB0_830:                              # %vector.body292
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 1090 11 is_stmt 1             # parallel-rne.mlir:1090:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1112 13                       # parallel-rne.mlir:1112:13
	add.s r6, r10, r6
	.loc	1 1090 11                       # parallel-rne.mlir:1090:11
	seteq.d r1, r[2:3], r[24:25]
	.loc	1 1112 13                       # parallel-rne.mlir:1112:13
	stores.w r11, 12(r6)
	stores.w r21, 8(r6)
	stores.w r20, 4(r6)
	stores.w r7, 0(r6)
	.loc	1 1090 11                       # parallel-rne.mlir:1090:11
	bneq r1, zero, .LBB0_813
.LBB0_831:                              # %vector.body292
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_814 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.ul r[6:7], r[2:3], r[8:9]
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	slli r6, r6, 2
	add.s r14, r1, r6
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.s r15, r12, r6
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	loads.w r1, 0(r14)
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	loads.w r7, 0(r15)
	.loc	1 1098 19                       # parallel-rne.mlir:1098:19
	and r1, r1, r27
	.loc	1 1096 19                       # parallel-rne.mlir:1096:19
	and r7, r7, r27
	.loc	1 1099 19                       # parallel-rne.mlir:1099:19
	seteq r11, r1, r23
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	seteq r20, r1, zero
	.loc	1 1100 19                       # parallel-rne.mlir:1100:19
	seteq r13, r7, zero
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	seteq r16, r7, r23
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	max.u r1, r1, r7
	setlt.u r1, r23, r1
	.loc	1 1101 19                       # parallel-rne.mlir:1101:19
	and r7, r11, r13
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	and r11, r20, r16
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	add.s r16, r26, r6
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	or r7, r7, r11
	lui r11, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	or r1, r1, r7
	lui r7, 523264
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	bneq r1, zero, .LBB0_833
# %bb.832:                              # %vector.body292
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r16)
.LBB0_833:                              # %vector.body292
                                        #   in Loop: Header=BB0_831 Depth=3
	loads.w r1, 4(r14)
	loads.w r13, 4(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r20, r1, r23
	seteq r18, r1, zero
	seteq r17, r13, r23
	seteq r21, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r20, r21
	and r17, r18, r17
	lui r20, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	bneq r1, zero, .LBB0_835
# %bb.834:                              # %vector.body292
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r16)
.LBB0_835:                              # %vector.body292
                                        #   in Loop: Header=BB0_831 Depth=3
	loads.w r1, 8(r14)
	loads.w r13, 8(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r17, r1, r23
	seteq r21, r1, zero
	seteq r18, r13, zero
	seteq r19, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r17, r18
	and r17, r21, r19
	lui r21, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	bneq r1, zero, .LBB0_837
# %bb.836:                              # %vector.body292
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r16)
.LBB0_837:                              # %vector.body292
                                        #   in Loop: Header=BB0_831 Depth=3
	loads.w r1, 12(r14)
	loads.w r13, 12(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r14, r1, r23
	seteq r18, r1, zero
	seteq r15, r13, zero
	seteq r17, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r14, r15
	and r14, r18, r17
	or r13, r13, r14
	or r1, r1, r13
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	bneq r1, zero, .LBB0_830
# %bb.838:                              # %vector.body292
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r16)
	j .LBB0_830
.LBB0_839:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	mfence { sm }
	.loc	1 1117 7                        # parallel-rne.mlir:1117:7
	addli r2, zero, 2
	beq r1, r2, .LBB0_927
.LBB0_840:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1153 7                        # parallel-rne.mlir:1153:7
	addli r2, zero, 3
	bneq r1, r2, .LBB0_955
.LBB0_841:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -1848(r30)                # 4-byte Folded Spill
	addli r1, zero, 24
	.loc	1 1153 7                        # parallel-rne.mlir:1153:7
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_843
.LBB0_842:                              # %middle.block268
                                        #   in Loop: Header=BB0_843 Depth=2
	.loc	1 1161 9 is_stmt 1              # parallel-rne.mlir:1161:9
	load.d r[1:2], -1864(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1840(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_868
.LBB0_843:                              # %.preheader95
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_860 Depth 3
                                        #       Child Loop BB0_846 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1840(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[2:3], r1
	.loc	1 1162 11 is_stmt 1             # parallel-rne.mlir:1162:11
	loadli.w r1,  -1848(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_858
# %bb.844:                              # %scalar.ph260.preheader
                                        #   in Loop: Header=BB0_843 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_846
.LBB0_845:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 1162 11                       # parallel-rne.mlir:1162:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 1184 13 is_stmt 1             # parallel-rne.mlir:1184:13
	add.s r6, r10, r6
	.loc	1 1162 11                       # parallel-rne.mlir:1162:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1184 13                       # parallel-rne.mlir:1184:13
	stores.w r7, 0(r6)
	.loc	1 1162 11                       # parallel-rne.mlir:1162:11
	beq r1, zero, .LBB0_842
.LBB0_846:                              # %scalar.ph260
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_843 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	add.ul r[6:7], r[2:3], r[8:9]
	lui r15, 523264
	slli r6, r6, 2
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	add.s r1, r12, r6
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	add.s r7, r26, r6
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	loads.w r1, 0(r1)
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	loads.w r16, 0(r7)
	lui r7, 523264
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	and r11, r1, r27
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	beq r11, r23, .LBB0_848
# %bb.847:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_848:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	add.s r1, r1, r6
	loads.w r1, 0(r1)
	and r14, r1, r27
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	beq r14, zero, .LBB0_856
# %bb.849:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	bneq r11, zero, .LBB0_857
.LBB0_850:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	beq r14, r23, .LBB0_852
.LBB0_851:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_852:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	bneq r1, zero, .LBB0_854
# %bb.853:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r16, 0
.LBB0_854:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	setlt.u r1, r23, r14
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	bneq r1, zero, .LBB0_845
# %bb.855:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r11, 0
	j .LBB0_845
.LBB0_856:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	lui r16, 523264
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	beq r11, zero, .LBB0_850
.LBB0_857:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	bneq r14, r23, .LBB0_851
	j .LBB0_852
.LBB0_858:                              # %vector.body262.preheader
                                        #   in Loop: Header=BB0_843 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_860
.LBB0_859:                              # %vector.body262
                                        #   in Loop: Header=BB0_860 Depth=3
	.loc	1 1162 11 is_stmt 1             # parallel-rne.mlir:1162:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1184 13                       # parallel-rne.mlir:1184:13
	add.s r6, r10, r6
	.loc	1 1162 11                       # parallel-rne.mlir:1162:11
	seteq.d r1, r[2:3], r[24:25]
	.loc	1 1184 13                       # parallel-rne.mlir:1184:13
	stores.w r11, 12(r6)
	stores.w r21, 8(r6)
	stores.w r20, 4(r6)
	stores.w r7, 0(r6)
	.loc	1 1162 11                       # parallel-rne.mlir:1162:11
	bneq r1, zero, .LBB0_842
.LBB0_860:                              # %vector.body262
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_843 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	add.ul r[6:7], r[2:3], r[8:9]
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	slli r6, r6, 2
	add.s r14, r1, r6
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	add.s r15, r12, r6
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	loads.w r1, 0(r14)
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	loads.w r7, 0(r15)
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	and r1, r1, r27
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	and r7, r7, r27
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	seteq r11, r1, r23
	.loc	1 1175 19                       # parallel-rne.mlir:1175:19
	seteq r20, r1, zero
	.loc	1 1172 19                       # parallel-rne.mlir:1172:19
	seteq r13, r7, zero
	.loc	1 1174 19                       # parallel-rne.mlir:1174:19
	seteq r16, r7, r23
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	max.u r1, r1, r7
	setlt.u r1, r23, r1
	.loc	1 1173 19                       # parallel-rne.mlir:1173:19
	and r7, r11, r13
	.loc	1 1176 19                       # parallel-rne.mlir:1176:19
	and r11, r20, r16
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	add.s r16, r26, r6
	.loc	1 1177 19                       # parallel-rne.mlir:1177:19
	or r7, r7, r11
	lui r11, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	or r1, r1, r7
	lui r7, 523264
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	bneq r1, zero, .LBB0_862
# %bb.861:                              # %vector.body262
                                        #   in Loop: Header=BB0_860 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r16)
.LBB0_862:                              # %vector.body262
                                        #   in Loop: Header=BB0_860 Depth=3
	loads.w r1, 4(r14)
	loads.w r13, 4(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r20, r1, r23
	seteq r18, r1, zero
	seteq r17, r13, r23
	seteq r21, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r20, r21
	and r17, r18, r17
	lui r20, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	bneq r1, zero, .LBB0_864
# %bb.863:                              # %vector.body262
                                        #   in Loop: Header=BB0_860 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r16)
.LBB0_864:                              # %vector.body262
                                        #   in Loop: Header=BB0_860 Depth=3
	loads.w r1, 8(r14)
	loads.w r13, 8(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r17, r1, r23
	seteq r21, r1, zero
	seteq r18, r13, zero
	seteq r19, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r17, r18
	and r17, r21, r19
	lui r21, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	bneq r1, zero, .LBB0_866
# %bb.865:                              # %vector.body262
                                        #   in Loop: Header=BB0_860 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r16)
.LBB0_866:                              # %vector.body262
                                        #   in Loop: Header=BB0_860 Depth=3
	loads.w r1, 12(r14)
	loads.w r13, 12(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r14, r1, r23
	seteq r18, r1, zero
	seteq r15, r13, zero
	seteq r17, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r14, r15
	and r14, r18, r17
	or r13, r13, r14
	or r1, r1, r13
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	bneq r1, zero, .LBB0_859
# %bb.867:                              # %vector.body262
                                        #   in Loop: Header=BB0_860 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r16)
	j .LBB0_859
.LBB0_868:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 1153 7                        # parallel-rne.mlir:1153:7
	mfence { sm }
	.loc	1 1189 7                        # parallel-rne.mlir:1189:7
	addli r2, zero, 4
	beq r1, r2, .LBB0_956
.LBB0_869:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1225 7                        # parallel-rne.mlir:1225:7
	addli r2, zero, 5
	bneq r1, r2, .LBB0_984
.LBB0_870:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -1848(r30)                # 4-byte Folded Spill
	addli r1, zero, 40
	.loc	1 1225 7                        # parallel-rne.mlir:1225:7
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_872
.LBB0_871:                              # %middle.block238
                                        #   in Loop: Header=BB0_872 Depth=2
	.loc	1 1233 9 is_stmt 1              # parallel-rne.mlir:1233:9
	load.d r[1:2], -1880(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1840(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_897
.LBB0_872:                              # %.preheader93
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_889 Depth 3
                                        #       Child Loop BB0_875 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1840(r30)              # 8-byte Folded Spill
	sll.d r[19:20], r[2:3], r1
	.loc	1 1234 11 is_stmt 1             # parallel-rne.mlir:1234:11
	loadli.w r1,  -1848(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_887
# %bb.873:                              # %scalar.ph230.preheader
                                        #   in Loop: Header=BB0_872 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_875
.LBB0_874:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 1234 11                       # parallel-rne.mlir:1234:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 1256 13 is_stmt 1             # parallel-rne.mlir:1256:13
	add.s r6, r10, r6
	.loc	1 1234 11                       # parallel-rne.mlir:1234:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1256 13                       # parallel-rne.mlir:1256:13
	stores.w r7, 0(r6)
	.loc	1 1234 11                       # parallel-rne.mlir:1234:11
	beq r1, zero, .LBB0_871
.LBB0_875:                              # %scalar.ph230
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_872 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	add.ul r[6:7], r[2:3], r[19:20]
	lui r14, 523264
	slli r6, r6, 2
	.loc	1 1236 19                       # parallel-rne.mlir:1236:19
	add.s r1, r12, r6
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	add.s r7, r26, r6
	.loc	1 1236 19                       # parallel-rne.mlir:1236:19
	loads.w r1, 0(r1)
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	loads.w r15, 0(r7)
	lui r7, 523264
	.loc	1 1240 19                       # parallel-rne.mlir:1240:19
	and r9, r1, r27
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	beq r9, r23, .LBB0_877
# %bb.876:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r15, 0
.LBB0_877:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	add.s r1, r1, r6
	loads.w r1, 0(r1)
	and r11, r1, r27
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	beq r11, zero, .LBB0_885
# %bb.878:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	lui r15, 523264
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	bneq r9, zero, .LBB0_886
.LBB0_879:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	beq r11, r23, .LBB0_881
.LBB0_880:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
.LBB0_881:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	setlt.u r1, r23, r9
	lui r9, 523264
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	bneq r1, zero, .LBB0_883
# %bb.882:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
.LBB0_883:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	setlt.u r1, r23, r11
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	bneq r1, zero, .LBB0_874
# %bb.884:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r9, 0
	j .LBB0_874
.LBB0_885:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	lui r15, 523264
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	beq r9, zero, .LBB0_879
.LBB0_886:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	bneq r11, r23, .LBB0_880
	j .LBB0_881
.LBB0_887:                              # %vector.body232.preheader
                                        #   in Loop: Header=BB0_872 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_889
.LBB0_888:                              # %vector.body232
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 1234 11 is_stmt 1             # parallel-rne.mlir:1234:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1256 13                       # parallel-rne.mlir:1256:13
	add.s r6, r10, r6
	.loc	1 1234 11                       # parallel-rne.mlir:1234:11
	seteq.d r1, r[2:3], r[24:25]
	.loc	1 1256 13                       # parallel-rne.mlir:1256:13
	stores.w r9, 12(r6)
	stores.w r21, 8(r6)
	stores.w r16, 4(r6)
	stores.w r7, 0(r6)
	.loc	1 1234 11                       # parallel-rne.mlir:1234:11
	bneq r1, zero, .LBB0_871
.LBB0_889:                              # %vector.body232
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_872 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	add.ul r[6:7], r[2:3], r[19:20]
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	slli r6, r6, 2
	add.s r11, r1, r6
	.loc	1 1236 19                       # parallel-rne.mlir:1236:19
	add.s r14, r12, r6
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	loads.w r1, 0(r11)
	.loc	1 1236 19                       # parallel-rne.mlir:1236:19
	loads.w r7, 0(r14)
	.loc	1 1242 19                       # parallel-rne.mlir:1242:19
	and r1, r1, r27
	.loc	1 1240 19                       # parallel-rne.mlir:1240:19
	and r7, r7, r27
	.loc	1 1243 19                       # parallel-rne.mlir:1243:19
	seteq r9, r1, r23
	.loc	1 1247 19                       # parallel-rne.mlir:1247:19
	seteq r16, r1, zero
	.loc	1 1244 19                       # parallel-rne.mlir:1244:19
	seteq r13, r7, zero
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	seteq r15, r7, r23
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	max.u r1, r1, r7
	setlt.u r1, r23, r1
	.loc	1 1245 19                       # parallel-rne.mlir:1245:19
	and r7, r9, r13
	.loc	1 1248 19                       # parallel-rne.mlir:1248:19
	and r9, r16, r15
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	add.s r15, r26, r6
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	or r7, r7, r9
	lui r9, 523264
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	or r1, r1, r7
	lui r7, 523264
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	bneq r1, zero, .LBB0_891
# %bb.890:                              # %vector.body232
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r15)
.LBB0_891:                              # %vector.body232
                                        #   in Loop: Header=BB0_889 Depth=3
	loads.w r1, 4(r11)
	loads.w r13, 4(r14)
	and r1, r1, r27
	and r13, r13, r27
	seteq r16, r1, r23
	seteq r17, r1, zero
	seteq r8, r13, r23
	seteq r21, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r16, r21
	and r8, r17, r8
	lui r16, 523264
	or r8, r13, r8
	or r1, r1, r8
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	bneq r1, zero, .LBB0_893
# %bb.892:                              # %vector.body232
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r15)
.LBB0_893:                              # %vector.body232
                                        #   in Loop: Header=BB0_889 Depth=3
	loads.w r1, 8(r11)
	loads.w r8, 8(r14)
	and r1, r1, r27
	and r8, r8, r27
	seteq r13, r1, r23
	seteq r21, r1, zero
	seteq r17, r8, zero
	seteq r18, r8, r23
	max.u r1, r1, r8
	setlt.u r1, r23, r1
	and r8, r13, r17
	and r13, r21, r18
	lui r21, 523264
	or r8, r8, r13
	or r1, r1, r8
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	bneq r1, zero, .LBB0_895
# %bb.894:                              # %vector.body232
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r15)
.LBB0_895:                              # %vector.body232
                                        #   in Loop: Header=BB0_889 Depth=3
	loads.w r1, 12(r11)
	loads.w r8, 12(r14)
	and r1, r1, r27
	and r8, r8, r27
	seteq r11, r1, r23
	seteq r17, r1, zero
	seteq r13, r8, zero
	seteq r14, r8, r23
	max.u r1, r1, r8
	setlt.u r1, r23, r1
	and r8, r11, r13
	and r11, r17, r14
	or r8, r8, r11
	or r1, r1, r8
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	bneq r1, zero, .LBB0_888
# %bb.896:                              # %vector.body232
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r15)
	j .LBB0_888
.LBB0_897:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 1225 7                        # parallel-rne.mlir:1225:7
	mfence { sm }
	.loc	1 1261 7                        # parallel-rne.mlir:1261:7
	addli r2, zero, 6
	bneq r1, r2, .LBB0_1013
	j .LBB0_985
.LBB0_898:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[2:3], zero
	.loc	1 1045 7 is_stmt 1              # parallel-rne.mlir:1045:7
	storeli.w r1, -1912(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_900
.LBB0_899:                              # %middle.block313
                                        #   in Loop: Header=BB0_900 Depth=2
	.loc	1 1053 9                        # parallel-rne.mlir:1053:9
	load.d r[1:2], -1904(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1840(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_925
.LBB0_900:                              # %.preheader98
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_917 Depth 3
                                        #       Child Loop BB0_903 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1840(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[2:3], r1
	.loc	1 1054 11 is_stmt 1             # parallel-rne.mlir:1054:11
	loadli.w r1,  -1912(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_915
# %bb.901:                              # %scalar.ph305.preheader
                                        #   in Loop: Header=BB0_900 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_903
.LBB0_902:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 1076 13 is_stmt 1             # parallel-rne.mlir:1076:13
	add.s r6, r10, r6
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1076 13                       # parallel-rne.mlir:1076:13
	stores.w r7, 0(r6)
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	beq r1, zero, .LBB0_899
.LBB0_903:                              # %scalar.ph305
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_900 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.ul r[6:7], r[2:3], r[8:9]
	lui r15, 523264
	slli r6, r6, 2
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r1, r12, r6
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.s r7, r26, r6
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	loads.w r1, 0(r1)
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	loads.w r16, 0(r7)
	lui r7, 523264
	.loc	1 1060 19                       # parallel-rne.mlir:1060:19
	and r11, r1, r27
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	beq r11, r23, .LBB0_905
# %bb.904:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_905:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	add.s r1, r1, r6
	loads.w r1, 0(r1)
	and r14, r1, r27
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	beq r14, zero, .LBB0_913
# %bb.906:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r11, zero, .LBB0_914
.LBB0_907:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	beq r14, r23, .LBB0_909
.LBB0_908:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_909:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r1, zero, .LBB0_911
# %bb.910:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r16, 0
.LBB0_911:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	setlt.u r1, r23, r14
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r1, zero, .LBB0_902
# %bb.912:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r11, 0
	j .LBB0_902
.LBB0_913:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	lui r16, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	beq r11, zero, .LBB0_907
.LBB0_914:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_903 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r14, r23, .LBB0_908
	j .LBB0_909
.LBB0_915:                              # %vector.body307.preheader
                                        #   in Loop: Header=BB0_900 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_917
.LBB0_916:                              # %vector.body307
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 1054 11 is_stmt 1             # parallel-rne.mlir:1054:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1076 13                       # parallel-rne.mlir:1076:13
	add.s r6, r10, r6
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	seteq.d r1, r[2:3], r[24:25]
	.loc	1 1076 13                       # parallel-rne.mlir:1076:13
	stores.w r11, 12(r6)
	stores.w r21, 8(r6)
	stores.w r20, 4(r6)
	stores.w r7, 0(r6)
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	bneq r1, zero, .LBB0_899
.LBB0_917:                              # %vector.body307
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_900 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.ul r[6:7], r[2:3], r[8:9]
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	slli r6, r6, 2
	add.s r14, r1, r6
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r15, r12, r6
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	loads.w r1, 0(r14)
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	loads.w r7, 0(r15)
	.loc	1 1062 19                       # parallel-rne.mlir:1062:19
	and r1, r1, r27
	.loc	1 1060 19                       # parallel-rne.mlir:1060:19
	and r7, r7, r27
	.loc	1 1063 19                       # parallel-rne.mlir:1063:19
	seteq r11, r1, r23
	.loc	1 1067 19                       # parallel-rne.mlir:1067:19
	seteq r20, r1, zero
	.loc	1 1064 19                       # parallel-rne.mlir:1064:19
	seteq r13, r7, zero
	.loc	1 1066 19                       # parallel-rne.mlir:1066:19
	seteq r16, r7, r23
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	max.u r1, r1, r7
	setlt.u r1, r23, r1
	.loc	1 1065 19                       # parallel-rne.mlir:1065:19
	and r7, r11, r13
	.loc	1 1068 19                       # parallel-rne.mlir:1068:19
	and r11, r20, r16
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.s r16, r26, r6
	.loc	1 1069 19                       # parallel-rne.mlir:1069:19
	or r7, r7, r11
	lui r11, 523264
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	or r1, r1, r7
	lui r7, 523264
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r1, zero, .LBB0_919
# %bb.918:                              # %vector.body307
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r16)
.LBB0_919:                              # %vector.body307
                                        #   in Loop: Header=BB0_917 Depth=3
	loads.w r1, 4(r14)
	loads.w r13, 4(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r20, r1, r23
	seteq r18, r1, zero
	seteq r17, r13, r23
	seteq r21, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r20, r21
	and r17, r18, r17
	lui r20, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r1, zero, .LBB0_921
# %bb.920:                              # %vector.body307
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r16)
.LBB0_921:                              # %vector.body307
                                        #   in Loop: Header=BB0_917 Depth=3
	loads.w r1, 8(r14)
	loads.w r13, 8(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r17, r1, r23
	seteq r21, r1, zero
	seteq r18, r13, zero
	seteq r19, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r17, r18
	and r17, r21, r19
	lui r21, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r1, zero, .LBB0_923
# %bb.922:                              # %vector.body307
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r16)
.LBB0_923:                              # %vector.body307
                                        #   in Loop: Header=BB0_917 Depth=3
	loads.w r1, 12(r14)
	loads.w r13, 12(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r14, r1, r23
	seteq r18, r1, zero
	seteq r15, r13, zero
	seteq r17, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r14, r15
	and r14, r18, r17
	or r13, r13, r14
	or r1, r1, r13
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	bneq r1, zero, .LBB0_916
# %bb.924:                              # %vector.body307
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r16)
	j .LBB0_916
.LBB0_925:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 1045 7                        # parallel-rne.mlir:1045:7
	mfence { sm }
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	addli r2, zero, 1
	beq r1, r2, .LBB0_812
.LBB0_926:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1117 7                        # parallel-rne.mlir:1117:7
	addli r2, zero, 2
	bneq r1, r2, .LBB0_840
.LBB0_927:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[2:3], r2
	storeli.w r1, -1848(r30)                # 4-byte Folded Spill
	.loc	1 1117 7                        # parallel-rne.mlir:1117:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_929
.LBB0_928:                              # %middle.block283
                                        #   in Loop: Header=BB0_929 Depth=2
	.loc	1 1125 9 is_stmt 1              # parallel-rne.mlir:1125:9
	load.d r[1:2], -1856(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1840(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_954
.LBB0_929:                              # %.preheader96
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_946 Depth 3
                                        #       Child Loop BB0_932 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1840(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[2:3], r1
	.loc	1 1126 11 is_stmt 1             # parallel-rne.mlir:1126:11
	loadli.w r1,  -1848(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_944
# %bb.930:                              # %scalar.ph275.preheader
                                        #   in Loop: Header=BB0_929 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_932
.LBB0_931:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 1126 11                       # parallel-rne.mlir:1126:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 1148 13 is_stmt 1             # parallel-rne.mlir:1148:13
	add.s r6, r10, r6
	.loc	1 1126 11                       # parallel-rne.mlir:1126:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1148 13                       # parallel-rne.mlir:1148:13
	stores.w r7, 0(r6)
	.loc	1 1126 11                       # parallel-rne.mlir:1126:11
	beq r1, zero, .LBB0_928
.LBB0_932:                              # %scalar.ph275
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_929 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.ul r[6:7], r[2:3], r[8:9]
	lui r15, 523264
	slli r6, r6, 2
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	add.s r1, r12, r6
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	add.s r7, r26, r6
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	loads.w r1, 0(r1)
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	loads.w r16, 0(r7)
	lui r7, 523264
	.loc	1 1132 19                       # parallel-rne.mlir:1132:19
	and r11, r1, r27
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r11, r23, .LBB0_934
# %bb.933:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_934:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	add.s r1, r1, r6
	loads.w r1, 0(r1)
	and r14, r1, r27
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r14, zero, .LBB0_942
# %bb.935:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r11, zero, .LBB0_943
.LBB0_936:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	beq r14, r23, .LBB0_938
.LBB0_937:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_938:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r1, zero, .LBB0_940
# %bb.939:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r16, 0
.LBB0_940:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	setlt.u r1, r23, r14
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r1, zero, .LBB0_931
# %bb.941:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r11, 0
	j .LBB0_931
.LBB0_942:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	lui r16, 523264
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r11, zero, .LBB0_936
.LBB0_943:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r14, r23, .LBB0_937
	j .LBB0_938
.LBB0_944:                              # %vector.body277.preheader
                                        #   in Loop: Header=BB0_929 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_946
.LBB0_945:                              # %vector.body277
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 1126 11 is_stmt 1             # parallel-rne.mlir:1126:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1148 13                       # parallel-rne.mlir:1148:13
	add.s r6, r10, r6
	.loc	1 1126 11                       # parallel-rne.mlir:1126:11
	seteq.d r1, r[2:3], r[24:25]
	.loc	1 1148 13                       # parallel-rne.mlir:1148:13
	stores.w r11, 12(r6)
	stores.w r21, 8(r6)
	stores.w r20, 4(r6)
	stores.w r7, 0(r6)
	.loc	1 1126 11                       # parallel-rne.mlir:1126:11
	bneq r1, zero, .LBB0_928
.LBB0_946:                              # %vector.body277
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_929 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.ul r[6:7], r[2:3], r[8:9]
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	slli r6, r6, 2
	add.s r14, r1, r6
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	add.s r15, r12, r6
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	loads.w r1, 0(r14)
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	loads.w r7, 0(r15)
	.loc	1 1134 19                       # parallel-rne.mlir:1134:19
	and r1, r1, r27
	.loc	1 1132 19                       # parallel-rne.mlir:1132:19
	and r7, r7, r27
	.loc	1 1135 19                       # parallel-rne.mlir:1135:19
	seteq r11, r1, r23
	.loc	1 1139 19                       # parallel-rne.mlir:1139:19
	seteq r20, r1, zero
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	seteq r13, r7, zero
	.loc	1 1138 19                       # parallel-rne.mlir:1138:19
	seteq r16, r7, r23
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	max.u r1, r1, r7
	setlt.u r1, r23, r1
	.loc	1 1137 19                       # parallel-rne.mlir:1137:19
	and r7, r11, r13
	.loc	1 1140 19                       # parallel-rne.mlir:1140:19
	and r11, r20, r16
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	add.s r16, r26, r6
	.loc	1 1141 19                       # parallel-rne.mlir:1141:19
	or r7, r7, r11
	lui r11, 523264
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	or r1, r1, r7
	lui r7, 523264
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r1, zero, .LBB0_948
# %bb.947:                              # %vector.body277
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r16)
.LBB0_948:                              # %vector.body277
                                        #   in Loop: Header=BB0_946 Depth=3
	loads.w r1, 4(r14)
	loads.w r13, 4(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r20, r1, r23
	seteq r18, r1, zero
	seteq r17, r13, r23
	seteq r21, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r20, r21
	and r17, r18, r17
	lui r20, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r1, zero, .LBB0_950
# %bb.949:                              # %vector.body277
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r16)
.LBB0_950:                              # %vector.body277
                                        #   in Loop: Header=BB0_946 Depth=3
	loads.w r1, 8(r14)
	loads.w r13, 8(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r17, r1, r23
	seteq r21, r1, zero
	seteq r18, r13, zero
	seteq r19, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r17, r18
	and r17, r21, r19
	lui r21, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r1, zero, .LBB0_952
# %bb.951:                              # %vector.body277
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r16)
.LBB0_952:                              # %vector.body277
                                        #   in Loop: Header=BB0_946 Depth=3
	loads.w r1, 12(r14)
	loads.w r13, 12(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r14, r1, r23
	seteq r18, r1, zero
	seteq r15, r13, zero
	seteq r17, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r14, r15
	and r14, r18, r17
	or r13, r13, r14
	or r1, r1, r13
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	bneq r1, zero, .LBB0_945
# %bb.953:                              # %vector.body277
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r16)
	j .LBB0_945
.LBB0_954:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 1117 7                        # parallel-rne.mlir:1117:7
	mfence { sm }
	.loc	1 1153 7                        # parallel-rne.mlir:1153:7
	addli r2, zero, 3
	beq r1, r2, .LBB0_841
.LBB0_955:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1189 7                        # parallel-rne.mlir:1189:7
	addli r2, zero, 4
	bneq r1, r2, .LBB0_869
.LBB0_956:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -1848(r30)                # 4-byte Folded Spill
	addli r1, zero, 32
	.loc	1 1189 7                        # parallel-rne.mlir:1189:7
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_958
.LBB0_957:                              # %middle.block253
                                        #   in Loop: Header=BB0_958 Depth=2
	.loc	1 1197 9 is_stmt 1              # parallel-rne.mlir:1197:9
	load.d r[1:2], -1872(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1840(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_983
.LBB0_958:                              # %.preheader94
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_975 Depth 3
                                        #       Child Loop BB0_961 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1840(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[2:3], r1
	.loc	1 1198 11 is_stmt 1             # parallel-rne.mlir:1198:11
	loadli.w r1,  -1848(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_973
# %bb.959:                              # %scalar.ph245.preheader
                                        #   in Loop: Header=BB0_958 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_961
.LBB0_960:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 1198 11                       # parallel-rne.mlir:1198:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 1220 13 is_stmt 1             # parallel-rne.mlir:1220:13
	add.s r6, r10, r6
	.loc	1 1198 11                       # parallel-rne.mlir:1198:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1220 13                       # parallel-rne.mlir:1220:13
	stores.w r7, 0(r6)
	.loc	1 1198 11                       # parallel-rne.mlir:1198:11
	beq r1, zero, .LBB0_957
.LBB0_961:                              # %scalar.ph245
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_958 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	add.ul r[6:7], r[2:3], r[8:9]
	lui r15, 523264
	slli r6, r6, 2
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	add.s r1, r12, r6
	.loc	1 1201 19                       # parallel-rne.mlir:1201:19
	add.s r7, r26, r6
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	loads.w r1, 0(r1)
	.loc	1 1201 19                       # parallel-rne.mlir:1201:19
	loads.w r16, 0(r7)
	lui r7, 523264
	.loc	1 1204 19                       # parallel-rne.mlir:1204:19
	and r11, r1, r27
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	beq r11, r23, .LBB0_963
# %bb.962:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_963:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	add.s r1, r1, r6
	loads.w r1, 0(r1)
	and r14, r1, r27
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	beq r14, zero, .LBB0_971
# %bb.964:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	bneq r11, zero, .LBB0_972
.LBB0_965:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	beq r14, r23, .LBB0_967
.LBB0_966:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_967:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	setlt.u r1, r23, r11
	lui r11, 523264
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	bneq r1, zero, .LBB0_969
# %bb.968:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r16, 0
.LBB0_969:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	setlt.u r1, r23, r14
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	bneq r1, zero, .LBB0_960
# %bb.970:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r11, 0
	j .LBB0_960
.LBB0_971:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	lui r16, 523264
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	beq r11, zero, .LBB0_965
.LBB0_972:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_961 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	bneq r14, r23, .LBB0_966
	j .LBB0_967
.LBB0_973:                              # %vector.body247.preheader
                                        #   in Loop: Header=BB0_958 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_975
.LBB0_974:                              # %vector.body247
                                        #   in Loop: Header=BB0_975 Depth=3
	.loc	1 1198 11 is_stmt 1             # parallel-rne.mlir:1198:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1220 13                       # parallel-rne.mlir:1220:13
	add.s r6, r10, r6
	.loc	1 1198 11                       # parallel-rne.mlir:1198:11
	seteq.d r1, r[2:3], r[24:25]
	.loc	1 1220 13                       # parallel-rne.mlir:1220:13
	stores.w r11, 12(r6)
	stores.w r21, 8(r6)
	stores.w r20, 4(r6)
	stores.w r7, 0(r6)
	.loc	1 1198 11                       # parallel-rne.mlir:1198:11
	bneq r1, zero, .LBB0_957
.LBB0_975:                              # %vector.body247
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_958 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	add.ul r[6:7], r[2:3], r[8:9]
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	slli r6, r6, 2
	add.s r14, r1, r6
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	add.s r15, r12, r6
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	loads.w r1, 0(r14)
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	loads.w r7, 0(r15)
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	and r1, r1, r27
	.loc	1 1204 19                       # parallel-rne.mlir:1204:19
	and r7, r7, r27
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	seteq r11, r1, r23
	.loc	1 1211 19                       # parallel-rne.mlir:1211:19
	seteq r20, r1, zero
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	seteq r13, r7, zero
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	seteq r16, r7, r23
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	max.u r1, r1, r7
	setlt.u r1, r23, r1
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	and r7, r11, r13
	.loc	1 1212 19                       # parallel-rne.mlir:1212:19
	and r11, r20, r16
	.loc	1 1201 19                       # parallel-rne.mlir:1201:19
	add.s r16, r26, r6
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	or r7, r7, r11
	lui r11, 523264
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	or r1, r1, r7
	lui r7, 523264
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	bneq r1, zero, .LBB0_977
# %bb.976:                              # %vector.body247
                                        #   in Loop: Header=BB0_975 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r16)
.LBB0_977:                              # %vector.body247
                                        #   in Loop: Header=BB0_975 Depth=3
	loads.w r1, 4(r14)
	loads.w r13, 4(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r20, r1, r23
	seteq r18, r1, zero
	seteq r17, r13, r23
	seteq r21, r13, zero
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r20, r21
	and r17, r18, r17
	lui r20, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	bneq r1, zero, .LBB0_979
# %bb.978:                              # %vector.body247
                                        #   in Loop: Header=BB0_975 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r16)
.LBB0_979:                              # %vector.body247
                                        #   in Loop: Header=BB0_975 Depth=3
	loads.w r1, 8(r14)
	loads.w r13, 8(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r17, r1, r23
	seteq r21, r1, zero
	seteq r18, r13, zero
	seteq r19, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r17, r18
	and r17, r21, r19
	lui r21, 523264
	or r13, r13, r17
	or r1, r1, r13
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	bneq r1, zero, .LBB0_981
# %bb.980:                              # %vector.body247
                                        #   in Loop: Header=BB0_975 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r16)
.LBB0_981:                              # %vector.body247
                                        #   in Loop: Header=BB0_975 Depth=3
	loads.w r1, 12(r14)
	loads.w r13, 12(r15)
	and r1, r1, r27
	and r13, r13, r27
	seteq r14, r1, r23
	seteq r18, r1, zero
	seteq r15, r13, zero
	seteq r17, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r13, r14, r15
	and r14, r18, r17
	or r13, r13, r14
	or r1, r1, r13
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	bneq r1, zero, .LBB0_974
# %bb.982:                              # %vector.body247
                                        #   in Loop: Header=BB0_975 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r16)
	j .LBB0_974
.LBB0_983:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 1189 7                        # parallel-rne.mlir:1189:7
	mfence { sm }
	.loc	1 1225 7                        # parallel-rne.mlir:1225:7
	addli r2, zero, 5
	beq r1, r2, .LBB0_870
.LBB0_984:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1261 7                        # parallel-rne.mlir:1261:7
	addli r2, zero, 6
	bneq r1, r2, .LBB0_1013
.LBB0_985:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -1848(r30)                # 4-byte Folded Spill
	addli r1, zero, 48
	.loc	1 1261 7                        # parallel-rne.mlir:1261:7
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_987
.LBB0_986:                              # %middle.block223
                                        #   in Loop: Header=BB0_987 Depth=2
	.loc	1 1269 9 is_stmt 1              # parallel-rne.mlir:1269:9
	load.d r[1:2], -1888(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1840(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_1012
.LBB0_987:                              # %.preheader92
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1004 Depth 3
                                        #       Child Loop BB0_990 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 1270 11 is_stmt 1             # parallel-rne.mlir:1270:11
	store.d r[2:3], -1840(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[2:3], r1
	loadli.w r1,  -1848(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_1002
# %bb.988:                              # %scalar.ph215.preheader
                                        #   in Loop: Header=BB0_987 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_990
.LBB0_989:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	.loc	1 1270 11                       # parallel-rne.mlir:1270:11
	setlt.ul r1, r[6:7], r[4:5]
	.loc	1 1292 13 is_stmt 1             # parallel-rne.mlir:1292:13
	add.s r2, r10, r3
	.loc	1 1270 11                       # parallel-rne.mlir:1270:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 1292 13                       # parallel-rne.mlir:1292:13
	stores.w r11, 0(r2)
	.loc	1 1270 11                       # parallel-rne.mlir:1270:11
	beq r1, zero, .LBB0_986
.LBB0_990:                              # %scalar.ph215
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_987 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	add.ul r[1:2], r[6:7], r[17:18]
	lui r11, 523264
	lui r16, 523264
	slli r3, r1, 2
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	add.s r1, r12, r3
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	add.s r2, r26, r3
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	loads.w r1, 0(r1)
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	loads.w r19, 0(r2)
	.loc	1 1276 19                       # parallel-rne.mlir:1276:19
	and r14, r1, r27
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r14, r23, .LBB0_992
# %bb.991:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r19, 0
.LBB0_992:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	add.s r1, r1, r3
	loads.w r1, 0(r1)
	and r15, r1, r27
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r15, zero, .LBB0_1000
# %bb.993:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r19, 0
	lui r19, 523264
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r14, zero, .LBB0_1001
.LBB0_994:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	beq r15, r23, .LBB0_996
.LBB0_995:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
.LBB0_996:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	setlt.u r1, r23, r14
	lui r14, 523264
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r1, zero, .LBB0_998
# %bb.997:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
.LBB0_998:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	setlt.u r1, r23, r15
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r1, zero, .LBB0_989
# %bb.999:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r14, 0
	j .LBB0_989
.LBB0_1000:                             # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	lui r19, 523264
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r14, zero, .LBB0_994
.LBB0_1001:                             # %scalar.ph215
                                        #   in Loop: Header=BB0_990 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r15, r23, .LBB0_995
	j .LBB0_996
.LBB0_1002:                             # %vector.body217.preheader
                                        #   in Loop: Header=BB0_987 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_1004
.LBB0_1003:                             # %vector.body217
                                        #   in Loop: Header=BB0_1004 Depth=3
	.loc	1 1270 11 is_stmt 1             # parallel-rne.mlir:1270:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1292 13                       # parallel-rne.mlir:1292:13
	add.s r2, r10, r3
	.loc	1 1270 11                       # parallel-rne.mlir:1270:11
	seteq.d r1, r[19:20], r[24:25]
	.loc	1 1292 13                       # parallel-rne.mlir:1292:13
	stores.w r7, 12(r2)
	stores.w r21, 8(r2)
	stores.w r16, 4(r2)
	stores.w r6, 0(r2)
	.loc	1 1270 11                       # parallel-rne.mlir:1270:11
	bneq r1, zero, .LBB0_986
.LBB0_1004:                             # %vector.body217
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_987 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	add.ul r[6:7], r[19:20], r[17:18]
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	slli r3, r6, 2
	add.s r11, r1, r3
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	add.s r14, r12, r3
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	loads.w r1, 0(r11)
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	loads.w r6, 0(r14)
	.loc	1 1278 19                       # parallel-rne.mlir:1278:19
	and r1, r1, r27
	.loc	1 1276 19                       # parallel-rne.mlir:1276:19
	and r6, r6, r27
	.loc	1 1279 19                       # parallel-rne.mlir:1279:19
	seteq r7, r1, r23
	.loc	1 1283 19                       # parallel-rne.mlir:1283:19
	seteq r16, r1, zero
	.loc	1 1280 19                       # parallel-rne.mlir:1280:19
	seteq r13, r6, zero
	.loc	1 1282 19                       # parallel-rne.mlir:1282:19
	seteq r15, r6, r23
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	max.u r1, r1, r6
	setlt.u r1, r23, r1
	.loc	1 1281 19                       # parallel-rne.mlir:1281:19
	and r6, r7, r13
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	and r7, r16, r15
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	add.s r15, r26, r3
	.loc	1 1285 19                       # parallel-rne.mlir:1285:19
	or r6, r6, r7
	lui r7, 523264
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	or r1, r1, r6
	lui r6, 523264
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r1, zero, .LBB0_1006
# %bb.1005:                             # %vector.body217
                                        #   in Loop: Header=BB0_1004 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r15)
.LBB0_1006:                             # %vector.body217
                                        #   in Loop: Header=BB0_1004 Depth=3
	loads.w r1, 4(r11)
	loads.w r13, 4(r14)
	and r1, r1, r27
	and r13, r13, r27
	seteq r16, r1, r23
	seteq r21, r13, zero
	seteq r8, r1, zero
	seteq r2, r13, r23
	max.u r1, r1, r13
	setlt.u r1, r23, r1
	and r9, r16, r21
	and r2, r8, r2
	lui r16, 523264
	or r2, r9, r2
	or r1, r1, r2
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r1, zero, .LBB0_1008
# %bb.1007:                             # %vector.body217
                                        #   in Loop: Header=BB0_1004 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 4(r15)
.LBB0_1008:                             # %vector.body217
                                        #   in Loop: Header=BB0_1004 Depth=3
	loads.w r1, 8(r11)
	loads.w r2, 8(r14)
	and r1, r1, r27
	and r2, r2, r27
	seteq r8, r1, r23
	seteq r21, r1, zero
	seteq r9, r2, zero
	seteq r13, r2, r23
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	and r2, r8, r9
	and r8, r21, r13
	lui r21, 523264
	or r2, r2, r8
	or r1, r1, r2
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r1, zero, .LBB0_1010
# %bb.1009:                             # %vector.body217
                                        #   in Loop: Header=BB0_1004 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r15)
.LBB0_1010:                             # %vector.body217
                                        #   in Loop: Header=BB0_1004 Depth=3
	loads.w r1, 12(r11)
	loads.w r2, 12(r14)
	and r1, r1, r27
	and r2, r2, r27
	seteq r8, r1, r23
	seteq r13, r1, zero
	seteq r9, r2, zero
	seteq r11, r2, r23
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	and r2, r8, r9
	and r8, r13, r11
	or r2, r2, r8
	or r1, r1, r2
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r1, zero, .LBB0_1003
# %bb.1011:                             # %vector.body217
                                        #   in Loop: Header=BB0_1004 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r15)
	j .LBB0_1003
.LBB0_1012:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 1261 7                        # parallel-rne.mlir:1261:7
	mfence { sm }
.LBB0_1013:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[2:3], zero
	.loc	1 1297 7 is_stmt 1              # parallel-rne.mlir:1297:7
	store.d r[2:3], -1856(r30)              # 8-byte Folded Spill
	addli r2, zero, 7
	bneq r1, r2, .LBB0_1042
# %bb.1014:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1916(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1920(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -1848(r30)                # 4-byte Folded Spill
	addli r1, zero, 56
	.loc	1 1297 7                        # parallel-rne.mlir:1297:7
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_1016
.LBB0_1015:                             # %middle.block
                                        #   in Loop: Header=BB0_1016 Depth=2
	.loc	1 1305 9 is_stmt 1              # parallel-rne.mlir:1305:9
	load.d r[1:2], -1896(r30)               # 8-byte Folded Reload
	load.d r[6:7], -1840(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[2:3], r[6:7], 1
	beq r1, zero, .LBB0_1041
.LBB0_1016:                             # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1033 Depth 3
                                        #       Child Loop BB0_1019 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -1840(r30)              # 8-byte Folded Spill
	sll.d r[17:18], r[2:3], r1
	.loc	1 1306 11 is_stmt 1             # parallel-rne.mlir:1306:11
	loadli.w r1,  -1848(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_1031
# %bb.1017:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1016 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_1019
.LBB0_1018:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 1306 11                       # parallel-rne.mlir:1306:11
	setlt.ul r1, r[2:3], r[4:5]
	.loc	1 1328 13 is_stmt 1             # parallel-rne.mlir:1328:13
	add.s r6, r10, r9
	.loc	1 1306 11                       # parallel-rne.mlir:1306:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1328 13                       # parallel-rne.mlir:1328:13
	stores.w r11, 0(r6)
	.loc	1 1306 11                       # parallel-rne.mlir:1306:11
	beq r1, zero, .LBB0_1015
.LBB0_1019:                             # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1016 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	add.ul r[6:7], r[2:3], r[17:18]
	lui r11, 523264
	lui r16, 523264
	slli r9, r6, 2
	.loc	1 1308 19                       # parallel-rne.mlir:1308:19
	add.s r1, r12, r9
	.loc	1 1309 19                       # parallel-rne.mlir:1309:19
	add.s r6, r26, r9
	.loc	1 1308 19                       # parallel-rne.mlir:1308:19
	loads.w r1, 0(r1)
	.loc	1 1309 19                       # parallel-rne.mlir:1309:19
	loads.w r19, 0(r6)
	.loc	1 1312 19                       # parallel-rne.mlir:1312:19
	and r14, r1, r27
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	beq r14, r23, .LBB0_1021
# %bb.1020:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r19, 0
.LBB0_1021:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	add.s r1, r1, r9
	loads.w r1, 0(r1)
	and r15, r1, r27
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	beq r15, zero, .LBB0_1029
# %bb.1022:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r19, 0
	lui r19, 523264
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	bneq r14, zero, .LBB0_1030
.LBB0_1023:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	beq r15, r23, .LBB0_1025
.LBB0_1024:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
.LBB0_1025:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	setlt.u r1, r23, r14
	lui r14, 523264
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	bneq r1, zero, .LBB0_1027
# %bb.1026:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
.LBB0_1027:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	setlt.u r1, r23, r15
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	bneq r1, zero, .LBB0_1018
# %bb.1028:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r14, 0
	j .LBB0_1018
.LBB0_1029:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	lui r19, 523264
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	beq r14, zero, .LBB0_1023
.LBB0_1030:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r16, 0
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	bneq r15, r23, .LBB0_1024
	j .LBB0_1025
.LBB0_1031:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1016 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	load.d r[19:20], -1856(r30)             # 8-byte Folded Reload
	j .LBB0_1033
.LBB0_1032:                             # %vector.body
                                        #   in Loop: Header=BB0_1033 Depth=3
	.loc	1 1306 11 is_stmt 1             # parallel-rne.mlir:1306:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1328 13                       # parallel-rne.mlir:1328:13
	add.s r6, r10, r9
	.loc	1 1306 11                       # parallel-rne.mlir:1306:11
	seteq.d r1, r[19:20], r[24:25]
	.loc	1 1328 13                       # parallel-rne.mlir:1328:13
	stores.w r14, 12(r6)
	stores.w r3, 8(r6)
	stores.w r2, 4(r6)
	stores.w r11, 0(r6)
	.loc	1 1306 11                       # parallel-rne.mlir:1306:11
	bneq r1, zero, .LBB0_1015
.LBB0_1033:                             # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1016 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	add.ul r[1:2], r[19:20], r[17:18]
	slli r9, r1, 2
	loadli.w r1,  -1832(r30)                # 4-byte Folded Reload
	.loc	1 1308 19                       # parallel-rne.mlir:1308:19
	add.s r16, r12, r9
	.loc	1 1309 19                       # parallel-rne.mlir:1309:19
	add.s r21, r26, r9
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	add.s r15, r1, r9
	.loc	1 1308 19                       # parallel-rne.mlir:1308:19
	loads.w r2, 0(r16)
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	loads.w r1, 0(r15)
	.loc	1 1312 19                       # parallel-rne.mlir:1312:19
	and r2, r2, r27
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	and r1, r1, r27
	.loc	1 1316 19                       # parallel-rne.mlir:1316:19
	seteq r11, r2, zero
	.loc	1 1318 19                       # parallel-rne.mlir:1318:19
	seteq r13, r2, r23
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	seteq r3, r1, r23
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	seteq r14, r1, zero
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	.loc	1 1317 19                       # parallel-rne.mlir:1317:19
	and r2, r3, r11
	.loc	1 1320 19                       # parallel-rne.mlir:1320:19
	and r3, r14, r13
	lui r14, 523264
	lui r11, 523264
	.loc	1 1321 19                       # parallel-rne.mlir:1321:19
	or r2, r2, r3
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	or r1, r1, r2
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	bneq r1, zero, .LBB0_1035
# %bb.1034:                             # %vector.body
                                        #   in Loop: Header=BB0_1033 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r21)
.LBB0_1035:                             # %vector.body
                                        #   in Loop: Header=BB0_1033 Depth=3
	loads.w r1, 4(r15)
	loads.w r2, 4(r16)
	and r1, r1, r27
	and r2, r2, r27
	seteq r3, r1, r23
	seteq r7, r1, zero
	seteq r13, r2, zero
	seteq r6, r2, r23
	max.u r1, r1, r2
	setlt.u r1, r23, r1
	and r2, r3, r13
	and r3, r7, r6
	or r2, r2, r3
	or r1, r1, r2
	lui r2, 523264
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	bneq r1, zero, .LBB0_1037
# %bb.1036:                             # %vector.body
                                        #   in Loop: Header=BB0_1033 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r21)
.LBB0_1037:                             # %vector.body
                                        #   in Loop: Header=BB0_1033 Depth=3
	loads.w r1, 8(r15)
	loads.w r3, 8(r16)
	and r1, r1, r27
	and r3, r3, r27
	seteq r6, r1, r23
	seteq r13, r1, zero
	seteq r7, r3, zero
	seteq r8, r3, r23
	max.u r1, r1, r3
	setlt.u r1, r23, r1
	and r3, r6, r7
	and r6, r13, r8
	or r3, r3, r6
	or r1, r1, r3
	lui r3, 523264
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	bneq r1, zero, .LBB0_1039
# %bb.1038:                             # %vector.body
                                        #   in Loop: Header=BB0_1033 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r21)
.LBB0_1039:                             # %vector.body
                                        #   in Loop: Header=BB0_1033 Depth=3
	loads.w r1, 12(r15)
	loads.w r6, 12(r16)
	and r1, r1, r27
	and r6, r6, r27
	seteq r7, r1, r23
	seteq r15, r1, zero
	seteq r8, r6, zero
	seteq r13, r6, r23
	max.u r1, r1, r6
	setlt.u r1, r23, r1
	and r6, r7, r8
	and r7, r15, r13
	or r6, r6, r7
	or r1, r1, r6
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	bneq r1, zero, .LBB0_1032
# %bb.1040:                             # %vector.body
                                        #   in Loop: Header=BB0_1033 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r21)
	j .LBB0_1032
.LBB0_1041:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r1
	.loc	1 1297 7                        # parallel-rne.mlir:1297:7
	mfence { sm }
.LBB0_1042:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1333 7                        # parallel-rne.mlir:1333:7
	addli r2, zero, 255
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r9
	.loc	1 1333 7                        # parallel-rne.mlir:1333:7
	csr_set csr5, r2
	.loc	1 1334 7                        # parallel-rne.mlir:1334:7
	addli r2, zero, 3
	.loc	1 1333 7                        # parallel-rne.mlir:1333:7
	sync_core
	.loc	1 1334 7                        # parallel-rne.mlir:1334:7
	beq r1, r2, .LBB0_5
# %bb.1043:                             # %.critedge32
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r13, zero, 64
	addli r21, zero, 1
	addli r24, zero, 8
	addli r26, zero, 4
	addli r25, zero, 192
	.loc	1 1345 7 is_stmt 1              # parallel-rne.mlir:1345:7
	bneq r1, zero, .LBB0_7
# %bb.1044:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -1964(r30)                # 4-byte Folded Reload
	load.d r[3:4], -1856(r30)               # 8-byte Folded Reload
	.loc	1 1345 7                        # parallel-rne.mlir:1345:7
	load.d r[5:6], -1960(r30)               # 8-byte Folded Reload
	addli r14, zero, 17
	load.d r[7:8], -1952(r30)               # 8-byte Folded Reload
	load.d r[11:12], 24(r30)
	xwait r14, 0
	sext_int2long r[1:2], r1
	sll.d r[5:6], r[5:6], r14
	sll.d r[7:8], r[7:8], r21
	min.sl r[3:4], r[1:2], r[3:4]
	add.ul r[5:6], r[11:12], r[5:6]
	addli.d r[3:4], r[3:4], 64
	add.ul r[5:6], r[5:6], r[7:8]
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	zext_int2long r[3:4], r13
	.loc	1 1341 13 is_stmt 1             # parallel-rne.mlir:1341:13
	min.sl r[1:2], r[1:2], r[3:4]
	addli r4, zero, 5
	.loc	1 1345 7                        # parallel-rne.mlir:1345:7
	lock zero, r4
	dma_cfg r21, zero, zero, 0
	dma_cfg zero, r21, zero, 1
	load.d r[7:8], -1976(r30)               # 8-byte Folded Reload
	dma_cfg r6, zero, zero, 2
	slli r3, r7, 2
	dma_cfg r5, r10, r3, 3
	addli r3, zero, 512
	addli r5, zero, 2048
	dma_cfg r5, r3, r1, 4
	addli r1, zero, 18
	dma_run zero
	unlock r4
	j .LBB0_6
.LBB0_1045:                             # %._crit_edge
	.loc	1 1347 5                        # parallel-rne.mlir:1347:5
	xsignal zero, 0
	bneq r9, zero, .LBB0_1047
# %bb.1046:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1347 5                        # parallel-rne.mlir:1347:5
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
	.loc	1 1348 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1348:5
	addli sp, sp, 2024
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
	.long	2088                            # 0x828
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-rnzpkkyb" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
