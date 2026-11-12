	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-jxwi8y8a" "gelu-lut-refined.mlir"
	.loc	1 8 0                           # gelu-lut-refined.mlir:8:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2856
	addli r2, zero, 1
.Ltmp0:
	.loc	1 29 5 prologue_end             # gelu-lut-refined.mlir:29:5
	core_id r1
	addli r30, sp, 2792
	xsignal_mode_cfg r2
	beq r1, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	lui r3, 1048575
	.loc	1 29 5                          # gelu-lut-refined.mlir:29:5
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
	.loc	1 29 5                          # gelu-lut-refined.mlir:29:5
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	addli r2, zero, 13
	addli r3, zero, 15
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r2, zero, 19
	addli r3, zero, 20
	xsignal r2, 0
	xsignal r2, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	.loc	1 0 5                           # gelu-lut-refined.mlir:0:5
	loadli.w r2,  40(r30)
	loadli.w r3,  44(r30)
	load_param_i r5, 1
	loadli.w r4,  48(r30)
	lui r6, 1048575
	storeli.w zero, -12(r30)
	storeli.w zero, -24(r30)
	storeli.w zero, -36(r30)
	storeli.w zero, -48(r30)
	storeli.w zero, -532(r30)
	storeli.w zero, -1176(r30)
	storeli.w zero, -1656(r30)
	storeli.w zero, -2680(r30)
	ori r6, r6, 4095
	mul.s r2, r3, r2
	addli r3, r5, 0
	storeli.w r6, -8(r30)
	storeli.w r6, -4(r30)
	storeli.w r6, -20(r30)
	storeli.w r6, -16(r30)
	storeli.w r6, -32(r30)
	storeli.w r6, -28(r30)
	storeli.w r6, -44(r30)
	storeli.w r6, -40(r30)
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
	storeli.w r6, -64(r30)
	storeli.w r6, -60(r30)
	storeli.w r6, -56(r30)
	storeli.w r6, -52(r30)
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
	storeli.w r6, -740(r30)
	storeli.w r6, -736(r30)
	storeli.w r6, -732(r30)
	storeli.w r6, -728(r30)
	storeli.w r6, -724(r30)
	storeli.w r6, -720(r30)
	storeli.w r6, -716(r30)
	storeli.w r6, -712(r30)
	storeli.w r6, -708(r30)
	storeli.w r6, -704(r30)
	storeli.w r6, -700(r30)
	storeli.w r6, -696(r30)
	storeli.w r6, -1184(r30)
	storeli.w r6, -1188(r30)
	storeli.w r6, -1192(r30)
	storeli.w r6, -1196(r30)
	storeli.w r6, -1200(r30)
	storeli.w r6, -1204(r30)
	storeli.w r6, -1208(r30)
	storeli.w r6, -1212(r30)
	storeli.w r6, -1216(r30)
	storeli.w r6, -1220(r30)
	storeli.w r6, -1224(r30)
	storeli.w r6, -1228(r30)
	storeli.w r6, -1232(r30)
	storeli.w r6, -1236(r30)
	storeli.w r6, -1240(r30)
	storeli.w r6, -1244(r30)
	storeli.w r6, -1248(r30)
	storeli.w r6, -1252(r30)
	storeli.w r6, -1256(r30)
	storeli.w r6, -1260(r30)
	storeli.w r6, -1264(r30)
	storeli.w r6, -1268(r30)
	storeli.w r6, -1272(r30)
	storeli.w r6, -1276(r30)
	storeli.w r6, -1280(r30)
	storeli.w r6, -1284(r30)
	storeli.w r6, -1288(r30)
	storeli.w r6, -1292(r30)
	storeli.w r6, -1296(r30)
	storeli.w r6, -1300(r30)
	storeli.w r6, -1304(r30)
	storeli.w r6, -1308(r30)
	storeli.w r6, -1312(r30)
	storeli.w r6, -1316(r30)
	storeli.w r6, -1320(r30)
	storeli.w r6, -1324(r30)
	storeli.w r6, -1328(r30)
	storeli.w r6, -1332(r30)
	storeli.w r6, -1336(r30)
	storeli.w r6, -1340(r30)
	storeli.w r6, -1344(r30)
	storeli.w r6, -1348(r30)
	storeli.w r6, -1352(r30)
	storeli.w r6, -1356(r30)
	storeli.w r6, -1360(r30)
	storeli.w r6, -1364(r30)
	storeli.w r6, -1368(r30)
	storeli.w r6, -1372(r30)
	storeli.w r6, -1376(r30)
	storeli.w r6, -1380(r30)
	storeli.w r6, -1384(r30)
	storeli.w r6, -1388(r30)
	storeli.w r6, -1392(r30)
	storeli.w r6, -1396(r30)
	storeli.w r6, -1400(r30)
	storeli.w r6, -1404(r30)
	storeli.w r6, -1408(r30)
	storeli.w r6, -1412(r30)
	storeli.w r6, -1416(r30)
	storeli.w r6, -1420(r30)
	storeli.w r6, -1424(r30)
	storeli.w r6, -1428(r30)
	storeli.w r6, -1432(r30)
	storeli.w r6, -1436(r30)
	storeli.w r6, -1440(r30)
	storeli.w r6, -1444(r30)
	storeli.w r6, -1448(r30)
	storeli.w r6, -1452(r30)
	storeli.w r6, -1456(r30)
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
	storeli.w r6, -536(r30)
	storeli.w r6, -540(r30)
	storeli.w r6, -544(r30)
	storeli.w r6, -548(r30)
	storeli.w r6, -552(r30)
	storeli.w r6, -556(r30)
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
	storeli.w r6, -1180(r30)
	storeli.w r6, -2676(r30)
	storeli.w r6, -2672(r30)
	storeli.w r6, -2668(r30)
	storeli.w r6, -2664(r30)
	storeli.w r6, -2660(r30)
	storeli.w r6, -2656(r30)
	storeli.w r6, -2652(r30)
	storeli.w r6, -2648(r30)
	storeli.w r6, -2644(r30)
	storeli.w r6, -2640(r30)
	storeli.w r6, -2636(r30)
	storeli.w r6, -2632(r30)
	storeli.w r6, -2628(r30)
	storeli.w r6, -2624(r30)
	storeli.w r6, -2620(r30)
	storeli.w r6, -2616(r30)
	storeli.w r6, -2612(r30)
	storeli.w r6, -2608(r30)
	storeli.w r6, -2604(r30)
	storeli.w r6, -2600(r30)
	storeli.w r6, -2596(r30)
	storeli.w r6, -2592(r30)
	storeli.w r6, -2588(r30)
	storeli.w r6, -2584(r30)
	storeli.w r6, -2580(r30)
	storeli.w r6, -2576(r30)
	storeli.w r6, -2572(r30)
	storeli.w r6, -2568(r30)
	storeli.w r6, -2564(r30)
	storeli.w r6, -2560(r30)
	storeli.w r6, -2556(r30)
	storeli.w r6, -2552(r30)
	storeli.w r6, -2548(r30)
	storeli.w r6, -2544(r30)
	storeli.w r6, -2540(r30)
	storeli.w r6, -2536(r30)
	storeli.w r6, -2532(r30)
	storeli.w r6, -2528(r30)
	storeli.w r6, -2524(r30)
	storeli.w r6, -2520(r30)
	storeli.w r6, -2516(r30)
	storeli.w r6, -2512(r30)
	storeli.w r6, -2508(r30)
	storeli.w r6, -2504(r30)
	storeli.w r6, -2500(r30)
	storeli.w r6, -2496(r30)
	storeli.w r6, -2492(r30)
	storeli.w r6, -2488(r30)
	storeli.w r6, -2484(r30)
	storeli.w r6, -2480(r30)
	storeli.w r6, -2476(r30)
	storeli.w r6, -2472(r30)
	storeli.w r6, -2468(r30)
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
	storeli.w r6, -1696(r30)
	storeli.w r6, -1692(r30)
	storeli.w r6, -1688(r30)
	storeli.w r6, -1684(r30)
	storeli.w r6, -1680(r30)
	storeli.w r6, -1676(r30)
	storeli.w r6, -1672(r30)
	storeli.w r6, -1668(r30)
	storeli.w r6, -1664(r30)
	storeli.w r6, -1660(r30)
	fmac.s r3, r2, r4
	mul.s r2, r2, r4
	addli r3, r3, -1
	div.s r3, r3, r5
	load_param_i r5, 0
	mul.s r4, r3, r5
	fmac.s r3, r3, r5
	min.s r5, r3, r2
	ble.s r5, r4, .LBB0_44
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r5
	addli r5, r30, -2768
	sext_int2long r[9:10], r4
	loadli.w r18,  -12(r30)
	loadli.w r23,  -24(r30)
	loadli.w r27,  -36(r30)
	loadli.w r4,  -532(r30)
	loadli.w r13,  -1176(r30)
	loadli.w r14,  -1656(r30)
	loadli.w r15,  -2680(r30)
	addli r17, zero, 1
	addli r20, zero, 2
	addli r21, zero, 4
	addli r24, zero, 255
	addli r25, zero, 119
	lui r26, 8
	addli r19, zero, 5
	addli r28, zero, 3
	addli r6, zero, 6
	addli r16, zero, 0
	store.d r[2:3], 0(r5)                   # 8-byte Folded Spill
	lui r3, 375
	lui r5, 383
	loadli.w r2,  -48(r30)
	ori r3, r3, 1024
	storeli.w r2, -2692(r30)                # 4-byte Folded Spill
	addli r2, zero, 64
	storeli.w r3, -2772(r30)                # 4-byte Folded Spill
	lui r3, 216
	ori r3, r3, 2893
	storeli.w r3, -2776(r30)                # 4-byte Folded Spill
	ori r3, r5, 1024
	lui r5, 522239
	storeli.w r3, -2780(r30)                # 4-byte Folded Spill
	lui r3, 1046527
	ori r3, r3, 4095
	storeli.w r3, -2784(r30)                # 4-byte Folded Spill
	ori r3, r5, 4095
	storeli.w r3, -2788(r30)                # 4-byte Folded Spill
	addli r3, zero, 32
	j .LBB0_7
