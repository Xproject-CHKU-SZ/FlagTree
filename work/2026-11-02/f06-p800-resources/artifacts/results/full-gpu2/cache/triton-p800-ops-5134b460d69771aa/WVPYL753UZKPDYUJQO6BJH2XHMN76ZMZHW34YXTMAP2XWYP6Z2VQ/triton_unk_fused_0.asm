	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-n7rygmdd" "parallel-rne.mlir"
	.loc	1 11 0                          # parallel-rne.mlir:11:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2208
	addli r2, zero, 1
.Ltmp0:
	.loc	1 41 5 prologue_end             # parallel-rne.mlir:41:5
	core_id r1
	addli r30, sp, 2144
	xsignal_mode_cfg r2
	beq r1, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	.loc	1 41 5                          # parallel-rne.mlir:41:5
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
	.loc	1 41 5                          # parallel-rne.mlir:41:5
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
	addli r2, zero, 20
	addli r3, zero, 23
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r2, zero, 26
	addli r3, zero, 28
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r2, zero, 30
	addli r3, zero, 35
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r2, zero, 38
	addli r1, zero, 40
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 43 10 is_stmt 1               # parallel-rne.mlir:43:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	lui r5, 1048575
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	load_param_i r6, 0
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -16(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -32(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -48(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -64(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -80(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -96(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -112(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -128(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -144(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -320(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w zero, -964(r30)
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w zero, -1144(r30)
	.loc	1 66 11                         # parallel-rne.mlir:66:11
	storeli.w zero, -1916(r30)
	.loc	1 67 11                         # parallel-rne.mlir:67:11
	storeli.w zero, -1932(r30)
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	mul.s r1, r2, r1
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	mul.s r4, r1, r4
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	addli r2, r2, -1
	.loc	1 48 10                         # parallel-rne.mlir:48:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -28(r30)
	storeli.w r3, -24(r30)
	storeli.w r3, -20(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r3, -124(r30)
	storeli.w r3, -120(r30)
	storeli.w r3, -116(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w r3, -140(r30)
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
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
	.loc	1 64 11                         # parallel-rne.mlir:64:11
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
	.loc	1 65 11                         # parallel-rne.mlir:65:11
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
	.loc	1 66 11                         # parallel-rne.mlir:66:11
	storeli.w r3, -1912(r30)
	storeli.w r3, -1908(r30)
	storeli.w r3, -1904(r30)
	storeli.w r3, -1900(r30)
	storeli.w r3, -1896(r30)
	storeli.w r3, -1892(r30)
	storeli.w r3, -1888(r30)
	storeli.w r3, -1884(r30)
	storeli.w r3, -1880(r30)
	storeli.w r3, -1876(r30)
	storeli.w r3, -1872(r30)
	storeli.w r3, -1868(r30)
	storeli.w r3, -1864(r30)
	storeli.w r3, -1860(r30)
	storeli.w r3, -1856(r30)
	storeli.w r3, -1852(r30)
	storeli.w r3, -1848(r30)
	storeli.w r3, -1844(r30)
	storeli.w r3, -1840(r30)
	storeli.w r3, -1836(r30)
	storeli.w r3, -1832(r30)
	storeli.w r3, -1828(r30)
	storeli.w r3, -1824(r30)
	storeli.w r3, -1820(r30)
	storeli.w r3, -1816(r30)
	storeli.w r3, -1812(r30)
	storeli.w r3, -1808(r30)
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
	.loc	1 67 11                         # parallel-rne.mlir:67:11
	storeli.w r3, -1928(r30)
	storeli.w r3, -1924(r30)
	storeli.w r3, -1920(r30)
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 49 10                         # parallel-rne.mlir:49:10
	mul.s r1, r2, r6
	.loc	1 50 10                         # parallel-rne.mlir:50:10
	fmac.s r2, r2, r6
	.loc	1 51 10                         # parallel-rne.mlir:51:10
	min.s r2, r2, r4
	.loc	1 68 5                          # parallel-rne.mlir:68:5
	ble.s r2, r1, .LBB0_1024
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 52 11 is_stmt 1               # parallel-rne.mlir:52:11
	addli r4, r30, -2096
	sext_int2long r[6:7], r1
	addli r11, zero, 64
	addli r12, zero, 3
	addli r5, zero, 4
	lui r28, 522240
	lui r14, 268288
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 4095
	addli r3, r30, -2104
	lui r1, 1048572
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	lui r1, 222
	lui r2, 246
	lui r3, 56
	ori r1, r1, 1536
	storeli.w r1, -2108(r30)                # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 294
	storeli.w r1, -2112(r30)                # 4-byte Folded Spill
	lui r1, 270
	ori r1, r1, 1536
	storeli.w r1, -2116(r30)                # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 318
	storeli.w r1, -2120(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r27, r1, 4095
	ori r1, r2, 1536
	lui r2, 2047
	storeli.w r1, -2124(r30)                # 4-byte Folded Spill
	lui r1, 342
	ori r1, r1, 1536
	storeli.w r1, -2128(r30)                # 4-byte Folded Spill
	ori r1, r2, 4095
	lui r2, 366
	ori r2, r2, 1536
	storeli.w r2, -2132(r30)                # 4-byte Folded Spill
	ori r2, r3, 2115
	lui r3, 259268
	storeli.w r2, -2136(r30)                # 4-byte Folded Spill
	lui r2, 250738
	ori r2, r2, 1811
	storeli.w r2, -2140(r30)                # 4-byte Folded Spill
	ori r2, r3, 554
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	storeli.w r2, -2144(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1336 7                        # parallel-rne.mlir:1336:7
	addli r2, zero, 17
	addli r11, zero, 64
	xsignal r2, 0
	.loc	1 1337 7                        # parallel-rne.mlir:1337:7
	addli r2, zero, 26
	xsignal r2, 0
	.loc	1 1338 7                        # parallel-rne.mlir:1338:7
	addli r2, zero, 38
	xsignal r2, 0
	.loc	1 1339 7                        # parallel-rne.mlir:1339:7
	addli r2, zero, 40
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -2048(r30)               # 8-byte Folded Reload
	.loc	1 68 5 is_stmt 1                # parallel-rne.mlir:68:5
	addli r2, r30, -2096
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r2, r[6:7], r[4:5]
	addli r5, zero, 4
	beq r2, zero, .LBB0_1024
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_43 Depth 3
                                        #     Child Loop BB0_68 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_70 Depth 3
                                        #     Child Loop BB0_95 Depth 2
                                        #       Child Loop BB0_110 Depth 3
                                        #       Child Loop BB0_97 Depth 3
                                        #     Child Loop BB0_122 Depth 2
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #     Child Loop BB0_149 Depth 2
                                        #       Child Loop BB0_166 Depth 3
                                        #       Child Loop BB0_152 Depth 3
                                        #     Child Loop BB0_178 Depth 2
                                        #       Child Loop BB0_195 Depth 3
                                        #       Child Loop BB0_181 Depth 3
                                        #     Child Loop BB0_207 Depth 2
                                        #       Child Loop BB0_224 Depth 3
                                        #       Child Loop BB0_210 Depth 3
                                        #     Child Loop BB0_236 Depth 2
                                        #       Child Loop BB0_253 Depth 3
                                        #       Child Loop BB0_239 Depth 3
                                        #     Child Loop BB0_292 Depth 2
                                        #       Child Loop BB0_294 Depth 3
                                        #       Child Loop BB0_293 Depth 3
                                        #     Child Loop BB0_271 Depth 2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_272 Depth 3
                                        #     Child Loop BB0_299 Depth 2
                                        #       Child Loop BB0_301 Depth 3
                                        #       Child Loop BB0_300 Depth 3
                                        #     Child Loop BB0_278 Depth 2
                                        #       Child Loop BB0_280 Depth 3
                                        #       Child Loop BB0_279 Depth 3
                                        #     Child Loop BB0_306 Depth 2
                                        #       Child Loop BB0_308 Depth 3
                                        #       Child Loop BB0_307 Depth 3
                                        #     Child Loop BB0_285 Depth 2
                                        #       Child Loop BB0_287 Depth 3
                                        #       Child Loop BB0_286 Depth 3
                                        #     Child Loop BB0_313 Depth 2
                                        #       Child Loop BB0_315 Depth 3
                                        #       Child Loop BB0_314 Depth 3
                                        #     Child Loop BB0_319 Depth 2
                                        #       Child Loop BB0_321 Depth 3
                                        #       Child Loop BB0_320 Depth 3
                                        #     Child Loop BB0_395 Depth 2
                                        #       Child Loop BB0_397 Depth 3
                                        #     Child Loop BB0_329 Depth 2
                                        #       Child Loop BB0_331 Depth 3
                                        #     Child Loop BB0_417 Depth 2
                                        #       Child Loop BB0_419 Depth 3
                                        #     Child Loop BB0_351 Depth 2
                                        #       Child Loop BB0_353 Depth 3
                                        #     Child Loop BB0_439 Depth 2
                                        #       Child Loop BB0_441 Depth 3
                                        #     Child Loop BB0_373 Depth 2
                                        #       Child Loop BB0_375 Depth 3
                                        #     Child Loop BB0_461 Depth 2
                                        #       Child Loop BB0_463 Depth 3
                                        #     Child Loop BB0_482 Depth 2
                                        #       Child Loop BB0_484 Depth 3
                                        #     Child Loop BB0_615 Depth 2
                                        #       Child Loop BB0_623 Depth 3
                                        #       Child Loop BB0_618 Depth 3
                                        #     Child Loop BB0_510 Depth 2
                                        #       Child Loop BB0_518 Depth 3
                                        #       Child Loop BB0_513 Depth 3
                                        #     Child Loop BB0_650 Depth 2
                                        #       Child Loop BB0_658 Depth 3
                                        #       Child Loop BB0_653 Depth 3
                                        #     Child Loop BB0_545 Depth 2
                                        #       Child Loop BB0_553 Depth 3
                                        #       Child Loop BB0_548 Depth 3
                                        #     Child Loop BB0_685 Depth 2
                                        #       Child Loop BB0_693 Depth 3
                                        #       Child Loop BB0_688 Depth 3
                                        #     Child Loop BB0_580 Depth 2
                                        #       Child Loop BB0_588 Depth 3
                                        #       Child Loop BB0_583 Depth 3
                                        #     Child Loop BB0_720 Depth 2
                                        #       Child Loop BB0_728 Depth 3
                                        #       Child Loop BB0_723 Depth 3
                                        #     Child Loop BB0_754 Depth 2
                                        #       Child Loop BB0_762 Depth 3
                                        #       Child Loop BB0_757 Depth 3
                                        #     Child Loop BB0_882 Depth 2
                                        #       Child Loop BB0_899 Depth 3
                                        #       Child Loop BB0_885 Depth 3
                                        #     Child Loop BB0_795 Depth 2
                                        #       Child Loop BB0_812 Depth 3
                                        #       Child Loop BB0_798 Depth 3
                                        #     Child Loop BB0_911 Depth 2
                                        #       Child Loop BB0_928 Depth 3
                                        #       Child Loop BB0_914 Depth 3
                                        #     Child Loop BB0_824 Depth 2
                                        #       Child Loop BB0_841 Depth 3
                                        #       Child Loop BB0_827 Depth 3
                                        #     Child Loop BB0_940 Depth 2
                                        #       Child Loop BB0_957 Depth 3
                                        #       Child Loop BB0_943 Depth 3
                                        #     Child Loop BB0_853 Depth 2
                                        #       Child Loop BB0_870 Depth 3
                                        #       Child Loop BB0_856 Depth 3
                                        #     Child Loop BB0_969 Depth 2
                                        #       Child Loop BB0_986 Depth 3
                                        #       Child Loop BB0_972 Depth 3
                                        #     Child Loop BB0_997 Depth 2
                                        #       Child Loop BB0_1012 Depth 3
                                        #       Child Loop BB0_999 Depth 3
	.loc	1 92 13                         # parallel-rne.mlir:92:13
	loadli.w r2,  -1932(r30)
	addli r4, r2, 1
	storeli.w r4, -1932(r30)
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	bneq r3, r5, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 18
	xwait r3, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r3,  48(r30)
	store.d r[6:7], -2048(r30)              # 8-byte Folded Spill
	loadli.w r9,  -964(r30)
	loadli.w r8,  -320(r30)
	addli r26, zero, 3
	addli r17, zero, 0
	div.s r4, r6, r3
	loadli.w r3,  44(r30)
	mod.s r6, r2, r12
	loadli.w r2,  -1916(r30)
	div.s r4, r4, r3
	addli r3, zero, 2
	slli r10, r6, 15
	div.s r5, r4, r11
	slli r11, r5, 3
	slli r5, r5, 6
	sub.s r7, r3, r11
	addli r3, zero, 8
	sub.s r5, r4, r5
	min.s r7, r7, r3
	mod.s r4, r4, r7
	div.s r5, r5, r7
	loadli.w r7,  -1144(r30)
	add.s r4, r11, r4
	slli r3, r5, 7
	zext_int2long r[11:12], r5
	storeli.w r3, -1960(r30)                # 4-byte Folded Spill
	slli r3, r4, 6
	zext_int2long r[15:16], r4
	addli r4, r30, -2072
	storeli.w r3, -2076(r30)                # 4-byte Folded Spill
	addli r3, zero, 7
	store.d r[15:16], 0(r4)                 # 8-byte Folded Spill
	sll.d r[11:12], r[11:12], r3
	.loc	1 94 7 is_stmt 1                # parallel-rne.mlir:94:7
	addli r3, zero, 1
	sll.d r[5:6], r[11:12], r3
	addli r3, zero, 13
	addli r11, r30, -2064
	sll.d r[12:13], r[15:16], r3
	load.d r[3:4], 8(r30)
	store.d r[5:6], 0(r11)                  # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[5:6]
	addli r5, r30, -2104
	store.d r[3:4], -1952(r30)              # 8-byte Folded Spill
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	and.d r[3:4], r[12:13], r[3:4]
	store.d r[3:4], -1944(r30)              # 8-byte Folded Spill
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r15, zero, 2
	addli r6, zero, 5
	addli r16, zero, 3
	addli r26, zero, 3
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	addli r9, r9, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	xwait r15, 0
	xwait r6, 0
	lock zero, zero
	addli r15, zero, 64
	addli r6, zero, 32
	ds_cfg r16, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r15, zero, 13
	shuffle_batch r11, r21, r6, 1
	addli r6, zero, 4
	unlock zero
	xsignal r16, 0
	xsignal r6, 0
.LBB0_12:                               # %.thread80
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	addli r2, r2, 1
	addli r7, r7, 1
	.loc	1 94 7 is_stmt 1                # parallel-rne.mlir:94:7
	addli r17, r17, 1
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	addli r8, r8, 1
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	beq r17, r6, .LBB0_28
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r4, zero, 44
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r5, zero, 192
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r15, zero, 2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r4, r7, r4
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r5, r2, r5
	slli r11, r5, 12
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r4, r4, 13
	lui r5, 24
	add.s r21, r4, r5
	addli r4, zero, 128
	zext_int2long r[4:5], r4
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	beq r3, r15, .LBB0_11
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[23:24], r17
	addli r6, zero, 1
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	bneq r3, r6, .LBB0_19
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r11, zero, 5
	sll.d r[22:23], r[23:24], r11
	addli r11, zero, 16383
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	add.ul r[22:23], r[22:23], r[12:13]
	zext_int2long r[24:25], r11
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	setlt.ul r11, r[24:25], r[22:23]
	load.d r[24:25], -1944(r30)             # 8-byte Folded Reload
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	bneq r11, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[24:25], zero
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	sub.sl r[24:25], r[22:23], r[24:25]
	addli r18, zero, 64
	.loc	1 117 9 is_stmt 1               # parallel-rne.mlir:117:9
	load.d r[19:20], 0(r30)
	sll.d r[22:23], r[22:23], r6
	addli r6, zero, 4
	addli r11, zero, 1
	xwait r26, 0
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	addli r9, r9, 1
	.loc	1 104 15                        # parallel-rne.mlir:104:15
	div.sl r[24:25], r[24:25], r[4:5]
	zext_int2long r[15:16], r18
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	lock zero, r6
	add.ul r[22:23], r[19:20], r[22:23]
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r23, zero, 2
	dma_cfg r21, r22, r18, 3
	.loc	1 106 15                        # parallel-rne.mlir:106:15
	min.sl r[15:16], r[24:25], r[15:16]
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	sub.sl r[15:16], r[15:16], r[24:25]
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r11, r15, 64
	addli r15, zero, 128
	addli r16, zero, 256
	dma_cfg r15, r16, r11, 4
	dma_run zero
	unlock r6
	addli r11, zero, 2
.LBB0_18:                               # %.thread80
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r11, 0
	j .LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 128 15 is_stmt 1              # parallel-rne.mlir:128:15
	addli r6, zero, 160
	mod.s r15, r9, r6
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	addli r6, zero, 43
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	addli r9, r9, 1
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	mod.s r16, r8, r6
	lui r6, 112
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	slli r21, r15, 13
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	slli r15, r16, 13
	add.s r22, r15, r6
	.loc	1 134 9                         # parallel-rne.mlir:134:9
	addli r15, zero, 7
	beq r3, r15, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r18, zero, 1
	addli r19, zero, 6
	.loc	1 134 9                         # parallel-rne.mlir:134:9
	bneq r3, r19, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_13 Depth=2
	addli r11, zero, 7
	addli r6, zero, 16
	xwait r11, 0
	load.d r[20:21], -1952(r30)             # 8-byte Folded Reload
	sll.d r[15:16], r[23:24], r6
	addli r6, zero, 4
	addli r11, zero, 32
	lock zero, r6
	add.ul r[15:16], r[20:21], r[15:16]
	dma_cfg r18, r18, zero, 0
	addli r18, zero, 256
	dma_cfg zero, r16, zero, 2
	dma_cfg r22, r15, r18, 3
	addli r15, zero, 2048
	dma_cfg r18, r15, r11, 4
	dma_run zero
	unlock r6
	xsignal r19, 0
	.loc	1 135 9 is_stmt 1               # parallel-rne.mlir:135:9
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	addli r6, zero, 6
	addli r11, zero, 128
	xwait r6, 0
	addli r6, zero, 9
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 32
	ds_cfg r26, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r11, zero, 13
	addli r11, zero, 7
	shuffle_coa r21, r22, r6, 2
	addli r6, zero, 4
	unlock zero
	xsignal r11, 0
	addli r11, zero, 8
	xsignal r11, 0
	j .LBB0_12
.LBB0_23:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 4
	.loc	1 137 9 is_stmt 1               # parallel-rne.mlir:137:9
	bneq r3, r6, .LBB0_12
# %bb.24:                               #   in Loop: Header=BB0_13 Depth=2
	xwait r6, 0
	addli r15, zero, 8
	addli r22, zero, 1
	addli r23, zero, 1
	addli r24, zero, 0
	addli r18, zero, 64
	addli r6, zero, 4
	addli r25, zero, 32
	xwait r15, 0
	beq r17, zero, .LBB0_26
.LBB0_25:                               # %.preheader132
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r15, r24, 12
	slli r16, r24, 8
	lock zero, r22
	addli r24, zero, 1
	mm_cfg r18, r25, r18, 0
	or r15, r15, r21
	or r16, r16, r10
	mm_cfg r22, r6, r22, 2
	mm_acc r16, r11, r15, 5
	andi r15, r23, 1
	addli r23, zero, 0
	unlock r22
	bneq r15, zero, .LBB0_25
	j .LBB0_27
.LBB0_26:                               # %.preheader131
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r15, r24, 12
	slli r16, r24, 8
	lock zero, r22
	addli r24, zero, 1
	mm_cfg r18, r25, r18, 0
	or r15, r15, r21
	or r16, r16, r10
	mm_cfg r22, r6, r22, 2
	mm r16, r11, r15, 5
	andi r15, r23, 1
	addli r23, zero, 0
	unlock r22
	bneq r15, zero, .LBB0_26
.LBB0_27:                               # %.loopexit
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r11, zero, 5
	xsignal r11, 0
	addli r11, zero, 9
	j .LBB0_18
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r2, -1916(r30)
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	addli r2, zero, 4
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	storeli.w r9, -964(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r7, -1144(r30)
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	storeli.w r8, -320(r30)
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	bneq r3, r2, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	loadli.w r2,  -1960(r30)                # 4-byte Folded Reload
	addli r12, zero, 3
	addli r13, zero, 1
	lui r26, 524288
	zext_int2long r[6:7], r2
	addli r2, zero, 896
	zext_int2long r[8:9], r2
	.loc	1 155 13                        # parallel-rne.mlir:155:13
	loadli.w r2,  -144(r30)
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	min.ul r[8:9], r[6:7], r[8:9]
	.loc	1 155 13                        # parallel-rne.mlir:155:13
	mod.s r11, r2, r12
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	addli.d r[8:9], r[8:9], 128
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	max.ul r[8:9], r[8:9], r[6:7]
	sub.sl r[6:7], r[8:9], r[6:7]
	.loc	1 155 13                        # parallel-rne.mlir:155:13
	addli r8, r2, 1
	lui r9, 8
	slli r2, r11, 9
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	min.ul r[17:18], r[6:7], r[4:5]
	lui r6, 198
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	addli r7, r30, -2088
	.loc	1 155 13                        # parallel-rne.mlir:155:13
	storeli.w r8, -144(r30)
	add.s r2, r2, r6
	ori r6, r6, 1536
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	store.d r[17:18], 0(r7)                 # 8-byte Folded Spill
	bneq r3, r13, .LBB0_32
# %bb.31:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r9, r30, -2064
	load.d r[7:8], 16(r30)
	addli r11, zero, 4
	load.d r[15:16], 0(r9)                  # 8-byte Folded Reload
	addli r9, zero, 20
	xwait r9, 0
	lock zero, r11
	slli r9, r17, 1
	add.ul r[7:8], r[7:8], r[15:16]
	dma_cfg zero, r13, zero, 0
	dma_cfg zero, r8, zero, 2
	dma_cfg r2, r7, r9, 3
	addli r2, zero, 256
	addli r7, zero, 512
	dma_cfg r7, r2, r13, 4
	addli r2, zero, 19
	dma_run zero
	unlock r11
	xsignal r2, 0
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	loadli.w r2,  -128(r30)
	mod.s r7, r2, r12
	addli r2, r2, 1
	storeli.w r2, -128(r30)
	slli r7, r7, 15
	add.s r13, r7, r6
	j .LBB0_36
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r7,  -128(r30)
	mod.s r8, r7, r12
	addli r7, r7, 1
	storeli.w r7, -128(r30)
	slli r8, r8, 15
	add.s r13, r8, r6
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r6, zero, 5
	bneq r3, r6, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	addli r7, zero, 10
	addli r6, zero, 0
	xwait r7, 0
	addli r7, zero, 19
	xwait r7, 0
	addli r7, zero, 23
	xwait r7, 0
	addli r7, zero, 2
	lock zero, r7
	lui r7, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r7, r7, zero, 0
	addli r7, zero, 127
	ew_cfg zero, r7, zero, 2
	addli r7, zero, 1
	ew_cfg r7, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r7, r13, r6
	add.s r8, r10, r6
	addli r6, r6, 512
	dsmadd r7, r8, r2, 0
	bneq r6, r9, .LBB0_34
# %bb.35:                               # %.thread196
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r7, zero, 2
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r2, zero, 11
	addli r15, r13, 0
	addli r13, zero, 2047
	addli r9, zero, 4
	lui r11, 260096
	addli r8, zero, 3
	unlock r7
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 163 13 is_stmt 1              # parallel-rne.mlir:163:13
	loadli.w r2,  -112(r30)
	mod.s r6, r2, r12
	addli r2, r2, 1
	storeli.w r2, -112(r30)
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r7
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	slli r2, r6, 15
	loadli.w r6,  -2108(r30)                # 4-byte Folded Reload
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	ew_cfg zero, zero, zero, 1
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	add.s r6, r2, r6
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	lui r2, 258048
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 25
	ew_cfg zero, r13, zero, 2
	ew_cfg r9, zero, zero, 3
	ew_cfg r9, r9, zero, 19
	storeli.w r6, -1944(r30)                # 4-byte Folded Spill
	hp_ssmul r6, r15, r15, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	xsignal r2, 0
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	loadli.w r2,  -96(r30)
	mod.s r6, r2, r12
	addli r2, r2, 1
	storeli.w r2, -96(r30)
	loadli.w r2,  -2112(r30)                # 4-byte Folded Reload
	slli r6, r6, 15
	add.s r17, r6, r2
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	addli r2, zero, 28
	xwait r2, 0
	lock zero, r7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r11, 0
	ew_cfg zero, r13, zero, 2
	ew_cfg r9, zero, zero, 3
	ew_cfg r9, r9, r9, 19
	dsmul r17, r15, r15, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	loadli.w r2,  -80(r30)
	mod.s r6, r2, r8
	addli r2, r2, 1
	storeli.w r2, -80(r30)
	loadli.w r2,  -2116(r30)                # 4-byte Folded Reload
	slli r6, r6, 15
	add.s r2, r6, r2
	.loc	1 170 7                         # parallel-rne.mlir:170:7
	addli r6, zero, 30
	xwait r6, 0
	lock zero, r7
	addli r6, zero, 21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r11, 0
	ew_cfg zero, r13, zero, 2
	addli r13, r15, 0
	ew_cfg r9, zero, zero, 3
	ew_cfg r9, r9, r9, 19
	dsmul r2, r17, r13, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	xsignal r6, 0
	addli r6, zero, 27
	xsignal r6, 0
	addli r6, zero, 29
	xsignal r6, 0
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	loadli.w r6,  -64(r30)
	storeli.w r6, -2052(r30)                # 4-byte Folded Spill
	addli r6, r6, 1
	storeli.w r6, -64(r30)
	j .LBB0_38
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	loadli.w r2,  -112(r30)
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	loadli.w r6,  -96(r30)
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	loadli.w r9,  -80(r30)
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	loadli.w r11,  -64(r30)
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	mod.s r7, r2, r12
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	mod.s r8, r6, r12
	addli r6, r6, 1
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	addli r2, r2, 1
	storeli.w r11, -2052(r30)               # 4-byte Folded Spill
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	storeli.w r6, -96(r30)
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	storeli.w r2, -112(r30)
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	mod.s r2, r9, r12
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	slli r6, r7, 15
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	slli r7, r8, 15
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	loadli.w r8,  -2108(r30)                # 4-byte Folded Reload
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	slli r2, r2, 15
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	add.s r6, r6, r8
	addli r8, zero, 3
	storeli.w r6, -1944(r30)                # 4-byte Folded Spill
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	loadli.w r6,  -2112(r30)                # 4-byte Folded Reload
	add.s r17, r7, r6
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	loadli.w r7,  -2116(r30)                # 4-byte Folded Reload
	addli r6, r9, 1
	storeli.w r6, -80(r30)
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	addli r6, r11, 1
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	add.s r2, r2, r7
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	storeli.w r6, -64(r30)
	bneq r3, r8, .LBB0_38
# %bb.37:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	addli r6, zero, 11
	xwait r6, 0
	.loc	1 175 7                         # parallel-rne.mlir:175:7
	addli r6, zero, 21
	xwait r6, 0
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	addli r6, zero, 27
	xwait r6, 0
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	addli r6, zero, 29
	xwait r6, 0
.LBB0_38:                               # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 181 7                         # parallel-rne.mlir:181:7
	addli r6, zero, 255
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	xfence
	.loc	1 180 7                         # parallel-rne.mlir:180:7
	mfence { lm, sm, gm }
	.loc	1 181 7                         # parallel-rne.mlir:181:7
	csr_set csr5, r6
	sub.s r6, r10, r17
	storeli.w r6, -2032(r30)                # 4-byte Folded Spill
	sub.s r6, r10, r13
	storeli.w r6, -2036(r30)                # 4-byte Folded Spill
	sub.s r6, r10, r2
	storeli.w r6, -2040(r30)                # 4-byte Folded Spill
	addli r6, zero, 7
	zext_int2long r[6:7], r6
	store.d r[6:7], -2016(r30)              # 8-byte Folded Spill
	addli r6, zero, 127
	sync_core
	storeli.w r13, -1952(r30)               # 4-byte Folded Spill
	zext_int2long r[6:7], r6
	.loc	1 182 7                         # parallel-rne.mlir:182:7
	bneq r3, zero, .LBB0_65
# %bb.39:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r8, r3, r8
	loadli.w r3,  -2040(r30)                # 4-byte Folded Reload
	min.u r8, r8, r3
	addli r3, zero, 16
	setlt.u r3, r8, r3
	zext_int2long r[8:9], zero
	.loc	1 182 7                         # parallel-rne.mlir:182:7
	storeli.w r3, -1968(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block705
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 190 9 is_stmt 1               # parallel-rne.mlir:190:9
	load.d r[8:9], -2016(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1960(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_64
.LBB0_41:                               # %.preheader130
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_43 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	.loc	1 191 11 is_stmt 1              # parallel-rne.mlir:191:11
	store.d r[8:9], -1960(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	loadli.w r3,  -1968(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_43
	j .LBB0_56
.LBB0_42:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.ul r3, r[19:20], r[6:7]
	.loc	1 213 13                        # parallel-rne.mlir:213:13
	add.s r8, r10, r9
	.loc	1 191 11                        # parallel-rne.mlir:191:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 213 13                        # parallel-rne.mlir:213:13
	stores.w r11, 0(r8)
	.loc	1 191 11                        # parallel-rne.mlir:191:11
	beq r3, zero, .LBB0_40
.LBB0_43:                               # %scalar.ph697
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	add.ul r[8:9], r[19:20], r[15:16]
	lui r11, 523264
	lui r22, 523264
	slli r9, r8, 2
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	add.s r3, r13, r9
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	add.s r8, r2, r9
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	loads.w r3, 0(r3)
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	loads.w r23, 0(r8)
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	and r8, r3, r27
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	beq r8, r28, .LBB0_45
# %bb.44:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r23, 0
.LBB0_45:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	add.s r3, r17, r9
	loads.w r3, 0(r3)
	and r21, r3, r27
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	beq r21, zero, .LBB0_53
# %bb.46:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	lui r23, 523264
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r8, zero, .LBB0_54
.LBB0_47:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	beq r21, r28, .LBB0_49
.LBB0_48:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
.LBB0_49:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r3, r28, r8
	lui r8, 523264
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r3, zero, .LBB0_51
# %bb.50:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r23, 0
.LBB0_51:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r3, r28, r21
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r3, zero, .LBB0_42
# %bb.52:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	j .LBB0_42
.LBB0_53:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	lui r23, 523264
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	beq r8, zero, .LBB0_47
.LBB0_54:                               # %scalar.ph697
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r21, r28, .LBB0_48
	j .LBB0_49
.LBB0_55:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 191 11 is_stmt 1              # parallel-rne.mlir:191:11
	addli.d r[19:20], r[19:20], 4
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 213 13                        # parallel-rne.mlir:213:13
	add.s r9, r10, r9
	.loc	1 191 11                        # parallel-rne.mlir:191:11
	seteq.d r3, r[19:20], r[4:5]
	.loc	1 213 13                        # parallel-rne.mlir:213:13
	stores.w r21, 12(r9)
	stores.w r8, 8(r9)
	stores.w r25, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 191 11                        # parallel-rne.mlir:191:11
	bneq r3, zero, .LBB0_40
.LBB0_56:                               # %vector.body699
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	add.ul r[8:9], r[19:20], r[15:16]
	slli r9, r8, 2
	add.s r22, r17, r9
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	add.s r23, r13, r9
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	loads.w r8, 0(r22)
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	loads.w r11, 0(r23)
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	and r8, r8, r27
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	and r11, r11, r27
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	seteq r21, r8, r28
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	seteq r12, r8, zero
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	seteq r25, r11, r28
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	seteq r24, r11, zero
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	max.u r8, r8, r11
	setlt.u r8, r28, r8
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r11, r21, r24
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r12, r12, r25
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	add.s r24, r2, r9
	lui r21, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	or r11, r11, r12
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	or r8, r8, r11
	lui r11, 523264
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r8, zero, .LBB0_58
# %bb.57:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r24)
.LBB0_58:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r8, 4(r22)
	loads.w r12, 4(r23)
	and r8, r8, r27
	and r12, r12, r27
	seteq r13, r8, r28
	seteq r26, r8, zero
	seteq r3, r12, r28
	seteq r25, r12, zero
	max.u r8, r8, r12
	setlt.u r8, r28, r8
	and r12, r13, r25
	and r3, r26, r3
	lui r25, 523264
	or r3, r12, r3
	or r3, r8, r3
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r3, zero, .LBB0_60
# %bb.59:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r24)
.LBB0_60:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r3, 8(r22)
	loads.w r8, 8(r23)
	and r3, r3, r27
	and r8, r8, r27
	seteq r12, r3, r28
	seteq r18, r3, zero
	seteq r13, r8, zero
	seteq r26, r8, r28
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r12, r13
	and r12, r18, r26
	or r8, r8, r12
	or r3, r3, r8
	lui r8, 523264
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r3, zero, .LBB0_62
# %bb.61:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r24)
.LBB0_62:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	loads.w r3, 12(r22)
	loads.w r12, 12(r23)
	lui r26, 524288
	and r3, r3, r27
	and r12, r12, r27
	seteq r13, r3, r28
	seteq r23, r3, zero
	seteq r18, r12, zero
	seteq r22, r12, r28
	max.u r3, r3, r12
	setlt.u r3, r28, r3
	and r12, r13, r18
	and r13, r23, r22
	or r12, r12, r13
	or r3, r3, r12
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r3, zero, .LBB0_55
# %bb.63:                               # %vector.body699
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 12(r24)
	j .LBB0_55
.LBB0_64:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 182 7                         # parallel-rne.mlir:182:7
	mfence { sm }
.LBB0_65:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 15
	zext_int2long r[8:9], r8
	.loc	1 218 7 is_stmt 1               # parallel-rne.mlir:218:7
	store.d r[8:9], -1960(r30)              # 8-byte Folded Spill
	addli r8, zero, 1
	bneq r3, r8, .LBB0_92
# %bb.66:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	loadli.w r8,  -2040(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	.loc	1 218 7                         # parallel-rne.mlir:218:7
	storeli.w r3, -1976(r30)                # 4-byte Folded Spill
	addli r3, zero, 8
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_68
.LBB0_67:                               # %middle.block690
                                        #   in Loop: Header=BB0_68 Depth=2
	.loc	1 226 9 is_stmt 1               # parallel-rne.mlir:226:9
	load.d r[8:9], -1960(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1968(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_91
.LBB0_68:                               # %.preheader129
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_70 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	store.d r[8:9], -1968(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	loadli.w r3,  -1976(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_70
	j .LBB0_83
.LBB0_69:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	setlt.ul r3, r[19:20], r[6:7]
	.loc	1 249 13                        # parallel-rne.mlir:249:13
	add.s r8, r10, r9
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 249 13                        # parallel-rne.mlir:249:13
	stores.w r11, 0(r8)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	beq r3, zero, .LBB0_67
.LBB0_70:                               # %scalar.ph682
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[8:9], r[19:20], r[15:16]
	lui r11, 523264
	lui r22, 523264
	slli r9, r8, 2
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.s r3, r13, r9
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.s r8, r2, r9
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	loads.w r3, 0(r3)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	loads.w r23, 0(r8)
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	and r8, r3, r27
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	beq r8, r28, .LBB0_72
# %bb.71:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r23, 0
.LBB0_72:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	add.s r3, r17, r9
	loads.w r3, 0(r3)
	and r21, r3, r27
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	beq r21, zero, .LBB0_80
# %bb.73:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	lui r23, 523264
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r8, zero, .LBB0_81
.LBB0_74:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	beq r21, r28, .LBB0_76
.LBB0_75:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
.LBB0_76:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	setlt.u r3, r28, r8
	lui r8, 523264
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r3, zero, .LBB0_78
# %bb.77:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r23, 0
.LBB0_78:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	setlt.u r3, r28, r21
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r3, zero, .LBB0_69
# %bb.79:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	j .LBB0_69
.LBB0_80:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	lui r23, 523264
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	beq r8, zero, .LBB0_74
.LBB0_81:                               # %scalar.ph682
                                        #   in Loop: Header=BB0_70 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r21, r28, .LBB0_75
	j .LBB0_76
.LBB0_82:                               # %vector.body684
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	addli.d r[19:20], r[19:20], 4
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 249 13                        # parallel-rne.mlir:249:13
	add.s r9, r10, r9
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	seteq.d r3, r[19:20], r[4:5]
	.loc	1 249 13                        # parallel-rne.mlir:249:13
	stores.w r21, 12(r9)
	stores.w r8, 8(r9)
	stores.w r25, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	bneq r3, zero, .LBB0_67
.LBB0_83:                               # %vector.body684
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[8:9], r[19:20], r[15:16]
	slli r9, r8, 2
	add.s r22, r17, r9
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.s r23, r13, r9
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	loads.w r3, 0(r22)
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	loads.w r8, 0(r23)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r3, r3, r27
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	and r8, r8, r27
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	seteq r11, r3, r28
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	seteq r24, r3, zero
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	seteq r18, r8, zero
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	seteq r21, r8, r28
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r8, r11, r18
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	and r11, r24, r21
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.s r24, r2, r9
	lui r21, 523264
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	or r8, r8, r11
	lui r11, 523264
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	or r3, r3, r8
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r3, zero, .LBB0_85
# %bb.84:                               # %vector.body684
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r24)
.LBB0_85:                               # %vector.body684
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r3, 4(r22)
	loads.w r8, 4(r23)
	and r3, r3, r27
	and r8, r8, r27
	seteq r18, r3, r28
	seteq r12, r3, zero
	seteq r26, r8, r28
	seteq r25, r8, zero
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r18, r25
	and r12, r12, r26
	lui r25, 523264
	or r8, r8, r12
	or r3, r3, r8
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r3, zero, .LBB0_87
# %bb.86:                               # %vector.body684
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r24)
.LBB0_87:                               # %vector.body684
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r3, 8(r22)
	loads.w r8, 8(r23)
	and r3, r3, r27
	and r8, r8, r27
	seteq r12, r3, r28
	seteq r26, r3, zero
	seteq r13, r8, zero
	seteq r18, r8, r28
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r12, r13
	and r12, r26, r18
	or r8, r8, r12
	or r3, r3, r8
	lui r8, 523264
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r3, zero, .LBB0_89
# %bb.88:                               # %vector.body684
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r24)
.LBB0_89:                               # %vector.body684
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r3, 12(r22)
	loads.w r12, 12(r23)
	lui r26, 524288
	and r3, r3, r27
	and r12, r12, r27
	seteq r13, r3, r28
	seteq r23, r3, zero
	seteq r18, r12, zero
	seteq r22, r12, r28
	max.u r3, r3, r12
	setlt.u r3, r28, r3
	and r12, r13, r18
	and r13, r23, r22
	or r12, r12, r13
	or r3, r3, r12
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r3, zero, .LBB0_82
# %bb.90:                               # %vector.body684
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 12(r24)
	j .LBB0_82
.LBB0_91:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 218 7                         # parallel-rne.mlir:218:7
	mfence { sm }
.LBB0_92:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 23
	zext_int2long r[8:9], r8
	.loc	1 254 7 is_stmt 1               # parallel-rne.mlir:254:7
	store.d r[8:9], -1968(r30)              # 8-byte Folded Spill
	addli r8, zero, 2
	bneq r3, r8, .LBB0_119
# %bb.93:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	loadli.w r8,  -2040(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	zext_int2long r[8:9], r8
	.loc	1 254 7                         # parallel-rne.mlir:254:7
	storeli.w r3, -1984(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_95
.LBB0_94:                               # %middle.block675
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 262 9 is_stmt 1               # parallel-rne.mlir:262:9
	load.d r[8:9], -1968(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1976(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_118
.LBB0_95:                               # %.preheader128
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_110 Depth 3
                                        #       Child Loop BB0_97 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	.loc	1 263 11 is_stmt 1              # parallel-rne.mlir:263:11
	store.d r[8:9], -1976(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	loadli.w r3,  -1984(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_97
	j .LBB0_110
.LBB0_96:                               # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	setlt.ul r3, r[19:20], r[6:7]
	.loc	1 285 13                        # parallel-rne.mlir:285:13
	add.s r8, r10, r9
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 285 13                        # parallel-rne.mlir:285:13
	stores.w r11, 0(r8)
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	beq r3, zero, .LBB0_94
.LBB0_97:                               # %scalar.ph667
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	add.ul r[8:9], r[19:20], r[15:16]
	lui r11, 523264
	lui r22, 523264
	slli r9, r8, 2
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.s r3, r13, r9
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	add.s r8, r2, r9
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	loads.w r3, 0(r3)
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	loads.w r23, 0(r8)
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	and r8, r3, r27
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	beq r8, r28, .LBB0_99
# %bb.98:                               # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r23, 0
.LBB0_99:                               # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	add.s r3, r17, r9
	loads.w r3, 0(r3)
	and r21, r3, r27
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	beq r21, zero, .LBB0_107
# %bb.100:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	lui r23, 523264
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r8, zero, .LBB0_108
.LBB0_101:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	beq r21, r28, .LBB0_103
.LBB0_102:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
.LBB0_103:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	setlt.u r3, r28, r8
	lui r8, 523264
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r3, zero, .LBB0_105
# %bb.104:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r23, 0
.LBB0_105:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	setlt.u r3, r28, r21
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r3, zero, .LBB0_96
# %bb.106:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	j .LBB0_96
.LBB0_107:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	lui r23, 523264
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	beq r8, zero, .LBB0_101
.LBB0_108:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r21, r28, .LBB0_102
	j .LBB0_103
.LBB0_109:                              # %vector.body669
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 263 11 is_stmt 1              # parallel-rne.mlir:263:11
	addli.d r[19:20], r[19:20], 4
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 285 13                        # parallel-rne.mlir:285:13
	add.s r9, r10, r9
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	seteq.d r3, r[19:20], r[4:5]
	.loc	1 285 13                        # parallel-rne.mlir:285:13
	stores.w r21, 12(r9)
	stores.w r8, 8(r9)
	stores.w r25, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	bneq r3, zero, .LBB0_94
.LBB0_110:                              # %vector.body669
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	add.ul r[8:9], r[19:20], r[15:16]
	slli r9, r8, 2
	add.s r22, r17, r9
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.s r23, r13, r9
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	loads.w r3, 0(r22)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	loads.w r8, 0(r23)
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	and r3, r3, r27
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	and r8, r8, r27
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	seteq r11, r3, r28
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	seteq r24, r3, zero
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	seteq r18, r8, zero
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	seteq r21, r8, r28
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	and r8, r11, r18
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	and r11, r24, r21
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	add.s r24, r2, r9
	lui r21, 523264
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	or r8, r8, r11
	lui r11, 523264
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	or r3, r3, r8
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r3, zero, .LBB0_112
# %bb.111:                              # %vector.body669
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r24)
.LBB0_112:                              # %vector.body669
                                        #   in Loop: Header=BB0_110 Depth=3
	loads.w r3, 4(r22)
	loads.w r8, 4(r23)
	and r3, r3, r27
	and r8, r8, r27
	seteq r18, r3, r28
	seteq r12, r3, zero
	seteq r26, r8, r28
	seteq r25, r8, zero
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r18, r25
	and r12, r12, r26
	lui r25, 523264
	or r8, r8, r12
	or r3, r3, r8
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r3, zero, .LBB0_114
# %bb.113:                              # %vector.body669
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r24)
.LBB0_114:                              # %vector.body669
                                        #   in Loop: Header=BB0_110 Depth=3
	loads.w r3, 8(r22)
	loads.w r8, 8(r23)
	and r3, r3, r27
	and r8, r8, r27
	seteq r12, r3, r28
	seteq r26, r3, zero
	seteq r13, r8, zero
	seteq r18, r8, r28
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r12, r13
	and r12, r26, r18
	or r8, r8, r12
	or r3, r3, r8
	lui r8, 523264
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r3, zero, .LBB0_116
# %bb.115:                              # %vector.body669
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r24)
.LBB0_116:                              # %vector.body669
                                        #   in Loop: Header=BB0_110 Depth=3
	loads.w r3, 12(r22)
	loads.w r12, 12(r23)
	lui r26, 524288
	and r3, r3, r27
	and r12, r12, r27
	seteq r13, r3, r28
	seteq r23, r3, zero
	seteq r18, r12, zero
	seteq r22, r12, r28
	max.u r3, r3, r12
	setlt.u r3, r28, r3
	and r12, r13, r18
	and r13, r23, r22
	or r12, r12, r13
	or r3, r3, r12
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r3, zero, .LBB0_109
# %bb.117:                              # %vector.body669
                                        #   in Loop: Header=BB0_110 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 12(r24)
	j .LBB0_109
.LBB0_118:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 254 7                         # parallel-rne.mlir:254:7
	mfence { sm }
.LBB0_119:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 31
	zext_int2long r[8:9], r8
	.loc	1 290 7 is_stmt 1               # parallel-rne.mlir:290:7
	store.d r[8:9], -1976(r30)              # 8-byte Folded Spill
	addli r8, zero, 3
	bneq r3, r8, .LBB0_146
# %bb.120:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	loadli.w r8,  -2040(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	storeli.w r3, -1992(r30)                # 4-byte Folded Spill
	addli r3, zero, 24
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_122
.LBB0_121:                              # %middle.block660
                                        #   in Loop: Header=BB0_122 Depth=2
	.loc	1 298 9 is_stmt 1               # parallel-rne.mlir:298:9
	load.d r[8:9], -1976(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1984(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_145
.LBB0_122:                              # %.preheader127
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_124 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	.loc	1 299 11 is_stmt 1              # parallel-rne.mlir:299:11
	store.d r[8:9], -1984(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	loadli.w r3,  -1992(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_124
	j .LBB0_137
.LBB0_123:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	setlt.ul r3, r[19:20], r[6:7]
	.loc	1 321 13                        # parallel-rne.mlir:321:13
	add.s r8, r10, r9
	.loc	1 299 11                        # parallel-rne.mlir:299:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 321 13                        # parallel-rne.mlir:321:13
	stores.w r11, 0(r8)
	.loc	1 299 11                        # parallel-rne.mlir:299:11
	beq r3, zero, .LBB0_121
.LBB0_124:                              # %scalar.ph652
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	add.ul r[8:9], r[19:20], r[15:16]
	lui r11, 523264
	lui r22, 523264
	slli r9, r8, 2
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	add.s r3, r13, r9
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.s r8, r2, r9
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	loads.w r3, 0(r3)
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	loads.w r23, 0(r8)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r8, r3, r27
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	beq r8, r28, .LBB0_126
# %bb.125:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r23, 0
.LBB0_126:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	add.s r3, r17, r9
	loads.w r3, 0(r3)
	and r21, r3, r27
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	beq r21, zero, .LBB0_134
# %bb.127:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	lui r23, 523264
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r8, zero, .LBB0_135
.LBB0_128:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	beq r21, r28, .LBB0_130
.LBB0_129:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
.LBB0_130:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	setlt.u r3, r28, r8
	lui r8, 523264
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r3, zero, .LBB0_132
# %bb.131:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r23, 0
.LBB0_132:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	setlt.u r3, r28, r21
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r3, zero, .LBB0_123
# %bb.133:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	j .LBB0_123
.LBB0_134:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	lui r23, 523264
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	beq r8, zero, .LBB0_128
.LBB0_135:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r21, r28, .LBB0_129
	j .LBB0_130
.LBB0_136:                              # %vector.body654
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 299 11 is_stmt 1              # parallel-rne.mlir:299:11
	addli.d r[19:20], r[19:20], 4
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 321 13                        # parallel-rne.mlir:321:13
	add.s r9, r10, r9
	.loc	1 299 11                        # parallel-rne.mlir:299:11
	seteq.d r3, r[19:20], r[4:5]
	.loc	1 321 13                        # parallel-rne.mlir:321:13
	stores.w r21, 12(r9)
	stores.w r8, 8(r9)
	stores.w r25, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 299 11                        # parallel-rne.mlir:299:11
	bneq r3, zero, .LBB0_121
.LBB0_137:                              # %vector.body654
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	add.ul r[8:9], r[19:20], r[15:16]
	slli r9, r8, 2
	add.s r22, r17, r9
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	add.s r23, r13, r9
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	loads.w r3, 0(r22)
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	loads.w r8, 0(r23)
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r3, r3, r27
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r8, r8, r27
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	seteq r11, r3, r28
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	seteq r24, r3, zero
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	seteq r18, r8, zero
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	seteq r21, r8, r28
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	and r8, r11, r18
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	and r11, r24, r21
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.s r24, r2, r9
	lui r21, 523264
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	or r8, r8, r11
	lui r11, 523264
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	or r3, r3, r8
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r3, zero, .LBB0_139
# %bb.138:                              # %vector.body654
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r24)
.LBB0_139:                              # %vector.body654
                                        #   in Loop: Header=BB0_137 Depth=3
	loads.w r3, 4(r22)
	loads.w r8, 4(r23)
	and r3, r3, r27
	and r8, r8, r27
	seteq r18, r3, r28
	seteq r12, r3, zero
	seteq r26, r8, r28
	seteq r25, r8, zero
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r18, r25
	and r12, r12, r26
	lui r25, 523264
	or r8, r8, r12
	or r3, r3, r8
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r3, zero, .LBB0_141
# %bb.140:                              # %vector.body654
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r24)
.LBB0_141:                              # %vector.body654
                                        #   in Loop: Header=BB0_137 Depth=3
	loads.w r3, 8(r22)
	loads.w r8, 8(r23)
	and r3, r3, r27
	and r8, r8, r27
	seteq r12, r3, r28
	seteq r26, r3, zero
	seteq r13, r8, zero
	seteq r18, r8, r28
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r12, r13
	and r12, r26, r18
	or r8, r8, r12
	or r3, r3, r8
	lui r8, 523264
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r3, zero, .LBB0_143
# %bb.142:                              # %vector.body654
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r24)
.LBB0_143:                              # %vector.body654
                                        #   in Loop: Header=BB0_137 Depth=3
	loads.w r3, 12(r22)
	loads.w r12, 12(r23)
	lui r26, 524288
	and r3, r3, r27
	and r12, r12, r27
	seteq r13, r3, r28
	seteq r23, r3, zero
	seteq r18, r12, zero
	seteq r22, r12, r28
	max.u r3, r3, r12
	setlt.u r3, r28, r3
	and r12, r13, r18
	and r13, r23, r22
	or r12, r12, r13
	or r3, r3, r12
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r3, zero, .LBB0_136
# %bb.144:                              # %vector.body654
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 12(r24)
	j .LBB0_136
.LBB0_145:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	mfence { sm }
.LBB0_146:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 39
	zext_int2long r[8:9], r8
	.loc	1 326 7 is_stmt 1               # parallel-rne.mlir:326:7
	store.d r[8:9], -1984(r30)              # 8-byte Folded Spill
	addli r8, zero, 4
	bneq r3, r8, .LBB0_175
# %bb.147:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	loadli.w r8,  -2040(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	.loc	1 326 7                         # parallel-rne.mlir:326:7
	storeli.w r3, -2000(r30)                # 4-byte Folded Spill
	addli r3, zero, 32
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_149
.LBB0_148:                              # %middle.block645
                                        #   in Loop: Header=BB0_149 Depth=2
	.loc	1 334 9 is_stmt 1               # parallel-rne.mlir:334:9
	load.d r[8:9], -1984(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1992(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_174
.LBB0_149:                              # %.preheader126
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_166 Depth 3
                                        #       Child Loop BB0_152 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -1992(r30)              # 8-byte Folded Spill
	sll.d r[19:20], r[8:9], r3
	.loc	1 335 11 is_stmt 1              # parallel-rne.mlir:335:11
	loadli.w r3,  -2000(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_164
# %bb.150:                              # %scalar.ph637.preheader
                                        #   in Loop: Header=BB0_149 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_152
.LBB0_151:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	.loc	1 335 11                        # parallel-rne.mlir:335:11
	setlt.ul r3, r[8:9], r[6:7]
	.loc	1 357 13 is_stmt 1              # parallel-rne.mlir:357:13
	add.s r11, r10, r11
	.loc	1 335 11                        # parallel-rne.mlir:335:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	stores.w r13, 0(r11)
	.loc	1 335 11                        # parallel-rne.mlir:335:11
	beq r3, zero, .LBB0_148
.LBB0_152:                              # %scalar.ph637
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	add.ul r[11:12], r[8:9], r[19:20]
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	loadli.w r3,  -1952(r30)                # 4-byte Folded Reload
	lui r13, 523264
	lui r22, 523264
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	slli r11, r11, 2
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	add.s r3, r3, r11
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.s r12, r2, r11
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	loads.w r3, 0(r3)
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	loads.w r23, 0(r12)
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	and r12, r3, r27
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	beq r12, r28, .LBB0_154
# %bb.153:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r23, 0
.LBB0_154:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	add.s r3, r17, r11
	loads.w r3, 0(r3)
	and r21, r3, r27
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	beq r21, zero, .LBB0_162
# %bb.155:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	lui r23, 523264
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r12, zero, .LBB0_163
.LBB0_156:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	beq r21, r28, .LBB0_158
.LBB0_157:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
.LBB0_158:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	setlt.u r3, r28, r12
	lui r12, 523264
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_160
# %bb.159:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r23, 0
.LBB0_160:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	setlt.u r3, r28, r21
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_151
# %bb.161:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r12, 0
	j .LBB0_151
.LBB0_162:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	lui r23, 523264
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	beq r12, zero, .LBB0_156
.LBB0_163:                              # %scalar.ph637
                                        #   in Loop: Header=BB0_152 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r21, r28, .LBB0_157
	j .LBB0_158
.LBB0_164:                              # %vector.body639.preheader
                                        #   in Loop: Header=BB0_149 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_166
.LBB0_165:                              # %vector.body639
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 335 11 is_stmt 1              # parallel-rne.mlir:335:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	add.s r13, r10, r13
	.loc	1 335 11                        # parallel-rne.mlir:335:11
	seteq.d r3, r[8:9], r[4:5]
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	stores.w r21, 12(r13)
	stores.w r12, 8(r13)
	stores.w r25, 4(r13)
	stores.w r11, 0(r13)
	.loc	1 335 11                        # parallel-rne.mlir:335:11
	bneq r3, zero, .LBB0_148
.LBB0_166:                              # %vector.body639
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	add.ul r[11:12], r[8:9], r[19:20]
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	loadli.w r3,  -1952(r30)                # 4-byte Folded Reload
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	slli r13, r11, 2
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	add.s r23, r3, r13
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	add.s r22, r17, r13
	loads.w r3, 0(r22)
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	loads.w r11, 0(r23)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r3, r3, r27
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	and r11, r11, r27
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	seteq r12, r3, r28
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	seteq r24, r3, zero
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	seteq r18, r11, zero
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	seteq r21, r11, r28
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	and r11, r12, r18
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	and r12, r24, r21
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.s r24, r2, r13
	lui r21, 523264
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	or r11, r11, r12
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_168
# %bb.167:                              # %vector.body639
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r24)
.LBB0_168:                              # %vector.body639
                                        #   in Loop: Header=BB0_166 Depth=3
	loads.w r3, 4(r22)
	loads.w r12, 4(r23)
	and r3, r3, r27
	and r12, r12, r27
	seteq r18, r3, r28
	seteq r15, r3, zero
	seteq r26, r12, r28
	seteq r25, r12, zero
	max.u r3, r3, r12
	setlt.u r3, r28, r3
	and r12, r18, r25
	and r15, r15, r26
	lui r25, 523264
	or r12, r12, r15
	or r3, r3, r12
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_170
# %bb.169:                              # %vector.body639
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r24)
.LBB0_170:                              # %vector.body639
                                        #   in Loop: Header=BB0_166 Depth=3
	loads.w r3, 8(r22)
	loads.w r12, 8(r23)
	and r3, r3, r27
	and r12, r12, r27
	seteq r15, r3, r28
	seteq r26, r3, zero
	seteq r16, r12, zero
	seteq r18, r12, r28
	max.u r3, r3, r12
	setlt.u r3, r28, r3
	and r12, r15, r16
	and r15, r26, r18
	or r12, r12, r15
	or r3, r3, r12
	lui r12, 523264
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_172
# %bb.171:                              # %vector.body639
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r24)
.LBB0_172:                              # %vector.body639
                                        #   in Loop: Header=BB0_166 Depth=3
	loads.w r3, 12(r22)
	loads.w r15, 12(r23)
	lui r26, 524288
	and r3, r3, r27
	and r15, r15, r27
	seteq r16, r3, r28
	seteq r23, r3, zero
	seteq r18, r15, zero
	seteq r22, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r16, r18
	and r16, r23, r22
	or r15, r15, r16
	or r3, r3, r15
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_165
# %bb.173:                              # %vector.body639
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 12(r24)
	j .LBB0_165
.LBB0_174:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 326 7 is_stmt 1               # parallel-rne.mlir:326:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
.LBB0_175:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r8, zero, 47
	zext_int2long r[8:9], r8
	.loc	1 362 7 is_stmt 1               # parallel-rne.mlir:362:7
	store.d r[8:9], -1992(r30)              # 8-byte Folded Spill
	addli r8, zero, 5
	bneq r3, r8, .LBB0_204
# %bb.176:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	loadli.w r8,  -2040(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	storeli.w r3, -2008(r30)                # 4-byte Folded Spill
	addli r3, zero, 40
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_178
.LBB0_177:                              # %middle.block630
                                        #   in Loop: Header=BB0_178 Depth=2
	.loc	1 370 9 is_stmt 1               # parallel-rne.mlir:370:9
	load.d r[8:9], -1992(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2000(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_203
.LBB0_178:                              # %.preheader125
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_195 Depth 3
                                        #       Child Loop BB0_181 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -2000(r30)              # 8-byte Folded Spill
	sll.d r[20:21], r[8:9], r3
	.loc	1 371 11 is_stmt 1              # parallel-rne.mlir:371:11
	loadli.w r3,  -2008(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_193
# %bb.179:                              # %scalar.ph622.preheader
                                        #   in Loop: Header=BB0_178 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_181
.LBB0_180:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 371 11                        # parallel-rne.mlir:371:11
	setlt.ul r3, r[8:9], r[6:7]
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 393 13 is_stmt 1              # parallel-rne.mlir:393:13
	add.s r11, r10, r11
	.loc	1 371 11                        # parallel-rne.mlir:371:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 393 13                        # parallel-rne.mlir:393:13
	stores.w r12, 0(r11)
	.loc	1 371 11                        # parallel-rne.mlir:371:11
	beq r3, zero, .LBB0_177
.LBB0_181:                              # %scalar.ph622
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_178 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	add.ul r[11:12], r[8:9], r[20:21]
	lui r22, 523264
	slli r11, r11, 2
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	add.s r3, r13, r11
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	add.s r12, r2, r11
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	loads.w r3, 0(r3)
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	loads.w r23, 0(r12)
	lui r12, 523264
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	and r13, r3, r27
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	beq r13, r28, .LBB0_183
# %bb.182:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r23, 0
.LBB0_183:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	add.s r3, r17, r11
	loads.w r3, 0(r3)
	and r19, r3, r27
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	beq r19, zero, .LBB0_191
# %bb.184:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	lui r23, 523264
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	bneq r13, zero, .LBB0_192
.LBB0_185:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	beq r19, r28, .LBB0_187
.LBB0_186:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
.LBB0_187:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	setlt.u r3, r28, r13
	lui r13, 523264
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	bneq r3, zero, .LBB0_189
# %bb.188:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r23, 0
.LBB0_189:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	setlt.u r3, r28, r19
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	bneq r3, zero, .LBB0_180
# %bb.190:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_180
.LBB0_191:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	lui r23, 523264
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	beq r13, zero, .LBB0_185
.LBB0_192:                              # %scalar.ph622
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	bneq r19, r28, .LBB0_186
	j .LBB0_187
.LBB0_193:                              # %vector.body624.preheader
                                        #   in Loop: Header=BB0_178 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_195
.LBB0_194:                              # %vector.body624
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 371 11 is_stmt 1              # parallel-rne.mlir:371:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 393 13                        # parallel-rne.mlir:393:13
	add.s r12, r10, r12
	.loc	1 371 11                        # parallel-rne.mlir:371:11
	seteq.d r3, r[8:9], r[4:5]
	.loc	1 393 13                        # parallel-rne.mlir:393:13
	stores.w r13, 12(r12)
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	stores.w r19, 8(r12)
	stores.w r25, 4(r12)
	stores.w r11, 0(r12)
	.loc	1 371 11                        # parallel-rne.mlir:371:11
	bneq r3, zero, .LBB0_177
.LBB0_195:                              # %vector.body624
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_178 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	add.ul r[11:12], r[8:9], r[20:21]
	slli r12, r11, 2
	add.s r22, r17, r12
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	add.s r23, r13, r12
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	loads.w r3, 0(r22)
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	loads.w r11, 0(r23)
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	and r3, r3, r27
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	and r11, r11, r27
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	seteq r13, r3, r28
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	seteq r24, r3, zero
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	seteq r18, r11, zero
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	seteq r19, r11, r28
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	and r11, r13, r18
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r13, r24, r19
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	add.s r24, r2, r12
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	or r11, r11, r13
	lui r13, 523264
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	bneq r3, zero, .LBB0_197
# %bb.196:                              # %vector.body624
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r24)
.LBB0_197:                              # %vector.body624
                                        #   in Loop: Header=BB0_195 Depth=3
	loads.w r3, 4(r22)
	loads.w r18, 4(r23)
	and r3, r3, r27
	and r18, r18, r27
	seteq r19, r3, r28
	seteq r25, r18, zero
	seteq r15, r3, zero
	seteq r26, r18, r28
	max.u r3, r3, r18
	setlt.u r3, r28, r3
	and r16, r19, r25
	and r15, r15, r26
	lui r25, 523264
	or r15, r16, r15
	or r3, r3, r15
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	bneq r3, zero, .LBB0_199
# %bb.198:                              # %vector.body624
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r24)
.LBB0_199:                              # %vector.body624
                                        #   in Loop: Header=BB0_195 Depth=3
	loads.w r3, 8(r22)
	loads.w r15, 8(r23)
	and r3, r3, r27
	and r15, r15, r27
	seteq r16, r3, r28
	seteq r26, r3, zero
	seteq r18, r15, zero
	seteq r19, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r16, r18
	and r16, r26, r19
	lui r19, 523264
	or r15, r15, r16
	or r3, r3, r15
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	bneq r3, zero, .LBB0_201
# %bb.200:                              # %vector.body624
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r24)
.LBB0_201:                              # %vector.body624
                                        #   in Loop: Header=BB0_195 Depth=3
	loads.w r3, 12(r22)
	loads.w r15, 12(r23)
	lui r26, 524288
	and r3, r3, r27
	and r15, r15, r27
	seteq r16, r3, r28
	seteq r23, r3, zero
	seteq r18, r15, zero
	seteq r22, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r16, r18
	and r16, r23, r22
	or r15, r15, r16
	or r3, r3, r15
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	bneq r3, zero, .LBB0_194
# %bb.202:                              # %vector.body624
                                        #   in Loop: Header=BB0_195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 12(r24)
	j .LBB0_194
.LBB0_203:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	mfence { sm }
.LBB0_204:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 55
	zext_int2long r[8:9], r8
	.loc	1 398 7 is_stmt 1               # parallel-rne.mlir:398:7
	store.d r[8:9], -2000(r30)              # 8-byte Folded Spill
	addli r8, zero, 6
	bneq r3, r8, .LBB0_233
# %bb.205:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	loadli.w r8,  -2040(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	.loc	1 398 7                         # parallel-rne.mlir:398:7
	storeli.w r3, -2024(r30)                # 4-byte Folded Spill
	addli r3, zero, 48
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_207
.LBB0_206:                              # %middle.block615
                                        #   in Loop: Header=BB0_207 Depth=2
	.loc	1 406 9 is_stmt 1               # parallel-rne.mlir:406:9
	load.d r[8:9], -2000(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2008(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_232
.LBB0_207:                              # %.preheader124
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_224 Depth 3
                                        #       Child Loop BB0_210 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -2008(r30)              # 8-byte Folded Spill
	sll.d r[22:23], r[8:9], r3
	.loc	1 407 11 is_stmt 1              # parallel-rne.mlir:407:11
	loadli.w r3,  -2024(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_222
# %bb.208:                              # %scalar.ph607.preheader
                                        #   in Loop: Header=BB0_207 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_210
.LBB0_209:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 407 11                        # parallel-rne.mlir:407:11
	setlt.ul r3, r[8:9], r[6:7]
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 429 13 is_stmt 1              # parallel-rne.mlir:429:13
	add.s r11, r10, r11
	.loc	1 407 11                        # parallel-rne.mlir:407:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 429 13                        # parallel-rne.mlir:429:13
	stores.w r12, 0(r11)
	.loc	1 407 11                        # parallel-rne.mlir:407:11
	beq r3, zero, .LBB0_206
.LBB0_210:                              # %scalar.ph607
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	add.ul r[11:12], r[8:9], r[22:23]
	lui r20, 523264
	slli r11, r11, 2
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	add.s r3, r13, r11
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	add.s r12, r2, r11
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	loads.w r3, 0(r3)
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	loads.w r21, 0(r12)
	lui r12, 523264
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	and r13, r3, r27
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	beq r13, r28, .LBB0_212
# %bb.211:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_212:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	add.s r3, r17, r11
	loads.w r3, 0(r3)
	and r19, r3, r27
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	beq r19, zero, .LBB0_220
# %bb.213:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r13, zero, .LBB0_221
.LBB0_214:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	beq r19, r28, .LBB0_216
.LBB0_215:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_216:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r3, r28, r13
	lui r13, 523264
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r3, zero, .LBB0_218
# %bb.217:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r21, 0
.LBB0_218:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r3, r28, r19
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r3, zero, .LBB0_209
# %bb.219:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_209
.LBB0_220:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	lui r21, 523264
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	beq r13, zero, .LBB0_214
.LBB0_221:                              # %scalar.ph607
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r19, r28, .LBB0_215
	j .LBB0_216
.LBB0_222:                              # %vector.body609.preheader
                                        #   in Loop: Header=BB0_207 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_224
.LBB0_223:                              # %vector.body609
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 407 11 is_stmt 1              # parallel-rne.mlir:407:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 429 13                        # parallel-rne.mlir:429:13
	add.s r12, r10, r12
	.loc	1 407 11                        # parallel-rne.mlir:407:11
	seteq.d r3, r[8:9], r[4:5]
	.loc	1 429 13                        # parallel-rne.mlir:429:13
	stores.w r13, 12(r12)
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	stores.w r21, 8(r12)
	stores.w r25, 4(r12)
	stores.w r11, 0(r12)
	.loc	1 407 11                        # parallel-rne.mlir:407:11
	bneq r3, zero, .LBB0_206
.LBB0_224:                              # %vector.body609
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_207 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	add.ul r[11:12], r[8:9], r[22:23]
	slli r12, r11, 2
	add.s r19, r17, r12
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	add.s r20, r13, r12
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	loads.w r3, 0(r19)
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	loads.w r11, 0(r20)
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	and r3, r3, r27
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	and r11, r11, r27
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	seteq r13, r3, r28
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	seteq r24, r3, zero
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	seteq r18, r11, zero
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	seteq r21, r11, r28
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	and r11, r13, r18
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	and r13, r24, r21
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	add.s r24, r2, r12
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	or r11, r11, r13
	lui r13, 523264
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r3, zero, .LBB0_226
# %bb.225:                              # %vector.body609
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r24)
.LBB0_226:                              # %vector.body609
                                        #   in Loop: Header=BB0_224 Depth=3
	loads.w r3, 4(r19)
	loads.w r18, 4(r20)
	and r3, r3, r27
	and r18, r18, r27
	seteq r21, r3, r28
	seteq r25, r18, zero
	seteq r15, r3, zero
	seteq r26, r18, r28
	max.u r3, r3, r18
	setlt.u r3, r28, r3
	and r16, r21, r25
	and r15, r15, r26
	lui r25, 523264
	or r15, r16, r15
	or r3, r3, r15
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r3, zero, .LBB0_228
# %bb.227:                              # %vector.body609
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r24)
.LBB0_228:                              # %vector.body609
                                        #   in Loop: Header=BB0_224 Depth=3
	loads.w r3, 8(r19)
	loads.w r15, 8(r20)
	and r3, r3, r27
	and r15, r15, r27
	seteq r16, r3, r28
	seteq r26, r3, zero
	seteq r18, r15, zero
	seteq r21, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r16, r18
	and r16, r26, r21
	lui r21, 523264
	or r15, r15, r16
	or r3, r3, r15
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r3, zero, .LBB0_230
# %bb.229:                              # %vector.body609
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r24)
.LBB0_230:                              # %vector.body609
                                        #   in Loop: Header=BB0_224 Depth=3
	loads.w r3, 12(r19)
	loads.w r15, 12(r20)
	lui r26, 524288
	and r3, r3, r27
	and r15, r15, r27
	seteq r16, r3, r28
	seteq r20, r3, zero
	seteq r18, r15, zero
	seteq r19, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r16, r18
	and r16, r20, r19
	or r15, r15, r16
	or r3, r3, r15
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r3, zero, .LBB0_223
# %bb.231:                              # %vector.body609
                                        #   in Loop: Header=BB0_224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 12(r24)
	j .LBB0_223
.LBB0_232:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 398 7                         # parallel-rne.mlir:398:7
	mfence { sm }
.LBB0_233:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 63
	zext_int2long r[8:9], r8
	.loc	1 434 7 is_stmt 1               # parallel-rne.mlir:434:7
	store.d r[8:9], -2008(r30)              # 8-byte Folded Spill
	addli r8, zero, 7
	bneq r3, r8, .LBB0_262
# %bb.234:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	loadli.w r8,  -2040(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	.loc	1 434 7                         # parallel-rne.mlir:434:7
	storeli.w r3, -2032(r30)                # 4-byte Folded Spill
	addli r3, zero, 56
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_236
.LBB0_235:                              # %middle.block600
                                        #   in Loop: Header=BB0_236 Depth=2
	.loc	1 442 9 is_stmt 1               # parallel-rne.mlir:442:9
	load.d r[8:9], -2008(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2024(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_261
.LBB0_236:                              # %.preheader123
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_253 Depth 3
                                        #       Child Loop BB0_239 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -2024(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r3
	.loc	1 443 11 is_stmt 1              # parallel-rne.mlir:443:11
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_251
# %bb.237:                              # %scalar.ph592.preheader
                                        #   in Loop: Header=BB0_236 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_239
.LBB0_238:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 443 11                        # parallel-rne.mlir:443:11
	setlt.ul r3, r[11:12], r[6:7]
	.loc	1 465 13 is_stmt 1              # parallel-rne.mlir:465:13
	add.s r13, r10, r13
	.loc	1 443 11                        # parallel-rne.mlir:443:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 465 13                        # parallel-rne.mlir:465:13
	stores.w r19, 0(r13)
	.loc	1 443 11                        # parallel-rne.mlir:443:11
	beq r3, zero, .LBB0_235
.LBB0_239:                              # %scalar.ph592
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_236 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	add.ul r[15:16], r[11:12], r[8:9]
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	loadli.w r3,  -1952(r30)                # 4-byte Folded Reload
	lui r19, 523264
	lui r22, 523264
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	slli r13, r15, 2
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	add.s r3, r3, r13
	.loc	1 446 19                        # parallel-rne.mlir:446:19
	add.s r15, r2, r13
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	loads.w r3, 0(r3)
	.loc	1 446 19                        # parallel-rne.mlir:446:19
	loads.w r23, 0(r15)
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	and r20, r3, r27
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	beq r20, r28, .LBB0_241
# %bb.240:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r23, 0
.LBB0_241:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	add.s r3, r17, r13
	loads.w r3, 0(r3)
	and r21, r3, r27
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	beq r21, zero, .LBB0_249
# %bb.242:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	lui r23, 523264
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r20, zero, .LBB0_250
.LBB0_243:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	beq r21, r28, .LBB0_245
.LBB0_244:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
.LBB0_245:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	setlt.u r3, r28, r20
	lui r20, 523264
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r3, zero, .LBB0_247
# %bb.246:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r23, 0
.LBB0_247:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	setlt.u r3, r28, r21
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r3, zero, .LBB0_238
# %bb.248:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_238
.LBB0_249:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	lui r23, 523264
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	beq r20, zero, .LBB0_243
.LBB0_250:                              # %scalar.ph592
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r21, r28, .LBB0_244
	j .LBB0_245
.LBB0_251:                              # %vector.body594.preheader
                                        #   in Loop: Header=BB0_236 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_253
.LBB0_252:                              # %vector.body594
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 443 11 is_stmt 1              # parallel-rne.mlir:443:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 465 13                        # parallel-rne.mlir:465:13
	add.s r15, r10, r19
	.loc	1 443 11                        # parallel-rne.mlir:443:11
	seteq.d r3, r[12:13], r[4:5]
	.loc	1 465 13                        # parallel-rne.mlir:465:13
	stores.w r20, 12(r15)
	stores.w r23, 8(r15)
	stores.w r25, 4(r15)
	stores.w r11, 0(r15)
	.loc	1 443 11                        # parallel-rne.mlir:443:11
	bneq r3, zero, .LBB0_235
.LBB0_253:                              # %vector.body594
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_236 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	add.ul r[18:19], r[12:13], r[8:9]
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	loadli.w r3,  -1952(r30)                # 4-byte Folded Reload
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	slli r19, r18, 2
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	add.s r22, r3, r19
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	add.s r21, r17, r19
	loads.w r3, 0(r21)
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	loads.w r11, 0(r22)
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	and r3, r3, r27
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	and r11, r11, r27
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	seteq r18, r3, r28
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	seteq r24, r3, zero
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	seteq r20, r11, zero
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	seteq r23, r11, r28
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 454 19                        # parallel-rne.mlir:454:19
	and r11, r18, r20
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	and r18, r24, r23
	.loc	1 446 19                        # parallel-rne.mlir:446:19
	add.s r24, r2, r19
	lui r20, 523264
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	or r11, r11, r18
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r3, zero, .LBB0_255
# %bb.254:                              # %vector.body594
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r24)
.LBB0_255:                              # %vector.body594
                                        #   in Loop: Header=BB0_253 Depth=3
	loads.w r3, 4(r21)
	loads.w r18, 4(r22)
	and r3, r3, r27
	and r18, r18, r27
	seteq r23, r3, r28
	seteq r25, r18, zero
	seteq r15, r3, zero
	seteq r26, r18, r28
	max.u r3, r3, r18
	setlt.u r3, r28, r3
	and r16, r23, r25
	and r15, r15, r26
	lui r25, 523264
	or r15, r16, r15
	or r3, r3, r15
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r3, zero, .LBB0_257
# %bb.256:                              # %vector.body594
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r24)
.LBB0_257:                              # %vector.body594
                                        #   in Loop: Header=BB0_253 Depth=3
	loads.w r3, 8(r21)
	loads.w r15, 8(r22)
	and r3, r3, r27
	and r15, r15, r27
	seteq r16, r3, r28
	seteq r26, r3, zero
	seteq r18, r15, zero
	seteq r23, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r16, r18
	and r16, r26, r23
	lui r23, 523264
	or r15, r15, r16
	or r3, r3, r15
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r3, zero, .LBB0_259
# %bb.258:                              # %vector.body594
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r24)
.LBB0_259:                              # %vector.body594
                                        #   in Loop: Header=BB0_253 Depth=3
	loads.w r3, 12(r21)
	loads.w r15, 12(r22)
	lui r26, 524288
	and r3, r3, r27
	and r15, r15, r27
	seteq r16, r3, r28
	seteq r22, r3, zero
	seteq r18, r15, zero
	seteq r21, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r16, r18
	and r16, r22, r21
	or r15, r15, r16
	or r3, r3, r15
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r3, zero, .LBB0_252
# %bb.260:                              # %vector.body594
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 12(r24)
	j .LBB0_252
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 434 7 is_stmt 1               # parallel-rne.mlir:434:7
	mfence { sm }
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
.LBB0_262:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	addli r2, zero, 255
	addli r3, zero, 3
	csr_set csr5, r2
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r2
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	sync_core
	.loc	1 471 7                         # parallel-rne.mlir:471:7
	bneq r2, r3, .LBB0_264
# %bb.263:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	addli r2, zero, 22
	xsignal r2, 0
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	addli r2, zero, 28
	xsignal r2, 0
	.loc	1 474 7                         # parallel-rne.mlir:474:7
	addli r2, zero, 30
	xsignal r2, 0
	.loc	1 476 13                        # parallel-rne.mlir:476:13
	loadli.w r2,  -48(r30)
	loadli.w r8,  -2124(r30)                # 4-byte Folded Reload
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	addli r2, zero, 3
	slli r3, r3, 15
	add.s r17, r3, r8
	.loc	1 480 7                         # parallel-rne.mlir:480:7
	addli r3, zero, 31
	xwait r3, 0
	.loc	1 481 7                         # parallel-rne.mlir:481:7
	addli r3, zero, 35
	xwait r3, 0
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	j .LBB0_267
.LBB0_264:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 476 13                        # parallel-rne.mlir:476:13
	loadli.w r2,  -48(r30)
	loadli.w r8,  -2124(r30)                # 4-byte Folded Reload
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	.loc	1 477 7                         # parallel-rne.mlir:477:7
	addli r2, zero, 5
	.loc	1 476 13                        # parallel-rne.mlir:476:13
	slli r3, r3, 15
	add.s r17, r3, r8
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 477 7                         # parallel-rne.mlir:477:7
	bneq r3, r2, .LBB0_266
# %bb.265:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 12
	lui r9, 260096
	addli r11, zero, 2047
	xwait r2, 0
	addli r2, zero, 22
	xwait r2, 0
	addli r2, zero, 32
	xwait r2, 0
	addli r2, zero, 2
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r8,  -2140(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r9, r8, zero, 0
	addli r8, zero, 4
	addli r9, zero, 13
	ew_cfg zero, r11, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, r8, 19
	dsmadd r17, r13, r10, 0
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r9, 0
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r9,  -2144(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r9, zero, zero, 0
	ew_cfg zero, r11, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, zero, 19
	hp_ssmul r17, r17, r17, 0
	ew_cfg zero, zero, zero, 19
	unlock r2
	addli r2, zero, 31
	xsignal r2, 0
.LBB0_266:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
.LBB0_267:                              # %.critedge12
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r8,  -2052(r30)                # 4-byte Folded Reload
	.loc	1 483 7 is_stmt 1               # parallel-rne.mlir:483:7
	xfence
	mod.s r2, r8, r2
	loadli.w r8,  -2120(r30)                # 4-byte Folded Reload
	.loc	1 484 7                         # parallel-rne.mlir:484:7
	mfence { lm, sm, gm }
	slli r2, r2, 15
	add.s r2, r2, r8
	.loc	1 485 7                         # parallel-rne.mlir:485:7
	addli r8, zero, 255
	csr_set csr5, r8
	sub.s r8, r2, r17
	storeli.w r8, -2024(r30)                # 4-byte Folded Spill
	sync_core
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	beq r3, zero, .LBB0_290
# %bb.268:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	addli r8, zero, 1
	bneq r3, r8, .LBB0_296
.LBB0_269:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r8,  -2024(r30)                # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r8, r3
	addli r3, zero, 8
	zext_int2long r[11:12], r3
	j .LBB0_271
.LBB0_270:                              # %middle.block575
                                        #   in Loop: Header=BB0_271 Depth=2
	.loc	1 511 9 is_stmt 1               # parallel-rne.mlir:511:9
	load.d r[15:16], -1960(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[15:16]
	addli.d r[11:12], r[11:12], 1
	beq r3, zero, .LBB0_274
.LBB0_271:                              # %.preheader121
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_272 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[15:16], r[11:12], r3
	.loc	1 512 11 is_stmt 1              # parallel-rne.mlir:512:11
	beq r8, zero, .LBB0_273
.LBB0_272:                              # %scalar.ph568
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_271 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	setlt.ul r13, r[19:20], r[6:7]
	addli.d r[19:20], r[19:20], 1
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	slli r3, r21, 2
	add.s r9, r17, r3
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	add.s r3, r2, r3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	loads.w r9, 0(r9)
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	stores.w r9, 0(r3)
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	bneq r13, zero, .LBB0_272
	j .LBB0_270
.LBB0_273:                              # %vector.body570
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_271 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	slli r3, r21, 2
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	seteq.d r9, r[19:20], r[4:5]
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	add.s r13, r17, r3
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	add.s r3, r2, r3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	loads.w r18, 12(r13)
	loads.w r21, 8(r13)
	loads.w r22, 4(r13)
	loads.w r23, 0(r13)
	loads.w r24, 28(r13)
	loads.w r25, 24(r13)
	loads.w r26, 20(r13)
	loads.w r13, 16(r13)
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	stores.w r18, 12(r3)
	stores.w r21, 8(r3)
	stores.w r22, 4(r3)
	stores.w r23, 0(r3)
	stores.w r24, 28(r3)
	stores.w r25, 24(r3)
	stores.w r26, 20(r3)
	stores.w r13, 16(r3)
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	beq r9, zero, .LBB0_273
	j .LBB0_270
.LBB0_274:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	lui r26, 524288
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	addli r8, zero, 2
	beq r3, r8, .LBB0_297
.LBB0_275:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 537 7                         # parallel-rne.mlir:537:7
	addli r8, zero, 3
	bneq r3, r8, .LBB0_303
.LBB0_276:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r8,  -2024(r30)                # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 537 7                         # parallel-rne.mlir:537:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r8, r3
	addli r3, zero, 24
	zext_int2long r[11:12], r3
	j .LBB0_278
.LBB0_277:                              # %middle.block555
                                        #   in Loop: Header=BB0_278 Depth=2
	.loc	1 545 9 is_stmt 1               # parallel-rne.mlir:545:9
	load.d r[15:16], -1976(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[15:16]
	addli.d r[11:12], r[11:12], 1
	beq r3, zero, .LBB0_281
.LBB0_278:                              # %.preheader119
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_280 Depth 3
                                        #       Child Loop BB0_279 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[15:16], r[11:12], r3
	.loc	1 546 11 is_stmt 1              # parallel-rne.mlir:546:11
	beq r8, zero, .LBB0_280
.LBB0_279:                              # %scalar.ph548
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_278 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	setlt.ul r13, r[19:20], r[6:7]
	addli.d r[19:20], r[19:20], 1
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	slli r3, r21, 2
	add.s r9, r17, r3
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	add.s r3, r2, r3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	loads.w r9, 0(r9)
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r9, 0(r3)
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	bneq r13, zero, .LBB0_279
	j .LBB0_277
.LBB0_280:                              # %vector.body550
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_278 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	slli r3, r21, 2
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	seteq.d r9, r[19:20], r[4:5]
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.s r13, r17, r3
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	add.s r3, r2, r3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	loads.w r18, 12(r13)
	loads.w r21, 8(r13)
	loads.w r22, 4(r13)
	loads.w r23, 0(r13)
	loads.w r24, 28(r13)
	loads.w r25, 24(r13)
	loads.w r26, 20(r13)
	loads.w r13, 16(r13)
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r18, 12(r3)
	stores.w r21, 8(r3)
	stores.w r22, 4(r3)
	stores.w r23, 0(r3)
	stores.w r24, 28(r3)
	stores.w r25, 24(r3)
	stores.w r26, 20(r3)
	stores.w r13, 16(r3)
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	beq r9, zero, .LBB0_280
	j .LBB0_277
.LBB0_281:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 537 7                         # parallel-rne.mlir:537:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	lui r26, 524288
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r8, zero, 4
	beq r3, r8, .LBB0_304
.LBB0_282:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 571 7                         # parallel-rne.mlir:571:7
	addli r8, zero, 5
	bneq r3, r8, .LBB0_310
.LBB0_283:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r8,  -2024(r30)                # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 571 7                         # parallel-rne.mlir:571:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r8, r3
	addli r3, zero, 40
	zext_int2long r[11:12], r3
	j .LBB0_285
.LBB0_284:                              # %middle.block535
                                        #   in Loop: Header=BB0_285 Depth=2
	.loc	1 579 9 is_stmt 1               # parallel-rne.mlir:579:9
	load.d r[15:16], -1992(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[15:16]
	addli.d r[11:12], r[11:12], 1
	beq r3, zero, .LBB0_288
.LBB0_285:                              # %.preheader117
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_287 Depth 3
                                        #       Child Loop BB0_286 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[15:16], r[11:12], r3
	.loc	1 580 11 is_stmt 1              # parallel-rne.mlir:580:11
	beq r8, zero, .LBB0_287
.LBB0_286:                              # %scalar.ph528
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	setlt.ul r13, r[19:20], r[6:7]
	addli.d r[19:20], r[19:20], 1
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	slli r3, r21, 2
	add.s r9, r17, r3
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	add.s r3, r2, r3
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	loads.w r9, 0(r9)
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	stores.w r9, 0(r3)
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	bneq r13, zero, .LBB0_286
	j .LBB0_284
.LBB0_287:                              # %vector.body530
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	slli r3, r21, 2
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	seteq.d r9, r[19:20], r[4:5]
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	add.s r13, r17, r3
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	add.s r3, r2, r3
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	loads.w r18, 12(r13)
	loads.w r21, 8(r13)
	loads.w r22, 4(r13)
	loads.w r23, 0(r13)
	loads.w r24, 28(r13)
	loads.w r25, 24(r13)
	loads.w r26, 20(r13)
	loads.w r13, 16(r13)
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	stores.w r18, 12(r3)
	stores.w r21, 8(r3)
	stores.w r22, 4(r3)
	stores.w r23, 0(r3)
	stores.w r24, 28(r3)
	stores.w r25, 24(r3)
	stores.w r26, 20(r3)
	stores.w r13, 16(r3)
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	beq r9, zero, .LBB0_287
	j .LBB0_284
.LBB0_288:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 571 7                         # parallel-rne.mlir:571:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	lui r26, 524288
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	addli r8, zero, 6
	beq r3, r8, .LBB0_311
.LBB0_289:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	addli r8, zero, 7
	beq r3, r8, .LBB0_317
	j .LBB0_323
.LBB0_290:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r8,  -2024(r30)                # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 486 7 is_stmt 1               # parallel-rne.mlir:486:7
	xfence
	zext_int2long r[11:12], zero
	mfence { lm, sm, gm }
	setlt.u r8, r8, r3
	j .LBB0_292
.LBB0_291:                              # %middle.block585
                                        #   in Loop: Header=BB0_292 Depth=2
	.loc	1 494 9                         # parallel-rne.mlir:494:9
	load.d r[15:16], -2016(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[15:16]
	addli.d r[11:12], r[11:12], 1
	beq r3, zero, .LBB0_295
.LBB0_292:                              # %.preheader122
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_294 Depth 3
                                        #       Child Loop BB0_293 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[15:16], r[11:12], r3
	.loc	1 495 11 is_stmt 1              # parallel-rne.mlir:495:11
	beq r8, zero, .LBB0_294
.LBB0_293:                              # %scalar.ph578
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_292 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	setlt.ul r13, r[19:20], r[6:7]
	addli.d r[19:20], r[19:20], 1
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	slli r3, r21, 2
	add.s r9, r17, r3
	.loc	1 498 13                        # parallel-rne.mlir:498:13
	add.s r3, r2, r3
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	loads.w r9, 0(r9)
	.loc	1 498 13                        # parallel-rne.mlir:498:13
	stores.w r9, 0(r3)
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	bneq r13, zero, .LBB0_293
	j .LBB0_291
.LBB0_294:                              # %vector.body580
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_292 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	slli r3, r21, 2
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	seteq.d r9, r[19:20], r[4:5]
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	add.s r13, r17, r3
	.loc	1 498 13                        # parallel-rne.mlir:498:13
	add.s r3, r2, r3
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	loads.w r18, 12(r13)
	loads.w r21, 8(r13)
	loads.w r22, 4(r13)
	loads.w r23, 0(r13)
	loads.w r24, 28(r13)
	loads.w r25, 24(r13)
	loads.w r26, 20(r13)
	loads.w r13, 16(r13)
	.loc	1 498 13                        # parallel-rne.mlir:498:13
	stores.w r18, 12(r3)
	stores.w r21, 8(r3)
	stores.w r22, 4(r3)
	stores.w r23, 0(r3)
	stores.w r24, 28(r3)
	stores.w r25, 24(r3)
	stores.w r26, 20(r3)
	stores.w r13, 16(r3)
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	beq r9, zero, .LBB0_294
	j .LBB0_291
.LBB0_295:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	lui r26, 524288
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	addli r8, zero, 1
	beq r3, r8, .LBB0_269
.LBB0_296:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	addli r8, zero, 2
	bneq r3, r8, .LBB0_275
.LBB0_297:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r8,  -2024(r30)                # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r8, r3
	addli r3, zero, 16
	zext_int2long r[11:12], r3
	j .LBB0_299
.LBB0_298:                              # %middle.block565
                                        #   in Loop: Header=BB0_299 Depth=2
	.loc	1 528 9 is_stmt 1               # parallel-rne.mlir:528:9
	load.d r[15:16], -1968(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[15:16]
	addli.d r[11:12], r[11:12], 1
	beq r3, zero, .LBB0_302
.LBB0_299:                              # %.preheader120
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_301 Depth 3
                                        #       Child Loop BB0_300 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[15:16], r[11:12], r3
	.loc	1 529 11 is_stmt 1              # parallel-rne.mlir:529:11
	beq r8, zero, .LBB0_301
.LBB0_300:                              # %scalar.ph558
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_299 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 529 11                        # parallel-rne.mlir:529:11
	setlt.ul r13, r[19:20], r[6:7]
	addli.d r[19:20], r[19:20], 1
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	slli r3, r21, 2
	add.s r9, r17, r3
	.loc	1 532 13                        # parallel-rne.mlir:532:13
	add.s r3, r2, r3
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	loads.w r9, 0(r9)
	.loc	1 532 13                        # parallel-rne.mlir:532:13
	stores.w r9, 0(r3)
	.loc	1 529 11                        # parallel-rne.mlir:529:11
	bneq r13, zero, .LBB0_300
	j .LBB0_298
.LBB0_301:                              # %vector.body560
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_299 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 529 11                        # parallel-rne.mlir:529:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	slli r3, r21, 2
	.loc	1 529 11                        # parallel-rne.mlir:529:11
	seteq.d r9, r[19:20], r[4:5]
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	add.s r13, r17, r3
	.loc	1 532 13                        # parallel-rne.mlir:532:13
	add.s r3, r2, r3
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	loads.w r18, 12(r13)
	loads.w r21, 8(r13)
	loads.w r22, 4(r13)
	loads.w r23, 0(r13)
	loads.w r24, 28(r13)
	loads.w r25, 24(r13)
	loads.w r26, 20(r13)
	loads.w r13, 16(r13)
	.loc	1 532 13                        # parallel-rne.mlir:532:13
	stores.w r18, 12(r3)
	stores.w r21, 8(r3)
	stores.w r22, 4(r3)
	stores.w r23, 0(r3)
	stores.w r24, 28(r3)
	stores.w r25, 24(r3)
	stores.w r26, 20(r3)
	stores.w r13, 16(r3)
	.loc	1 529 11                        # parallel-rne.mlir:529:11
	beq r9, zero, .LBB0_301
	j .LBB0_298
.LBB0_302:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	lui r26, 524288
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 537 7                         # parallel-rne.mlir:537:7
	addli r8, zero, 3
	beq r3, r8, .LBB0_276
.LBB0_303:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r8, zero, 4
	bneq r3, r8, .LBB0_282
.LBB0_304:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r8,  -2024(r30)                # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[11:12], r3
	setlt.u r8, r8, r3
	j .LBB0_306
.LBB0_305:                              # %middle.block545
                                        #   in Loop: Header=BB0_306 Depth=2
	.loc	1 562 9 is_stmt 1               # parallel-rne.mlir:562:9
	load.d r[15:16], -1984(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[15:16]
	addli.d r[11:12], r[11:12], 1
	beq r3, zero, .LBB0_309
.LBB0_306:                              # %.preheader118
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_308 Depth 3
                                        #       Child Loop BB0_307 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[15:16], r[11:12], r3
	.loc	1 563 11 is_stmt 1              # parallel-rne.mlir:563:11
	beq r8, zero, .LBB0_308
.LBB0_307:                              # %scalar.ph538
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	setlt.ul r13, r[19:20], r[6:7]
	addli.d r[19:20], r[19:20], 1
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	slli r3, r21, 2
	add.s r9, r17, r3
	.loc	1 566 13                        # parallel-rne.mlir:566:13
	add.s r3, r2, r3
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	loads.w r9, 0(r9)
	.loc	1 566 13                        # parallel-rne.mlir:566:13
	stores.w r9, 0(r3)
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	bneq r13, zero, .LBB0_307
	j .LBB0_305
.LBB0_308:                              # %vector.body540
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	slli r3, r21, 2
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	seteq.d r9, r[19:20], r[4:5]
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	add.s r13, r17, r3
	.loc	1 566 13                        # parallel-rne.mlir:566:13
	add.s r3, r2, r3
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	loads.w r18, 12(r13)
	loads.w r21, 8(r13)
	loads.w r22, 4(r13)
	loads.w r23, 0(r13)
	loads.w r24, 28(r13)
	loads.w r25, 24(r13)
	loads.w r26, 20(r13)
	loads.w r13, 16(r13)
	.loc	1 566 13                        # parallel-rne.mlir:566:13
	stores.w r18, 12(r3)
	stores.w r21, 8(r3)
	stores.w r22, 4(r3)
	stores.w r23, 0(r3)
	stores.w r24, 28(r3)
	stores.w r25, 24(r3)
	stores.w r26, 20(r3)
	stores.w r13, 16(r3)
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	beq r9, zero, .LBB0_308
	j .LBB0_305
.LBB0_309:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	lui r26, 524288
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 571 7                         # parallel-rne.mlir:571:7
	addli r8, zero, 5
	beq r3, r8, .LBB0_283
.LBB0_310:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	addli r8, zero, 6
	bneq r3, r8, .LBB0_289
.LBB0_311:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r8,  -2024(r30)                # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r8, r3
	addli r3, zero, 48
	zext_int2long r[11:12], r3
	j .LBB0_313
.LBB0_312:                              # %middle.block525
                                        #   in Loop: Header=BB0_313 Depth=2
	.loc	1 596 9 is_stmt 1               # parallel-rne.mlir:596:9
	load.d r[15:16], -2000(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[15:16]
	addli.d r[11:12], r[11:12], 1
	beq r3, zero, .LBB0_316
.LBB0_313:                              # %.preheader116
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_315 Depth 3
                                        #       Child Loop BB0_314 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[15:16], r[11:12], r3
	.loc	1 597 11 is_stmt 1              # parallel-rne.mlir:597:11
	beq r8, zero, .LBB0_315
.LBB0_314:                              # %scalar.ph518
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_313 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	setlt.ul r13, r[19:20], r[6:7]
	addli.d r[19:20], r[19:20], 1
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	slli r3, r21, 2
	add.s r9, r17, r3
	.loc	1 600 13                        # parallel-rne.mlir:600:13
	add.s r3, r2, r3
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	loads.w r9, 0(r9)
	.loc	1 600 13                        # parallel-rne.mlir:600:13
	stores.w r9, 0(r3)
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	bneq r13, zero, .LBB0_314
	j .LBB0_312
.LBB0_315:                              # %vector.body520
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_313 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	slli r3, r21, 2
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	seteq.d r9, r[19:20], r[4:5]
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	add.s r13, r17, r3
	.loc	1 600 13                        # parallel-rne.mlir:600:13
	add.s r3, r2, r3
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	loads.w r18, 12(r13)
	loads.w r21, 8(r13)
	loads.w r22, 4(r13)
	loads.w r23, 0(r13)
	loads.w r24, 28(r13)
	loads.w r25, 24(r13)
	loads.w r26, 20(r13)
	loads.w r13, 16(r13)
	.loc	1 600 13                        # parallel-rne.mlir:600:13
	stores.w r18, 12(r3)
	stores.w r21, 8(r3)
	stores.w r22, 4(r3)
	stores.w r23, 0(r3)
	stores.w r24, 28(r3)
	stores.w r25, 24(r3)
	stores.w r26, 20(r3)
	stores.w r13, 16(r3)
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	beq r9, zero, .LBB0_315
	j .LBB0_312
.LBB0_316:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	lui r26, 524288
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	addli r8, zero, 7
	bneq r3, r8, .LBB0_323
.LBB0_317:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r8,  -2024(r30)                # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r8, r3
	addli r3, zero, 56
	zext_int2long r[11:12], r3
	j .LBB0_319
.LBB0_318:                              # %middle.block515
                                        #   in Loop: Header=BB0_319 Depth=2
	.loc	1 613 9 is_stmt 1               # parallel-rne.mlir:613:9
	load.d r[15:16], -2008(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[15:16]
	addli.d r[11:12], r[11:12], 1
	beq r3, zero, .LBB0_322
.LBB0_319:                              # %.preheader115
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_321 Depth 3
                                        #       Child Loop BB0_320 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[15:16], r[11:12], r3
	.loc	1 614 11 is_stmt 1              # parallel-rne.mlir:614:11
	beq r8, zero, .LBB0_321
.LBB0_320:                              # %scalar.ph508
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_319 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 615 19                        # parallel-rne.mlir:615:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 614 11                        # parallel-rne.mlir:614:11
	setlt.ul r13, r[19:20], r[6:7]
	addli.d r[19:20], r[19:20], 1
	.loc	1 615 19                        # parallel-rne.mlir:615:19
	slli r3, r21, 2
	add.s r9, r17, r3
	.loc	1 617 13                        # parallel-rne.mlir:617:13
	add.s r3, r2, r3
	.loc	1 615 19                        # parallel-rne.mlir:615:19
	loads.w r9, 0(r9)
	.loc	1 617 13                        # parallel-rne.mlir:617:13
	stores.w r9, 0(r3)
	.loc	1 614 11                        # parallel-rne.mlir:614:11
	bneq r13, zero, .LBB0_320
	j .LBB0_318
.LBB0_321:                              # %vector.body510
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_319 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 615 19                        # parallel-rne.mlir:615:19
	add.ul r[21:22], r[19:20], r[15:16]
	.loc	1 614 11                        # parallel-rne.mlir:614:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 615 19                        # parallel-rne.mlir:615:19
	slli r3, r21, 2
	.loc	1 614 11                        # parallel-rne.mlir:614:11
	seteq.d r9, r[19:20], r[4:5]
	.loc	1 615 19                        # parallel-rne.mlir:615:19
	add.s r13, r17, r3
	.loc	1 617 13                        # parallel-rne.mlir:617:13
	add.s r3, r2, r3
	.loc	1 615 19                        # parallel-rne.mlir:615:19
	loads.w r18, 12(r13)
	loads.w r21, 8(r13)
	loads.w r22, 4(r13)
	loads.w r23, 0(r13)
	loads.w r24, 28(r13)
	loads.w r25, 24(r13)
	loads.w r26, 20(r13)
	loads.w r13, 16(r13)
	.loc	1 617 13                        # parallel-rne.mlir:617:13
	stores.w r18, 12(r3)
	stores.w r21, 8(r3)
	stores.w r22, 4(r3)
	stores.w r23, 0(r3)
	stores.w r24, 28(r3)
	stores.w r25, 24(r3)
	stores.w r26, 20(r3)
	stores.w r13, 16(r3)
	.loc	1 614 11                        # parallel-rne.mlir:614:11
	beq r9, zero, .LBB0_321
	j .LBB0_318
.LBB0_322:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	lui r26, 524288
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
.LBB0_323:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	addli r8, zero, 255
	addli r9, zero, 3
	csr_set csr5, r8
	sync_core
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	bneq r3, r9, .LBB0_325
# %bb.324:                              # %.critedge14
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, zero, 32
	addli r11, zero, 33
	xsignal r8, 0
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	addli r8, zero, 13
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	xsignal r11, 0
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	xwait r8, 0
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	xwait r11, 0
.LBB0_325:                              # %.critedge16
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	xfence
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	addli r8, zero, 255
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	mfence { lm, sm, gm }
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	csr_set csr5, r8
	sync_core
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	beq r3, zero, .LBB0_393
# %bb.326:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	addli r8, zero, 1
	bneq r3, r8, .LBB0_414
.LBB0_327:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 8
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_329
.LBB0_328:                              # %middle.block495
                                        #   in Loop: Header=BB0_329 Depth=2
	.loc	1 662 9 is_stmt 1               # parallel-rne.mlir:662:9
	load.d r[11:12], -1960(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[8:9], r[11:12]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_347
.LBB0_329:                              # %.preheader113
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_331 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[15:16], zero
	sll.d r[12:13], r[8:9], r3
	j .LBB0_331
.LBB0_330:                              # %vector.body490
                                        #   in Loop: Header=BB0_331 Depth=3
	.loc	1 663 11 is_stmt 1              # parallel-rne.mlir:663:11
	addli.d r[15:16], r[15:16], 8
	.loc	1 671 13                        # parallel-rne.mlir:671:13
	add.s r3, r10, r25
	.loc	1 663 11                        # parallel-rne.mlir:663:11
	setneq.d r18, r[15:16], r[4:5]
	.loc	1 671 13                        # parallel-rne.mlir:671:13
	stores.w r24, 12(r3)
	stores.w r23, 8(r3)
	stores.w r11, 4(r3)
	stores.w r17, 0(r3)
	stores.w r22, 28(r3)
	stores.w r21, 24(r3)
	stores.w r20, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 663 11                        # parallel-rne.mlir:663:11
	beq r18, zero, .LBB0_328
.LBB0_331:                              # %vector.body490
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_329 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	add.ul r[17:18], r[15:16], r[12:13]
	slli r25, r17, 2
	add.s r3, r2, r25
	loads.w r17, 0(r3)
	loads.w r24, 12(r3)
	loads.w r23, 8(r3)
	loads.w r11, 4(r3)
	loads.w r22, 28(r3)
	loads.w r21, 24(r3)
	loads.w r20, 20(r3)
	loads.w r19, 16(r3)
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	and r3, r17, r27
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	setlt.u r3, r14, r3
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	beq r3, zero, .LBB0_333
# %bb.332:                              #   in Loop: Header=BB0_331 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r17, r26
	or r17, r3, r14
.LBB0_333:                              # %vector.body490
                                        #   in Loop: Header=BB0_331 Depth=3
	and r3, r11, r27
	setlt.u r3, r14, r3
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	beq r3, zero, .LBB0_335
# %bb.334:                              #   in Loop: Header=BB0_331 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r26
	or r11, r3, r14
.LBB0_335:                              # %vector.body490
                                        #   in Loop: Header=BB0_331 Depth=3
	and r3, r23, r27
	setlt.u r3, r14, r3
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	beq r3, zero, .LBB0_337
# %bb.336:                              #   in Loop: Header=BB0_331 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r23, r26
	or r23, r3, r14
.LBB0_337:                              # %vector.body490
                                        #   in Loop: Header=BB0_331 Depth=3
	and r3, r24, r27
	setlt.u r3, r14, r3
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	beq r3, zero, .LBB0_339
# %bb.338:                              #   in Loop: Header=BB0_331 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r26
	or r24, r3, r14
.LBB0_339:                              # %vector.body490
                                        #   in Loop: Header=BB0_331 Depth=3
	and r3, r19, r27
	setlt.u r3, r14, r3
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	beq r3, zero, .LBB0_341
# %bb.340:                              #   in Loop: Header=BB0_331 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r26
	or r19, r3, r14
.LBB0_341:                              # %vector.body490
                                        #   in Loop: Header=BB0_331 Depth=3
	and r3, r20, r27
	setlt.u r3, r14, r3
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	beq r3, zero, .LBB0_343
# %bb.342:                              #   in Loop: Header=BB0_331 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r20, r26
	or r20, r3, r14
.LBB0_343:                              # %vector.body490
                                        #   in Loop: Header=BB0_331 Depth=3
	and r3, r21, r27
	setlt.u r3, r14, r3
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	beq r3, zero, .LBB0_345
# %bb.344:                              #   in Loop: Header=BB0_331 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r26
	or r21, r3, r14
.LBB0_345:                              # %vector.body490
                                        #   in Loop: Header=BB0_331 Depth=3
	and r3, r22, r27
	setlt.u r3, r14, r3
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	beq r3, zero, .LBB0_330
# %bb.346:                              #   in Loop: Header=BB0_331 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r26
	or r22, r3, r14
	j .LBB0_330
.LBB0_347:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 654 7 is_stmt 1               # parallel-rne.mlir:654:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	addli r9, zero, 3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 676 7                         # parallel-rne.mlir:676:7
	addli r8, zero, 2
	beq r3, r8, .LBB0_415
.LBB0_348:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 698 7                         # parallel-rne.mlir:698:7
	bneq r3, r9, .LBB0_436
.LBB0_349:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 24
	.loc	1 698 7                         # parallel-rne.mlir:698:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_351
.LBB0_350:                              # %middle.block475
                                        #   in Loop: Header=BB0_351 Depth=2
	.loc	1 706 9 is_stmt 1               # parallel-rne.mlir:706:9
	load.d r[11:12], -1976(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[8:9], r[11:12]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_369
.LBB0_351:                              # %.preheader111
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_353 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[15:16], zero
	sll.d r[12:13], r[8:9], r3
	j .LBB0_353
.LBB0_352:                              # %vector.body470
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 707 11 is_stmt 1              # parallel-rne.mlir:707:11
	addli.d r[15:16], r[15:16], 8
	.loc	1 715 13                        # parallel-rne.mlir:715:13
	add.s r3, r10, r25
	.loc	1 707 11                        # parallel-rne.mlir:707:11
	setneq.d r18, r[15:16], r[4:5]
	.loc	1 715 13                        # parallel-rne.mlir:715:13
	stores.w r24, 12(r3)
	stores.w r23, 8(r3)
	stores.w r11, 4(r3)
	stores.w r17, 0(r3)
	stores.w r22, 28(r3)
	stores.w r21, 24(r3)
	stores.w r20, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 707 11                        # parallel-rne.mlir:707:11
	beq r18, zero, .LBB0_350
.LBB0_353:                              # %vector.body470
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	add.ul r[17:18], r[15:16], r[12:13]
	slli r25, r17, 2
	add.s r3, r2, r25
	loads.w r17, 0(r3)
	loads.w r24, 12(r3)
	loads.w r23, 8(r3)
	loads.w r11, 4(r3)
	loads.w r22, 28(r3)
	loads.w r21, 24(r3)
	loads.w r20, 20(r3)
	loads.w r19, 16(r3)
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	and r3, r17, r27
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	setlt.u r3, r14, r3
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	beq r3, zero, .LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r17, r26
	or r17, r3, r14
.LBB0_355:                              # %vector.body470
                                        #   in Loop: Header=BB0_353 Depth=3
	and r3, r11, r27
	setlt.u r3, r14, r3
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	beq r3, zero, .LBB0_357
# %bb.356:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r26
	or r11, r3, r14
.LBB0_357:                              # %vector.body470
                                        #   in Loop: Header=BB0_353 Depth=3
	and r3, r23, r27
	setlt.u r3, r14, r3
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	beq r3, zero, .LBB0_359
# %bb.358:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r23, r26
	or r23, r3, r14
.LBB0_359:                              # %vector.body470
                                        #   in Loop: Header=BB0_353 Depth=3
	and r3, r24, r27
	setlt.u r3, r14, r3
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	beq r3, zero, .LBB0_361
# %bb.360:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r26
	or r24, r3, r14
.LBB0_361:                              # %vector.body470
                                        #   in Loop: Header=BB0_353 Depth=3
	and r3, r19, r27
	setlt.u r3, r14, r3
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	beq r3, zero, .LBB0_363
# %bb.362:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r26
	or r19, r3, r14
.LBB0_363:                              # %vector.body470
                                        #   in Loop: Header=BB0_353 Depth=3
	and r3, r20, r27
	setlt.u r3, r14, r3
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	beq r3, zero, .LBB0_365
# %bb.364:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r20, r26
	or r20, r3, r14
.LBB0_365:                              # %vector.body470
                                        #   in Loop: Header=BB0_353 Depth=3
	and r3, r21, r27
	setlt.u r3, r14, r3
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	beq r3, zero, .LBB0_367
# %bb.366:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r26
	or r21, r3, r14
.LBB0_367:                              # %vector.body470
                                        #   in Loop: Header=BB0_353 Depth=3
	and r3, r22, r27
	setlt.u r3, r14, r3
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	beq r3, zero, .LBB0_352
# %bb.368:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r26
	or r22, r3, r14
	j .LBB0_352
.LBB0_369:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 698 7 is_stmt 1               # parallel-rne.mlir:698:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	addli r9, zero, 3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 720 7                         # parallel-rne.mlir:720:7
	addli r8, zero, 4
	beq r3, r8, .LBB0_437
.LBB0_370:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 742 7                         # parallel-rne.mlir:742:7
	addli r8, zero, 5
	bneq r3, r8, .LBB0_458
.LBB0_371:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 40
	.loc	1 742 7                         # parallel-rne.mlir:742:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_373
.LBB0_372:                              # %middle.block455
                                        #   in Loop: Header=BB0_373 Depth=2
	.loc	1 750 9 is_stmt 1               # parallel-rne.mlir:750:9
	load.d r[11:12], -1992(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[8:9], r[11:12]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_391
.LBB0_373:                              # %.preheader109
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_375 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[15:16], zero
	sll.d r[12:13], r[8:9], r3
	j .LBB0_375
.LBB0_374:                              # %vector.body450
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 751 11 is_stmt 1              # parallel-rne.mlir:751:11
	addli.d r[15:16], r[15:16], 8
	.loc	1 759 13                        # parallel-rne.mlir:759:13
	add.s r3, r10, r25
	.loc	1 751 11                        # parallel-rne.mlir:751:11
	setneq.d r18, r[15:16], r[4:5]
	.loc	1 759 13                        # parallel-rne.mlir:759:13
	stores.w r24, 12(r3)
	stores.w r23, 8(r3)
	stores.w r11, 4(r3)
	stores.w r17, 0(r3)
	stores.w r22, 28(r3)
	stores.w r21, 24(r3)
	stores.w r20, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 751 11                        # parallel-rne.mlir:751:11
	beq r18, zero, .LBB0_372
.LBB0_375:                              # %vector.body450
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_373 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	add.ul r[17:18], r[15:16], r[12:13]
	slli r25, r17, 2
	add.s r3, r2, r25
	loads.w r17, 0(r3)
	loads.w r24, 12(r3)
	loads.w r23, 8(r3)
	loads.w r11, 4(r3)
	loads.w r22, 28(r3)
	loads.w r21, 24(r3)
	loads.w r20, 20(r3)
	loads.w r19, 16(r3)
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	and r3, r17, r27
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	setlt.u r3, r14, r3
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	beq r3, zero, .LBB0_377
# %bb.376:                              #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r17, r26
	or r17, r3, r14
.LBB0_377:                              # %vector.body450
                                        #   in Loop: Header=BB0_375 Depth=3
	and r3, r11, r27
	setlt.u r3, r14, r3
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	beq r3, zero, .LBB0_379
# %bb.378:                              #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r26
	or r11, r3, r14
.LBB0_379:                              # %vector.body450
                                        #   in Loop: Header=BB0_375 Depth=3
	and r3, r23, r27
	setlt.u r3, r14, r3
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	beq r3, zero, .LBB0_381
# %bb.380:                              #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r23, r26
	or r23, r3, r14
.LBB0_381:                              # %vector.body450
                                        #   in Loop: Header=BB0_375 Depth=3
	and r3, r24, r27
	setlt.u r3, r14, r3
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	beq r3, zero, .LBB0_383
# %bb.382:                              #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r26
	or r24, r3, r14
.LBB0_383:                              # %vector.body450
                                        #   in Loop: Header=BB0_375 Depth=3
	and r3, r19, r27
	setlt.u r3, r14, r3
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	beq r3, zero, .LBB0_385
# %bb.384:                              #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r26
	or r19, r3, r14
.LBB0_385:                              # %vector.body450
                                        #   in Loop: Header=BB0_375 Depth=3
	and r3, r20, r27
	setlt.u r3, r14, r3
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	beq r3, zero, .LBB0_387
# %bb.386:                              #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r20, r26
	or r20, r3, r14
.LBB0_387:                              # %vector.body450
                                        #   in Loop: Header=BB0_375 Depth=3
	and r3, r21, r27
	setlt.u r3, r14, r3
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	beq r3, zero, .LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r26
	or r21, r3, r14
.LBB0_389:                              # %vector.body450
                                        #   in Loop: Header=BB0_375 Depth=3
	and r3, r22, r27
	setlt.u r3, r14, r3
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	beq r3, zero, .LBB0_374
# %bb.390:                              #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r26
	or r22, r3, r14
	j .LBB0_374
.LBB0_391:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 742 7 is_stmt 1               # parallel-rne.mlir:742:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	addli r9, zero, 3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 764 7                         # parallel-rne.mlir:764:7
	addli r8, zero, 6
	beq r3, r8, .LBB0_459
.LBB0_392:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 786 7                         # parallel-rne.mlir:786:7
	addli r8, zero, 7
	beq r3, r8, .LBB0_480
	j .LBB0_501
.LBB0_393:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	xfence
	zext_int2long r[8:9], zero
	mfence { lm, sm, gm }
	store.d r[8:9], -2032(r30)              # 8-byte Folded Spill
	j .LBB0_395
.LBB0_394:                              # %middle.block505
                                        #   in Loop: Header=BB0_395 Depth=2
	.loc	1 640 9                         # parallel-rne.mlir:640:9
	load.d r[8:9], -2016(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2024(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_413
.LBB0_395:                              # %.preheader114
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_397 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	load.d r[23:24], -2032(r30)             # 8-byte Folded Reload
	store.d r[8:9], -2024(r30)              # 8-byte Folded Spill
	sll.d r[12:13], r[8:9], r3
	j .LBB0_397
.LBB0_396:                              # %vector.body500
                                        #   in Loop: Header=BB0_397 Depth=3
	.loc	1 649 13 is_stmt 1              # parallel-rne.mlir:649:13
	add.s r3, r10, r15
	.loc	1 641 11                        # parallel-rne.mlir:641:11
	addli.d r[23:24], r[23:24], 8
	.loc	1 649 13                        # parallel-rne.mlir:649:13
	stores.w r9, 12(r3)
	.loc	1 641 11                        # parallel-rne.mlir:641:11
	setneq.d r9, r[23:24], r[4:5]
	.loc	1 649 13                        # parallel-rne.mlir:649:13
	stores.w r8, 8(r3)
	stores.w r11, 4(r3)
	stores.w r17, 0(r3)
	stores.w r22, 28(r3)
	stores.w r21, 24(r3)
	stores.w r20, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 641 11                        # parallel-rne.mlir:641:11
	beq r9, zero, .LBB0_394
.LBB0_397:                              # %vector.body500
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_395 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	add.ul r[8:9], r[23:24], r[12:13]
	slli r15, r8, 2
	add.s r3, r2, r15
	loads.w r17, 0(r3)
	loads.w r9, 12(r3)
	loads.w r8, 8(r3)
	loads.w r11, 4(r3)
	loads.w r22, 28(r3)
	loads.w r21, 24(r3)
	loads.w r20, 20(r3)
	loads.w r19, 16(r3)
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	and r3, r17, r27
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	setlt.u r3, r14, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_399
# %bb.398:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r17, r26
	or r17, r3, r14
.LBB0_399:                              # %vector.body500
                                        #   in Loop: Header=BB0_397 Depth=3
	and r3, r11, r27
	setlt.u r3, r14, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_401
# %bb.400:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r26
	or r11, r3, r14
.LBB0_401:                              # %vector.body500
                                        #   in Loop: Header=BB0_397 Depth=3
	and r3, r8, r27
	setlt.u r3, r14, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r8, r26
	or r8, r3, r14
.LBB0_403:                              # %vector.body500
                                        #   in Loop: Header=BB0_397 Depth=3
	and r3, r9, r27
	setlt.u r3, r14, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r9, r26
	or r9, r3, r14
.LBB0_405:                              # %vector.body500
                                        #   in Loop: Header=BB0_397 Depth=3
	and r3, r19, r27
	setlt.u r3, r14, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_407
# %bb.406:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r26
	or r19, r3, r14
.LBB0_407:                              # %vector.body500
                                        #   in Loop: Header=BB0_397 Depth=3
	and r3, r20, r27
	setlt.u r3, r14, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_409
# %bb.408:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r20, r26
	or r20, r3, r14
.LBB0_409:                              # %vector.body500
                                        #   in Loop: Header=BB0_397 Depth=3
	and r3, r21, r27
	setlt.u r3, r14, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_411
# %bb.410:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r26
	or r21, r3, r14
.LBB0_411:                              # %vector.body500
                                        #   in Loop: Header=BB0_397 Depth=3
	and r3, r22, r27
	setlt.u r3, r14, r3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	beq r3, zero, .LBB0_396
# %bb.412:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r26
	or r22, r3, r14
	j .LBB0_396
.LBB0_413:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 632 7 is_stmt 1               # parallel-rne.mlir:632:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	addli r9, zero, 3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	addli r8, zero, 1
	beq r3, r8, .LBB0_327
.LBB0_414:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 676 7                         # parallel-rne.mlir:676:7
	addli r8, zero, 2
	bneq r3, r8, .LBB0_348
.LBB0_415:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 16
	.loc	1 676 7                         # parallel-rne.mlir:676:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_417
.LBB0_416:                              # %middle.block485
                                        #   in Loop: Header=BB0_417 Depth=2
	.loc	1 684 9 is_stmt 1               # parallel-rne.mlir:684:9
	load.d r[11:12], -1968(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[8:9], r[11:12]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_435
.LBB0_417:                              # %.preheader112
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_419 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[15:16], zero
	sll.d r[12:13], r[8:9], r3
	j .LBB0_419
.LBB0_418:                              # %vector.body480
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 685 11 is_stmt 1              # parallel-rne.mlir:685:11
	addli.d r[15:16], r[15:16], 8
	.loc	1 693 13                        # parallel-rne.mlir:693:13
	add.s r3, r10, r25
	.loc	1 685 11                        # parallel-rne.mlir:685:11
	setneq.d r18, r[15:16], r[4:5]
	.loc	1 693 13                        # parallel-rne.mlir:693:13
	stores.w r24, 12(r3)
	stores.w r23, 8(r3)
	stores.w r11, 4(r3)
	stores.w r17, 0(r3)
	stores.w r22, 28(r3)
	stores.w r21, 24(r3)
	stores.w r20, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 685 11                        # parallel-rne.mlir:685:11
	beq r18, zero, .LBB0_416
.LBB0_419:                              # %vector.body480
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_417 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	add.ul r[17:18], r[15:16], r[12:13]
	slli r25, r17, 2
	add.s r3, r2, r25
	loads.w r17, 0(r3)
	loads.w r24, 12(r3)
	loads.w r23, 8(r3)
	loads.w r11, 4(r3)
	loads.w r22, 28(r3)
	loads.w r21, 24(r3)
	loads.w r20, 20(r3)
	loads.w r19, 16(r3)
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	and r3, r17, r27
	.loc	1 690 19                        # parallel-rne.mlir:690:19
	setlt.u r3, r14, r3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r3, zero, .LBB0_421
# %bb.420:                              #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r17, r26
	or r17, r3, r14
.LBB0_421:                              # %vector.body480
                                        #   in Loop: Header=BB0_419 Depth=3
	and r3, r11, r27
	setlt.u r3, r14, r3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r3, zero, .LBB0_423
# %bb.422:                              #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r26
	or r11, r3, r14
.LBB0_423:                              # %vector.body480
                                        #   in Loop: Header=BB0_419 Depth=3
	and r3, r23, r27
	setlt.u r3, r14, r3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r3, zero, .LBB0_425
# %bb.424:                              #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r23, r26
	or r23, r3, r14
.LBB0_425:                              # %vector.body480
                                        #   in Loop: Header=BB0_419 Depth=3
	and r3, r24, r27
	setlt.u r3, r14, r3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r3, zero, .LBB0_427
# %bb.426:                              #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r26
	or r24, r3, r14
.LBB0_427:                              # %vector.body480
                                        #   in Loop: Header=BB0_419 Depth=3
	and r3, r19, r27
	setlt.u r3, r14, r3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r3, zero, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r26
	or r19, r3, r14
.LBB0_429:                              # %vector.body480
                                        #   in Loop: Header=BB0_419 Depth=3
	and r3, r20, r27
	setlt.u r3, r14, r3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r3, zero, .LBB0_431
# %bb.430:                              #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r20, r26
	or r20, r3, r14
.LBB0_431:                              # %vector.body480
                                        #   in Loop: Header=BB0_419 Depth=3
	and r3, r21, r27
	setlt.u r3, r14, r3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r3, zero, .LBB0_433
# %bb.432:                              #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r26
	or r21, r3, r14
.LBB0_433:                              # %vector.body480
                                        #   in Loop: Header=BB0_419 Depth=3
	and r3, r22, r27
	setlt.u r3, r14, r3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	beq r3, zero, .LBB0_418
# %bb.434:                              #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r26
	or r22, r3, r14
	j .LBB0_418
.LBB0_435:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 676 7 is_stmt 1               # parallel-rne.mlir:676:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	addli r9, zero, 3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 698 7                         # parallel-rne.mlir:698:7
	beq r3, r9, .LBB0_349
.LBB0_436:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 720 7                         # parallel-rne.mlir:720:7
	addli r8, zero, 4
	bneq r3, r8, .LBB0_370
.LBB0_437:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 32
	.loc	1 720 7                         # parallel-rne.mlir:720:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_439
.LBB0_438:                              # %middle.block465
                                        #   in Loop: Header=BB0_439 Depth=2
	.loc	1 728 9 is_stmt 1               # parallel-rne.mlir:728:9
	load.d r[11:12], -1984(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[8:9], r[11:12]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_457
.LBB0_439:                              # %.preheader110
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_441 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[15:16], zero
	sll.d r[12:13], r[8:9], r3
	j .LBB0_441
.LBB0_440:                              # %vector.body460
                                        #   in Loop: Header=BB0_441 Depth=3
	.loc	1 729 11 is_stmt 1              # parallel-rne.mlir:729:11
	addli.d r[15:16], r[15:16], 8
	.loc	1 737 13                        # parallel-rne.mlir:737:13
	add.s r3, r10, r25
	.loc	1 729 11                        # parallel-rne.mlir:729:11
	setneq.d r18, r[15:16], r[4:5]
	.loc	1 737 13                        # parallel-rne.mlir:737:13
	stores.w r24, 12(r3)
	stores.w r23, 8(r3)
	stores.w r11, 4(r3)
	stores.w r17, 0(r3)
	stores.w r22, 28(r3)
	stores.w r21, 24(r3)
	stores.w r20, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 729 11                        # parallel-rne.mlir:729:11
	beq r18, zero, .LBB0_438
.LBB0_441:                              # %vector.body460
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_439 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	add.ul r[17:18], r[15:16], r[12:13]
	slli r25, r17, 2
	add.s r3, r2, r25
	loads.w r17, 0(r3)
	loads.w r24, 12(r3)
	loads.w r23, 8(r3)
	loads.w r11, 4(r3)
	loads.w r22, 28(r3)
	loads.w r21, 24(r3)
	loads.w r20, 20(r3)
	loads.w r19, 16(r3)
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	and r3, r17, r27
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	setlt.u r3, r14, r3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	beq r3, zero, .LBB0_443
# %bb.442:                              #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r17, r26
	or r17, r3, r14
.LBB0_443:                              # %vector.body460
                                        #   in Loop: Header=BB0_441 Depth=3
	and r3, r11, r27
	setlt.u r3, r14, r3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	beq r3, zero, .LBB0_445
# %bb.444:                              #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r26
	or r11, r3, r14
.LBB0_445:                              # %vector.body460
                                        #   in Loop: Header=BB0_441 Depth=3
	and r3, r23, r27
	setlt.u r3, r14, r3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	beq r3, zero, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r23, r26
	or r23, r3, r14
.LBB0_447:                              # %vector.body460
                                        #   in Loop: Header=BB0_441 Depth=3
	and r3, r24, r27
	setlt.u r3, r14, r3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	beq r3, zero, .LBB0_449
# %bb.448:                              #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r26
	or r24, r3, r14
.LBB0_449:                              # %vector.body460
                                        #   in Loop: Header=BB0_441 Depth=3
	and r3, r19, r27
	setlt.u r3, r14, r3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	beq r3, zero, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r26
	or r19, r3, r14
.LBB0_451:                              # %vector.body460
                                        #   in Loop: Header=BB0_441 Depth=3
	and r3, r20, r27
	setlt.u r3, r14, r3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	beq r3, zero, .LBB0_453
# %bb.452:                              #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r20, r26
	or r20, r3, r14
.LBB0_453:                              # %vector.body460
                                        #   in Loop: Header=BB0_441 Depth=3
	and r3, r21, r27
	setlt.u r3, r14, r3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	beq r3, zero, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r26
	or r21, r3, r14
.LBB0_455:                              # %vector.body460
                                        #   in Loop: Header=BB0_441 Depth=3
	and r3, r22, r27
	setlt.u r3, r14, r3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	beq r3, zero, .LBB0_440
# %bb.456:                              #   in Loop: Header=BB0_441 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r26
	or r22, r3, r14
	j .LBB0_440
.LBB0_457:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 720 7 is_stmt 1               # parallel-rne.mlir:720:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	addli r9, zero, 3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 742 7                         # parallel-rne.mlir:742:7
	addli r8, zero, 5
	beq r3, r8, .LBB0_371
.LBB0_458:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 764 7                         # parallel-rne.mlir:764:7
	addli r8, zero, 6
	bneq r3, r8, .LBB0_392
.LBB0_459:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 48
	.loc	1 764 7                         # parallel-rne.mlir:764:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_461
.LBB0_460:                              # %middle.block445
                                        #   in Loop: Header=BB0_461 Depth=2
	.loc	1 772 9 is_stmt 1               # parallel-rne.mlir:772:9
	load.d r[11:12], -2000(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[8:9], r[11:12]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_479
.LBB0_461:                              # %.preheader108
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_463 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[15:16], zero
	sll.d r[12:13], r[8:9], r3
	j .LBB0_463
.LBB0_462:                              # %vector.body440
                                        #   in Loop: Header=BB0_463 Depth=3
	.loc	1 773 11 is_stmt 1              # parallel-rne.mlir:773:11
	addli.d r[15:16], r[15:16], 8
	.loc	1 781 13                        # parallel-rne.mlir:781:13
	add.s r3, r10, r25
	.loc	1 773 11                        # parallel-rne.mlir:773:11
	setneq.d r18, r[15:16], r[4:5]
	.loc	1 781 13                        # parallel-rne.mlir:781:13
	stores.w r24, 12(r3)
	stores.w r23, 8(r3)
	stores.w r11, 4(r3)
	stores.w r17, 0(r3)
	stores.w r22, 28(r3)
	stores.w r21, 24(r3)
	stores.w r20, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 773 11                        # parallel-rne.mlir:773:11
	beq r18, zero, .LBB0_460
.LBB0_463:                              # %vector.body440
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_461 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	add.ul r[17:18], r[15:16], r[12:13]
	slli r25, r17, 2
	add.s r3, r2, r25
	loads.w r17, 0(r3)
	loads.w r24, 12(r3)
	loads.w r23, 8(r3)
	loads.w r11, 4(r3)
	loads.w r22, 28(r3)
	loads.w r21, 24(r3)
	loads.w r20, 20(r3)
	loads.w r19, 16(r3)
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	and r3, r17, r27
	.loc	1 778 19                        # parallel-rne.mlir:778:19
	setlt.u r3, r14, r3
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	beq r3, zero, .LBB0_465
# %bb.464:                              #   in Loop: Header=BB0_463 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r17, r26
	or r17, r3, r14
.LBB0_465:                              # %vector.body440
                                        #   in Loop: Header=BB0_463 Depth=3
	and r3, r11, r27
	setlt.u r3, r14, r3
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	beq r3, zero, .LBB0_467
# %bb.466:                              #   in Loop: Header=BB0_463 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r26
	or r11, r3, r14
.LBB0_467:                              # %vector.body440
                                        #   in Loop: Header=BB0_463 Depth=3
	and r3, r23, r27
	setlt.u r3, r14, r3
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	beq r3, zero, .LBB0_469
# %bb.468:                              #   in Loop: Header=BB0_463 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r23, r26
	or r23, r3, r14
.LBB0_469:                              # %vector.body440
                                        #   in Loop: Header=BB0_463 Depth=3
	and r3, r24, r27
	setlt.u r3, r14, r3
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	beq r3, zero, .LBB0_471
# %bb.470:                              #   in Loop: Header=BB0_463 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r26
	or r24, r3, r14
.LBB0_471:                              # %vector.body440
                                        #   in Loop: Header=BB0_463 Depth=3
	and r3, r19, r27
	setlt.u r3, r14, r3
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	beq r3, zero, .LBB0_473
# %bb.472:                              #   in Loop: Header=BB0_463 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r26
	or r19, r3, r14
.LBB0_473:                              # %vector.body440
                                        #   in Loop: Header=BB0_463 Depth=3
	and r3, r20, r27
	setlt.u r3, r14, r3
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	beq r3, zero, .LBB0_475
# %bb.474:                              #   in Loop: Header=BB0_463 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r20, r26
	or r20, r3, r14
.LBB0_475:                              # %vector.body440
                                        #   in Loop: Header=BB0_463 Depth=3
	and r3, r21, r27
	setlt.u r3, r14, r3
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	beq r3, zero, .LBB0_477
# %bb.476:                              #   in Loop: Header=BB0_463 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r26
	or r21, r3, r14
.LBB0_477:                              # %vector.body440
                                        #   in Loop: Header=BB0_463 Depth=3
	and r3, r22, r27
	setlt.u r3, r14, r3
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	beq r3, zero, .LBB0_462
# %bb.478:                              #   in Loop: Header=BB0_463 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r26
	or r22, r3, r14
	j .LBB0_462
.LBB0_479:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 764 7 is_stmt 1               # parallel-rne.mlir:764:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	addli r9, zero, 3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 786 7                         # parallel-rne.mlir:786:7
	addli r8, zero, 7
	bneq r3, r8, .LBB0_501
.LBB0_480:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 56
	.loc	1 786 7                         # parallel-rne.mlir:786:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_482
.LBB0_481:                              # %middle.block435
                                        #   in Loop: Header=BB0_482 Depth=2
	.loc	1 794 9 is_stmt 1               # parallel-rne.mlir:794:9
	load.d r[11:12], -2008(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[8:9], r[11:12]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_500
.LBB0_482:                              # %.preheader107
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_484 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[15:16], zero
	sll.d r[12:13], r[8:9], r3
	j .LBB0_484
.LBB0_483:                              # %vector.body430
                                        #   in Loop: Header=BB0_484 Depth=3
	.loc	1 795 11 is_stmt 1              # parallel-rne.mlir:795:11
	addli.d r[15:16], r[15:16], 8
	.loc	1 803 13                        # parallel-rne.mlir:803:13
	add.s r3, r10, r25
	.loc	1 795 11                        # parallel-rne.mlir:795:11
	setneq.d r18, r[15:16], r[4:5]
	.loc	1 803 13                        # parallel-rne.mlir:803:13
	stores.w r24, 12(r3)
	stores.w r23, 8(r3)
	stores.w r11, 4(r3)
	stores.w r17, 0(r3)
	stores.w r22, 28(r3)
	stores.w r21, 24(r3)
	stores.w r20, 20(r3)
	stores.w r19, 16(r3)
	.loc	1 795 11                        # parallel-rne.mlir:795:11
	beq r18, zero, .LBB0_481
.LBB0_484:                              # %vector.body430
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_482 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	add.ul r[17:18], r[15:16], r[12:13]
	slli r25, r17, 2
	add.s r3, r2, r25
	loads.w r17, 0(r3)
	loads.w r24, 12(r3)
	loads.w r23, 8(r3)
	loads.w r11, 4(r3)
	loads.w r22, 28(r3)
	loads.w r21, 24(r3)
	loads.w r20, 20(r3)
	loads.w r19, 16(r3)
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	and r3, r17, r27
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	setlt.u r3, r14, r3
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	beq r3, zero, .LBB0_486
# %bb.485:                              #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r17, r26
	or r17, r3, r14
.LBB0_486:                              # %vector.body430
                                        #   in Loop: Header=BB0_484 Depth=3
	and r3, r11, r27
	setlt.u r3, r14, r3
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	beq r3, zero, .LBB0_488
# %bb.487:                              #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r26
	or r11, r3, r14
.LBB0_488:                              # %vector.body430
                                        #   in Loop: Header=BB0_484 Depth=3
	and r3, r23, r27
	setlt.u r3, r14, r3
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	beq r3, zero, .LBB0_490
# %bb.489:                              #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r23, r26
	or r23, r3, r14
.LBB0_490:                              # %vector.body430
                                        #   in Loop: Header=BB0_484 Depth=3
	and r3, r24, r27
	setlt.u r3, r14, r3
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	beq r3, zero, .LBB0_492
# %bb.491:                              #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r26
	or r24, r3, r14
.LBB0_492:                              # %vector.body430
                                        #   in Loop: Header=BB0_484 Depth=3
	and r3, r19, r27
	setlt.u r3, r14, r3
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	beq r3, zero, .LBB0_494
# %bb.493:                              #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r19, r26
	or r19, r3, r14
.LBB0_494:                              # %vector.body430
                                        #   in Loop: Header=BB0_484 Depth=3
	and r3, r20, r27
	setlt.u r3, r14, r3
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	beq r3, zero, .LBB0_496
# %bb.495:                              #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r20, r26
	or r20, r3, r14
.LBB0_496:                              # %vector.body430
                                        #   in Loop: Header=BB0_484 Depth=3
	and r3, r21, r27
	setlt.u r3, r14, r3
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	beq r3, zero, .LBB0_498
# %bb.497:                              #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r26
	or r21, r3, r14
.LBB0_498:                              # %vector.body430
                                        #   in Loop: Header=BB0_484 Depth=3
	and r3, r22, r27
	setlt.u r3, r14, r3
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	beq r3, zero, .LBB0_483
# %bb.499:                              #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r26
	or r22, r3, r14
	j .LBB0_483
.LBB0_500:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 786 7 is_stmt 1               # parallel-rne.mlir:786:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	addli r9, zero, 3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
.LBB0_501:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 808 7                         # parallel-rne.mlir:808:7
	addli r8, zero, 255
	csr_set csr5, r8
	sync_core
	.loc	1 809 7                         # parallel-rne.mlir:809:7
	bneq r3, r9, .LBB0_503
# %bb.502:                              # %.critedge20
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 14
	addli r11, zero, 34
	xsignal r3, 0
	.loc	1 810 7                         # parallel-rne.mlir:810:7
	xsignal r11, 0
	.loc	1 813 13                        # parallel-rne.mlir:813:13
	loadli.w r8,  -32(r30)
	addli r3, r8, 1
	storeli.w r3, -32(r30)
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	addli r3, zero, 15
	xwait r3, 0
	.loc	1 817 7                         # parallel-rne.mlir:817:7
	addli r3, zero, 38
	.loc	1 816 7                         # parallel-rne.mlir:816:7
	xwait r11, 0
	.loc	1 817 7                         # parallel-rne.mlir:817:7
	xwait r3, 0
	j .LBB0_506
.LBB0_503:                              # %.critedge18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 811 7                         # parallel-rne.mlir:811:7
	addli r8, zero, 5
	bneq r3, r8, .LBB0_505
# %bb.504:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 14
	addli r8, zero, 2047
	addli r11, zero, 1
	xwait r3, 0
	addli r3, zero, 2
	lock zero, r3
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r8, zero, 2
	addli r8, zero, 4
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, zero, 19
	ew_cfg r9, zero, zero, 10
	loadli.w r12,  -2136(r30)               # 4-byte Folded Reload
	ew_cfg r3, r11, r12, 11
	lui r11, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r8, r11, 14
	ew_cfg zero, zero, zero, 15
	sslut r10, r10, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r3
	addli r3, zero, 15
	xsignal r3, 0
.LBB0_505:                              # %.thread86
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 813 13                        # parallel-rne.mlir:813:13
	loadli.w r8,  -32(r30)
	addli r3, r8, 1
	storeli.w r3, -32(r30)
.LBB0_506:                              # %.critedge21
                                        #   in Loop: Header=BB0_8 Depth=1
	mod.s r3, r8, r9
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	xfence
	addli r26, zero, 3
	.loc	1 820 7                         # parallel-rne.mlir:820:7
	mfence { lm, sm, gm }
	.loc	1 813 13                        # parallel-rne.mlir:813:13
	loadli.w r8,  -2128(r30)                # 4-byte Folded Reload
	slli r3, r3, 15
	add.s r17, r3, r8
	.loc	1 821 7                         # parallel-rne.mlir:821:7
	addli r3, zero, 255
	csr_set csr5, r3
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 821 7                         # parallel-rne.mlir:821:7
	sync_core
	.loc	1 822 7                         # parallel-rne.mlir:822:7
	beq r3, zero, .LBB0_613
# %bb.507:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 848 7                         # parallel-rne.mlir:848:7
	addli r8, zero, 1
	bneq r3, r8, .LBB0_647
.LBB0_508:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 8
	.loc	1 848 7                         # parallel-rne.mlir:848:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_510
.LBB0_509:                              # %middle.block411
                                        #   in Loop: Header=BB0_510 Depth=2
	.loc	1 856 9 is_stmt 1               # parallel-rne.mlir:856:9
	load.d r[8:9], -1960(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2024(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_541
.LBB0_510:                              # %.preheader105
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_518 Depth 3
                                        #       Child Loop BB0_513 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -2024(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	zext_int2long r[8:9], zero
	.loc	1 857 11 is_stmt 1              # parallel-rne.mlir:857:11
	beq r17, r2, .LBB0_513
	j .LBB0_518
.LBB0_511:                              # %scalar.ph402
                                        #   in Loop: Header=BB0_513 Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, r13, 0
.LBB0_512:                              # %scalar.ph402
                                        #   in Loop: Header=BB0_513 Depth=3
	.loc	1 857 11                        # parallel-rne.mlir:857:11
	setlt.ul r3, r[8:9], r[6:7]
	.loc	1 869 13 is_stmt 1              # parallel-rne.mlir:869:13
	add.s r11, r17, r11
	.loc	1 857 11                        # parallel-rne.mlir:857:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 869 13                        # parallel-rne.mlir:869:13
	stores.w r12, 0(r11)
	.loc	1 857 11                        # parallel-rne.mlir:857:11
	beq r3, zero, .LBB0_509
.LBB0_513:                              # %scalar.ph402
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_510 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r11, r11, 2
	add.s r3, r2, r11
	loads.w r19, 0(r3)
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	add.s r3, r10, r11
	loads.w r13, 0(r3)
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	and r3, r19, r1
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	bneq r3, zero, .LBB0_515
# %bb.514:                              # %scalar.ph402
                                        #   in Loop: Header=BB0_513 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	and r3, r19, r28
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	beq r3, r28, .LBB0_512
	j .LBB0_511
.LBB0_515:                              #   in Loop: Header=BB0_513 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r12, r19, r3
	and r3, r19, r28
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	beq r3, r28, .LBB0_512
	j .LBB0_511
.LBB0_516:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 28(r20)
.LBB0_517:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 857 11 is_stmt 1              # parallel-rne.mlir:857:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 869 13                        # parallel-rne.mlir:869:13
	add.s r3, r17, r12
	.loc	1 857 11                        # parallel-rne.mlir:857:11
	seteq.d r12, r[8:9], r[4:5]
	.loc	1 869 13                        # parallel-rne.mlir:869:13
	stores.w r22, 12(r3)
	stores.w r11, 8(r3)
	stores.w r21, 4(r3)
	stores.w r13, 0(r3)
	stores.w r19, 28(r3)
	stores.w r24, 24(r3)
	stores.w r23, 20(r3)
	stores.w r25, 16(r3)
	.loc	1 857 11                        # parallel-rne.mlir:857:11
	bneq r12, zero, .LBB0_509
.LBB0_518:                              # %vector.body404
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_510 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r12, r11, 2
	add.s r19, r2, r12
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	add.s r20, r10, r12
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	loads.w r11, 0(r19)
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	and r3, r11, r28
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	and r13, r11, r1
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	seteq r3, r3, r28
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	setneq r13, r13, zero
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	and r3, r3, r13
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	bneq r3, zero, .LBB0_520
# %bb.519:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r20)
	j .LBB0_521
.LBB0_520:                              #   in Loop: Header=BB0_518 Depth=3
	lui r3, 1024
	or r13, r11, r3
.LBB0_521:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	loads.w r11, 4(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	bneq r3, zero, .LBB0_523
# %bb.522:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
	j .LBB0_524
.LBB0_523:                              #   in Loop: Header=BB0_518 Depth=3
	lui r3, 1024
	or r21, r11, r3
.LBB0_524:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	loads.w r11, 8(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	bneq r3, zero, .LBB0_526
# %bb.525:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r20)
	j .LBB0_527
.LBB0_526:                              #   in Loop: Header=BB0_518 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_527:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	loads.w r22, 12(r19)
	and r3, r22, r28
	and r18, r22, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	bneq r3, zero, .LBB0_529
# %bb.528:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 12(r20)
	j .LBB0_530
.LBB0_529:                              #   in Loop: Header=BB0_518 Depth=3
	lui r3, 1024
	or r22, r22, r3
.LBB0_530:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	loads.w r23, 16(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	bneq r3, zero, .LBB0_532
# %bb.531:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 16(r20)
	j .LBB0_533
.LBB0_532:                              #   in Loop: Header=BB0_518 Depth=3
	lui r3, 1024
	or r25, r23, r3
.LBB0_533:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	loads.w r23, 20(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	bneq r3, zero, .LBB0_535
# %bb.534:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 20(r20)
	j .LBB0_536
.LBB0_535:                              #   in Loop: Header=BB0_518 Depth=3
	lui r3, 1024
	or r23, r23, r3
.LBB0_536:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	loads.w r24, 24(r19)
	and r3, r24, r28
	and r18, r24, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	bneq r3, zero, .LBB0_538
# %bb.537:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r20)
	j .LBB0_539
.LBB0_538:                              #   in Loop: Header=BB0_518 Depth=3
	lui r3, 1024
	or r24, r24, r3
.LBB0_539:                              # %vector.body404
                                        #   in Loop: Header=BB0_518 Depth=3
	loads.w r19, 28(r19)
	and r3, r19, r28
	and r18, r19, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	beq r3, zero, .LBB0_516
# %bb.540:                              #   in Loop: Header=BB0_518 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r19, r19, r3
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	j .LBB0_517
.LBB0_541:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 848 7 is_stmt 1               # parallel-rne.mlir:848:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 874 7                         # parallel-rne.mlir:874:7
	addli r8, zero, 2
	beq r3, r8, .LBB0_648
.LBB0_542:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 900 7                         # parallel-rne.mlir:900:7
	bneq r3, r26, .LBB0_682
.LBB0_543:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 24
	.loc	1 900 7                         # parallel-rne.mlir:900:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_545
.LBB0_544:                              # %middle.block383
                                        #   in Loop: Header=BB0_545 Depth=2
	.loc	1 908 9 is_stmt 1               # parallel-rne.mlir:908:9
	load.d r[8:9], -1976(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2024(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_576
.LBB0_545:                              # %.preheader103
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_553 Depth 3
                                        #       Child Loop BB0_548 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -2024(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	zext_int2long r[8:9], zero
	.loc	1 909 11 is_stmt 1              # parallel-rne.mlir:909:11
	beq r17, r2, .LBB0_548
	j .LBB0_553
.LBB0_546:                              # %scalar.ph374
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, r13, 0
.LBB0_547:                              # %scalar.ph374
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 909 11                        # parallel-rne.mlir:909:11
	setlt.ul r3, r[8:9], r[6:7]
	.loc	1 921 13 is_stmt 1              # parallel-rne.mlir:921:13
	add.s r11, r17, r11
	.loc	1 909 11                        # parallel-rne.mlir:909:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 921 13                        # parallel-rne.mlir:921:13
	stores.w r12, 0(r11)
	.loc	1 909 11                        # parallel-rne.mlir:909:11
	beq r3, zero, .LBB0_544
.LBB0_548:                              # %scalar.ph374
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_545 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r11, r11, 2
	add.s r3, r2, r11
	loads.w r19, 0(r3)
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	add.s r3, r10, r11
	loads.w r13, 0(r3)
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	and r3, r19, r1
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	bneq r3, zero, .LBB0_550
# %bb.549:                              # %scalar.ph374
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	and r3, r19, r28
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	beq r3, r28, .LBB0_547
	j .LBB0_546
.LBB0_550:                              #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r12, r19, r3
	and r3, r19, r28
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	beq r3, r28, .LBB0_547
	j .LBB0_546
.LBB0_551:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 28(r20)
.LBB0_552:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 909 11 is_stmt 1              # parallel-rne.mlir:909:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 921 13                        # parallel-rne.mlir:921:13
	add.s r3, r17, r12
	.loc	1 909 11                        # parallel-rne.mlir:909:11
	seteq.d r12, r[8:9], r[4:5]
	.loc	1 921 13                        # parallel-rne.mlir:921:13
	stores.w r22, 12(r3)
	stores.w r11, 8(r3)
	stores.w r21, 4(r3)
	stores.w r13, 0(r3)
	stores.w r19, 28(r3)
	stores.w r24, 24(r3)
	stores.w r23, 20(r3)
	stores.w r25, 16(r3)
	.loc	1 909 11                        # parallel-rne.mlir:909:11
	bneq r12, zero, .LBB0_544
.LBB0_553:                              # %vector.body376
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_545 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r12, r11, 2
	add.s r19, r2, r12
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	add.s r20, r10, r12
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	loads.w r11, 0(r19)
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	and r3, r11, r28
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	and r13, r11, r1
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	seteq r3, r3, r28
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	setneq r13, r13, zero
	.loc	1 918 19                        # parallel-rne.mlir:918:19
	and r3, r3, r13
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	bneq r3, zero, .LBB0_555
# %bb.554:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r20)
	j .LBB0_556
.LBB0_555:                              #   in Loop: Header=BB0_553 Depth=3
	lui r3, 1024
	or r13, r11, r3
.LBB0_556:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	loads.w r11, 4(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	bneq r3, zero, .LBB0_558
# %bb.557:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
	j .LBB0_559
.LBB0_558:                              #   in Loop: Header=BB0_553 Depth=3
	lui r3, 1024
	or r21, r11, r3
.LBB0_559:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	loads.w r11, 8(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	bneq r3, zero, .LBB0_561
# %bb.560:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r20)
	j .LBB0_562
.LBB0_561:                              #   in Loop: Header=BB0_553 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_562:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	loads.w r22, 12(r19)
	and r3, r22, r28
	and r18, r22, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	bneq r3, zero, .LBB0_564
# %bb.563:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 12(r20)
	j .LBB0_565
.LBB0_564:                              #   in Loop: Header=BB0_553 Depth=3
	lui r3, 1024
	or r22, r22, r3
.LBB0_565:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	loads.w r23, 16(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	bneq r3, zero, .LBB0_567
# %bb.566:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 16(r20)
	j .LBB0_568
.LBB0_567:                              #   in Loop: Header=BB0_553 Depth=3
	lui r3, 1024
	or r25, r23, r3
.LBB0_568:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	loads.w r23, 20(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	bneq r3, zero, .LBB0_570
# %bb.569:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 20(r20)
	j .LBB0_571
.LBB0_570:                              #   in Loop: Header=BB0_553 Depth=3
	lui r3, 1024
	or r23, r23, r3
.LBB0_571:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	loads.w r24, 24(r19)
	and r3, r24, r28
	and r18, r24, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	bneq r3, zero, .LBB0_573
# %bb.572:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r20)
	j .LBB0_574
.LBB0_573:                              #   in Loop: Header=BB0_553 Depth=3
	lui r3, 1024
	or r24, r24, r3
.LBB0_574:                              # %vector.body376
                                        #   in Loop: Header=BB0_553 Depth=3
	loads.w r19, 28(r19)
	and r3, r19, r28
	and r18, r19, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	beq r3, zero, .LBB0_551
# %bb.575:                              #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r19, r19, r3
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	j .LBB0_552
.LBB0_576:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 900 7 is_stmt 1               # parallel-rne.mlir:900:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 926 7                         # parallel-rne.mlir:926:7
	addli r8, zero, 4
	beq r3, r8, .LBB0_683
.LBB0_577:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 952 7                         # parallel-rne.mlir:952:7
	addli r8, zero, 5
	bneq r3, r8, .LBB0_717
.LBB0_578:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 40
	.loc	1 952 7                         # parallel-rne.mlir:952:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_580
.LBB0_579:                              # %middle.block355
                                        #   in Loop: Header=BB0_580 Depth=2
	.loc	1 960 9 is_stmt 1               # parallel-rne.mlir:960:9
	load.d r[8:9], -1992(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2024(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_611
.LBB0_580:                              # %.preheader101
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_588 Depth 3
                                        #       Child Loop BB0_583 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -2024(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	zext_int2long r[8:9], zero
	.loc	1 961 11 is_stmt 1              # parallel-rne.mlir:961:11
	beq r17, r2, .LBB0_583
	j .LBB0_588
.LBB0_581:                              # %scalar.ph346
                                        #   in Loop: Header=BB0_583 Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, r13, 0
.LBB0_582:                              # %scalar.ph346
                                        #   in Loop: Header=BB0_583 Depth=3
	.loc	1 961 11                        # parallel-rne.mlir:961:11
	setlt.ul r3, r[8:9], r[6:7]
	.loc	1 973 13 is_stmt 1              # parallel-rne.mlir:973:13
	add.s r11, r17, r11
	.loc	1 961 11                        # parallel-rne.mlir:961:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 973 13                        # parallel-rne.mlir:973:13
	stores.w r12, 0(r11)
	.loc	1 961 11                        # parallel-rne.mlir:961:11
	beq r3, zero, .LBB0_579
.LBB0_583:                              # %scalar.ph346
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_580 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r11, r11, 2
	add.s r3, r2, r11
	loads.w r19, 0(r3)
	.loc	1 963 19                        # parallel-rne.mlir:963:19
	add.s r3, r10, r11
	loads.w r13, 0(r3)
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	and r3, r19, r1
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r3, zero, .LBB0_585
# %bb.584:                              # %scalar.ph346
                                        #   in Loop: Header=BB0_583 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	and r3, r19, r28
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	beq r3, r28, .LBB0_582
	j .LBB0_581
.LBB0_585:                              #   in Loop: Header=BB0_583 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r12, r19, r3
	and r3, r19, r28
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	beq r3, r28, .LBB0_582
	j .LBB0_581
.LBB0_586:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 28(r20)
.LBB0_587:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 961 11 is_stmt 1              # parallel-rne.mlir:961:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 973 13                        # parallel-rne.mlir:973:13
	add.s r3, r17, r12
	.loc	1 961 11                        # parallel-rne.mlir:961:11
	seteq.d r12, r[8:9], r[4:5]
	.loc	1 973 13                        # parallel-rne.mlir:973:13
	stores.w r22, 12(r3)
	stores.w r11, 8(r3)
	stores.w r21, 4(r3)
	stores.w r13, 0(r3)
	stores.w r19, 28(r3)
	stores.w r24, 24(r3)
	stores.w r23, 20(r3)
	stores.w r25, 16(r3)
	.loc	1 961 11                        # parallel-rne.mlir:961:11
	bneq r12, zero, .LBB0_579
.LBB0_588:                              # %vector.body348
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_580 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r12, r11, 2
	add.s r19, r2, r12
	.loc	1 963 19                        # parallel-rne.mlir:963:19
	add.s r20, r10, r12
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	loads.w r11, 0(r19)
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	and r3, r11, r28
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	and r13, r11, r1
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	seteq r3, r3, r28
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	setneq r13, r13, zero
	.loc	1 970 19                        # parallel-rne.mlir:970:19
	and r3, r3, r13
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r3, zero, .LBB0_590
# %bb.589:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r20)
	j .LBB0_591
.LBB0_590:                              #   in Loop: Header=BB0_588 Depth=3
	lui r3, 1024
	or r13, r11, r3
.LBB0_591:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	loads.w r11, 4(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r3, zero, .LBB0_593
# %bb.592:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
	j .LBB0_594
.LBB0_593:                              #   in Loop: Header=BB0_588 Depth=3
	lui r3, 1024
	or r21, r11, r3
.LBB0_594:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	loads.w r11, 8(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r3, zero, .LBB0_596
# %bb.595:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r20)
	j .LBB0_597
.LBB0_596:                              #   in Loop: Header=BB0_588 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_597:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	loads.w r22, 12(r19)
	and r3, r22, r28
	and r18, r22, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r3, zero, .LBB0_599
# %bb.598:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 12(r20)
	j .LBB0_600
.LBB0_599:                              #   in Loop: Header=BB0_588 Depth=3
	lui r3, 1024
	or r22, r22, r3
.LBB0_600:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	loads.w r23, 16(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r3, zero, .LBB0_602
# %bb.601:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 16(r20)
	j .LBB0_603
.LBB0_602:                              #   in Loop: Header=BB0_588 Depth=3
	lui r3, 1024
	or r25, r23, r3
.LBB0_603:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	loads.w r23, 20(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r3, zero, .LBB0_605
# %bb.604:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 20(r20)
	j .LBB0_606
.LBB0_605:                              #   in Loop: Header=BB0_588 Depth=3
	lui r3, 1024
	or r23, r23, r3
.LBB0_606:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	loads.w r24, 24(r19)
	and r3, r24, r28
	and r18, r24, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	bneq r3, zero, .LBB0_608
# %bb.607:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r20)
	j .LBB0_609
.LBB0_608:                              #   in Loop: Header=BB0_588 Depth=3
	lui r3, 1024
	or r24, r24, r3
.LBB0_609:                              # %vector.body348
                                        #   in Loop: Header=BB0_588 Depth=3
	loads.w r19, 28(r19)
	and r3, r19, r28
	and r18, r19, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	beq r3, zero, .LBB0_586
# %bb.610:                              #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r19, r19, r3
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	j .LBB0_587
.LBB0_611:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 952 7 is_stmt 1               # parallel-rne.mlir:952:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 978 7                         # parallel-rne.mlir:978:7
	addli r8, zero, 6
	beq r3, r8, .LBB0_718
.LBB0_612:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1004 7                        # parallel-rne.mlir:1004:7
	addli r8, zero, 7
	beq r3, r8, .LBB0_752
	j .LBB0_786
.LBB0_613:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 822 7                         # parallel-rne.mlir:822:7
	xfence
	zext_int2long r[8:9], zero
	mfence { lm, sm, gm }
	j .LBB0_615
.LBB0_614:                              # %middle.block425
                                        #   in Loop: Header=BB0_615 Depth=2
	.loc	1 830 9                         # parallel-rne.mlir:830:9
	load.d r[8:9], -2016(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2024(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_646
.LBB0_615:                              # %.preheader106
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_623 Depth 3
                                        #       Child Loop BB0_618 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -2024(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	zext_int2long r[8:9], zero
	.loc	1 831 11 is_stmt 1              # parallel-rne.mlir:831:11
	beq r17, r2, .LBB0_618
	j .LBB0_623
.LBB0_616:                              # %scalar.ph416
                                        #   in Loop: Header=BB0_618 Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, r13, 0
.LBB0_617:                              # %scalar.ph416
                                        #   in Loop: Header=BB0_618 Depth=3
	.loc	1 831 11                        # parallel-rne.mlir:831:11
	setlt.ul r3, r[8:9], r[6:7]
	.loc	1 843 13 is_stmt 1              # parallel-rne.mlir:843:13
	add.s r11, r17, r11
	.loc	1 831 11                        # parallel-rne.mlir:831:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 843 13                        # parallel-rne.mlir:843:13
	stores.w r12, 0(r11)
	.loc	1 831 11                        # parallel-rne.mlir:831:11
	beq r3, zero, .LBB0_614
.LBB0_618:                              # %scalar.ph416
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_615 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r11, r11, 2
	add.s r3, r2, r11
	loads.w r19, 0(r3)
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	add.s r3, r10, r11
	loads.w r13, 0(r3)
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	and r3, r19, r1
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	bneq r3, zero, .LBB0_620
# %bb.619:                              # %scalar.ph416
                                        #   in Loop: Header=BB0_618 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	and r3, r19, r28
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	beq r3, r28, .LBB0_617
	j .LBB0_616
.LBB0_620:                              #   in Loop: Header=BB0_618 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r12, r19, r3
	and r3, r19, r28
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	beq r3, r28, .LBB0_617
	j .LBB0_616
.LBB0_621:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 28(r20)
.LBB0_622:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 831 11 is_stmt 1              # parallel-rne.mlir:831:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 843 13                        # parallel-rne.mlir:843:13
	add.s r3, r17, r12
	.loc	1 831 11                        # parallel-rne.mlir:831:11
	seteq.d r12, r[8:9], r[4:5]
	.loc	1 843 13                        # parallel-rne.mlir:843:13
	stores.w r22, 12(r3)
	stores.w r11, 8(r3)
	stores.w r21, 4(r3)
	stores.w r13, 0(r3)
	stores.w r19, 28(r3)
	stores.w r24, 24(r3)
	stores.w r23, 20(r3)
	stores.w r25, 16(r3)
	.loc	1 831 11                        # parallel-rne.mlir:831:11
	bneq r12, zero, .LBB0_614
.LBB0_623:                              # %vector.body418
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_615 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r12, r11, 2
	add.s r19, r2, r12
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	add.s r20, r10, r12
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	loads.w r11, 0(r19)
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	and r3, r11, r28
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	and r13, r11, r1
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	seteq r3, r3, r28
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	setneq r13, r13, zero
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	and r3, r3, r13
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	bneq r3, zero, .LBB0_625
# %bb.624:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r20)
	j .LBB0_626
.LBB0_625:                              #   in Loop: Header=BB0_623 Depth=3
	lui r3, 1024
	or r13, r11, r3
.LBB0_626:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	loads.w r11, 4(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	bneq r3, zero, .LBB0_628
# %bb.627:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
	j .LBB0_629
.LBB0_628:                              #   in Loop: Header=BB0_623 Depth=3
	lui r3, 1024
	or r21, r11, r3
.LBB0_629:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	loads.w r11, 8(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	bneq r3, zero, .LBB0_631
# %bb.630:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r20)
	j .LBB0_632
.LBB0_631:                              #   in Loop: Header=BB0_623 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_632:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	loads.w r22, 12(r19)
	and r3, r22, r28
	and r18, r22, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	bneq r3, zero, .LBB0_634
# %bb.633:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 12(r20)
	j .LBB0_635
.LBB0_634:                              #   in Loop: Header=BB0_623 Depth=3
	lui r3, 1024
	or r22, r22, r3
.LBB0_635:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	loads.w r23, 16(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	bneq r3, zero, .LBB0_637
# %bb.636:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 16(r20)
	j .LBB0_638
.LBB0_637:                              #   in Loop: Header=BB0_623 Depth=3
	lui r3, 1024
	or r25, r23, r3
.LBB0_638:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	loads.w r23, 20(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	bneq r3, zero, .LBB0_640
# %bb.639:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 20(r20)
	j .LBB0_641
.LBB0_640:                              #   in Loop: Header=BB0_623 Depth=3
	lui r3, 1024
	or r23, r23, r3
.LBB0_641:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	loads.w r24, 24(r19)
	and r3, r24, r28
	and r18, r24, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	bneq r3, zero, .LBB0_643
# %bb.642:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r20)
	j .LBB0_644
.LBB0_643:                              #   in Loop: Header=BB0_623 Depth=3
	lui r3, 1024
	or r24, r24, r3
.LBB0_644:                              # %vector.body418
                                        #   in Loop: Header=BB0_623 Depth=3
	loads.w r19, 28(r19)
	and r3, r19, r28
	and r18, r19, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	beq r3, zero, .LBB0_621
# %bb.645:                              #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r19, r19, r3
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	j .LBB0_622
.LBB0_646:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 822 7 is_stmt 1               # parallel-rne.mlir:822:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 848 7                         # parallel-rne.mlir:848:7
	addli r8, zero, 1
	beq r3, r8, .LBB0_508
.LBB0_647:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 874 7                         # parallel-rne.mlir:874:7
	addli r8, zero, 2
	bneq r3, r8, .LBB0_542
.LBB0_648:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 16
	.loc	1 874 7                         # parallel-rne.mlir:874:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_650
.LBB0_649:                              # %middle.block397
                                        #   in Loop: Header=BB0_650 Depth=2
	.loc	1 882 9 is_stmt 1               # parallel-rne.mlir:882:9
	load.d r[8:9], -1968(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2024(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_681
.LBB0_650:                              # %.preheader104
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_658 Depth 3
                                        #       Child Loop BB0_653 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -2024(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	zext_int2long r[8:9], zero
	.loc	1 883 11 is_stmt 1              # parallel-rne.mlir:883:11
	beq r17, r2, .LBB0_653
	j .LBB0_658
.LBB0_651:                              # %scalar.ph388
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, r13, 0
.LBB0_652:                              # %scalar.ph388
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 883 11                        # parallel-rne.mlir:883:11
	setlt.ul r3, r[8:9], r[6:7]
	.loc	1 895 13 is_stmt 1              # parallel-rne.mlir:895:13
	add.s r11, r17, r11
	.loc	1 883 11                        # parallel-rne.mlir:883:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 895 13                        # parallel-rne.mlir:895:13
	stores.w r12, 0(r11)
	.loc	1 883 11                        # parallel-rne.mlir:883:11
	beq r3, zero, .LBB0_649
.LBB0_653:                              # %scalar.ph388
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_650 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r11, r11, 2
	add.s r3, r2, r11
	loads.w r19, 0(r3)
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	add.s r3, r10, r11
	loads.w r13, 0(r3)
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	and r3, r19, r1
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	bneq r3, zero, .LBB0_655
# %bb.654:                              # %scalar.ph388
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	and r3, r19, r28
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	beq r3, r28, .LBB0_652
	j .LBB0_651
.LBB0_655:                              #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r12, r19, r3
	and r3, r19, r28
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	beq r3, r28, .LBB0_652
	j .LBB0_651
.LBB0_656:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 28(r20)
.LBB0_657:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 883 11 is_stmt 1              # parallel-rne.mlir:883:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 895 13                        # parallel-rne.mlir:895:13
	add.s r3, r17, r12
	.loc	1 883 11                        # parallel-rne.mlir:883:11
	seteq.d r12, r[8:9], r[4:5]
	.loc	1 895 13                        # parallel-rne.mlir:895:13
	stores.w r22, 12(r3)
	stores.w r11, 8(r3)
	stores.w r21, 4(r3)
	stores.w r13, 0(r3)
	stores.w r19, 28(r3)
	stores.w r24, 24(r3)
	stores.w r23, 20(r3)
	stores.w r25, 16(r3)
	.loc	1 883 11                        # parallel-rne.mlir:883:11
	bneq r12, zero, .LBB0_649
.LBB0_658:                              # %vector.body390
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_650 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r12, r11, 2
	add.s r19, r2, r12
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	add.s r20, r10, r12
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	loads.w r11, 0(r19)
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	and r3, r11, r28
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	and r13, r11, r1
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	seteq r3, r3, r28
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	setneq r13, r13, zero
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	and r3, r3, r13
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	bneq r3, zero, .LBB0_660
# %bb.659:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r20)
	j .LBB0_661
.LBB0_660:                              #   in Loop: Header=BB0_658 Depth=3
	lui r3, 1024
	or r13, r11, r3
.LBB0_661:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	loads.w r11, 4(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	bneq r3, zero, .LBB0_663
# %bb.662:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
	j .LBB0_664
.LBB0_663:                              #   in Loop: Header=BB0_658 Depth=3
	lui r3, 1024
	or r21, r11, r3
.LBB0_664:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	loads.w r11, 8(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	bneq r3, zero, .LBB0_666
# %bb.665:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r20)
	j .LBB0_667
.LBB0_666:                              #   in Loop: Header=BB0_658 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_667:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	loads.w r22, 12(r19)
	and r3, r22, r28
	and r18, r22, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	bneq r3, zero, .LBB0_669
# %bb.668:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 12(r20)
	j .LBB0_670
.LBB0_669:                              #   in Loop: Header=BB0_658 Depth=3
	lui r3, 1024
	or r22, r22, r3
.LBB0_670:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	loads.w r23, 16(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	bneq r3, zero, .LBB0_672
# %bb.671:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 16(r20)
	j .LBB0_673
.LBB0_672:                              #   in Loop: Header=BB0_658 Depth=3
	lui r3, 1024
	or r25, r23, r3
.LBB0_673:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	loads.w r23, 20(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	bneq r3, zero, .LBB0_675
# %bb.674:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 20(r20)
	j .LBB0_676
.LBB0_675:                              #   in Loop: Header=BB0_658 Depth=3
	lui r3, 1024
	or r23, r23, r3
.LBB0_676:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	loads.w r24, 24(r19)
	and r3, r24, r28
	and r18, r24, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	bneq r3, zero, .LBB0_678
# %bb.677:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r20)
	j .LBB0_679
.LBB0_678:                              #   in Loop: Header=BB0_658 Depth=3
	lui r3, 1024
	or r24, r24, r3
.LBB0_679:                              # %vector.body390
                                        #   in Loop: Header=BB0_658 Depth=3
	loads.w r19, 28(r19)
	and r3, r19, r28
	and r18, r19, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	beq r3, zero, .LBB0_656
# %bb.680:                              #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r19, r19, r3
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	j .LBB0_657
.LBB0_681:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 874 7 is_stmt 1               # parallel-rne.mlir:874:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 900 7                         # parallel-rne.mlir:900:7
	beq r3, r26, .LBB0_543
.LBB0_682:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 926 7                         # parallel-rne.mlir:926:7
	addli r8, zero, 4
	bneq r3, r8, .LBB0_577
.LBB0_683:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 32
	.loc	1 926 7                         # parallel-rne.mlir:926:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_685
.LBB0_684:                              # %middle.block369
                                        #   in Loop: Header=BB0_685 Depth=2
	.loc	1 934 9 is_stmt 1               # parallel-rne.mlir:934:9
	load.d r[8:9], -1984(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2024(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_716
.LBB0_685:                              # %.preheader102
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_693 Depth 3
                                        #       Child Loop BB0_688 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -2024(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	zext_int2long r[8:9], zero
	.loc	1 935 11 is_stmt 1              # parallel-rne.mlir:935:11
	beq r17, r2, .LBB0_688
	j .LBB0_693
.LBB0_686:                              # %scalar.ph360
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, r13, 0
.LBB0_687:                              # %scalar.ph360
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 935 11                        # parallel-rne.mlir:935:11
	setlt.ul r3, r[8:9], r[6:7]
	.loc	1 947 13 is_stmt 1              # parallel-rne.mlir:947:13
	add.s r11, r17, r11
	.loc	1 935 11                        # parallel-rne.mlir:935:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 947 13                        # parallel-rne.mlir:947:13
	stores.w r12, 0(r11)
	.loc	1 935 11                        # parallel-rne.mlir:935:11
	beq r3, zero, .LBB0_684
.LBB0_688:                              # %scalar.ph360
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_685 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 936 19                        # parallel-rne.mlir:936:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r11, r11, 2
	add.s r3, r2, r11
	loads.w r19, 0(r3)
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	add.s r3, r10, r11
	loads.w r13, 0(r3)
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	and r3, r19, r1
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	bneq r3, zero, .LBB0_690
# %bb.689:                              # %scalar.ph360
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	and r3, r19, r28
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	beq r3, r28, .LBB0_687
	j .LBB0_686
.LBB0_690:                              #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r12, r19, r3
	and r3, r19, r28
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	beq r3, r28, .LBB0_687
	j .LBB0_686
.LBB0_691:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 28(r20)
.LBB0_692:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 935 11 is_stmt 1              # parallel-rne.mlir:935:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 947 13                        # parallel-rne.mlir:947:13
	add.s r3, r17, r12
	.loc	1 935 11                        # parallel-rne.mlir:935:11
	seteq.d r12, r[8:9], r[4:5]
	.loc	1 947 13                        # parallel-rne.mlir:947:13
	stores.w r22, 12(r3)
	stores.w r11, 8(r3)
	stores.w r21, 4(r3)
	stores.w r13, 0(r3)
	stores.w r19, 28(r3)
	stores.w r24, 24(r3)
	stores.w r23, 20(r3)
	stores.w r25, 16(r3)
	.loc	1 935 11                        # parallel-rne.mlir:935:11
	bneq r12, zero, .LBB0_684
.LBB0_693:                              # %vector.body362
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_685 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 936 19                        # parallel-rne.mlir:936:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r12, r11, 2
	add.s r19, r2, r12
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	add.s r20, r10, r12
	.loc	1 936 19                        # parallel-rne.mlir:936:19
	loads.w r11, 0(r19)
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	and r3, r11, r28
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	and r13, r11, r1
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	seteq r3, r3, r28
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	setneq r13, r13, zero
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	and r3, r3, r13
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	bneq r3, zero, .LBB0_695
# %bb.694:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r20)
	j .LBB0_696
.LBB0_695:                              #   in Loop: Header=BB0_693 Depth=3
	lui r3, 1024
	or r13, r11, r3
.LBB0_696:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r11, 4(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	bneq r3, zero, .LBB0_698
# %bb.697:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
	j .LBB0_699
.LBB0_698:                              #   in Loop: Header=BB0_693 Depth=3
	lui r3, 1024
	or r21, r11, r3
.LBB0_699:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r11, 8(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	bneq r3, zero, .LBB0_701
# %bb.700:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r20)
	j .LBB0_702
.LBB0_701:                              #   in Loop: Header=BB0_693 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_702:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r22, 12(r19)
	and r3, r22, r28
	and r18, r22, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	bneq r3, zero, .LBB0_704
# %bb.703:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 12(r20)
	j .LBB0_705
.LBB0_704:                              #   in Loop: Header=BB0_693 Depth=3
	lui r3, 1024
	or r22, r22, r3
.LBB0_705:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r23, 16(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	bneq r3, zero, .LBB0_707
# %bb.706:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 16(r20)
	j .LBB0_708
.LBB0_707:                              #   in Loop: Header=BB0_693 Depth=3
	lui r3, 1024
	or r25, r23, r3
.LBB0_708:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r23, 20(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	bneq r3, zero, .LBB0_710
# %bb.709:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 20(r20)
	j .LBB0_711
.LBB0_710:                              #   in Loop: Header=BB0_693 Depth=3
	lui r3, 1024
	or r23, r23, r3
.LBB0_711:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r24, 24(r19)
	and r3, r24, r28
	and r18, r24, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	bneq r3, zero, .LBB0_713
# %bb.712:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r20)
	j .LBB0_714
.LBB0_713:                              #   in Loop: Header=BB0_693 Depth=3
	lui r3, 1024
	or r24, r24, r3
.LBB0_714:                              # %vector.body362
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r19, 28(r19)
	and r3, r19, r28
	and r18, r19, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	beq r3, zero, .LBB0_691
# %bb.715:                              #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r19, r19, r3
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	j .LBB0_692
.LBB0_716:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 926 7 is_stmt 1               # parallel-rne.mlir:926:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 952 7                         # parallel-rne.mlir:952:7
	addli r8, zero, 5
	beq r3, r8, .LBB0_578
.LBB0_717:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 978 7                         # parallel-rne.mlir:978:7
	addli r8, zero, 6
	bneq r3, r8, .LBB0_612
.LBB0_718:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 48
	.loc	1 978 7                         # parallel-rne.mlir:978:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_720
.LBB0_719:                              # %middle.block341
                                        #   in Loop: Header=BB0_720 Depth=2
	.loc	1 986 9 is_stmt 1               # parallel-rne.mlir:986:9
	load.d r[8:9], -2000(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2024(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_751
.LBB0_720:                              # %.preheader100
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_728 Depth 3
                                        #       Child Loop BB0_723 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -2024(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	zext_int2long r[8:9], zero
	.loc	1 987 11 is_stmt 1              # parallel-rne.mlir:987:11
	beq r17, r2, .LBB0_723
	j .LBB0_728
.LBB0_721:                              # %scalar.ph332
                                        #   in Loop: Header=BB0_723 Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, r13, 0
.LBB0_722:                              # %scalar.ph332
                                        #   in Loop: Header=BB0_723 Depth=3
	.loc	1 987 11                        # parallel-rne.mlir:987:11
	setlt.ul r3, r[8:9], r[6:7]
	.loc	1 999 13 is_stmt 1              # parallel-rne.mlir:999:13
	add.s r11, r17, r11
	.loc	1 987 11                        # parallel-rne.mlir:987:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 999 13                        # parallel-rne.mlir:999:13
	stores.w r12, 0(r11)
	.loc	1 987 11                        # parallel-rne.mlir:987:11
	beq r3, zero, .LBB0_719
.LBB0_723:                              # %scalar.ph332
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_720 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 988 19                        # parallel-rne.mlir:988:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r11, r11, 2
	add.s r3, r2, r11
	loads.w r19, 0(r3)
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	add.s r3, r10, r11
	loads.w r13, 0(r3)
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	and r3, r19, r1
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r3, zero, .LBB0_725
# %bb.724:                              # %scalar.ph332
                                        #   in Loop: Header=BB0_723 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	and r3, r19, r28
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	beq r3, r28, .LBB0_722
	j .LBB0_721
.LBB0_725:                              #   in Loop: Header=BB0_723 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r12, r19, r3
	and r3, r19, r28
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	beq r3, r28, .LBB0_722
	j .LBB0_721
.LBB0_726:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 28(r20)
.LBB0_727:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	.loc	1 987 11 is_stmt 1              # parallel-rne.mlir:987:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 999 13                        # parallel-rne.mlir:999:13
	add.s r3, r17, r12
	.loc	1 987 11                        # parallel-rne.mlir:987:11
	seteq.d r12, r[8:9], r[4:5]
	.loc	1 999 13                        # parallel-rne.mlir:999:13
	stores.w r22, 12(r3)
	stores.w r11, 8(r3)
	stores.w r21, 4(r3)
	stores.w r13, 0(r3)
	stores.w r19, 28(r3)
	stores.w r24, 24(r3)
	stores.w r23, 20(r3)
	stores.w r25, 16(r3)
	.loc	1 987 11                        # parallel-rne.mlir:987:11
	bneq r12, zero, .LBB0_719
.LBB0_728:                              # %vector.body334
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_720 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 988 19                        # parallel-rne.mlir:988:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r12, r11, 2
	add.s r19, r2, r12
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	add.s r20, r10, r12
	.loc	1 988 19                        # parallel-rne.mlir:988:19
	loads.w r11, 0(r19)
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	and r3, r11, r28
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	and r13, r11, r1
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	seteq r3, r3, r28
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	setneq r13, r13, zero
	.loc	1 996 19                        # parallel-rne.mlir:996:19
	and r3, r3, r13
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r3, zero, .LBB0_730
# %bb.729:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r20)
	j .LBB0_731
.LBB0_730:                              #   in Loop: Header=BB0_728 Depth=3
	lui r3, 1024
	or r13, r11, r3
.LBB0_731:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	loads.w r11, 4(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r3, zero, .LBB0_733
# %bb.732:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
	j .LBB0_734
.LBB0_733:                              #   in Loop: Header=BB0_728 Depth=3
	lui r3, 1024
	or r21, r11, r3
.LBB0_734:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	loads.w r11, 8(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r3, zero, .LBB0_736
# %bb.735:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r20)
	j .LBB0_737
.LBB0_736:                              #   in Loop: Header=BB0_728 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_737:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	loads.w r22, 12(r19)
	and r3, r22, r28
	and r18, r22, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r3, zero, .LBB0_739
# %bb.738:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 12(r20)
	j .LBB0_740
.LBB0_739:                              #   in Loop: Header=BB0_728 Depth=3
	lui r3, 1024
	or r22, r22, r3
.LBB0_740:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	loads.w r23, 16(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r3, zero, .LBB0_742
# %bb.741:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 16(r20)
	j .LBB0_743
.LBB0_742:                              #   in Loop: Header=BB0_728 Depth=3
	lui r3, 1024
	or r25, r23, r3
.LBB0_743:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	loads.w r23, 20(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r3, zero, .LBB0_745
# %bb.744:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 20(r20)
	j .LBB0_746
.LBB0_745:                              #   in Loop: Header=BB0_728 Depth=3
	lui r3, 1024
	or r23, r23, r3
.LBB0_746:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	loads.w r24, 24(r19)
	and r3, r24, r28
	and r18, r24, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	bneq r3, zero, .LBB0_748
# %bb.747:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r20)
	j .LBB0_749
.LBB0_748:                              #   in Loop: Header=BB0_728 Depth=3
	lui r3, 1024
	or r24, r24, r3
.LBB0_749:                              # %vector.body334
                                        #   in Loop: Header=BB0_728 Depth=3
	loads.w r19, 28(r19)
	and r3, r19, r28
	and r18, r19, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	beq r3, zero, .LBB0_726
# %bb.750:                              #   in Loop: Header=BB0_728 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r19, r19, r3
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	j .LBB0_727
.LBB0_751:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 978 7 is_stmt 1               # parallel-rne.mlir:978:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
	.loc	1 1004 7                        # parallel-rne.mlir:1004:7
	addli r8, zero, 7
	bneq r3, r8, .LBB0_786
.LBB0_752:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 56
	.loc	1 1004 7                        # parallel-rne.mlir:1004:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_754
.LBB0_753:                              # %middle.block327
                                        #   in Loop: Header=BB0_754 Depth=2
	.loc	1 1012 9 is_stmt 1              # parallel-rne.mlir:1012:9
	load.d r[8:9], -2008(r30)               # 8-byte Folded Reload
	load.d r[11:12], -2024(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_785
.LBB0_754:                              # %.preheader99
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_762 Depth 3
                                        #       Child Loop BB0_757 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -2024(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	zext_int2long r[8:9], zero
	.loc	1 1013 11 is_stmt 1             # parallel-rne.mlir:1013:11
	beq r17, r2, .LBB0_757
	j .LBB0_762
.LBB0_755:                              # %scalar.ph318
                                        #   in Loop: Header=BB0_757 Depth=3
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, r13, 0
.LBB0_756:                              # %scalar.ph318
                                        #   in Loop: Header=BB0_757 Depth=3
	.loc	1 1013 11                       # parallel-rne.mlir:1013:11
	setlt.ul r3, r[8:9], r[6:7]
	.loc	1 1025 13 is_stmt 1             # parallel-rne.mlir:1025:13
	add.s r11, r17, r11
	.loc	1 1013 11                       # parallel-rne.mlir:1013:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 1025 13                       # parallel-rne.mlir:1025:13
	stores.w r12, 0(r11)
	.loc	1 1013 11                       # parallel-rne.mlir:1013:11
	beq r3, zero, .LBB0_753
.LBB0_757:                              # %scalar.ph318
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_754 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1014 19                       # parallel-rne.mlir:1014:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r11, r11, 2
	add.s r3, r2, r11
	loads.w r19, 0(r3)
	.loc	1 1015 19                       # parallel-rne.mlir:1015:19
	add.s r3, r10, r11
	loads.w r13, 0(r3)
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	and r3, r19, r1
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	bneq r3, zero, .LBB0_759
# %bb.758:                              # %scalar.ph318
                                        #   in Loop: Header=BB0_757 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	and r3, r19, r28
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	beq r3, r28, .LBB0_756
	j .LBB0_755
.LBB0_759:                              #   in Loop: Header=BB0_757 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r12, r19, r3
	and r3, r19, r28
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	beq r3, r28, .LBB0_756
	j .LBB0_755
.LBB0_760:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 28(r20)
.LBB0_761:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	.loc	1 1013 11 is_stmt 1             # parallel-rne.mlir:1013:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 1025 13                       # parallel-rne.mlir:1025:13
	add.s r3, r17, r12
	.loc	1 1013 11                       # parallel-rne.mlir:1013:11
	seteq.d r12, r[8:9], r[4:5]
	.loc	1 1025 13                       # parallel-rne.mlir:1025:13
	stores.w r22, 12(r3)
	stores.w r11, 8(r3)
	stores.w r21, 4(r3)
	stores.w r13, 0(r3)
	stores.w r19, 28(r3)
	stores.w r24, 24(r3)
	stores.w r23, 20(r3)
	stores.w r25, 16(r3)
	.loc	1 1013 11                       # parallel-rne.mlir:1013:11
	bneq r12, zero, .LBB0_753
.LBB0_762:                              # %vector.body320
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_754 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1014 19                       # parallel-rne.mlir:1014:19
	add.ul r[11:12], r[8:9], r[15:16]
	slli r12, r11, 2
	add.s r19, r2, r12
	.loc	1 1015 19                       # parallel-rne.mlir:1015:19
	add.s r20, r10, r12
	.loc	1 1014 19                       # parallel-rne.mlir:1014:19
	loads.w r11, 0(r19)
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	and r3, r11, r28
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	and r13, r11, r1
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	seteq r3, r3, r28
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	setneq r13, r13, zero
	.loc	1 1022 19                       # parallel-rne.mlir:1022:19
	and r3, r3, r13
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	bneq r3, zero, .LBB0_764
# %bb.763:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r20)
	j .LBB0_765
.LBB0_764:                              #   in Loop: Header=BB0_762 Depth=3
	lui r3, 1024
	or r13, r11, r3
.LBB0_765:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	loads.w r11, 4(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	bneq r3, zero, .LBB0_767
# %bb.766:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r20)
	j .LBB0_768
.LBB0_767:                              #   in Loop: Header=BB0_762 Depth=3
	lui r3, 1024
	or r21, r11, r3
.LBB0_768:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	loads.w r11, 8(r19)
	and r3, r11, r28
	and r18, r11, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	bneq r3, zero, .LBB0_770
# %bb.769:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r20)
	j .LBB0_771
.LBB0_770:                              #   in Loop: Header=BB0_762 Depth=3
	lui r3, 1024
	or r11, r11, r3
.LBB0_771:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	loads.w r22, 12(r19)
	and r3, r22, r28
	and r18, r22, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	bneq r3, zero, .LBB0_773
# %bb.772:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 12(r20)
	j .LBB0_774
.LBB0_773:                              #   in Loop: Header=BB0_762 Depth=3
	lui r3, 1024
	or r22, r22, r3
.LBB0_774:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	loads.w r23, 16(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	bneq r3, zero, .LBB0_776
# %bb.775:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 16(r20)
	j .LBB0_777
.LBB0_776:                              #   in Loop: Header=BB0_762 Depth=3
	lui r3, 1024
	or r25, r23, r3
.LBB0_777:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	loads.w r23, 20(r19)
	and r3, r23, r28
	and r18, r23, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	bneq r3, zero, .LBB0_779
# %bb.778:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 20(r20)
	j .LBB0_780
.LBB0_779:                              #   in Loop: Header=BB0_762 Depth=3
	lui r3, 1024
	or r23, r23, r3
.LBB0_780:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	loads.w r24, 24(r19)
	and r3, r24, r28
	and r18, r24, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	bneq r3, zero, .LBB0_782
# %bb.781:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r20)
	j .LBB0_783
.LBB0_782:                              #   in Loop: Header=BB0_762 Depth=3
	lui r3, 1024
	or r24, r24, r3
.LBB0_783:                              # %vector.body320
                                        #   in Loop: Header=BB0_762 Depth=3
	loads.w r19, 28(r19)
	and r3, r19, r28
	and r18, r19, r1
	seteq r3, r3, r28
	setneq r18, r18, zero
	and r3, r3, r18
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	beq r3, zero, .LBB0_760
# %bb.784:                              #   in Loop: Header=BB0_762 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r3, 1024
	or r19, r19, r3
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	j .LBB0_761
.LBB0_785:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1004 7 is_stmt 1              # parallel-rne.mlir:1004:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	loadli.w r13,  -1952(r30)               # 4-byte Folded Reload
.LBB0_786:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	addli r2, zero, 255
	addli r8, zero, 3
	csr_set csr5, r2
	sync_core
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	bneq r3, r8, .LBB0_788
# %bb.787:                              # %.critedge26
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 16
	.loc	1 1032 7 is_stmt 1              # parallel-rne.mlir:1032:7
	addli r2, zero, 35
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	xsignal r9, 0
	.loc	1 1032 7                        # parallel-rne.mlir:1032:7
	xsignal r2, 0
	.loc	1 1033 7                        # parallel-rne.mlir:1033:7
	addli r2, zero, 36
	xsignal r2, 0
	.loc	1 1036 13                       # parallel-rne.mlir:1036:13
	loadli.w r2,  -16(r30)
	mod.s r3, r2, r8
	addli r2, r2, 1
	storeli.w r2, -16(r30)
	.loc	1 1039 7                        # parallel-rne.mlir:1039:7
	xwait r9, 0
	.loc	1 1036 13                       # parallel-rne.mlir:1036:13
	slli r2, r3, 15
	.loc	1 1040 7                        # parallel-rne.mlir:1040:7
	addli r3, zero, 25
	xwait r3, 0
	.loc	1 1036 13                       # parallel-rne.mlir:1036:13
	loadli.w r3,  -2132(r30)                # 4-byte Folded Reload
	add.s r2, r2, r3
	.loc	1 1041 7                        # parallel-rne.mlir:1041:7
	addli r3, zero, 37
	xwait r3, 0
	.loc	1 1042 7                        # parallel-rne.mlir:1042:7
	addli r3, zero, 39
	xwait r3, 0
	j .LBB0_791
.LBB0_788:                              # %.critedge24
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	addli r2, zero, 5
	bneq r3, r2, .LBB0_790
# %bb.789:                              # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 36
	addli r8, zero, 2
	addli r12, zero, 2047
	addli r11, zero, 4
	.loc	1 1036 13                       # parallel-rne.mlir:1036:13
	addli r9, zero, 3
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	xwait r2, 0
	lock zero, r8
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, r2, 0
	ew_cfg zero, r12, zero, 2
	ew_cfg r11, zero, zero, 3
	ew_cfg r11, r11, zero, 19
	dsmadd r17, r17, r17, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	.loc	1 1036 13                       # parallel-rne.mlir:1036:13
	loadli.w r2,  -16(r30)
	addli r3, r2, 1
	mod.s r2, r2, r9
	storeli.w r3, -16(r30)
	.loc	1 1037 7                        # parallel-rne.mlir:1037:7
	addli r3, zero, 24
	xwait r3, 0
	addli r3, zero, 40
	xwait r3, 0
	lock zero, r8
	lui r3, 258048
	.loc	1 1036 13                       # parallel-rne.mlir:1036:13
	slli r2, r2, 15
	.loc	1 1037 7                        # parallel-rne.mlir:1037:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r3, 0
	.loc	1 1036 13                       # parallel-rne.mlir:1036:13
	loadli.w r3,  -2132(r30)                # 4-byte Folded Reload
	.loc	1 1037 7                        # parallel-rne.mlir:1037:7
	ew_cfg zero, r12, zero, 2
	ew_cfg r11, zero, zero, 3
	ew_cfg r11, r11, r11, 19
	.loc	1 1036 13                       # parallel-rne.mlir:1036:13
	add.s r2, r2, r3
	.loc	1 1037 7                        # parallel-rne.mlir:1037:7
	addli r3, zero, 23
	dsmul r2, r13, r17, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	xsignal r3, 0
	addli r3, zero, 37
	xsignal r3, 0
	addli r3, zero, 39
	xsignal r3, 0
	.loc	1 1039 7                        # parallel-rne.mlir:1039:7
	j .LBB0_791
.LBB0_790:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1036 13                       # parallel-rne.mlir:1036:13
	loadli.w r2,  -16(r30)
	addli r3, zero, 3
	mod.s r3, r2, r3
	addli r8, r2, 1
	loadli.w r2,  -2132(r30)                # 4-byte Folded Reload
	storeli.w r8, -16(r30)
	slli r3, r3, 15
	add.s r2, r3, r2
.LBB0_791:                              # %.critedge28
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	addli r3, zero, 255
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	xfence
	.loc	1 1045 7                        # parallel-rne.mlir:1045:7
	mfence { lm, sm, gm }
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	csr_set csr5, r3
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	sub.s r3, r10, r3
	storeli.w r3, -2032(r30)                # 4-byte Folded Spill
	sub.s r3, r10, r2
	storeli.w r3, -2036(r30)                # 4-byte Folded Spill
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	sync_core
	.loc	1 1047 7                        # parallel-rne.mlir:1047:7
	beq r3, zero, .LBB0_880
# %bb.792:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1083 7                        # parallel-rne.mlir:1083:7
	addli r8, zero, 1
	bneq r3, r8, .LBB0_908
.LBB0_793:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	storeli.w r3, -2016(r30)                # 4-byte Folded Spill
	addli r3, zero, 8
	.loc	1 1083 7                        # parallel-rne.mlir:1083:7
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_795
.LBB0_794:                              # %middle.block298
                                        #   in Loop: Header=BB0_795 Depth=2
	.loc	1 1091 9 is_stmt 1              # parallel-rne.mlir:1091:9
	load.d r[8:9], -1960(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1952(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_820
.LBB0_795:                              # %.preheader97
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_812 Depth 3
                                        #       Child Loop BB0_798 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -1952(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r3
	.loc	1 1092 11 is_stmt 1             # parallel-rne.mlir:1092:11
	loadli.w r3,  -2016(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_810
# %bb.796:                              # %scalar.ph290.preheader
                                        #   in Loop: Header=BB0_795 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_798
.LBB0_797:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	.loc	1 1092 11                       # parallel-rne.mlir:1092:11
	setlt.ul r3, r[11:12], r[6:7]
	.loc	1 1114 13 is_stmt 1             # parallel-rne.mlir:1114:13
	add.s r13, r10, r13
	.loc	1 1092 11                       # parallel-rne.mlir:1092:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 1114 13                       # parallel-rne.mlir:1114:13
	stores.w r16, 0(r13)
	.loc	1 1092 11                       # parallel-rne.mlir:1092:11
	beq r3, zero, .LBB0_794
.LBB0_798:                              # %scalar.ph290
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_795 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	add.ul r[15:16], r[11:12], r[8:9]
	lui r21, 523264
	slli r13, r15, 2
	lui r16, 523264
	.loc	1 1094 19                       # parallel-rne.mlir:1094:19
	add.s r3, r17, r13
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	add.s r15, r2, r13
	.loc	1 1094 19                       # parallel-rne.mlir:1094:19
	loads.w r3, 0(r3)
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	loads.w r22, 0(r15)
	.loc	1 1098 19                       # parallel-rne.mlir:1098:19
	and r19, r3, r27
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	beq r19, r28, .LBB0_800
# %bb.799:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_800:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	add.s r3, r3, r13
	loads.w r3, 0(r3)
	and r20, r3, r27
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	beq r20, zero, .LBB0_808
# %bb.801:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	bneq r19, zero, .LBB0_809
.LBB0_802:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	beq r20, r28, .LBB0_804
.LBB0_803:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_804:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	setlt.u r3, r28, r19
	lui r19, 523264
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	bneq r3, zero, .LBB0_806
# %bb.805:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_806:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	setlt.u r3, r28, r20
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	bneq r3, zero, .LBB0_797
# %bb.807:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r19, 0
	j .LBB0_797
.LBB0_808:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	lui r22, 523264
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	beq r19, zero, .LBB0_802
.LBB0_809:                              # %scalar.ph290
                                        #   in Loop: Header=BB0_798 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	bneq r20, r28, .LBB0_803
	j .LBB0_804
.LBB0_810:                              # %vector.body292.preheader
                                        #   in Loop: Header=BB0_795 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_812
.LBB0_811:                              # %vector.body292
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 1092 11 is_stmt 1             # parallel-rne.mlir:1092:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 1114 13                       # parallel-rne.mlir:1114:13
	add.s r15, r10, r16
	.loc	1 1092 11                       # parallel-rne.mlir:1092:11
	seteq.d r3, r[12:13], r[4:5]
	.loc	1 1114 13                       # parallel-rne.mlir:1114:13
	stores.w r19, 12(r15)
	stores.w r26, 8(r15)
	stores.w r25, 4(r15)
	stores.w r11, 0(r15)
	.loc	1 1092 11                       # parallel-rne.mlir:1092:11
	bneq r3, zero, .LBB0_794
.LBB0_812:                              # %vector.body292
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_795 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	add.ul r[18:19], r[12:13], r[8:9]
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	slli r16, r18, 2
	add.s r20, r3, r16
	.loc	1 1094 19                       # parallel-rne.mlir:1094:19
	add.s r21, r17, r16
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	loads.w r3, 0(r20)
	.loc	1 1094 19                       # parallel-rne.mlir:1094:19
	loads.w r11, 0(r21)
	.loc	1 1100 19                       # parallel-rne.mlir:1100:19
	and r3, r3, r27
	.loc	1 1098 19                       # parallel-rne.mlir:1098:19
	and r11, r11, r27
	.loc	1 1101 19                       # parallel-rne.mlir:1101:19
	seteq r18, r3, r28
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	seteq r25, r3, zero
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	seteq r19, r11, zero
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	seteq r22, r11, r28
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	and r11, r18, r19
	.loc	1 1106 19                       # parallel-rne.mlir:1106:19
	and r18, r25, r22
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	add.s r22, r2, r16
	lui r19, 523264
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	or r11, r11, r18
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	bneq r3, zero, .LBB0_814
# %bb.813:                              # %vector.body292
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_814:                              # %vector.body292
                                        #   in Loop: Header=BB0_812 Depth=3
	loads.w r3, 4(r20)
	loads.w r18, 4(r21)
	and r3, r3, r27
	and r18, r18, r27
	seteq r25, r3, r28
	seteq r23, r3, zero
	seteq r15, r18, r28
	seteq r26, r18, zero
	max.u r3, r3, r18
	setlt.u r3, r28, r3
	and r18, r25, r26
	and r15, r23, r15
	lui r25, 523264
	or r15, r18, r15
	or r3, r3, r15
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	bneq r3, zero, .LBB0_816
# %bb.815:                              # %vector.body292
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r22)
.LBB0_816:                              # %vector.body292
                                        #   in Loop: Header=BB0_812 Depth=3
	loads.w r3, 8(r20)
	loads.w r15, 8(r21)
	and r3, r3, r27
	and r15, r15, r27
	seteq r18, r3, r28
	seteq r26, r3, zero
	seteq r23, r15, zero
	seteq r24, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r18, r23
	and r18, r26, r24
	lui r26, 523264
	or r15, r15, r18
	or r3, r3, r15
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	bneq r3, zero, .LBB0_818
# %bb.817:                              # %vector.body292
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r22)
.LBB0_818:                              # %vector.body292
                                        #   in Loop: Header=BB0_812 Depth=3
	loads.w r3, 12(r20)
	loads.w r15, 12(r21)
	and r3, r3, r27
	and r15, r15, r27
	seteq r18, r3, r28
	seteq r23, r3, zero
	seteq r20, r15, zero
	seteq r21, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r18, r20
	and r18, r23, r21
	or r15, r15, r18
	or r3, r3, r15
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	bneq r3, zero, .LBB0_811
# %bb.819:                              # %vector.body292
                                        #   in Loop: Header=BB0_812 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 12(r22)
	j .LBB0_811
.LBB0_820:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 1083 7                        # parallel-rne.mlir:1083:7
	mfence { sm }
	.loc	1 1119 7                        # parallel-rne.mlir:1119:7
	addli r8, zero, 2
	beq r3, r8, .LBB0_909
.LBB0_821:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1155 7                        # parallel-rne.mlir:1155:7
	addli r8, zero, 3
	bneq r3, r8, .LBB0_937
.LBB0_822:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	storeli.w r3, -1960(r30)                # 4-byte Folded Spill
	addli r3, zero, 24
	.loc	1 1155 7                        # parallel-rne.mlir:1155:7
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_824
.LBB0_823:                              # %middle.block268
                                        #   in Loop: Header=BB0_824 Depth=2
	.loc	1 1163 9 is_stmt 1              # parallel-rne.mlir:1163:9
	load.d r[8:9], -1976(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1952(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_849
.LBB0_824:                              # %.preheader95
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_841 Depth 3
                                        #       Child Loop BB0_827 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -1952(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r3
	.loc	1 1164 11 is_stmt 1             # parallel-rne.mlir:1164:11
	loadli.w r3,  -1960(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_839
# %bb.825:                              # %scalar.ph260.preheader
                                        #   in Loop: Header=BB0_824 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_827
.LBB0_826:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 1164 11                       # parallel-rne.mlir:1164:11
	setlt.ul r3, r[11:12], r[6:7]
	.loc	1 1186 13 is_stmt 1             # parallel-rne.mlir:1186:13
	add.s r13, r10, r13
	.loc	1 1164 11                       # parallel-rne.mlir:1164:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 1186 13                       # parallel-rne.mlir:1186:13
	stores.w r16, 0(r13)
	.loc	1 1164 11                       # parallel-rne.mlir:1164:11
	beq r3, zero, .LBB0_823
.LBB0_827:                              # %scalar.ph260
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_824 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	add.ul r[15:16], r[11:12], r[8:9]
	lui r21, 523264
	slli r13, r15, 2
	lui r16, 523264
	.loc	1 1166 19                       # parallel-rne.mlir:1166:19
	add.s r3, r17, r13
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	add.s r15, r2, r13
	.loc	1 1166 19                       # parallel-rne.mlir:1166:19
	loads.w r3, 0(r3)
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	loads.w r22, 0(r15)
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	and r19, r3, r27
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	beq r19, r28, .LBB0_829
# %bb.828:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_829:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	add.s r3, r3, r13
	loads.w r3, 0(r3)
	and r20, r3, r27
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	beq r20, zero, .LBB0_837
# %bb.830:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	bneq r19, zero, .LBB0_838
.LBB0_831:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	beq r20, r28, .LBB0_833
.LBB0_832:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_833:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	setlt.u r3, r28, r19
	lui r19, 523264
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	bneq r3, zero, .LBB0_835
# %bb.834:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_835:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	setlt.u r3, r28, r20
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	bneq r3, zero, .LBB0_826
# %bb.836:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r19, 0
	j .LBB0_826
.LBB0_837:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	lui r22, 523264
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	beq r19, zero, .LBB0_831
.LBB0_838:                              # %scalar.ph260
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	bneq r20, r28, .LBB0_832
	j .LBB0_833
.LBB0_839:                              # %vector.body262.preheader
                                        #   in Loop: Header=BB0_824 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_841
.LBB0_840:                              # %vector.body262
                                        #   in Loop: Header=BB0_841 Depth=3
	.loc	1 1164 11 is_stmt 1             # parallel-rne.mlir:1164:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 1186 13                       # parallel-rne.mlir:1186:13
	add.s r15, r10, r16
	.loc	1 1164 11                       # parallel-rne.mlir:1164:11
	seteq.d r3, r[12:13], r[4:5]
	.loc	1 1186 13                       # parallel-rne.mlir:1186:13
	stores.w r19, 12(r15)
	stores.w r26, 8(r15)
	stores.w r25, 4(r15)
	stores.w r11, 0(r15)
	.loc	1 1164 11                       # parallel-rne.mlir:1164:11
	bneq r3, zero, .LBB0_823
.LBB0_841:                              # %vector.body262
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_824 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	add.ul r[18:19], r[12:13], r[8:9]
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	slli r16, r18, 2
	add.s r20, r3, r16
	.loc	1 1166 19                       # parallel-rne.mlir:1166:19
	add.s r21, r17, r16
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	loads.w r3, 0(r20)
	.loc	1 1166 19                       # parallel-rne.mlir:1166:19
	loads.w r11, 0(r21)
	.loc	1 1172 19                       # parallel-rne.mlir:1172:19
	and r3, r3, r27
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	and r11, r11, r27
	.loc	1 1173 19                       # parallel-rne.mlir:1173:19
	seteq r18, r3, r28
	.loc	1 1177 19                       # parallel-rne.mlir:1177:19
	seteq r25, r3, zero
	.loc	1 1174 19                       # parallel-rne.mlir:1174:19
	seteq r19, r11, zero
	.loc	1 1176 19                       # parallel-rne.mlir:1176:19
	seteq r22, r11, r28
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 1175 19                       # parallel-rne.mlir:1175:19
	and r11, r18, r19
	.loc	1 1178 19                       # parallel-rne.mlir:1178:19
	and r18, r25, r22
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	add.s r22, r2, r16
	lui r19, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	or r11, r11, r18
	.loc	1 1183 19                       # parallel-rne.mlir:1183:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	bneq r3, zero, .LBB0_843
# %bb.842:                              # %vector.body262
                                        #   in Loop: Header=BB0_841 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_843:                              # %vector.body262
                                        #   in Loop: Header=BB0_841 Depth=3
	loads.w r3, 4(r20)
	loads.w r18, 4(r21)
	and r3, r3, r27
	and r18, r18, r27
	seteq r25, r3, r28
	seteq r23, r3, zero
	seteq r15, r18, r28
	seteq r26, r18, zero
	max.u r3, r3, r18
	setlt.u r3, r28, r3
	and r18, r25, r26
	and r15, r23, r15
	lui r25, 523264
	or r15, r18, r15
	or r3, r3, r15
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	bneq r3, zero, .LBB0_845
# %bb.844:                              # %vector.body262
                                        #   in Loop: Header=BB0_841 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r22)
.LBB0_845:                              # %vector.body262
                                        #   in Loop: Header=BB0_841 Depth=3
	loads.w r3, 8(r20)
	loads.w r15, 8(r21)
	and r3, r3, r27
	and r15, r15, r27
	seteq r18, r3, r28
	seteq r26, r3, zero
	seteq r23, r15, zero
	seteq r24, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r18, r23
	and r18, r26, r24
	lui r26, 523264
	or r15, r15, r18
	or r3, r3, r15
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	bneq r3, zero, .LBB0_847
# %bb.846:                              # %vector.body262
                                        #   in Loop: Header=BB0_841 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r22)
.LBB0_847:                              # %vector.body262
                                        #   in Loop: Header=BB0_841 Depth=3
	loads.w r3, 12(r20)
	loads.w r15, 12(r21)
	and r3, r3, r27
	and r15, r15, r27
	seteq r18, r3, r28
	seteq r23, r3, zero
	seteq r20, r15, zero
	seteq r21, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r18, r20
	and r18, r23, r21
	or r15, r15, r18
	or r3, r3, r15
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	bneq r3, zero, .LBB0_840
# %bb.848:                              # %vector.body262
                                        #   in Loop: Header=BB0_841 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 12(r22)
	j .LBB0_840
.LBB0_849:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 1155 7                        # parallel-rne.mlir:1155:7
	mfence { sm }
	.loc	1 1191 7                        # parallel-rne.mlir:1191:7
	addli r8, zero, 4
	beq r3, r8, .LBB0_938
.LBB0_850:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1227 7                        # parallel-rne.mlir:1227:7
	addli r8, zero, 5
	bneq r3, r8, .LBB0_966
.LBB0_851:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	storeli.w r3, -1960(r30)                # 4-byte Folded Spill
	addli r3, zero, 40
	.loc	1 1227 7                        # parallel-rne.mlir:1227:7
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_853
.LBB0_852:                              # %middle.block238
                                        #   in Loop: Header=BB0_853 Depth=2
	.loc	1 1235 9 is_stmt 1              # parallel-rne.mlir:1235:9
	load.d r[8:9], -1992(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1952(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_878
.LBB0_853:                              # %.preheader93
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_870 Depth 3
                                        #       Child Loop BB0_856 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	.loc	1 1236 11 is_stmt 1             # parallel-rne.mlir:1236:11
	store.d r[8:9], -1952(r30)              # 8-byte Folded Spill
	sll.d r[23:24], r[8:9], r3
	loadli.w r3,  -1960(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_868
# %bb.854:                              # %scalar.ph230.preheader
                                        #   in Loop: Header=BB0_853 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_856
.LBB0_855:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	.loc	1 1236 11                       # parallel-rne.mlir:1236:11
	setlt.ul r3, r[11:12], r[6:7]
	.loc	1 1258 13 is_stmt 1             # parallel-rne.mlir:1258:13
	add.s r8, r10, r9
	.loc	1 1236 11                       # parallel-rne.mlir:1236:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 1258 13                       # parallel-rne.mlir:1258:13
	stores.w r13, 0(r8)
	.loc	1 1236 11                       # parallel-rne.mlir:1236:11
	beq r3, zero, .LBB0_852
.LBB0_856:                              # %scalar.ph230
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_853 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	add.ul r[8:9], r[11:12], r[23:24]
	lui r13, 523264
	lui r21, 523264
	slli r9, r8, 2
	.loc	1 1238 19                       # parallel-rne.mlir:1238:19
	add.s r3, r17, r9
	.loc	1 1239 19                       # parallel-rne.mlir:1239:19
	add.s r8, r2, r9
	.loc	1 1238 19                       # parallel-rne.mlir:1238:19
	loads.w r3, 0(r3)
	.loc	1 1239 19                       # parallel-rne.mlir:1239:19
	loads.w r22, 0(r8)
	.loc	1 1242 19                       # parallel-rne.mlir:1242:19
	and r19, r3, r27
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	beq r19, r28, .LBB0_858
# %bb.857:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_858:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	add.s r3, r3, r9
	loads.w r3, 0(r3)
	and r20, r3, r27
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	beq r20, zero, .LBB0_866
# %bb.859:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	bneq r19, zero, .LBB0_867
.LBB0_860:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	beq r20, r28, .LBB0_862
.LBB0_861:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_862:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	setlt.u r3, r28, r19
	lui r19, 523264
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	bneq r3, zero, .LBB0_864
# %bb.863:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_864:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	setlt.u r3, r28, r20
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	bneq r3, zero, .LBB0_855
# %bb.865:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r19, 0
	j .LBB0_855
.LBB0_866:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	lui r22, 523264
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	beq r19, zero, .LBB0_860
.LBB0_867:                              # %scalar.ph230
                                        #   in Loop: Header=BB0_856 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	bneq r20, r28, .LBB0_861
	j .LBB0_862
.LBB0_868:                              # %vector.body232.preheader
                                        #   in Loop: Header=BB0_853 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_870
.LBB0_869:                              # %vector.body232
                                        #   in Loop: Header=BB0_870 Depth=3
	.loc	1 1236 11 is_stmt 1             # parallel-rne.mlir:1236:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 1258 13                       # parallel-rne.mlir:1258:13
	add.s r8, r10, r9
	.loc	1 1236 11                       # parallel-rne.mlir:1236:11
	seteq.d r3, r[12:13], r[4:5]
	.loc	1 1258 13                       # parallel-rne.mlir:1258:13
	stores.w r19, 12(r8)
	stores.w r26, 8(r8)
	stores.w r25, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 1236 11                       # parallel-rne.mlir:1236:11
	bneq r3, zero, .LBB0_852
.LBB0_870:                              # %vector.body232
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_853 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	add.ul r[18:19], r[12:13], r[23:24]
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	slli r9, r18, 2
	add.s r20, r3, r9
	.loc	1 1238 19                       # parallel-rne.mlir:1238:19
	add.s r21, r17, r9
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	loads.w r3, 0(r20)
	.loc	1 1238 19                       # parallel-rne.mlir:1238:19
	loads.w r11, 0(r21)
	.loc	1 1244 19                       # parallel-rne.mlir:1244:19
	and r3, r3, r27
	.loc	1 1242 19                       # parallel-rne.mlir:1242:19
	and r11, r11, r27
	.loc	1 1245 19                       # parallel-rne.mlir:1245:19
	seteq r18, r3, r28
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	seteq r25, r3, zero
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	seteq r19, r11, zero
	.loc	1 1248 19                       # parallel-rne.mlir:1248:19
	seteq r22, r11, r28
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 1247 19                       # parallel-rne.mlir:1247:19
	and r11, r18, r19
	.loc	1 1250 19                       # parallel-rne.mlir:1250:19
	and r18, r25, r22
	.loc	1 1239 19                       # parallel-rne.mlir:1239:19
	add.s r22, r2, r9
	lui r19, 523264
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	or r11, r11, r18
	.loc	1 1255 19                       # parallel-rne.mlir:1255:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	bneq r3, zero, .LBB0_872
# %bb.871:                              # %vector.body232
                                        #   in Loop: Header=BB0_870 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_872:                              # %vector.body232
                                        #   in Loop: Header=BB0_870 Depth=3
	loads.w r3, 4(r20)
	loads.w r18, 4(r21)
	and r3, r3, r27
	and r18, r18, r27
	seteq r25, r3, r28
	seteq r26, r18, zero
	seteq r15, r3, zero
	seteq r8, r18, r28
	max.u r3, r3, r18
	setlt.u r3, r28, r3
	and r16, r25, r26
	and r8, r15, r8
	lui r25, 523264
	or r8, r16, r8
	or r3, r3, r8
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	bneq r3, zero, .LBB0_874
# %bb.873:                              # %vector.body232
                                        #   in Loop: Header=BB0_870 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r22)
.LBB0_874:                              # %vector.body232
                                        #   in Loop: Header=BB0_870 Depth=3
	loads.w r3, 8(r20)
	loads.w r8, 8(r21)
	and r3, r3, r27
	and r8, r8, r27
	seteq r15, r3, r28
	seteq r26, r3, zero
	seteq r16, r8, zero
	seteq r18, r8, r28
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r15, r16
	and r15, r26, r18
	lui r26, 523264
	or r8, r8, r15
	or r3, r3, r8
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	bneq r3, zero, .LBB0_876
# %bb.875:                              # %vector.body232
                                        #   in Loop: Header=BB0_870 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r22)
.LBB0_876:                              # %vector.body232
                                        #   in Loop: Header=BB0_870 Depth=3
	loads.w r3, 12(r20)
	loads.w r8, 12(r21)
	and r3, r3, r27
	and r8, r8, r27
	seteq r15, r3, r28
	seteq r20, r3, zero
	seteq r16, r8, zero
	seteq r18, r8, r28
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r15, r16
	and r15, r20, r18
	or r8, r8, r15
	or r3, r3, r8
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	bneq r3, zero, .LBB0_869
# %bb.877:                              # %vector.body232
                                        #   in Loop: Header=BB0_870 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 12(r22)
	j .LBB0_869
.LBB0_878:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 1227 7                        # parallel-rne.mlir:1227:7
	mfence { sm }
	.loc	1 1263 7                        # parallel-rne.mlir:1263:7
	addli r8, zero, 6
	beq r3, r8, .LBB0_967
.LBB0_879:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1299 7                        # parallel-rne.mlir:1299:7
	addli r8, zero, 7
	beq r3, r8, .LBB0_995
	j .LBB0_1021
.LBB0_880:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	zext_int2long r[8:9], zero
	.loc	1 1047 7 is_stmt 1              # parallel-rne.mlir:1047:7
	storeli.w r3, -2024(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_882
.LBB0_881:                              # %middle.block313
                                        #   in Loop: Header=BB0_882 Depth=2
	.loc	1 1055 9                        # parallel-rne.mlir:1055:9
	load.d r[8:9], -2016(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1952(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_907
.LBB0_882:                              # %.preheader98
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_899 Depth 3
                                        #       Child Loop BB0_885 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -1952(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r3
	.loc	1 1056 11 is_stmt 1             # parallel-rne.mlir:1056:11
	loadli.w r3,  -2024(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_897
# %bb.883:                              # %scalar.ph305.preheader
                                        #   in Loop: Header=BB0_882 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_885
.LBB0_884:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	setlt.ul r3, r[11:12], r[6:7]
	.loc	1 1078 13 is_stmt 1             # parallel-rne.mlir:1078:13
	add.s r13, r10, r13
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 1078 13                       # parallel-rne.mlir:1078:13
	stores.w r16, 0(r13)
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	beq r3, zero, .LBB0_881
.LBB0_885:                              # %scalar.ph305
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_882 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.ul r[15:16], r[11:12], r[8:9]
	lui r21, 523264
	slli r13, r15, 2
	lui r16, 523264
	.loc	1 1058 19                       # parallel-rne.mlir:1058:19
	add.s r3, r17, r13
	.loc	1 1059 19                       # parallel-rne.mlir:1059:19
	add.s r15, r2, r13
	.loc	1 1058 19                       # parallel-rne.mlir:1058:19
	loads.w r3, 0(r3)
	.loc	1 1059 19                       # parallel-rne.mlir:1059:19
	loads.w r22, 0(r15)
	.loc	1 1062 19                       # parallel-rne.mlir:1062:19
	and r19, r3, r27
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	beq r19, r28, .LBB0_887
# %bb.886:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_887:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	add.s r3, r3, r13
	loads.w r3, 0(r3)
	and r20, r3, r27
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	beq r20, zero, .LBB0_895
# %bb.888:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r19, zero, .LBB0_896
.LBB0_889:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	beq r20, r28, .LBB0_891
.LBB0_890:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_891:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	setlt.u r3, r28, r19
	lui r19, 523264
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r3, zero, .LBB0_893
# %bb.892:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_893:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	setlt.u r3, r28, r20
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r3, zero, .LBB0_884
# %bb.894:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r19, 0
	j .LBB0_884
.LBB0_895:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	lui r22, 523264
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	beq r19, zero, .LBB0_889
.LBB0_896:                              # %scalar.ph305
                                        #   in Loop: Header=BB0_885 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r20, r28, .LBB0_890
	j .LBB0_891
.LBB0_897:                              # %vector.body307.preheader
                                        #   in Loop: Header=BB0_882 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_899
.LBB0_898:                              # %vector.body307
                                        #   in Loop: Header=BB0_899 Depth=3
	.loc	1 1056 11 is_stmt 1             # parallel-rne.mlir:1056:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 1078 13                       # parallel-rne.mlir:1078:13
	add.s r15, r10, r16
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	seteq.d r3, r[12:13], r[4:5]
	.loc	1 1078 13                       # parallel-rne.mlir:1078:13
	stores.w r19, 12(r15)
	stores.w r26, 8(r15)
	stores.w r25, 4(r15)
	stores.w r11, 0(r15)
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	bneq r3, zero, .LBB0_881
.LBB0_899:                              # %vector.body307
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_882 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.ul r[18:19], r[12:13], r[8:9]
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	slli r16, r18, 2
	add.s r20, r3, r16
	.loc	1 1058 19                       # parallel-rne.mlir:1058:19
	add.s r21, r17, r16
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	loads.w r3, 0(r20)
	.loc	1 1058 19                       # parallel-rne.mlir:1058:19
	loads.w r11, 0(r21)
	.loc	1 1064 19                       # parallel-rne.mlir:1064:19
	and r3, r3, r27
	.loc	1 1062 19                       # parallel-rne.mlir:1062:19
	and r11, r11, r27
	.loc	1 1065 19                       # parallel-rne.mlir:1065:19
	seteq r18, r3, r28
	.loc	1 1069 19                       # parallel-rne.mlir:1069:19
	seteq r25, r3, zero
	.loc	1 1066 19                       # parallel-rne.mlir:1066:19
	seteq r19, r11, zero
	.loc	1 1068 19                       # parallel-rne.mlir:1068:19
	seteq r22, r11, r28
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 1067 19                       # parallel-rne.mlir:1067:19
	and r11, r18, r19
	.loc	1 1070 19                       # parallel-rne.mlir:1070:19
	and r18, r25, r22
	.loc	1 1059 19                       # parallel-rne.mlir:1059:19
	add.s r22, r2, r16
	lui r19, 523264
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	or r11, r11, r18
	.loc	1 1075 19                       # parallel-rne.mlir:1075:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r3, zero, .LBB0_901
# %bb.900:                              # %vector.body307
                                        #   in Loop: Header=BB0_899 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_901:                              # %vector.body307
                                        #   in Loop: Header=BB0_899 Depth=3
	loads.w r3, 4(r20)
	loads.w r18, 4(r21)
	and r3, r3, r27
	and r18, r18, r27
	seteq r25, r3, r28
	seteq r23, r3, zero
	seteq r15, r18, r28
	seteq r26, r18, zero
	max.u r3, r3, r18
	setlt.u r3, r28, r3
	and r18, r25, r26
	and r15, r23, r15
	lui r25, 523264
	or r15, r18, r15
	or r3, r3, r15
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r3, zero, .LBB0_903
# %bb.902:                              # %vector.body307
                                        #   in Loop: Header=BB0_899 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r22)
.LBB0_903:                              # %vector.body307
                                        #   in Loop: Header=BB0_899 Depth=3
	loads.w r3, 8(r20)
	loads.w r15, 8(r21)
	and r3, r3, r27
	and r15, r15, r27
	seteq r18, r3, r28
	seteq r26, r3, zero
	seteq r23, r15, zero
	seteq r24, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r18, r23
	and r18, r26, r24
	lui r26, 523264
	or r15, r15, r18
	or r3, r3, r15
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r3, zero, .LBB0_905
# %bb.904:                              # %vector.body307
                                        #   in Loop: Header=BB0_899 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r22)
.LBB0_905:                              # %vector.body307
                                        #   in Loop: Header=BB0_899 Depth=3
	loads.w r3, 12(r20)
	loads.w r15, 12(r21)
	and r3, r3, r27
	and r15, r15, r27
	seteq r18, r3, r28
	seteq r23, r3, zero
	seteq r20, r15, zero
	seteq r21, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r18, r20
	and r18, r23, r21
	or r15, r15, r18
	or r3, r3, r15
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	bneq r3, zero, .LBB0_898
# %bb.906:                              # %vector.body307
                                        #   in Loop: Header=BB0_899 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 12(r22)
	j .LBB0_898
.LBB0_907:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 1047 7                        # parallel-rne.mlir:1047:7
	mfence { sm }
	.loc	1 1083 7                        # parallel-rne.mlir:1083:7
	addli r8, zero, 1
	beq r3, r8, .LBB0_793
.LBB0_908:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1119 7                        # parallel-rne.mlir:1119:7
	addli r8, zero, 2
	bneq r3, r8, .LBB0_821
.LBB0_909:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	zext_int2long r[8:9], r8
	storeli.w r3, -1960(r30)                # 4-byte Folded Spill
	.loc	1 1119 7                        # parallel-rne.mlir:1119:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_911
.LBB0_910:                              # %middle.block283
                                        #   in Loop: Header=BB0_911 Depth=2
	.loc	1 1127 9 is_stmt 1              # parallel-rne.mlir:1127:9
	load.d r[8:9], -1968(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1952(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_936
.LBB0_911:                              # %.preheader96
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_928 Depth 3
                                        #       Child Loop BB0_914 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -1952(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r3
	.loc	1 1128 11 is_stmt 1             # parallel-rne.mlir:1128:11
	loadli.w r3,  -1960(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_926
# %bb.912:                              # %scalar.ph275.preheader
                                        #   in Loop: Header=BB0_911 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_914
.LBB0_913:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	.loc	1 1128 11                       # parallel-rne.mlir:1128:11
	setlt.ul r3, r[11:12], r[6:7]
	.loc	1 1150 13 is_stmt 1             # parallel-rne.mlir:1150:13
	add.s r13, r10, r13
	.loc	1 1128 11                       # parallel-rne.mlir:1128:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 1150 13                       # parallel-rne.mlir:1150:13
	stores.w r16, 0(r13)
	.loc	1 1128 11                       # parallel-rne.mlir:1128:11
	beq r3, zero, .LBB0_910
.LBB0_914:                              # %scalar.ph275
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_911 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	add.ul r[15:16], r[11:12], r[8:9]
	lui r21, 523264
	slli r13, r15, 2
	lui r16, 523264
	.loc	1 1130 19                       # parallel-rne.mlir:1130:19
	add.s r3, r17, r13
	.loc	1 1131 19                       # parallel-rne.mlir:1131:19
	add.s r15, r2, r13
	.loc	1 1130 19                       # parallel-rne.mlir:1130:19
	loads.w r3, 0(r3)
	.loc	1 1131 19                       # parallel-rne.mlir:1131:19
	loads.w r22, 0(r15)
	.loc	1 1134 19                       # parallel-rne.mlir:1134:19
	and r19, r3, r27
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	beq r19, r28, .LBB0_916
# %bb.915:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_916:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	add.s r3, r3, r13
	loads.w r3, 0(r3)
	and r20, r3, r27
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	beq r20, zero, .LBB0_924
# %bb.917:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	bneq r19, zero, .LBB0_925
.LBB0_918:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	beq r20, r28, .LBB0_920
.LBB0_919:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_920:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	setlt.u r3, r28, r19
	lui r19, 523264
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	bneq r3, zero, .LBB0_922
# %bb.921:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_922:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	setlt.u r3, r28, r20
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	bneq r3, zero, .LBB0_913
# %bb.923:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r19, 0
	j .LBB0_913
.LBB0_924:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	lui r22, 523264
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	beq r19, zero, .LBB0_918
.LBB0_925:                              # %scalar.ph275
                                        #   in Loop: Header=BB0_914 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	bneq r20, r28, .LBB0_919
	j .LBB0_920
.LBB0_926:                              # %vector.body277.preheader
                                        #   in Loop: Header=BB0_911 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_928
.LBB0_927:                              # %vector.body277
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 1128 11 is_stmt 1             # parallel-rne.mlir:1128:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 1150 13                       # parallel-rne.mlir:1150:13
	add.s r15, r10, r16
	.loc	1 1128 11                       # parallel-rne.mlir:1128:11
	seteq.d r3, r[12:13], r[4:5]
	.loc	1 1150 13                       # parallel-rne.mlir:1150:13
	stores.w r19, 12(r15)
	stores.w r26, 8(r15)
	stores.w r25, 4(r15)
	stores.w r11, 0(r15)
	.loc	1 1128 11                       # parallel-rne.mlir:1128:11
	bneq r3, zero, .LBB0_910
.LBB0_928:                              # %vector.body277
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_911 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	add.ul r[18:19], r[12:13], r[8:9]
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	slli r16, r18, 2
	add.s r20, r3, r16
	.loc	1 1130 19                       # parallel-rne.mlir:1130:19
	add.s r21, r17, r16
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	loads.w r3, 0(r20)
	.loc	1 1130 19                       # parallel-rne.mlir:1130:19
	loads.w r11, 0(r21)
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	and r3, r3, r27
	.loc	1 1134 19                       # parallel-rne.mlir:1134:19
	and r11, r11, r27
	.loc	1 1137 19                       # parallel-rne.mlir:1137:19
	seteq r18, r3, r28
	.loc	1 1141 19                       # parallel-rne.mlir:1141:19
	seteq r25, r3, zero
	.loc	1 1138 19                       # parallel-rne.mlir:1138:19
	seteq r19, r11, zero
	.loc	1 1140 19                       # parallel-rne.mlir:1140:19
	seteq r22, r11, r28
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 1139 19                       # parallel-rne.mlir:1139:19
	and r11, r18, r19
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	and r18, r25, r22
	.loc	1 1131 19                       # parallel-rne.mlir:1131:19
	add.s r22, r2, r16
	lui r19, 523264
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	or r11, r11, r18
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	bneq r3, zero, .LBB0_930
# %bb.929:                              # %vector.body277
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_930:                              # %vector.body277
                                        #   in Loop: Header=BB0_928 Depth=3
	loads.w r3, 4(r20)
	loads.w r18, 4(r21)
	and r3, r3, r27
	and r18, r18, r27
	seteq r25, r3, r28
	seteq r23, r3, zero
	seteq r15, r18, r28
	seteq r26, r18, zero
	max.u r3, r3, r18
	setlt.u r3, r28, r3
	and r18, r25, r26
	and r15, r23, r15
	lui r25, 523264
	or r15, r18, r15
	or r3, r3, r15
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	bneq r3, zero, .LBB0_932
# %bb.931:                              # %vector.body277
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r22)
.LBB0_932:                              # %vector.body277
                                        #   in Loop: Header=BB0_928 Depth=3
	loads.w r3, 8(r20)
	loads.w r15, 8(r21)
	and r3, r3, r27
	and r15, r15, r27
	seteq r18, r3, r28
	seteq r26, r3, zero
	seteq r23, r15, zero
	seteq r24, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r18, r23
	and r18, r26, r24
	lui r26, 523264
	or r15, r15, r18
	or r3, r3, r15
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	bneq r3, zero, .LBB0_934
# %bb.933:                              # %vector.body277
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r22)
.LBB0_934:                              # %vector.body277
                                        #   in Loop: Header=BB0_928 Depth=3
	loads.w r3, 12(r20)
	loads.w r15, 12(r21)
	and r3, r3, r27
	and r15, r15, r27
	seteq r18, r3, r28
	seteq r23, r3, zero
	seteq r20, r15, zero
	seteq r21, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r18, r20
	and r18, r23, r21
	or r15, r15, r18
	or r3, r3, r15
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	bneq r3, zero, .LBB0_927
# %bb.935:                              # %vector.body277
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 12(r22)
	j .LBB0_927
.LBB0_936:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 1119 7                        # parallel-rne.mlir:1119:7
	mfence { sm }
	.loc	1 1155 7                        # parallel-rne.mlir:1155:7
	addli r8, zero, 3
	beq r3, r8, .LBB0_822
.LBB0_937:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1191 7                        # parallel-rne.mlir:1191:7
	addli r8, zero, 4
	bneq r3, r8, .LBB0_850
.LBB0_938:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	storeli.w r3, -1960(r30)                # 4-byte Folded Spill
	addli r3, zero, 32
	.loc	1 1191 7                        # parallel-rne.mlir:1191:7
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_940
.LBB0_939:                              # %middle.block253
                                        #   in Loop: Header=BB0_940 Depth=2
	.loc	1 1199 9 is_stmt 1              # parallel-rne.mlir:1199:9
	load.d r[8:9], -1984(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1952(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_965
.LBB0_940:                              # %.preheader94
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_957 Depth 3
                                        #       Child Loop BB0_943 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	store.d r[8:9], -1952(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r3
	.loc	1 1200 11 is_stmt 1             # parallel-rne.mlir:1200:11
	loadli.w r3,  -1960(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_955
# %bb.941:                              # %scalar.ph245.preheader
                                        #   in Loop: Header=BB0_940 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_943
.LBB0_942:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 1200 11                       # parallel-rne.mlir:1200:11
	setlt.ul r3, r[11:12], r[6:7]
	.loc	1 1222 13 is_stmt 1             # parallel-rne.mlir:1222:13
	add.s r13, r10, r13
	.loc	1 1200 11                       # parallel-rne.mlir:1200:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 1222 13                       # parallel-rne.mlir:1222:13
	stores.w r16, 0(r13)
	.loc	1 1200 11                       # parallel-rne.mlir:1200:11
	beq r3, zero, .LBB0_939
.LBB0_943:                              # %scalar.ph245
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_940 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1201 19                       # parallel-rne.mlir:1201:19
	add.ul r[15:16], r[11:12], r[8:9]
	lui r21, 523264
	slli r13, r15, 2
	lui r16, 523264
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	add.s r3, r17, r13
	.loc	1 1203 19                       # parallel-rne.mlir:1203:19
	add.s r15, r2, r13
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	loads.w r3, 0(r3)
	.loc	1 1203 19                       # parallel-rne.mlir:1203:19
	loads.w r22, 0(r15)
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	and r19, r3, r27
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	beq r19, r28, .LBB0_945
# %bb.944:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_945:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	add.s r3, r3, r13
	loads.w r3, 0(r3)
	and r20, r3, r27
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	beq r20, zero, .LBB0_953
# %bb.946:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	bneq r19, zero, .LBB0_954
.LBB0_947:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	beq r20, r28, .LBB0_949
.LBB0_948:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_949:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	setlt.u r3, r28, r19
	lui r19, 523264
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	bneq r3, zero, .LBB0_951
# %bb.950:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_951:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	setlt.u r3, r28, r20
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	bneq r3, zero, .LBB0_942
# %bb.952:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r19, 0
	j .LBB0_942
.LBB0_953:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	lui r22, 523264
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	beq r19, zero, .LBB0_947
.LBB0_954:                              # %scalar.ph245
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	bneq r20, r28, .LBB0_948
	j .LBB0_949
.LBB0_955:                              # %vector.body247.preheader
                                        #   in Loop: Header=BB0_940 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[12:13], zero
	j .LBB0_957
.LBB0_956:                              # %vector.body247
                                        #   in Loop: Header=BB0_957 Depth=3
	.loc	1 1200 11 is_stmt 1             # parallel-rne.mlir:1200:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 1222 13                       # parallel-rne.mlir:1222:13
	add.s r15, r10, r16
	.loc	1 1200 11                       # parallel-rne.mlir:1200:11
	seteq.d r3, r[12:13], r[4:5]
	.loc	1 1222 13                       # parallel-rne.mlir:1222:13
	stores.w r19, 12(r15)
	stores.w r26, 8(r15)
	stores.w r25, 4(r15)
	stores.w r11, 0(r15)
	.loc	1 1200 11                       # parallel-rne.mlir:1200:11
	bneq r3, zero, .LBB0_939
.LBB0_957:                              # %vector.body247
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_940 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1201 19                       # parallel-rne.mlir:1201:19
	add.ul r[18:19], r[12:13], r[8:9]
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	slli r16, r18, 2
	add.s r20, r3, r16
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	add.s r21, r17, r16
	.loc	1 1201 19                       # parallel-rne.mlir:1201:19
	loads.w r3, 0(r20)
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	loads.w r11, 0(r21)
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	and r3, r3, r27
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	and r11, r11, r27
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	seteq r18, r3, r28
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	seteq r25, r3, zero
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	seteq r19, r11, zero
	.loc	1 1212 19                       # parallel-rne.mlir:1212:19
	seteq r22, r11, r28
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 1211 19                       # parallel-rne.mlir:1211:19
	and r11, r18, r19
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	and r18, r25, r22
	.loc	1 1203 19                       # parallel-rne.mlir:1203:19
	add.s r22, r2, r16
	lui r19, 523264
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	or r11, r11, r18
	.loc	1 1219 19                       # parallel-rne.mlir:1219:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	bneq r3, zero, .LBB0_959
# %bb.958:                              # %vector.body247
                                        #   in Loop: Header=BB0_957 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_959:                              # %vector.body247
                                        #   in Loop: Header=BB0_957 Depth=3
	loads.w r3, 4(r20)
	loads.w r18, 4(r21)
	and r3, r3, r27
	and r18, r18, r27
	seteq r25, r3, r28
	seteq r23, r3, zero
	seteq r15, r18, r28
	seteq r26, r18, zero
	max.u r3, r3, r18
	setlt.u r3, r28, r3
	and r18, r25, r26
	and r15, r23, r15
	lui r25, 523264
	or r15, r18, r15
	or r3, r3, r15
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	bneq r3, zero, .LBB0_961
# %bb.960:                              # %vector.body247
                                        #   in Loop: Header=BB0_957 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r22)
.LBB0_961:                              # %vector.body247
                                        #   in Loop: Header=BB0_957 Depth=3
	loads.w r3, 8(r20)
	loads.w r15, 8(r21)
	and r3, r3, r27
	and r15, r15, r27
	seteq r18, r3, r28
	seteq r26, r3, zero
	seteq r23, r15, zero
	seteq r24, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r18, r23
	and r18, r26, r24
	lui r26, 523264
	or r15, r15, r18
	or r3, r3, r15
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	bneq r3, zero, .LBB0_963
# %bb.962:                              # %vector.body247
                                        #   in Loop: Header=BB0_957 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r22)
.LBB0_963:                              # %vector.body247
                                        #   in Loop: Header=BB0_957 Depth=3
	loads.w r3, 12(r20)
	loads.w r15, 12(r21)
	and r3, r3, r27
	and r15, r15, r27
	seteq r18, r3, r28
	seteq r23, r3, zero
	seteq r20, r15, zero
	seteq r21, r15, r28
	max.u r3, r3, r15
	setlt.u r3, r28, r3
	and r15, r18, r20
	and r18, r23, r21
	or r15, r15, r18
	or r3, r3, r15
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	bneq r3, zero, .LBB0_956
# %bb.964:                              # %vector.body247
                                        #   in Loop: Header=BB0_957 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 12(r22)
	j .LBB0_956
.LBB0_965:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 1191 7                        # parallel-rne.mlir:1191:7
	mfence { sm }
	.loc	1 1227 7                        # parallel-rne.mlir:1227:7
	addli r8, zero, 5
	beq r3, r8, .LBB0_851
.LBB0_966:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1263 7                        # parallel-rne.mlir:1263:7
	addli r8, zero, 6
	bneq r3, r8, .LBB0_879
.LBB0_967:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	storeli.w r3, -1960(r30)                # 4-byte Folded Spill
	addli r3, zero, 48
	.loc	1 1263 7                        # parallel-rne.mlir:1263:7
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_969
.LBB0_968:                              # %middle.block223
                                        #   in Loop: Header=BB0_969 Depth=2
	.loc	1 1271 9 is_stmt 1              # parallel-rne.mlir:1271:9
	load.d r[8:9], -2000(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1952(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_994
.LBB0_969:                              # %.preheader92
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_986 Depth 3
                                        #       Child Loop BB0_972 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	.loc	1 1272 11 is_stmt 1             # parallel-rne.mlir:1272:11
	store.d r[8:9], -1952(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	loadli.w r3,  -1960(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_984
# %bb.970:                              # %scalar.ph215.preheader
                                        #   in Loop: Header=BB0_969 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_972
.LBB0_971:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	.loc	1 1272 11                       # parallel-rne.mlir:1272:11
	setlt.ul r3, r[19:20], r[6:7]
	.loc	1 1294 13 is_stmt 1             # parallel-rne.mlir:1294:13
	add.s r8, r10, r9
	.loc	1 1272 11                       # parallel-rne.mlir:1272:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 1294 13                       # parallel-rne.mlir:1294:13
	stores.w r11, 0(r8)
	.loc	1 1272 11                       # parallel-rne.mlir:1272:11
	beq r3, zero, .LBB0_968
.LBB0_972:                              # %scalar.ph215
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_969 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	add.ul r[8:9], r[19:20], r[15:16]
	lui r11, 523264
	lui r23, 523264
	slli r9, r8, 2
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	add.s r3, r17, r9
	.loc	1 1275 19                       # parallel-rne.mlir:1275:19
	add.s r8, r2, r9
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	loads.w r3, 0(r3)
	.loc	1 1275 19                       # parallel-rne.mlir:1275:19
	loads.w r24, 0(r8)
	.loc	1 1278 19                       # parallel-rne.mlir:1278:19
	and r21, r3, r27
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	beq r21, r28, .LBB0_974
# %bb.973:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r24, 0
.LBB0_974:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	add.s r3, r3, r9
	loads.w r3, 0(r3)
	and r22, r3, r27
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	beq r22, zero, .LBB0_982
# %bb.975:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	lui r24, 523264
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	bneq r21, zero, .LBB0_983
.LBB0_976:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	beq r22, r28, .LBB0_978
.LBB0_977:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r23, 0
.LBB0_978:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	setlt.u r3, r28, r21
	lui r21, 523264
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	bneq r3, zero, .LBB0_980
# %bb.979:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r24, 0
.LBB0_980:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	setlt.u r3, r28, r22
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	bneq r3, zero, .LBB0_971
# %bb.981:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r21, 0
	j .LBB0_971
.LBB0_982:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	lui r24, 523264
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	beq r21, zero, .LBB0_976
.LBB0_983:                              # %scalar.ph215
                                        #   in Loop: Header=BB0_972 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r23, 0
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	bneq r22, r28, .LBB0_977
	j .LBB0_978
.LBB0_984:                              # %vector.body217.preheader
                                        #   in Loop: Header=BB0_969 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[23:24], zero
	j .LBB0_986
.LBB0_985:                              # %vector.body217
                                        #   in Loop: Header=BB0_986 Depth=3
	.loc	1 1272 11 is_stmt 1             # parallel-rne.mlir:1272:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 1294 13                       # parallel-rne.mlir:1294:13
	add.s r8, r10, r9
	.loc	1 1272 11                       # parallel-rne.mlir:1272:11
	seteq.d r3, r[23:24], r[4:5]
	.loc	1 1294 13                       # parallel-rne.mlir:1294:13
	stores.w r19, 12(r8)
	stores.w r26, 8(r8)
	stores.w r25, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 1272 11                       # parallel-rne.mlir:1272:11
	bneq r3, zero, .LBB0_968
.LBB0_986:                              # %vector.body217
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_969 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	add.ul r[18:19], r[23:24], r[15:16]
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	slli r9, r18, 2
	add.s r20, r3, r9
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	add.s r21, r17, r9
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	loads.w r3, 0(r20)
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	loads.w r11, 0(r21)
	.loc	1 1280 19                       # parallel-rne.mlir:1280:19
	and r3, r3, r27
	.loc	1 1278 19                       # parallel-rne.mlir:1278:19
	and r11, r11, r27
	.loc	1 1281 19                       # parallel-rne.mlir:1281:19
	seteq r18, r3, r28
	.loc	1 1285 19                       # parallel-rne.mlir:1285:19
	seteq r25, r3, zero
	.loc	1 1282 19                       # parallel-rne.mlir:1282:19
	seteq r19, r11, zero
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	seteq r22, r11, r28
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 1283 19                       # parallel-rne.mlir:1283:19
	and r11, r18, r19
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	and r18, r25, r22
	.loc	1 1275 19                       # parallel-rne.mlir:1275:19
	add.s r22, r2, r9
	lui r19, 523264
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	or r11, r11, r18
	.loc	1 1291 19                       # parallel-rne.mlir:1291:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	bneq r3, zero, .LBB0_988
# %bb.987:                              # %vector.body217
                                        #   in Loop: Header=BB0_986 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_988:                              # %vector.body217
                                        #   in Loop: Header=BB0_986 Depth=3
	loads.w r3, 4(r20)
	loads.w r18, 4(r21)
	and r3, r3, r27
	and r18, r18, r27
	seteq r25, r3, r28
	seteq r26, r18, zero
	seteq r12, r3, zero
	seteq r8, r18, r28
	max.u r3, r3, r18
	setlt.u r3, r28, r3
	and r13, r25, r26
	and r8, r12, r8
	lui r25, 523264
	or r8, r13, r8
	or r3, r3, r8
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	bneq r3, zero, .LBB0_990
# %bb.989:                              # %vector.body217
                                        #   in Loop: Header=BB0_986 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r22)
.LBB0_990:                              # %vector.body217
                                        #   in Loop: Header=BB0_986 Depth=3
	loads.w r3, 8(r20)
	loads.w r8, 8(r21)
	and r3, r3, r27
	and r8, r8, r27
	seteq r12, r3, r28
	seteq r26, r3, zero
	seteq r13, r8, zero
	seteq r18, r8, r28
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r12, r13
	and r12, r26, r18
	lui r26, 523264
	or r8, r8, r12
	or r3, r3, r8
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	bneq r3, zero, .LBB0_992
# %bb.991:                              # %vector.body217
                                        #   in Loop: Header=BB0_986 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r22)
.LBB0_992:                              # %vector.body217
                                        #   in Loop: Header=BB0_986 Depth=3
	loads.w r3, 12(r20)
	loads.w r8, 12(r21)
	and r3, r3, r27
	and r8, r8, r27
	seteq r12, r3, r28
	seteq r20, r3, zero
	seteq r13, r8, zero
	seteq r18, r8, r28
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r12, r13
	and r12, r20, r18
	or r8, r8, r12
	or r3, r3, r8
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	bneq r3, zero, .LBB0_985
# %bb.993:                              # %vector.body217
                                        #   in Loop: Header=BB0_986 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 12(r22)
	j .LBB0_985
.LBB0_994:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 1263 7                        # parallel-rne.mlir:1263:7
	mfence { sm }
	.loc	1 1299 7                        # parallel-rne.mlir:1299:7
	addli r8, zero, 7
	bneq r3, r8, .LBB0_1021
.LBB0_995:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -2032(r30)                # 4-byte Folded Reload
	loadli.w r8,  -2036(r30)                # 4-byte Folded Reload
	min.u r3, r3, r8
	addli r8, zero, 16
	setlt.u r3, r3, r8
	storeli.w r3, -1960(r30)                # 4-byte Folded Spill
	addli r3, zero, 56
	.loc	1 1299 7                        # parallel-rne.mlir:1299:7
	xfence
	zext_int2long r[8:9], r3
	mfence { lm, sm, gm }
	j .LBB0_997
.LBB0_996:                              # %middle.block
                                        #   in Loop: Header=BB0_997 Depth=2
	.loc	1 1307 9 is_stmt 1              # parallel-rne.mlir:1307:9
	load.d r[8:9], -2008(r30)               # 8-byte Folded Reload
	load.d r[11:12], -1952(r30)             # 8-byte Folded Reload
	setlt.ul r3, r[11:12], r[8:9]
	addli.d r[8:9], r[11:12], 1
	beq r3, zero, .LBB0_1020
.LBB0_997:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1012 Depth 3
                                        #       Child Loop BB0_999 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[19:20], zero
	.loc	1 1308 11 is_stmt 1             # parallel-rne.mlir:1308:11
	store.d r[8:9], -1952(r30)              # 8-byte Folded Spill
	sll.d r[15:16], r[8:9], r3
	loadli.w r3,  -1960(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_999
	j .LBB0_1012
.LBB0_998:                              # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	setlt.ul r3, r[19:20], r[6:7]
	.loc	1 1330 13                       # parallel-rne.mlir:1330:13
	add.s r8, r10, r9
	.loc	1 1308 11                       # parallel-rne.mlir:1308:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 1330 13                       # parallel-rne.mlir:1330:13
	stores.w r11, 0(r8)
	.loc	1 1308 11                       # parallel-rne.mlir:1308:11
	beq r3, zero, .LBB0_996
.LBB0_999:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_997 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1309 19                       # parallel-rne.mlir:1309:19
	add.ul r[8:9], r[19:20], r[15:16]
	lui r11, 523264
	lui r23, 523264
	slli r9, r8, 2
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	add.s r3, r17, r9
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	add.s r8, r2, r9
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	loads.w r3, 0(r3)
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	loads.w r24, 0(r8)
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	and r21, r3, r27
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	beq r21, r28, .LBB0_1001
# %bb.1000:                             # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r24, 0
.LBB0_1001:                             # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	add.s r3, r3, r9
	loads.w r3, 0(r3)
	and r22, r3, r27
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	beq r22, zero, .LBB0_1009
# %bb.1002:                             # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	lui r24, 523264
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	bneq r21, zero, .LBB0_1010
.LBB0_1003:                             # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	beq r22, r28, .LBB0_1005
.LBB0_1004:                             # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r23, 0
.LBB0_1005:                             # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	setlt.u r3, r28, r21
	lui r21, 523264
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	bneq r3, zero, .LBB0_1007
# %bb.1006:                             # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r24, 0
.LBB0_1007:                             # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	setlt.u r3, r28, r22
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	bneq r3, zero, .LBB0_998
# %bb.1008:                             # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r21, 0
	j .LBB0_998
.LBB0_1009:                             # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	lui r24, 523264
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	beq r21, zero, .LBB0_1003
.LBB0_1010:                             # %scalar.ph
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r23, 0
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	bneq r22, r28, .LBB0_1004
	j .LBB0_1005
.LBB0_1011:                             # %vector.body
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 1308 11 is_stmt 1             # parallel-rne.mlir:1308:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1330 13                       # parallel-rne.mlir:1330:13
	add.s r8, r10, r9
	.loc	1 1308 11                       # parallel-rne.mlir:1308:11
	seteq.d r3, r[19:20], r[4:5]
	.loc	1 1330 13                       # parallel-rne.mlir:1330:13
	stores.w r21, 12(r8)
	stores.w r26, 8(r8)
	stores.w r25, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 1308 11                       # parallel-rne.mlir:1308:11
	bneq r3, zero, .LBB0_996
.LBB0_1012:                             # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_997 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1309 19                       # parallel-rne.mlir:1309:19
	add.ul r[21:22], r[19:20], r[15:16]
	loadli.w r3,  -1944(r30)                # 4-byte Folded Reload
	slli r9, r21, 2
	add.s r22, r3, r9
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	add.s r23, r17, r9
	.loc	1 1309 19                       # parallel-rne.mlir:1309:19
	loads.w r3, 0(r22)
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	loads.w r11, 0(r23)
	.loc	1 1316 19                       # parallel-rne.mlir:1316:19
	and r3, r3, r27
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	and r11, r11, r27
	.loc	1 1317 19                       # parallel-rne.mlir:1317:19
	seteq r18, r3, r28
	.loc	1 1321 19                       # parallel-rne.mlir:1321:19
	seteq r25, r3, zero
	.loc	1 1318 19                       # parallel-rne.mlir:1318:19
	seteq r21, r11, zero
	.loc	1 1320 19                       # parallel-rne.mlir:1320:19
	seteq r24, r11, r28
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	max.u r3, r3, r11
	setlt.u r3, r28, r3
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	and r11, r18, r21
	.loc	1 1322 19                       # parallel-rne.mlir:1322:19
	and r18, r25, r24
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	add.s r24, r2, r9
	lui r21, 523264
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	or r11, r11, r18
	.loc	1 1327 19                       # parallel-rne.mlir:1327:19
	or r3, r3, r11
	lui r11, 523264
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	bneq r3, zero, .LBB0_1014
# %bb.1013:                             # %vector.body
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r24)
.LBB0_1014:                             # %vector.body
                                        #   in Loop: Header=BB0_1012 Depth=3
	loads.w r3, 4(r22)
	loads.w r18, 4(r23)
	and r3, r3, r27
	and r18, r18, r27
	seteq r25, r3, r28
	seteq r26, r18, zero
	seteq r12, r3, zero
	seteq r8, r18, r28
	max.u r3, r3, r18
	setlt.u r3, r28, r3
	and r13, r25, r26
	and r8, r12, r8
	lui r25, 523264
	or r8, r13, r8
	or r3, r3, r8
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	bneq r3, zero, .LBB0_1016
# %bb.1015:                             # %vector.body
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r24)
.LBB0_1016:                             # %vector.body
                                        #   in Loop: Header=BB0_1012 Depth=3
	loads.w r3, 8(r22)
	loads.w r8, 8(r23)
	and r3, r3, r27
	and r8, r8, r27
	seteq r12, r3, r28
	seteq r26, r3, zero
	seteq r13, r8, zero
	seteq r18, r8, r28
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r12, r13
	and r12, r26, r18
	lui r26, 523264
	or r8, r8, r12
	or r3, r3, r8
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	bneq r3, zero, .LBB0_1018
# %bb.1017:                             # %vector.body
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r24)
.LBB0_1018:                             # %vector.body
                                        #   in Loop: Header=BB0_1012 Depth=3
	loads.w r3, 12(r22)
	loads.w r8, 12(r23)
	and r3, r3, r27
	and r8, r8, r27
	seteq r12, r3, r28
	seteq r22, r3, zero
	seteq r13, r8, zero
	seteq r18, r8, r28
	max.u r3, r3, r8
	setlt.u r3, r28, r3
	and r8, r12, r13
	and r12, r22, r18
	or r8, r8, r12
	or r3, r3, r8
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	bneq r3, zero, .LBB0_1011
# %bb.1019:                             # %vector.body
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 12(r24)
	j .LBB0_1011
.LBB0_1020:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 1299 7                        # parallel-rne.mlir:1299:7
	mfence { sm }
.LBB0_1021:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1335 7                        # parallel-rne.mlir:1335:7
	addli r2, zero, 255
	addli r12, zero, 3
	csr_set csr5, r2
	sync_core
	.loc	1 1336 7                        # parallel-rne.mlir:1336:7
	beq r3, r12, .LBB0_5
# %bb.1022:                             # %.critedge32
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r11, zero, 64
	.loc	1 1347 7 is_stmt 1              # parallel-rne.mlir:1347:7
	bneq r3, zero, .LBB0_7
# %bb.1023:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -2076(r30)                # 4-byte Folded Reload
	zext_int2long r[4:5], r11
	.loc	1 1347 7                        # parallel-rne.mlir:1347:7
	addli r15, r30, -2072
	addli r13, zero, 17
	load.d r[8:9], 0(r15)                   # 8-byte Folded Reload
	xwait r13, 0
	load.d r[15:16], 24(r30)
	sext_int2long r[2:3], r2
	min.sl r[6:7], r[2:3], r[4:5]
	sll.d r[8:9], r[8:9], r13
	addli r13, r30, -2064
	addli.d r[6:7], r[6:7], 64
	add.ul r[8:9], r[15:16], r[8:9]
	max.sl r[6:7], r[6:7], r[2:3]
	sub.sl r[2:3], r[6:7], r[2:3]
	load.d r[6:7], 0(r13)                   # 8-byte Folded Reload
	.loc	1 1343 13 is_stmt 1             # parallel-rne.mlir:1343:13
	min.sl r[2:3], r[2:3], r[4:5]
	addli r5, zero, 5
	addli r4, zero, 1
	.loc	1 1347 7                        # parallel-rne.mlir:1347:7
	add.ul r[6:7], r[8:9], r[6:7]
	lock zero, r5
	dma_cfg r4, zero, zero, 0
	dma_cfg zero, r4, zero, 1
	addli r4, r30, -2088
	load.d r[8:9], 0(r4)                    # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r4, r8, 2
	dma_cfg r6, r10, r4, 3
	addli r4, zero, 512
	addli r6, zero, 2048
	dma_cfg r6, r4, r2, 4
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r3
	.loc	1 1347 7                        # parallel-rne.mlir:1347:7
	addli r2, zero, 18
	dma_run zero
	unlock r5
	j .LBB0_6
.LBB0_1024:                             # %._crit_edge
	.loc	1 1349 5                        # parallel-rne.mlir:1349:5
	xsignal zero, 0
	bneq r3, zero, .LBB0_1026
# %bb.1025:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1349 5                        # parallel-rne.mlir:1349:5
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
.LBB0_1026:
	.loc	1 1350 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1350:5
	addli sp, sp, 2144
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
	.long	2208                            # 0x8a0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-n7rygmdd" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
