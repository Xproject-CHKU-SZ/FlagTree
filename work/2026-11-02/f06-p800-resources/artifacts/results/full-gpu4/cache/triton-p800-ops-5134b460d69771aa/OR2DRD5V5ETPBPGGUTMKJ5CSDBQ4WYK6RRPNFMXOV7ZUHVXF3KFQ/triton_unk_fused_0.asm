	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-7b3wwzh7" "gelu-lut-refined.mlir"
	.loc	1 7 0                           # gelu-lut-refined.mlir:7:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2640
	addli r2, zero, 1
.Ltmp0:
	.loc	1 26 5 prologue_end             # gelu-lut-refined.mlir:26:5
	core_id r1
	core_id r28
	addli r30, sp, 2576
	xsignal_mode_cfg r2
	beq r1, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	lui r3, 1048575
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
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
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	load_param_i r5, 1
	loadli.w r4,  48(r30)
	lui r6, 1048575
	storeli.w zero, -16(r30)
	storeli.w zero, -32(r30)
	storeli.w zero, -48(r30)
	storeli.w zero, -64(r30)
	storeli.w zero, -556(r30)
	storeli.w zero, -1200(r30)
	storeli.w zero, -1696(r30)
	storeli.w zero, -2468(r30)
	ori r6, r6, 4095
	mul.s r2, r3, r2
	addli r3, r5, 0
	storeli.w r6, -12(r30)
	storeli.w r6, -8(r30)
	storeli.w r6, -4(r30)
	storeli.w r6, -28(r30)
	storeli.w r6, -24(r30)
	storeli.w r6, -20(r30)
	storeli.w r6, -44(r30)
	storeli.w r6, -40(r30)
	storeli.w r6, -36(r30)
	storeli.w r6, -60(r30)
	storeli.w r6, -56(r30)
	storeli.w r6, -52(r30)
	storeli.w r6, -552(r30)
	storeli.w r6, -548(r30)
	storeli.w r6, -544(r30)
	storeli.w r6, -540(r30)
	storeli.w r6, -536(r30)
	storeli.w r6, -532(r30)
	storeli.w r6, -528(r30)
	storeli.w r6, -524(r30)
	storeli.w r6, -520(r30)
	storeli.w r6, -516(r30)
	storeli.w r6, -512(r30)
	storeli.w r6, -508(r30)
	storeli.w r6, -504(r30)
	storeli.w r6, -500(r30)
	storeli.w r6, -496(r30)
	storeli.w r6, -492(r30)
	storeli.w r6, -488(r30)
	storeli.w r6, -484(r30)
	storeli.w r6, -480(r30)
	storeli.w r6, -476(r30)
	storeli.w r6, -472(r30)
	storeli.w r6, -468(r30)
	storeli.w r6, -464(r30)
	storeli.w r6, -460(r30)
	storeli.w r6, -456(r30)
	storeli.w r6, -452(r30)
	storeli.w r6, -448(r30)
	storeli.w r6, -444(r30)
	storeli.w r6, -440(r30)
	storeli.w r6, -436(r30)
	storeli.w r6, -432(r30)
	storeli.w r6, -428(r30)
	storeli.w r6, -424(r30)
	storeli.w r6, -420(r30)
	storeli.w r6, -416(r30)
	storeli.w r6, -412(r30)
	storeli.w r6, -408(r30)
	storeli.w r6, -404(r30)
	storeli.w r6, -400(r30)
	storeli.w r6, -396(r30)
	storeli.w r6, -392(r30)
	storeli.w r6, -388(r30)
	storeli.w r6, -384(r30)
	storeli.w r6, -380(r30)
	storeli.w r6, -376(r30)
	storeli.w r6, -372(r30)
	storeli.w r6, -368(r30)
	storeli.w r6, -364(r30)
	storeli.w r6, -360(r30)
	storeli.w r6, -356(r30)
	storeli.w r6, -352(r30)
	storeli.w r6, -348(r30)
	storeli.w r6, -344(r30)
	storeli.w r6, -340(r30)
	storeli.w r6, -336(r30)
	storeli.w r6, -332(r30)
	storeli.w r6, -328(r30)
	storeli.w r6, -324(r30)
	storeli.w r6, -320(r30)
	storeli.w r6, -316(r30)
	storeli.w r6, -312(r30)
	storeli.w r6, -308(r30)
	storeli.w r6, -304(r30)
	storeli.w r6, -300(r30)
	storeli.w r6, -296(r30)
	storeli.w r6, -292(r30)
	storeli.w r6, -288(r30)
	storeli.w r6, -284(r30)
	storeli.w r6, -280(r30)
	storeli.w r6, -276(r30)
	storeli.w r6, -272(r30)
	storeli.w r6, -268(r30)
	storeli.w r6, -264(r30)
	storeli.w r6, -260(r30)
	storeli.w r6, -256(r30)
	storeli.w r6, -252(r30)
	storeli.w r6, -248(r30)
	storeli.w r6, -244(r30)
	storeli.w r6, -240(r30)
	storeli.w r6, -236(r30)
	storeli.w r6, -232(r30)
	storeli.w r6, -228(r30)
	storeli.w r6, -224(r30)
	storeli.w r6, -220(r30)
	storeli.w r6, -216(r30)
	storeli.w r6, -212(r30)
	storeli.w r6, -208(r30)
	storeli.w r6, -204(r30)
	storeli.w r6, -200(r30)
	storeli.w r6, -196(r30)
	storeli.w r6, -192(r30)
	storeli.w r6, -188(r30)
	storeli.w r6, -184(r30)
	storeli.w r6, -180(r30)
	storeli.w r6, -176(r30)
	storeli.w r6, -172(r30)
	storeli.w r6, -168(r30)
	storeli.w r6, -164(r30)
	storeli.w r6, -160(r30)
	storeli.w r6, -156(r30)
	storeli.w r6, -152(r30)
	storeli.w r6, -148(r30)
	storeli.w r6, -144(r30)
	storeli.w r6, -140(r30)
	storeli.w r6, -136(r30)
	storeli.w r6, -132(r30)
	storeli.w r6, -128(r30)
	storeli.w r6, -124(r30)
	storeli.w r6, -120(r30)
	storeli.w r6, -116(r30)
	storeli.w r6, -112(r30)
	storeli.w r6, -108(r30)
	storeli.w r6, -104(r30)
	storeli.w r6, -100(r30)
	storeli.w r6, -96(r30)
	storeli.w r6, -92(r30)
	storeli.w r6, -88(r30)
	storeli.w r6, -84(r30)
	storeli.w r6, -80(r30)
	storeli.w r6, -76(r30)
	storeli.w r6, -72(r30)
	storeli.w r6, -68(r30)
	storeli.w r6, -1196(r30)
	storeli.w r6, -1192(r30)
	storeli.w r6, -1188(r30)
	storeli.w r6, -1184(r30)
	storeli.w r6, -1180(r30)
	storeli.w r6, -1176(r30)
	storeli.w r6, -1172(r30)
	storeli.w r6, -1168(r30)
	storeli.w r6, -1164(r30)
	storeli.w r6, -1160(r30)
	storeli.w r6, -1156(r30)
	storeli.w r6, -1152(r30)
	storeli.w r6, -1148(r30)
	storeli.w r6, -1144(r30)
	storeli.w r6, -1140(r30)
	storeli.w r6, -1136(r30)
	storeli.w r6, -1132(r30)
	storeli.w r6, -1128(r30)
	storeli.w r6, -1124(r30)
	storeli.w r6, -1120(r30)
	storeli.w r6, -1116(r30)
	storeli.w r6, -1112(r30)
	storeli.w r6, -1108(r30)
	storeli.w r6, -1104(r30)
	storeli.w r6, -1100(r30)
	storeli.w r6, -1096(r30)
	storeli.w r6, -1092(r30)
	storeli.w r6, -1088(r30)
	storeli.w r6, -1084(r30)
	storeli.w r6, -1080(r30)
	storeli.w r6, -1076(r30)
	storeli.w r6, -1072(r30)
	storeli.w r6, -1068(r30)
	storeli.w r6, -1064(r30)
	storeli.w r6, -1060(r30)
	storeli.w r6, -1056(r30)
	storeli.w r6, -1052(r30)
	storeli.w r6, -1048(r30)
	storeli.w r6, -1044(r30)
	storeli.w r6, -1040(r30)
	storeli.w r6, -1036(r30)
	storeli.w r6, -1032(r30)
	storeli.w r6, -1028(r30)
	storeli.w r6, -1024(r30)
	storeli.w r6, -1020(r30)
	storeli.w r6, -1016(r30)
	storeli.w r6, -1012(r30)
	storeli.w r6, -1008(r30)
	storeli.w r6, -1004(r30)
	storeli.w r6, -1000(r30)
	storeli.w r6, -996(r30)
	storeli.w r6, -992(r30)
	storeli.w r6, -988(r30)
	storeli.w r6, -984(r30)
	storeli.w r6, -980(r30)
	storeli.w r6, -976(r30)
	storeli.w r6, -972(r30)
	storeli.w r6, -968(r30)
	storeli.w r6, -964(r30)
	storeli.w r6, -960(r30)
	storeli.w r6, -956(r30)
	storeli.w r6, -952(r30)
	storeli.w r6, -948(r30)
	storeli.w r6, -944(r30)
	storeli.w r6, -940(r30)
	storeli.w r6, -936(r30)
	storeli.w r6, -932(r30)
	storeli.w r6, -928(r30)
	storeli.w r6, -924(r30)
	storeli.w r6, -920(r30)
	storeli.w r6, -916(r30)
	storeli.w r6, -912(r30)
	storeli.w r6, -908(r30)
	storeli.w r6, -904(r30)
	storeli.w r6, -900(r30)
	storeli.w r6, -896(r30)
	storeli.w r6, -892(r30)
	storeli.w r6, -888(r30)
	storeli.w r6, -884(r30)
	storeli.w r6, -880(r30)
	storeli.w r6, -876(r30)
	storeli.w r6, -872(r30)
	storeli.w r6, -868(r30)
	storeli.w r6, -864(r30)
	storeli.w r6, -860(r30)
	storeli.w r6, -856(r30)
	storeli.w r6, -852(r30)
	storeli.w r6, -848(r30)
	storeli.w r6, -844(r30)
	storeli.w r6, -840(r30)
	storeli.w r6, -836(r30)
	storeli.w r6, -832(r30)
	storeli.w r6, -828(r30)
	storeli.w r6, -824(r30)
	storeli.w r6, -820(r30)
	storeli.w r6, -816(r30)
	storeli.w r6, -812(r30)
	storeli.w r6, -808(r30)
	storeli.w r6, -804(r30)
	storeli.w r6, -800(r30)
	storeli.w r6, -796(r30)
	storeli.w r6, -792(r30)
	storeli.w r6, -788(r30)
	storeli.w r6, -784(r30)
	storeli.w r6, -780(r30)
	storeli.w r6, -776(r30)
	storeli.w r6, -772(r30)
	storeli.w r6, -768(r30)
	storeli.w r6, -764(r30)
	storeli.w r6, -760(r30)
	storeli.w r6, -756(r30)
	storeli.w r6, -752(r30)
	storeli.w r6, -748(r30)
	storeli.w r6, -744(r30)
	storeli.w r6, -1460(r30)
	storeli.w r6, -1464(r30)
	storeli.w r6, -1468(r30)
	storeli.w r6, -1472(r30)
	storeli.w r6, -1476(r30)
	storeli.w r6, -1480(r30)
	storeli.w r6, -1484(r30)
	storeli.w r6, -1488(r30)
	storeli.w r6, -1492(r30)
	storeli.w r6, -1496(r30)
	storeli.w r6, -1500(r30)
	storeli.w r6, -1504(r30)
	storeli.w r6, -1508(r30)
	storeli.w r6, -1512(r30)
	storeli.w r6, -1516(r30)
	storeli.w r6, -1520(r30)
	storeli.w r6, -1524(r30)
	storeli.w r6, -1528(r30)
	storeli.w r6, -1532(r30)
	storeli.w r6, -1536(r30)
	storeli.w r6, -1540(r30)
	storeli.w r6, -1544(r30)
	storeli.w r6, -1548(r30)
	storeli.w r6, -1552(r30)
	storeli.w r6, -1556(r30)
	storeli.w r6, -1560(r30)
	storeli.w r6, -1564(r30)
	storeli.w r6, -1568(r30)
	storeli.w r6, -1572(r30)
	storeli.w r6, -1576(r30)
	storeli.w r6, -1580(r30)
	storeli.w r6, -1584(r30)
	storeli.w r6, -1588(r30)
	storeli.w r6, -1592(r30)
	storeli.w r6, -1596(r30)
	storeli.w r6, -1600(r30)
	storeli.w r6, -1604(r30)
	storeli.w r6, -1608(r30)
	storeli.w r6, -1612(r30)
	storeli.w r6, -1616(r30)
	storeli.w r6, -1620(r30)
	storeli.w r6, -1624(r30)
	storeli.w r6, -1628(r30)
	storeli.w r6, -1632(r30)
	storeli.w r6, -1636(r30)
	storeli.w r6, -1640(r30)
	storeli.w r6, -1644(r30)
	storeli.w r6, -1648(r30)
	storeli.w r6, -1652(r30)
	storeli.w r6, -1656(r30)
	storeli.w r6, -1660(r30)
	storeli.w r6, -1664(r30)
	storeli.w r6, -1668(r30)
	storeli.w r6, -1672(r30)
	storeli.w r6, -1676(r30)
	storeli.w r6, -1680(r30)
	storeli.w r6, -1684(r30)
	storeli.w r6, -1688(r30)
	storeli.w r6, -1692(r30)
	storeli.w r6, -560(r30)
	storeli.w r6, -564(r30)
	storeli.w r6, -568(r30)
	storeli.w r6, -572(r30)
	storeli.w r6, -576(r30)
	storeli.w r6, -580(r30)
	storeli.w r6, -584(r30)
	storeli.w r6, -588(r30)
	storeli.w r6, -592(r30)
	storeli.w r6, -596(r30)
	storeli.w r6, -600(r30)
	storeli.w r6, -604(r30)
	storeli.w r6, -608(r30)
	storeli.w r6, -612(r30)
	storeli.w r6, -616(r30)
	storeli.w r6, -620(r30)
	storeli.w r6, -624(r30)
	storeli.w r6, -628(r30)
	storeli.w r6, -632(r30)
	storeli.w r6, -636(r30)
	storeli.w r6, -640(r30)
	storeli.w r6, -644(r30)
	storeli.w r6, -648(r30)
	storeli.w r6, -652(r30)
	storeli.w r6, -656(r30)
	storeli.w r6, -660(r30)
	storeli.w r6, -664(r30)
	storeli.w r6, -668(r30)
	storeli.w r6, -672(r30)
	storeli.w r6, -676(r30)
	storeli.w r6, -680(r30)
	storeli.w r6, -684(r30)
	storeli.w r6, -688(r30)
	storeli.w r6, -692(r30)
	storeli.w r6, -696(r30)
	storeli.w r6, -700(r30)
	storeli.w r6, -704(r30)
	storeli.w r6, -708(r30)
	storeli.w r6, -712(r30)
	storeli.w r6, -716(r30)
	storeli.w r6, -720(r30)
	storeli.w r6, -724(r30)
	storeli.w r6, -728(r30)
	storeli.w r6, -732(r30)
	storeli.w r6, -736(r30)
	storeli.w r6, -740(r30)
	storeli.w r6, -1456(r30)
	storeli.w r6, -1452(r30)
	storeli.w r6, -1448(r30)
	storeli.w r6, -1444(r30)
	storeli.w r6, -1440(r30)
	storeli.w r6, -1436(r30)
	storeli.w r6, -1432(r30)
	storeli.w r6, -1428(r30)
	storeli.w r6, -1424(r30)
	storeli.w r6, -1420(r30)
	storeli.w r6, -1416(r30)
	storeli.w r6, -1412(r30)
	storeli.w r6, -1408(r30)
	storeli.w r6, -1404(r30)
	storeli.w r6, -1400(r30)
	storeli.w r6, -1396(r30)
	storeli.w r6, -1392(r30)
	storeli.w r6, -1388(r30)
	storeli.w r6, -1384(r30)
	storeli.w r6, -1380(r30)
	storeli.w r6, -1376(r30)
	storeli.w r6, -1372(r30)
	storeli.w r6, -1368(r30)
	storeli.w r6, -1364(r30)
	storeli.w r6, -1360(r30)
	storeli.w r6, -1356(r30)
	storeli.w r6, -1352(r30)
	storeli.w r6, -1348(r30)
	storeli.w r6, -1344(r30)
	storeli.w r6, -1340(r30)
	storeli.w r6, -1336(r30)
	storeli.w r6, -1332(r30)
	storeli.w r6, -1328(r30)
	storeli.w r6, -1324(r30)
	storeli.w r6, -1320(r30)
	storeli.w r6, -1316(r30)
	storeli.w r6, -1312(r30)
	storeli.w r6, -1308(r30)
	storeli.w r6, -1304(r30)
	storeli.w r6, -1300(r30)
	storeli.w r6, -1296(r30)
	storeli.w r6, -1292(r30)
	storeli.w r6, -1288(r30)
	storeli.w r6, -1284(r30)
	storeli.w r6, -1280(r30)
	storeli.w r6, -1276(r30)
	storeli.w r6, -1272(r30)
	storeli.w r6, -1268(r30)
	storeli.w r6, -1264(r30)
	storeli.w r6, -1260(r30)
	storeli.w r6, -1256(r30)
	storeli.w r6, -1252(r30)
	storeli.w r6, -1248(r30)
	storeli.w r6, -1244(r30)
	storeli.w r6, -1240(r30)
	storeli.w r6, -1236(r30)
	storeli.w r6, -1232(r30)
	storeli.w r6, -1228(r30)
	storeli.w r6, -1224(r30)
	storeli.w r6, -1220(r30)
	storeli.w r6, -1216(r30)
	storeli.w r6, -1212(r30)
	storeli.w r6, -1208(r30)
	storeli.w r6, -1204(r30)
	storeli.w r6, -2464(r30)
	storeli.w r6, -2460(r30)
	storeli.w r6, -2456(r30)
	storeli.w r6, -2452(r30)
	storeli.w r6, -2448(r30)
	storeli.w r6, -2444(r30)
	storeli.w r6, -2440(r30)
	storeli.w r6, -2436(r30)
	storeli.w r6, -2432(r30)
	storeli.w r6, -2428(r30)
	storeli.w r6, -2424(r30)
	storeli.w r6, -2420(r30)
	storeli.w r6, -2416(r30)
	storeli.w r6, -2412(r30)
	storeli.w r6, -2408(r30)
	storeli.w r6, -2404(r30)
	storeli.w r6, -2400(r30)
	storeli.w r6, -2396(r30)
	storeli.w r6, -2392(r30)
	storeli.w r6, -2388(r30)
	storeli.w r6, -2384(r30)
	storeli.w r6, -2380(r30)
	storeli.w r6, -2376(r30)
	storeli.w r6, -2372(r30)
	storeli.w r6, -2368(r30)
	storeli.w r6, -2364(r30)
	storeli.w r6, -2360(r30)
	storeli.w r6, -2356(r30)
	storeli.w r6, -2352(r30)
	storeli.w r6, -2348(r30)
	storeli.w r6, -2344(r30)
	storeli.w r6, -2340(r30)
	storeli.w r6, -2336(r30)
	storeli.w r6, -2332(r30)
	storeli.w r6, -2328(r30)
	storeli.w r6, -2324(r30)
	storeli.w r6, -2320(r30)
	storeli.w r6, -2316(r30)
	storeli.w r6, -2312(r30)
	storeli.w r6, -2308(r30)
	storeli.w r6, -2304(r30)
	storeli.w r6, -2300(r30)
	storeli.w r6, -2296(r30)
	storeli.w r6, -2292(r30)
	storeli.w r6, -2288(r30)
	storeli.w r6, -2284(r30)
	storeli.w r6, -2280(r30)
	storeli.w r6, -2276(r30)
	storeli.w r6, -2272(r30)
	storeli.w r6, -2268(r30)
	storeli.w r6, -2264(r30)
	storeli.w r6, -2260(r30)
	storeli.w r6, -2256(r30)
	storeli.w r6, -2252(r30)
	storeli.w r6, -2248(r30)
	storeli.w r6, -2244(r30)
	storeli.w r6, -2240(r30)
	storeli.w r6, -2236(r30)
	storeli.w r6, -2232(r30)
	storeli.w r6, -2228(r30)
	storeli.w r6, -2224(r30)
	storeli.w r6, -2220(r30)
	storeli.w r6, -2216(r30)
	storeli.w r6, -2212(r30)
	storeli.w r6, -2208(r30)
	storeli.w r6, -2204(r30)
	storeli.w r6, -2200(r30)
	storeli.w r6, -2196(r30)
	storeli.w r6, -2192(r30)
	storeli.w r6, -2188(r30)
	storeli.w r6, -2184(r30)
	storeli.w r6, -2180(r30)
	storeli.w r6, -2176(r30)
	storeli.w r6, -2172(r30)
	storeli.w r6, -2168(r30)
	storeli.w r6, -2164(r30)
	storeli.w r6, -2160(r30)
	storeli.w r6, -2156(r30)
	storeli.w r6, -2152(r30)
	storeli.w r6, -2148(r30)
	storeli.w r6, -2144(r30)
	storeli.w r6, -2140(r30)
	storeli.w r6, -2136(r30)
	storeli.w r6, -2132(r30)
	storeli.w r6, -2128(r30)
	storeli.w r6, -2124(r30)
	storeli.w r6, -2120(r30)
	storeli.w r6, -2116(r30)
	storeli.w r6, -2112(r30)
	storeli.w r6, -2108(r30)
	storeli.w r6, -2104(r30)
	storeli.w r6, -2100(r30)
	storeli.w r6, -2096(r30)
	storeli.w r6, -2092(r30)
	storeli.w r6, -2088(r30)
	storeli.w r6, -2084(r30)
	storeli.w r6, -2080(r30)
	storeli.w r6, -2076(r30)
	storeli.w r6, -2072(r30)
	storeli.w r6, -2068(r30)
	storeli.w r6, -2064(r30)
	storeli.w r6, -2060(r30)
	storeli.w r6, -2056(r30)
	storeli.w r6, -2052(r30)
	storeli.w r6, -2048(r30)
	storeli.w r6, -2044(r30)
	storeli.w r6, -2040(r30)
	storeli.w r6, -2036(r30)
	storeli.w r6, -2032(r30)
	storeli.w r6, -2028(r30)
	storeli.w r6, -2024(r30)
	storeli.w r6, -2020(r30)
	storeli.w r6, -2016(r30)
	storeli.w r6, -2012(r30)
	storeli.w r6, -2008(r30)
	storeli.w r6, -2004(r30)
	storeli.w r6, -2000(r30)
	storeli.w r6, -1996(r30)
	storeli.w r6, -1992(r30)
	storeli.w r6, -1988(r30)
	storeli.w r6, -1984(r30)
	storeli.w r6, -1980(r30)
	storeli.w r6, -1976(r30)
	storeli.w r6, -1972(r30)
	storeli.w r6, -1968(r30)
	storeli.w r6, -1964(r30)
	storeli.w r6, -1960(r30)
	storeli.w r6, -1956(r30)
	storeli.w r6, -1952(r30)
	storeli.w r6, -1948(r30)
	storeli.w r6, -1944(r30)
	storeli.w r6, -1940(r30)
	storeli.w r6, -1936(r30)
	storeli.w r6, -1932(r30)
	storeli.w r6, -1928(r30)
	storeli.w r6, -1924(r30)
	storeli.w r6, -1920(r30)
	storeli.w r6, -1916(r30)
	storeli.w r6, -1912(r30)
	storeli.w r6, -1908(r30)
	storeli.w r6, -1904(r30)
	storeli.w r6, -1900(r30)
	storeli.w r6, -1896(r30)
	storeli.w r6, -1892(r30)
	storeli.w r6, -1888(r30)
	storeli.w r6, -1884(r30)
	storeli.w r6, -1880(r30)
	storeli.w r6, -1876(r30)
	storeli.w r6, -1872(r30)
	storeli.w r6, -1868(r30)
	storeli.w r6, -1864(r30)
	storeli.w r6, -1860(r30)
	storeli.w r6, -1856(r30)
	storeli.w r6, -1852(r30)
	storeli.w r6, -1848(r30)
	storeli.w r6, -1844(r30)
	storeli.w r6, -1840(r30)
	storeli.w r6, -1836(r30)
	storeli.w r6, -1832(r30)
	storeli.w r6, -1828(r30)
	storeli.w r6, -1824(r30)
	storeli.w r6, -1820(r30)
	storeli.w r6, -1816(r30)
	storeli.w r6, -1812(r30)
	storeli.w r6, -1808(r30)
	storeli.w r6, -1804(r30)
	storeli.w r6, -1800(r30)
	storeli.w r6, -1796(r30)
	storeli.w r6, -1792(r30)
	storeli.w r6, -1788(r30)
	storeli.w r6, -1784(r30)
	storeli.w r6, -1780(r30)
	storeli.w r6, -1776(r30)
	storeli.w r6, -1772(r30)
	storeli.w r6, -1768(r30)
	storeli.w r6, -1764(r30)
	storeli.w r6, -1760(r30)
	storeli.w r6, -1756(r30)
	storeli.w r6, -1752(r30)
	storeli.w r6, -1748(r30)
	storeli.w r6, -1744(r30)
	storeli.w r6, -1740(r30)
	storeli.w r6, -1736(r30)
	storeli.w r6, -1732(r30)
	storeli.w r6, -1728(r30)
	storeli.w r6, -1724(r30)
	storeli.w r6, -1720(r30)
	storeli.w r6, -1716(r30)
	storeli.w r6, -1712(r30)
	storeli.w r6, -1708(r30)
	storeli.w r6, -1704(r30)
	storeli.w r6, -1700(r30)
	fmac.s r3, r2, r4
	mul.s r2, r2, r4
	addli r3, r3, -1
	div.s r3, r3, r5
	load_param_i r5, 0
	mul.s r4, r3, r5
	fmac.s r3, r3, r5
	min.s r5, r3, r2
	ble.s r5, r4, .LBB0_45
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r5
	addli r1, r30, -2552
	lui r5, 385
	sext_int2long r[7:8], r4
	loadli.w r11,  -16(r30)
	loadli.w r12,  -32(r30)
	loadli.w r17,  -48(r30)
	loadli.w r20,  -64(r30)
	loadli.w r4,  -556(r30)
	loadli.w r13,  -1200(r30)
	loadli.w r6,  -2468(r30)
	addli r14, zero, 32
	addli r22, zero, 1
	addli r18, zero, 3
	addli r19, zero, 4
	addli r21, zero, 2
	addli r23, zero, 192
	addli r24, zero, 123
	lui r25, 6
	addli r15, zero, 256
	storeli.w zero, -2484(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r1)                   # 8-byte Folded Spill
	lui r3, 379
	loadli.w r2,  -1696(r30)
	ori r1, r3, 768
	lui r3, 216
	storeli.w r1, -2556(r30)                # 4-byte Folded Spill
	ori r1, r3, 2893
	lui r3, 1046527
	storeli.w r1, -2560(r30)                # 4-byte Folded Spill
	ori r1, r5, 768
	lui r5, 522239
	storeli.w r1, -2564(r30)                # 4-byte Folded Spill
	ori r1, r3, 4095
	storeli.w r1, -2568(r30)                # 4-byte Folded Spill
	ori r1, r5, 4095
	storeli.w r1, -2572(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.thread68
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 106 5 is_stmt 1               # gelu-lut-refined.mlir:106:5
	addli r3, r30, -2528
	load.d r[1:2], 16(r30)
	slli r7, r10, 2
	addli r18, zero, 3
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
	core_id r28
	addli r22, zero, 1
	.loc	1 106 5                         # gelu-lut-refined.mlir:106:5
	load.d r[26:27], 0(r3)                  # 8-byte Folded Reload
	add.ul r[2:3], r[1:2], r[26:27]
	addli r1, zero, 13
	xwait r1, 0
	lock zero, r19
	addli r1, zero, 12
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg r6, r2, r7, 3
	dma_cfg r15, r15, r8, 4
	dma_run zero
	unlock r19
	loadli.w r17,  -2496(r30)               # 4-byte Folded Reload
	xsignal r1, 0
	loadli.w r11,  -2488(r30)               # 4-byte Folded Reload
	loadli.w r12,  -2492(r30)               # 4-byte Folded Reload
	.loc	1 107 16                        # gelu-lut-refined.mlir:107:16
	addli r17, r17, 1
.LBB0_6:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	addli r1, r30, -2512
	addli r20, r20, 1
	addli r6, r9, 1
	.loc	1 109 16 is_stmt 1              # gelu-lut-refined.mlir:109:16
	addli r12, r12, 1
	.loc	1 111 16                        # gelu-lut-refined.mlir:111:16
	addli r11, r11, 1
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2552
	load.d r[2:3], 0(r1)                    # 8-byte Folded Reload
	addli.d r[7:8], r[7:8], 1
	setlt.sl r3, r[7:8], r[2:3]
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	addli r2, r16, 1
	beq r3, zero, .LBB0_44
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	addli r1, zero, 6
	storeli.w r20, -2500(r30)               # 4-byte Folded Spill
	storeli.w r17, -2496(r30)               # 4-byte Folded Spill
	storeli.w r12, -2492(r30)               # 4-byte Folded Spill
	storeli.w r11, -2488(r30)               # 4-byte Folded Spill
	.loc	1 48 5 is_stmt 1                # gelu-lut-refined.mlir:48:5
	bneq r28, r19, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r3, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r3,  48(r30)
	addli r5, r30, -2512
	addli r12, zero, 0
	addli r20, zero, 1
	store.d r[7:8], 0(r5)                   # 8-byte Folded Spill
	loadli.w r5,  -2484(r30)                # 4-byte Folded Reload
	div.s r7, r7, r3
	loadli.w r3,  44(r30)
	mod.s r10, r5, r18
	addli r5, r5, 1
	storeli.w r5, -2484(r30)                # 4-byte Folded Spill
	addli r5, r30, -2536
	div.s r7, r7, r3
	addli r3, zero, 8
	div.s r8, r7, r14
	slli r9, r8, 3
	slli r8, r8, 5
	sub.s r11, r22, r9
	sub.s r8, r7, r8
	min.s r11, r11, r3
	mod.s r16, r7, r11
	div.s r8, r8, r11
	slli r7, r10, 13
	slli r3, r8, 6
	add.s r9, r9, r16
	zext_int2long r[10:11], r8
	storeli.w r3, -2516(r30)                # 4-byte Folded Spill
	slli r3, r9, 5
	sll.d r[10:11], r[10:11], r1
	zext_int2long r[8:9], r9
	storeli.w r3, -2540(r30)                # 4-byte Folded Spill
	addli r3, zero, 13
	.loc	1 48 5                          # gelu-lut-refined.mlir:48:5
	sll.d r[16:17], r[10:11], r21
	load.d r[10:11], 8(r30)
	store.d r[8:9], 0(r5)                   # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r3
	addli r3, r30, -2528
	add.ul r[10:11], r[10:11], r[16:17]
	store.d r[16:17], 0(r3)                 # 8-byte Folded Spill
	addli r3, r30, -2480
	store.d r[10:11], 0(r3)                 # 8-byte Folded Spill
	load.d r[10:11], 0(r30)
	add.ul r[10:11], r[10:11], r[8:9]
	addli r8, zero, 0
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 70 7 is_stmt 1                # gelu-lut-refined.mlir:70:7
	addli r3, zero, 5
	xwait r21, 0
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
	core_id r5
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	xwait r3, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r14, zero, 1
	ds_cfg r14, zero, 14
	ds_cfg r14, zero, 13
	shuffle_batch r17, r28, r14, 1
	unlock zero
	xsignal r18, 0
	xsignal r19, 0
.LBB0_11:                               # %.thread14
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 79 19                         # gelu-lut-refined.mlir:79:19
	addli r13, r13, 1
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r4, r4, 1
	.loc	1 48 5                          # gelu-lut-refined.mlir:48:5
	andi r3, r20, 1
	bneq r3, zero, .LBB0_20
	j .LBB0_27
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 49 13                         # gelu-lut-refined.mlir:49:13
	add.s r16, r2, r8
	add.s r9, r6, r8
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
	core_id r3
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	mod.s r17, r16, r24
	.loc	1 64 19                         # gelu-lut-refined.mlir:64:19
	mod.s r26, r9, r23
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	slli r27, r17, 12
	.loc	1 64 19                         # gelu-lut-refined.mlir:64:19
	slli r17, r26, 12
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	add.s r28, r27, r25
	.loc	1 69 7                          # gelu-lut-refined.mlir:69:7
	beq r3, r21, .LBB0_10
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	zext_int2long r[26:27], r12
	.loc	1 69 7                          # gelu-lut-refined.mlir:69:7
	bneq r3, r22, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	addli r3, zero, 7
	xwait r18, 0
	lock zero, r19
	.loc	1 26 5 is_stmt 1                # gelu-lut-refined.mlir:26:5
	core_id r5
	.loc	1 69 7                          # gelu-lut-refined.mlir:69:7
	dma_cfg zero, zero, zero, 0
	sll.d r[26:27], r[26:27], r3
	addli r3, zero, 128
	add.ul r[26:27], r[10:11], r[26:27]
	dma_cfg zero, r27, zero, 2
	dma_cfg r28, r26, r3, 3
	dma_cfg r3, r15, r14, 4
	dma_run zero
	unlock r19
	xsignal r21, 0
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	j .LBB0_11
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r3, zero, 122
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
	core_id r5
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	mod.s r12, r4, r3
	.loc	1 79 19                         # gelu-lut-refined.mlir:79:19
	addli r3, zero, 160
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r4, r4, 1
	.loc	1 79 19                         # gelu-lut-refined.mlir:79:19
	mod.s r28, r13, r3
	addli r13, r13, 1
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	slli r3, r12, 13
	.loc	1 79 19                         # gelu-lut-refined.mlir:79:19
	slli r12, r28, 13
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	lui r28, 129
	add.s r28, r3, r28
	.loc	1 84 7                          # gelu-lut-refined.mlir:84:7
	addli r3, zero, 7
	beq r5, r3, .LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 7 is_stmt 0                 # gelu-lut-refined.mlir:0:7
	addli r3, zero, 6
	.loc	1 84 7                          # gelu-lut-refined.mlir:84:7
	bneq r5, r3, .LBB0_21
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=2
	addli r1, zero, 15
	addli r12, zero, 1024
	addli r15, zero, 256
	sll.d r[26:27], r[26:27], r1
	addli r1, zero, 7
	xwait r1, 0
	addli r1, r30, -2480
	load.d r[24:25], 0(r1)                  # 8-byte Folded Reload
	lock zero, r19
	addli r1, zero, 256
	dma_cfg zero, zero, zero, 0
	add.ul r[26:27], r[24:25], r[26:27]
	lui r25, 6
	addli r24, zero, 123
	dma_cfg zero, r27, zero, 2
	dma_cfg r28, r26, r1, 3
	dma_cfg r1, r12, r14, 4
	dma_run zero
	unlock r19
	addli r1, zero, 6
	j .LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 85 7 is_stmt 1                # gelu-lut-refined.mlir:85:7
	addli r3, zero, 9
	xwait r1, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 64
	ds_cfg r21, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r14, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 7
	shuffle_coa r12, r28, r14, 2
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
.LBB0_19:                               # %.thread16
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	xsignal r3, 0
	.loc	1 48 5 is_stmt 1                # gelu-lut-refined.mlir:48:5
	andi r3, r20, 1
	beq r3, zero, .LBB0_27
.LBB0_20:                               # %.backedge
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 88 13                         # gelu-lut-refined.mlir:88:13
	addli r8, r8, 1
	addli r12, zero, 1
	addli r20, zero, 0
	.loc	1 49 13                         # gelu-lut-refined.mlir:49:13
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 13 is_stmt 0                # gelu-lut-refined.mlir:0:13
	addli r1, zero, 6
	.loc	1 87 7 is_stmt 1                # gelu-lut-refined.mlir:87:7
	bneq r5, r19, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_12 Depth=2
	addli r3, zero, 8
	xwait r19, 0
	xwait r3, 0
	addli r3, zero, 1
	lock zero, r3
	addli r3, zero, 64
	mm_cfg r3, r14, r14, 0
	addli r3, zero, 1
	mm_cfg r21, r21, r3, 2
	beq r8, zero, .LBB0_25
# %bb.23:                               # %.preheader17
                                        #   in Loop: Header=BB0_12 Depth=2
	mm_acc r7, r17, r12, 8
	j .LBB0_26
.LBB0_24:                               # %.thread16.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 48 5                          # gelu-lut-refined.mlir:48:5
	andi r3, r20, 1
	bneq r3, zero, .LBB0_20
	j .LBB0_29
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 87 7                          # gelu-lut-refined.mlir:87:7
	mm r7, r17, r12, 8
.LBB0_26:                               # %.thread16.thread66
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r5, zero, 5
	unlock r3
	addli r22, zero, 1
	.loc	1 48 5                          # gelu-lut-refined.mlir:48:5
	andi r3, r20, 1
	.loc	1 87 7                          # gelu-lut-refined.mlir:87:7
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r5, 0
	bneq r3, zero, .LBB0_20
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 48 5                          # gelu-lut-refined.mlir:48:5
	bneq r5, r19, .LBB0_29
.LBB0_28:                               # %.thread67
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_29:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 97 11                         # gelu-lut-refined.mlir:97:11
	loadli.w r1,  -2516(r30)                # 4-byte Folded Reload
	loadli.w r20,  -2500(r30)               # 4-byte Folded Reload
	addli r5, zero, 3
	zext_int2long r[10:11], r23
	addli r8, zero, 1
	zext_int2long r[2:3], r1
	.loc	1 103 16                        # gelu-lut-refined.mlir:103:16
	mod.s r6, r20, r5
	addli r1, zero, 64
	.loc	1 99 11                         # gelu-lut-refined.mlir:99:11
	min.ul r[10:11], r[2:3], r[10:11]
	zext_int2long r[26:27], r1
	lui r1, 373
	addli.d r[10:11], r[10:11], 64
	.loc	1 101 11                        # gelu-lut-refined.mlir:101:11
	max.ul r[10:11], r[10:11], r[2:3]
	.loc	1 103 16                        # gelu-lut-refined.mlir:103:16
	slli r6, r6, 8
	.loc	1 101 11                        # gelu-lut-refined.mlir:101:11
	sub.sl r[2:3], r[10:11], r[2:3]
	.loc	1 103 16                        # gelu-lut-refined.mlir:103:16
	add.s r6, r6, r1
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
	core_id r1
	.loc	1 102 11                        # gelu-lut-refined.mlir:102:11
	min.ul r[10:11], r[2:3], r[26:27]
	.loc	1 106 5                         # gelu-lut-refined.mlir:106:5
	beq r1, r8, .LBB0_5
# %bb.30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r17,  -2496(r30)               # 4-byte Folded Reload
	lui r3, 373
	loadli.w r12,  -2492(r30)               # 4-byte Folded Reload
	addli r22, zero, 1
	ori r3, r3, 768
	.loc	1 107 16 is_stmt 1              # gelu-lut-refined.mlir:107:16
	mod.s r2, r17, r5
	addli r17, r17, 1
	slli r2, r2, 13
	add.s r2, r2, r3
	.loc	1 108 5                         # gelu-lut-refined.mlir:108:5
	bneq r1, r5, .LBB0_35
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	addli r18, zero, 3
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
	core_id r28
	addli r8, zero, 0
	.loc	1 108 5                         # gelu-lut-refined.mlir:108:5
	xwait r1, 0
	addli r1, zero, 12
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	lock zero, r21
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 63
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 8192
	ew_cfg r22, zero, zero, 3
.LBB0_32:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r2, r8
	add.s r10, r7, r8
	addli r8, r8, 256
	dsmadd r3, r10, r6, 0
	bneq r8, r1, .LBB0_32
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	unlock r21
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 17
	xsignal r1, 0
	addli r1, zero, 14
.LBB0_34:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	xsignal r1, 0
	j .LBB0_42
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 109 16 is_stmt 1              # gelu-lut-refined.mlir:109:16
	mod.s r3, r12, r5
	loadli.w r1,  -2556(r30)                # 4-byte Folded Reload
	slli r3, r3, 13
	add.s r6, r3, r1
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
	core_id r1
	.loc	1 110 5                         # gelu-lut-refined.mlir:110:5
	addli r3, zero, 5
	bneq r1, r3, .LBB0_41
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	addli r5, zero, 1
	addli r3, zero, 3
	lui r7, 790528
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
	core_id r28
	addli r8, zero, 0
	addli r18, zero, 3
	addli r22, zero, 1
	.loc	1 110 5                         # gelu-lut-refined.mlir:110:5
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r21
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 13
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, zero, 19
	ew_cfg r1, zero, zero, 10
	loadli.w r1,  -2560(r30)                # 4-byte Folded Reload
	ew_cfg r21, r5, r1, 11
	lui r1, 266232
	ew_cfg zero, zero, r3, 13
	loadli.w r11,  -2488(r30)               # 4-byte Folded Reload
	ew_cfg r7, r19, r1, 14
	lui r1, 260096
	ew_cfg zero, r1, zero, 15
	.loc	1 111 16                        # gelu-lut-refined.mlir:111:16
	mod.s r3, r11, r3
	.loc	1 110 5                         # gelu-lut-refined.mlir:110:5
	sslut r6, r2, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r21
	.loc	1 111 16                        # gelu-lut-refined.mlir:111:16
	loadli.w r1,  -2564(r30)                # 4-byte Folded Reload
	slli r3, r3, 13
	add.s r7, r3, r1
	.loc	1 112 5                         # gelu-lut-refined.mlir:112:5
	addli r1, zero, 16
	xwait r1, 0
	addli r1, zero, 20
	xwait r1, 0
	lock zero, r21
	addli r1, zero, 63
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r5, zero, zero, 3
	loadli.w r1,  -2568(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 8192
.LBB0_37:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r7, r8
	add.s r10, r2, r8
	addli r8, r8, 256
	dscmpnsel r3, r10, r10, 0
	bneq r8, r1, .LBB0_37
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	unlock r21
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	addli r1, zero, 63
	addli r8, zero, 0
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r22, zero, zero, 3
	loadli.w r1,  -2572(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 8192
.LBB0_39:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r7, r8
	addli r8, r8, 256
	dscmpnsel r3, r3, r3, 4
	bneq r8, r1, .LBB0_39
# %bb.40:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	addli r1, zero, 17
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	unlock r21
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	lui r3, 784384
	addli r5, zero, 20
	xwait r1, 0
	lock zero, r21
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r3, zero, 0
	addli r3, zero, 1023
	ew_cfg zero, r3, zero, 2
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, r21, 19
	dsmadd r2, r2, r7, 0
	ew_cfg zero, zero, zero, 19
	unlock r21
	xsignal r5, 0
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 15
	ew_cfg zero, r3, zero, 2
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, r21, 19
	dsmadd r6, r6, r2, 0
	ew_cfg zero, zero, zero, 19
	unlock r21
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	j .LBB0_6
.LBB0_41:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r18, zero, 3
	.loc	1 26 5 is_stmt 1                # gelu-lut-refined.mlir:26:5
	core_id r28
	.loc	1 123 5                         # gelu-lut-refined.mlir:123:5
	beq r1, zero, .LBB0_43
.LBB0_42:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r11,  -2488(r30)               # 4-byte Folded Reload
	j .LBB0_6
.LBB0_43:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r1,  -2540(r30)                # 4-byte Folded Reload
	zext_int2long r[7:8], zero
	.loc	1 123 5                         # gelu-lut-refined.mlir:123:5
	addli r5, r30, -2536
	load.d r[26:27], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 1024
	sext_int2long r[2:3], r1
	addli r1, zero, 15
	min.sl r[7:8], r[2:3], r[7:8]
	sll.d r[26:27], r[26:27], r1
	addli r1, r30, -2480
	addli.d r[7:8], r[7:8], 32
	max.sl r[7:8], r[7:8], r[2:3]
	store.d r[7:8], 0(r1)                   # 8-byte Folded Spill
	load.d r[7:8], 24(r30)
	add.ul r[26:27], r[7:8], r[26:27]
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	sub.sl r[1:2], r[7:8], r[2:3]
	addli r3, r30, -2480
	zext_int2long r[7:8], r14
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r3, r30, -2528
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	.loc	1 119 11 is_stmt 1              # gelu-lut-refined.mlir:119:11
	addli r3, r30, -2480
	.loc	1 123 5                         # gelu-lut-refined.mlir:123:5
	add.ul r[26:27], r[26:27], r[1:2]
	.loc	1 119 11                        # gelu-lut-refined.mlir:119:11
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	min.sl r[2:3], r[1:2], r[7:8]
	.loc	1 123 5                         # gelu-lut-refined.mlir:123:5
	addli r1, zero, 18
	slli r7, r10, 2
	xwait r1, 0
	addli r1, zero, 5
	lock zero, r1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r22, zero, 1
	dma_cfg r27, zero, zero, 2
	dma_cfg r26, r6, r7, 3
	dma_cfg r5, r15, r2, 4
	dma_run zero
	unlock r1
	addli r1, zero, 19
	j .LBB0_34
.LBB0_44:                               # %._crit_edge.loopexit
	.loc	1 79 19                         # gelu-lut-refined.mlir:79:19
	storeli.w r13, -1200(r30)
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	storeli.w r4, -556(r30)
.LBB0_45:                               # %._crit_edge
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	xsignal zero, 0
	bneq r28, zero, .LBB0_47
# %bb.46:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r1, zero, 2
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
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
.LBB0_47:
	.loc	1 124 5 epilogue_begin          # gelu-lut-refined.mlir:124:5
	addli sp, sp, 2576
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
	.long	2640                            # 0xa50
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-7b3wwzh7" # string offset=29
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