.LBB0_5:                                # %.thread68
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 109 5 is_stmt 1               # gelu-lut-refined.mlir:109:5
	addli r5, r30, -2744
	load.d r[22:23], 16(r30)
	addli r7, zero, 512
	load.d r[11:12], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 13
	xwait r5, 0
	lock zero, r21
	slli r5, r9, 1
	sll.d r[11:12], r[11:12], r17
	dma_cfg zero, r17, zero, 0
	add.ul r[11:12], r[22:23], r[11:12]
	dma_cfg zero, r12, zero, 2
	dma_cfg r8, r11, r5, 3
	addli r5, zero, 256
	dma_cfg r7, r5, r17, 4
	dma_run zero
	unlock r21
	addli r5, zero, 12
	loadli.w r27,  -2712(r30)               # 4-byte Folded Reload
	xsignal r5, 0
	loadli.w r18,  -2696(r30)               # 4-byte Folded Reload
	loadli.w r23,  -2700(r30)               # 4-byte Folded Reload
	.loc	1 110 16                        # gelu-lut-refined.mlir:110:16
	addli r27, r27, 1
.LBB0_6:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	addli r5, r30, -2720
	loadli.w r16,  -2724(r30)               # 4-byte Folded Reload
	.loc	1 112 16 is_stmt 1              # gelu-lut-refined.mlir:112:16
	addli r23, r23, 1
	.loc	1 114 16                        # gelu-lut-refined.mlir:114:16
	addli r18, r18, 1
	load.d r[9:10], 0(r5)                   # 8-byte Folded Reload
	addli r5, r30, -2768
	load.d r[7:8], 0(r5)                    # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 1
	setlt.sl r5, r[9:10], r[7:8]
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	loadli.w r7,  -2692(r30)                # 4-byte Folded Reload
	addli r7, r7, 1
	.loc	1 112 16 is_stmt 1              # gelu-lut-refined.mlir:112:16
	storeli.w r7, -2692(r30)                # 4-byte Folded Spill
	beq r5, zero, .LBB0_43
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	storeli.w r27, -2712(r30)               # 4-byte Folded Spill
	storeli.w r23, -2700(r30)               # 4-byte Folded Spill
	storeli.w r18, -2696(r30)               # 4-byte Folded Spill
	.loc	1 51 5 is_stmt 1                # gelu-lut-refined.mlir:51:5
	bneq r1, r21, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 11
	xwait r5, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r5,  48(r30)
	addli r7, r30, -2720
	addli r12, zero, 8
	.loc	1 51 5                          # gelu-lut-refined.mlir:51:5
	load.d r[22:23], 8(r30)
	addli r18, r30, -2752
	addli r11, zero, 0
	store.d r[9:10], 0(r7)                  # 8-byte Folded Spill
	loadli.w r7,  44(r30)
	div.s r5, r9, r5
	mod.s r9, r16, r20
	addli r16, r16, 1
	storeli.w r16, -2724(r30)               # 4-byte Folded Spill
	div.s r5, r5, r7
	addli r7, zero, 16
	slli r16, r9, 14
	div.s r7, r5, r7
	slli r8, r7, 3
	slli r7, r7, 4
	sub.s r10, r17, r8
	sub.s r7, r5, r7
	min.s r10, r10, r12
	addli r12, zero, 1
	mod.s r5, r5, r10
	div.s r7, r7, r10
	add.s r5, r8, r5
	slli r8, r7, 7
	slli r9, r5, 5
	storeli.w r8, -2736(r30)                # 4-byte Folded Spill
	zext_int2long r[7:8], r7
	storeli.w r9, -2756(r30)                # 4-byte Folded Spill
	addli r9, zero, 7
	sll.d r[7:8], r[7:8], r9
	zext_int2long r[9:10], r5
	addli r5, r30, -2744
	store.d r[7:8], 0(r5)                   # 8-byte Folded Spill
	sll.d r[7:8], r[7:8], r12
	addli r5, zero, 12
	store.d r[9:10], 0(r18)                 # 8-byte Folded Spill
	addli r18, zero, 0
	sll.d r[9:10], r[9:10], r5
	add.ul r[7:8], r[22:23], r[7:8]
	addli r5, r30, -2688
	addli r22, zero, 128
	store.d r[7:8], 0(r5)                   # 8-byte Folded Spill
	load.d r[7:8], 0(r30)
	add.ul r[9:10], r[7:8], r[9:10]
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 73 7 is_stmt 1                # gelu-lut-refined.mlir:73:7
	xwait r20, 0
	xwait r19, 0
	lock zero, zero
	ds_cfg r28, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r3, zero, 13
	shuffle_batch r23, r5, r3, 1
	unlock zero
	xsignal r28, 0
	xsignal r21, 0
.LBB0_11:                               # %.thread14
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 82 19                         # gelu-lut-refined.mlir:82:19
	addli r13, r13, 1
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	addli r4, r4, 1
.LBB0_12:                               # %.thread16
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 51 5                          # gelu-lut-refined.mlir:51:5
	beq r27, zero, .LBB0_27
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 91 13                         # gelu-lut-refined.mlir:91:13
	addli r18, r18, 1
	addli r11, zero, 1
	addli r12, zero, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 68 19                         # gelu-lut-refined.mlir:68:19
	mod.s r5, r14, r25
	.loc	1 67 19                         # gelu-lut-refined.mlir:67:19
	mod.s r7, r15, r24
	addli r15, r15, 1
	.loc	1 68 19                         # gelu-lut-refined.mlir:68:19
	addli r14, r14, 1
	andi r27, r12, 1
	slli r5, r5, 12
	.loc	1 67 19                         # gelu-lut-refined.mlir:67:19
	slli r23, r7, 11
	.loc	1 68 19                         # gelu-lut-refined.mlir:68:19
	add.s r5, r5, r26
	.loc	1 72 7                          # gelu-lut-refined.mlir:72:7
	beq r1, r20, .LBB0_10
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	zext_int2long r[7:8], r11
	.loc	1 72 7                          # gelu-lut-refined.mlir:72:7
	bneq r1, r17, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	sll.d r[7:8], r[7:8], r6
	xwait r28, 0
	lock zero, r21
	dma_cfg r17, r17, zero, 0
	add.ul r[7:8], r[9:10], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r5, r7, r2, 3
	dma_cfg r22, r22, r3, 4
	dma_run zero
	unlock r21
	xsignal r20, 0
	.loc	1 73 7 is_stmt 1                # gelu-lut-refined.mlir:73:7
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	addli r5, zero, 120
	.loc	1 82 19                         # gelu-lut-refined.mlir:82:19
	addli r11, zero, 160
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	lui r12, 127
	mod.s r5, r4, r5
	.loc	1 82 19                         # gelu-lut-refined.mlir:82:19
	mod.s r11, r13, r11
	addli r13, r13, 1
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	addli r4, r4, 1
	slli r5, r5, 13
	.loc	1 82 19                         # gelu-lut-refined.mlir:82:19
	slli r11, r11, 13
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	add.s r5, r5, r12
	.loc	1 87 7                          # gelu-lut-refined.mlir:87:7
	addli r12, zero, 7
	beq r1, r12, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r1, r6, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	addli r11, zero, 14
	addli r23, r30, -2688
	sll.d r[7:8], r[7:8], r11
	addli r11, zero, 7
	xwait r11, 0
	load.d r[11:12], 0(r23)                 # 8-byte Folded Reload
	lock zero, r21
	dma_cfg r17, r17, zero, 0
	add.ul r[7:8], r[11:12], r[7:8]
	addli r11, zero, 256
	dma_cfg zero, r8, zero, 2
	dma_cfg r5, r7, r11, 3
	addli r5, zero, 512
	dma_cfg r11, r5, r3, 4
	dma_run zero
	unlock r21
	xsignal r6, 0
	.loc	1 88 7                          # gelu-lut-refined.mlir:88:7
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	addli r7, zero, 9
	xwait r6, 0
	xwait r7, 0
	lock zero, zero
	ds_cfg r28, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r11, r5, r3, 2
	addli r5, zero, 7
	unlock zero
	xsignal r5, 0
	addli r5, zero, 8
	xsignal r5, 0
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 7                          # gelu-lut-refined.mlir:90:7
	bneq r1, r21, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r5, zero, 8
	xwait r21, 0
	addli r7, zero, 1
	addli r8, zero, 0
	xwait r5, 0
	addli r5, zero, 1
	beq r18, zero, .LBB0_24
.LBB0_23:                               # %.preheader17
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r8, 12
	slli r8, r8, 8
	lock zero, r5
	mm_cfg r2, r3, r3, 0
	or r12, r12, r11
	or r8, r8, r16
	mm_cfg r5, r21, r5, 2
	mm_acc r8, r23, r12, 5
	andi r12, r7, 1
	addli r8, zero, 1
	addli r7, zero, 0
	unlock r5
	bneq r12, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r8, 12
	slli r8, r8, 8
	lock zero, r5
	mm_cfg r2, r3, r3, 0
	or r12, r12, r11
	or r8, r8, r16
	mm_cfg r5, r21, r5, 2
	mm r8, r23, r12, 5
	andi r12, r7, 1
	addli r8, zero, 1
	addli r7, zero, 0
	unlock r5
	bneq r12, zero, .LBB0_24
.LBB0_25:                               # %.thread16.thread66
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r5, zero, 9
	xsignal r19, 0
	xsignal r5, 0
	bneq r27, zero, .LBB0_13
	j .LBB0_28
.LBB0_26:                               # %.thread16.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # gelu-lut-refined.mlir:0:7
	bneq r27, zero, .LBB0_13
	j .LBB0_29
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 51 5 is_stmt 1                # gelu-lut-refined.mlir:51:5
	bneq r1, r21, .LBB0_29
.LBB0_28:                               # %.thread67
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 10
	xsignal r5, 0
.LBB0_29:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 100 11                        # gelu-lut-refined.mlir:100:11
	loadli.w r5,  -2736(r30)                # 4-byte Folded Reload
	zext_int2long r[9:10], r22
	zext_int2long r[7:8], r5
	.loc	1 106 16                        # gelu-lut-refined.mlir:106:16
	loadli.w r5,  -2692(r30)                # 4-byte Folded Reload
	.loc	1 102 11                        # gelu-lut-refined.mlir:102:11
	min.ul r[11:12], r[7:8], r[9:10]
	.loc	1 106 16                        # gelu-lut-refined.mlir:106:16
	mod.s r5, r5, r20
	.loc	1 102 11                        # gelu-lut-refined.mlir:102:11
	addli.d r[11:12], r[11:12], 128
	.loc	1 104 11                        # gelu-lut-refined.mlir:104:11
	max.ul r[11:12], r[11:12], r[7:8]
	sub.sl r[7:8], r[11:12], r[7:8]
	.loc	1 106 16                        # gelu-lut-refined.mlir:106:16
	slli r5, r5, 9
	.loc	1 105 11                        # gelu-lut-refined.mlir:105:11
	min.ul r[9:10], r[7:8], r[9:10]
	lui r7, 367
	.loc	1 106 16                        # gelu-lut-refined.mlir:106:16
	add.s r8, r5, r7
	.loc	1 109 5                         # gelu-lut-refined.mlir:109:5
	beq r1, r17, .LBB0_5
# %bb.30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r27,  -2712(r30)               # 4-byte Folded Reload
	ori r7, r7, 1024
	loadli.w r18,  -2696(r30)               # 4-byte Folded Reload
	loadli.w r23,  -2700(r30)               # 4-byte Folded Reload
	lui r12, 4
	.loc	1 110 16 is_stmt 1              # gelu-lut-refined.mlir:110:16
	mod.s r5, r27, r20
	addli r27, r27, 1
	slli r5, r5, 14
	add.s r7, r5, r7
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	bneq r1, r28, .LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	addli r9, zero, 10
	addli r5, zero, 0
	xwait r9, 0
	addli r9, zero, 12
	xwait r9, 0
	addli r9, zero, 15
	xwait r9, 0
	lock zero, r20
	lui r9, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r9, r9, zero, 0
	addli r9, zero, 127
	ew_cfg zero, r9, zero, 2
	ew_cfg r17, zero, zero, 3
.LBB0_32:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r9, r7, r5
	add.s r10, r16, r5
	addli r5, r5, 512
	dsmadd r9, r10, r8, 0
	bneq r5, r12, .LBB0_32
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 11
	unlock r20
	xsignal r5, 0
	addli r5, zero, 13
	xsignal r5, 0
	addli r5, zero, 16
	xsignal r5, 0
	addli r5, zero, 17
	xsignal r5, 0
	addli r5, zero, 14
	j .LBB0_42
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	mod.s r5, r23, r20
	loadli.w r8,  -2772(r30)                # 4-byte Folded Reload
	slli r5, r5, 14
	add.s r16, r5, r8
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	bneq r1, r19, .LBB0_40
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 14
	lui r8, 266232
	lui r9, 790528
	addli r10, zero, 0
	xwait r5, 0
	addli r5, zero, 19
	xwait r5, 0
	lock zero, r20
	addli r5, zero, 1023
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r5, zero, 2
	addli r5, zero, 13
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, zero, 19
	ew_cfg r5, zero, zero, 10
	loadli.w r5,  -2776(r30)                # 4-byte Folded Reload
	ew_cfg r20, r17, r5, 11
	.loc	1 114 16                        # gelu-lut-refined.mlir:114:16
	mod.s r5, r18, r20
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	ew_cfg zero, zero, r28, 13
	ew_cfg r9, r21, r8, 14
	lui r8, 260096
	ew_cfg zero, r8, zero, 15
	sslut r16, r7, 0
	ew_cfg zero, zero, zero, 10
	.loc	1 114 16                        # gelu-lut-refined.mlir:114:16
	slli r5, r5, 14
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	ew_cfg zero, zero, zero, 19
	unlock r20
	.loc	1 114 16                        # gelu-lut-refined.mlir:114:16
	loadli.w r8,  -2780(r30)                # 4-byte Folded Reload
	add.s r9, r5, r8
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	addli r5, zero, 16
	xwait r5, 0
	addli r5, zero, 20
	xwait r5, 0
	lock zero, r20
	addli r5, zero, 127
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r5, zero, 2
	ew_cfg r17, zero, zero, 3
	loadli.w r5,  -2784(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r5, zero, zero, 0
.LBB0_36:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r9, r10
	add.s r11, r7, r10
	addli r10, r10, 512
	dscmpnsel r5, r11, r11, 0
	bneq r10, r12, .LBB0_36
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	unlock r20
	.loc	1 116 5                         # gelu-lut-refined.mlir:116:5
	addli r8, zero, 127
	addli r5, zero, 0
	lock zero, r20
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r8, zero, 2
	ew_cfg r17, zero, zero, 3
	loadli.w r8,  -2788(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r8, zero, zero, 0
.LBB0_38:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r10, r9, r5
	addli r5, r5, 512
	dscmpnsel r10, r10, r10, 4
	bneq r5, r12, .LBB0_38
# %bb.39:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 117 5                         # gelu-lut-refined.mlir:117:5
	addli r5, zero, 17
	.loc	1 116 5                         # gelu-lut-refined.mlir:116:5
	unlock r20
	.loc	1 117 5                         # gelu-lut-refined.mlir:117:5
	lui r8, 784384
	xwait r5, 0
	lock zero, r20
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r8, zero, 0
	addli r8, zero, 1023
	ew_cfg zero, r8, zero, 2
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, r21, 19
	dsmadd r7, r7, r9, 0
	addli r9, zero, 20
	ew_cfg zero, zero, zero, 19
	unlock r20
	xsignal r9, 0
	.loc	1 118 5                         # gelu-lut-refined.mlir:118:5
	lock zero, r20
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 15
	ew_cfg zero, r8, zero, 2
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, r21, 19
	dsmadd r16, r16, r7, 0
	ew_cfg zero, zero, zero, 19
	unlock r20
	xsignal r5, 0
	addli r5, zero, 18
	j .LBB0_42
.LBB0_40:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 126 5                         # gelu-lut-refined.mlir:126:5
	bneq r1, zero, .LBB0_6
# %bb.41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r5,  -2756(r30)                # 4-byte Folded Reload
	zext_int2long r[7:8], zero
	addli r19, zero, 5
	sext_int2long r[11:12], r5
	addli r5, r30, -2712
	min.sl r[7:8], r[11:12], r[7:8]
	addli.d r[7:8], r[7:8], 32
	max.sl r[7:8], r[7:8], r[11:12]
	sub.sl r[7:8], r[7:8], r[11:12]
	.loc	1 126 5                         # gelu-lut-refined.mlir:126:5
	addli r11, r30, -2752
	store.d r[7:8], 0(r5)                   # 8-byte Folded Spill
	zext_int2long r[7:8], r3
	addli r5, r30, -2688
	store.d r[7:8], 0(r5)                   # 8-byte Folded Spill
	load.d r[7:8], 0(r11)                   # 8-byte Folded Reload
	addli r5, zero, 14
	sll.d r[11:12], r[7:8], r5
	addli r5, r30, -2744
	load.d r[7:8], 0(r5)                    # 8-byte Folded Reload
	addli r5, r30, -2736
	sll.d r[7:8], r[7:8], r17
	store.d r[7:8], 0(r5)                   # 8-byte Folded Spill
	load.d r[7:8], 24(r30)
	.loc	1 122 11 is_stmt 1              # gelu-lut-refined.mlir:122:11
	addli r5, r30, -2744
	.loc	1 126 5                         # gelu-lut-refined.mlir:126:5
	add.ul r[7:8], r[7:8], r[11:12]
	.loc	1 122 11                        # gelu-lut-refined.mlir:122:11
	store.d r[7:8], 0(r5)                   # 8-byte Folded Spill
	addli r5, r30, -2688
	load.d r[11:12], 0(r5)                  # 8-byte Folded Reload
	addli r5, r30, -2712
	load.d r[7:8], 0(r5)                    # 8-byte Folded Reload
	.loc	1 126 5                         # gelu-lut-refined.mlir:126:5
	addli r5, r30, -2688
	.loc	1 122 11                        # gelu-lut-refined.mlir:122:11
	min.sl r[11:12], r[7:8], r[11:12]
	.loc	1 126 5                         # gelu-lut-refined.mlir:126:5
	store.d r[11:12], 0(r5)                 # 8-byte Folded Spill
	addli r5, r30, -2736
	load.d r[7:8], 0(r5)                    # 8-byte Folded Reload
	addli r5, r30, -2744
	load.d r[11:12], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 18
	xwait r5, 0
	slli r5, r9, 2
	addli r9, r30, -2688
	add.ul r[7:8], r[11:12], r[7:8]
	addli r11, zero, 5
	lock zero, r11
	dma_cfg r17, zero, zero, 0
	dma_cfg zero, r17, zero, 1
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, r16, r5, 3
	addli r5, zero, 512
	load.d r[7:8], 0(r9)                    # 8-byte Folded Reload
	dma_cfg r5, r5, r7, 4
	addli r5, zero, 19
	dma_run zero
	unlock r11
.LBB0_42:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	xsignal r5, 0
	j .LBB0_6
.LBB0_43:                               # %._crit_edge.loopexit
	.loc	1 82 19 is_stmt 1               # gelu-lut-refined.mlir:82:19
	storeli.w r13, -1176(r30)
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	storeli.w r4, -532(r30)
.LBB0_44:                               # %._crit_edge
	.loc	1 127 5                         # gelu-lut-refined.mlir:127:5
	xsignal zero, 0
	bneq r1, zero, .LBB0_46
# %bb.45:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r1, zero, 2
	.loc	1 127 5                         # gelu-lut-refined.mlir:127:5
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
.LBB0_46:
	.loc	1 127 5 epilogue_begin          # gelu-lut-refined.mlir:127:5
	addli sp, sp, 2792
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
	.long	2856                            # 0xb28
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-jxwi8y8a" # string offset=29
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
