	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-2tn04ktw" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4264
	addli r1, zero, 1
.Ltmp0:
	.loc	1 33 5 prologue_end             # parallel-rne.mlir:33:5
	core_id r2
	addli r30, sp, 4200
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 33 5                          # parallel-rne.mlir:33:5
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
	.loc	1 33 5                          # parallel-rne.mlir:33:5
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
	addli r2, zero, 11
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
	addli r1, zero, 16
	sync_group
	xsignal r1, 0
	addli r1, zero, 5
	xsignal r2, 0
	addli r2, zero, 22
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r2, 0
	addli r1, zero, 24
	addli r2, zero, 26
	xsignal r1, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 35 10 is_stmt 1               # parallel-rne.mlir:35:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -1024(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -2048(r30)
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r1, r2, r1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r3, r1, r3
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	addli r2, r2, -1
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r4, -3040(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r4, -2044(r30)
	storeli.w r4, -2040(r30)
	storeli.w r4, -2036(r30)
	storeli.w r4, -2032(r30)
	storeli.w r4, -2028(r30)
	storeli.w r4, -2024(r30)
	storeli.w r4, -2020(r30)
	storeli.w r4, -2016(r30)
	storeli.w r4, -2012(r30)
	storeli.w r4, -2008(r30)
	storeli.w r4, -2004(r30)
	storeli.w r4, -2000(r30)
	storeli.w r4, -1996(r30)
	storeli.w r4, -1992(r30)
	storeli.w r4, -1988(r30)
	storeli.w r4, -1984(r30)
	storeli.w r4, -1980(r30)
	storeli.w r4, -1976(r30)
	storeli.w r4, -1972(r30)
	storeli.w r4, -1968(r30)
	storeli.w r4, -1964(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r4, -3024(r30)
	storeli.w r4, -2056(r30)
	storeli.w r4, -2060(r30)
	storeli.w r4, -2064(r30)
	storeli.w r4, -2068(r30)
	storeli.w r4, -2072(r30)
	storeli.w r4, -2076(r30)
	storeli.w r4, -2080(r30)
	storeli.w r4, -2084(r30)
	storeli.w r4, -2088(r30)
	storeli.w r4, -2092(r30)
	storeli.w r4, -2096(r30)
	storeli.w r4, -2100(r30)
	storeli.w r4, -2104(r30)
	storeli.w r4, -2108(r30)
	storeli.w r4, -2112(r30)
	storeli.w r4, -2116(r30)
	storeli.w r4, -2120(r30)
	storeli.w r4, -2124(r30)
	storeli.w r4, -2128(r30)
	storeli.w r4, -2132(r30)
	storeli.w r4, -2136(r30)
	storeli.w r4, -2140(r30)
	storeli.w r4, -2144(r30)
	storeli.w r4, -2148(r30)
	storeli.w r4, -2152(r30)
	storeli.w r4, -2156(r30)
	storeli.w r4, -2160(r30)
	storeli.w r4, -2164(r30)
	storeli.w r4, -2168(r30)
	storeli.w r4, -2172(r30)
	storeli.w r4, -2176(r30)
	storeli.w r4, -2180(r30)
	storeli.w r4, -2184(r30)
	storeli.w r4, -2188(r30)
	storeli.w r4, -2192(r30)
	storeli.w r4, -2196(r30)
	storeli.w r4, -2200(r30)
	storeli.w r4, -2204(r30)
	storeli.w r4, -2208(r30)
	storeli.w r4, -2212(r30)
	storeli.w r4, -2216(r30)
	storeli.w r4, -2220(r30)
	storeli.w r4, -2224(r30)
	storeli.w r4, -2228(r30)
	storeli.w r4, -2232(r30)
	storeli.w r4, -2236(r30)
	storeli.w r4, -2240(r30)
	storeli.w r4, -2244(r30)
	storeli.w r4, -2248(r30)
	storeli.w r4, -2252(r30)
	storeli.w r4, -2256(r30)
	storeli.w r4, -2260(r30)
	storeli.w r4, -2264(r30)
	storeli.w r4, -2268(r30)
	storeli.w r4, -2272(r30)
	storeli.w r4, -2276(r30)
	storeli.w r4, -2280(r30)
	storeli.w r4, -2284(r30)
	storeli.w r4, -2288(r30)
	storeli.w r4, -2292(r30)
	storeli.w r4, -2296(r30)
	storeli.w r4, -2300(r30)
	storeli.w r4, -2304(r30)
	storeli.w r4, -2308(r30)
	storeli.w r4, -2312(r30)
	storeli.w r4, -2316(r30)
	storeli.w r4, -2320(r30)
	storeli.w r4, -2324(r30)
	storeli.w r4, -2328(r30)
	storeli.w r4, -2332(r30)
	storeli.w r4, -2336(r30)
	storeli.w r4, -2340(r30)
	storeli.w r4, -2344(r30)
	storeli.w r4, -2348(r30)
	storeli.w r4, -2352(r30)
	storeli.w r4, -2356(r30)
	storeli.w r4, -2360(r30)
	storeli.w r4, -2364(r30)
	storeli.w r4, -2368(r30)
	storeli.w r4, -2372(r30)
	storeli.w r4, -2376(r30)
	storeli.w r4, -2380(r30)
	storeli.w r4, -2384(r30)
	storeli.w r4, -2388(r30)
	storeli.w r4, -2392(r30)
	storeli.w r4, -2396(r30)
	storeli.w r4, -2400(r30)
	storeli.w r4, -2404(r30)
	storeli.w r4, -2408(r30)
	storeli.w r4, -2412(r30)
	storeli.w r4, -2416(r30)
	storeli.w r4, -2420(r30)
	storeli.w r4, -2424(r30)
	storeli.w r4, -2428(r30)
	storeli.w r4, -2432(r30)
	storeli.w r4, -2436(r30)
	storeli.w r4, -2440(r30)
	storeli.w r4, -2444(r30)
	storeli.w r4, -2448(r30)
	storeli.w r4, -2452(r30)
	storeli.w r4, -2456(r30)
	storeli.w r4, -2460(r30)
	storeli.w r4, -2464(r30)
	storeli.w r4, -2468(r30)
	storeli.w r4, -2472(r30)
	storeli.w r4, -2476(r30)
	storeli.w r4, -2480(r30)
	storeli.w r4, -2484(r30)
	storeli.w r4, -2488(r30)
	storeli.w r4, -2492(r30)
	storeli.w r4, -2496(r30)
	storeli.w r4, -2500(r30)
	storeli.w r4, -2504(r30)
	storeli.w r4, -2508(r30)
	storeli.w r4, -2512(r30)
	storeli.w r4, -2516(r30)
	storeli.w r4, -2520(r30)
	storeli.w r4, -2524(r30)
	storeli.w r4, -2528(r30)
	storeli.w r4, -2532(r30)
	storeli.w r4, -2536(r30)
	storeli.w r4, -2540(r30)
	storeli.w r4, -2544(r30)
	storeli.w r4, -2548(r30)
	storeli.w r4, -2552(r30)
	storeli.w r4, -2556(r30)
	storeli.w r4, -2560(r30)
	storeli.w r4, -2564(r30)
	storeli.w r4, -2568(r30)
	storeli.w r4, -2572(r30)
	storeli.w r4, -2576(r30)
	storeli.w r4, -2580(r30)
	storeli.w r4, -2584(r30)
	storeli.w r4, -2588(r30)
	storeli.w r4, -2592(r30)
	storeli.w r4, -2596(r30)
	storeli.w r4, -2600(r30)
	storeli.w r4, -2604(r30)
	storeli.w r4, -2608(r30)
	storeli.w r4, -2612(r30)
	storeli.w r4, -2616(r30)
	storeli.w r4, -2620(r30)
	storeli.w r4, -2624(r30)
	storeli.w r4, -2628(r30)
	storeli.w r4, -2632(r30)
	storeli.w r4, -2636(r30)
	storeli.w r4, -2640(r30)
	storeli.w r4, -2644(r30)
	storeli.w r4, -2648(r30)
	storeli.w r4, -2652(r30)
	storeli.w r4, -2656(r30)
	storeli.w r4, -2660(r30)
	storeli.w r4, -2664(r30)
	storeli.w r4, -2668(r30)
	storeli.w r4, -2672(r30)
	storeli.w r4, -2676(r30)
	storeli.w r4, -2680(r30)
	storeli.w r4, -2684(r30)
	storeli.w r4, -2688(r30)
	storeli.w r4, -2692(r30)
	storeli.w r4, -2696(r30)
	storeli.w r4, -2700(r30)
	storeli.w r4, -2704(r30)
	storeli.w r4, -2708(r30)
	storeli.w r4, -2712(r30)
	storeli.w r4, -2716(r30)
	storeli.w r4, -2720(r30)
	storeli.w r4, -2724(r30)
	storeli.w r4, -2728(r30)
	storeli.w r4, -2732(r30)
	storeli.w r4, -2736(r30)
	storeli.w r4, -2740(r30)
	storeli.w r4, -2744(r30)
	storeli.w r4, -2748(r30)
	storeli.w r4, -2752(r30)
	storeli.w r4, -2756(r30)
	storeli.w r4, -2760(r30)
	storeli.w r4, -2764(r30)
	storeli.w r4, -2768(r30)
	storeli.w r4, -2772(r30)
	storeli.w r4, -2776(r30)
	storeli.w r4, -2780(r30)
	storeli.w r4, -2784(r30)
	storeli.w r4, -2788(r30)
	storeli.w r4, -2792(r30)
	storeli.w r4, -2796(r30)
	storeli.w r4, -2800(r30)
	storeli.w r4, -2804(r30)
	storeli.w r4, -2808(r30)
	storeli.w r4, -2812(r30)
	storeli.w r4, -2816(r30)
	storeli.w r4, -2820(r30)
	storeli.w r4, -2824(r30)
	storeli.w r4, -2828(r30)
	storeli.w r4, -2832(r30)
	storeli.w r4, -2836(r30)
	storeli.w r4, -2840(r30)
	storeli.w r4, -2844(r30)
	storeli.w r4, -2848(r30)
	storeli.w r4, -2852(r30)
	storeli.w r4, -2856(r30)
	storeli.w r4, -2860(r30)
	storeli.w r4, -2864(r30)
	storeli.w r4, -2868(r30)
	storeli.w r4, -2872(r30)
	storeli.w r4, -2876(r30)
	storeli.w r4, -2880(r30)
	storeli.w r4, -2884(r30)
	storeli.w r4, -2888(r30)
	storeli.w r4, -2892(r30)
	storeli.w r4, -2896(r30)
	storeli.w r4, -2900(r30)
	storeli.w r4, -2904(r30)
	storeli.w r4, -2908(r30)
	storeli.w r4, -2912(r30)
	storeli.w r4, -2916(r30)
	storeli.w r4, -2920(r30)
	storeli.w r4, -2924(r30)
	storeli.w r4, -2928(r30)
	storeli.w r4, -2932(r30)
	storeli.w r4, -2936(r30)
	storeli.w r4, -2940(r30)
	storeli.w r4, -2944(r30)
	storeli.w r4, -2948(r30)
	storeli.w r4, -2952(r30)
	storeli.w r4, -2956(r30)
	storeli.w r4, -2960(r30)
	storeli.w r4, -2964(r30)
	storeli.w r4, -2968(r30)
	storeli.w r4, -2972(r30)
	storeli.w r4, -2976(r30)
	storeli.w r4, -2980(r30)
	storeli.w r4, -2984(r30)
	storeli.w r4, -2988(r30)
	storeli.w r4, -2992(r30)
	storeli.w r4, -2996(r30)
	storeli.w r4, -3000(r30)
	storeli.w r4, -3004(r30)
	storeli.w r4, -3008(r30)
	storeli.w r4, -3012(r30)
	storeli.w r4, -3016(r30)
	storeli.w r4, -3020(r30)
	storeli.w r4, -3028(r30)
	storeli.w r4, -3032(r30)
	storeli.w r4, -3036(r30)
	storeli.w r4, -3044(r30)
	storeli.w r4, -3048(r30)
	storeli.w r4, -3052(r30)
	storeli.w r4, -3056(r30)
	storeli.w r4, -3060(r30)
	storeli.w r4, -3064(r30)
	storeli.w r4, -3068(r30)
	storeli.w zero, -3072(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r4, -1028(r30)
	storeli.w r4, -1032(r30)
	storeli.w r4, -1036(r30)
	storeli.w r4, -1040(r30)
	storeli.w r4, -1044(r30)
	storeli.w r4, -1048(r30)
	storeli.w r4, -1052(r30)
	storeli.w r4, -1056(r30)
	storeli.w r4, -1060(r30)
	storeli.w r4, -1064(r30)
	storeli.w r4, -1068(r30)
	storeli.w r4, -1072(r30)
	storeli.w r4, -1076(r30)
	storeli.w r4, -1080(r30)
	storeli.w r4, -1084(r30)
	storeli.w r4, -1088(r30)
	storeli.w r4, -1092(r30)
	storeli.w r4, -1096(r30)
	storeli.w r4, -1100(r30)
	storeli.w r4, -1104(r30)
	storeli.w r4, -1108(r30)
	storeli.w r4, -1112(r30)
	storeli.w r4, -1116(r30)
	storeli.w r4, -1120(r30)
	storeli.w r4, -1124(r30)
	storeli.w r4, -1128(r30)
	storeli.w r4, -1132(r30)
	storeli.w r4, -1136(r30)
	storeli.w r4, -1140(r30)
	storeli.w r4, -1144(r30)
	storeli.w r4, -1148(r30)
	storeli.w r4, -1152(r30)
	storeli.w r4, -1156(r30)
	storeli.w r4, -1160(r30)
	storeli.w r4, -1164(r30)
	storeli.w r4, -1168(r30)
	storeli.w r4, -1172(r30)
	storeli.w r4, -1176(r30)
	storeli.w r4, -1180(r30)
	storeli.w r4, -1184(r30)
	storeli.w r4, -1188(r30)
	storeli.w r4, -1192(r30)
	storeli.w r4, -1196(r30)
	storeli.w r4, -1200(r30)
	storeli.w r4, -1204(r30)
	storeli.w r4, -1208(r30)
	storeli.w r4, -1212(r30)
	storeli.w r4, -1216(r30)
	storeli.w r4, -1220(r30)
	storeli.w r4, -1224(r30)
	storeli.w r4, -1228(r30)
	storeli.w r4, -1232(r30)
	storeli.w r4, -1236(r30)
	storeli.w r4, -1240(r30)
	storeli.w r4, -1244(r30)
	storeli.w r4, -1248(r30)
	storeli.w r4, -1252(r30)
	storeli.w r4, -1256(r30)
	storeli.w r4, -1260(r30)
	storeli.w r4, -1264(r30)
	storeli.w r4, -1268(r30)
	storeli.w r4, -1272(r30)
	storeli.w r4, -1276(r30)
	storeli.w r4, -1280(r30)
	storeli.w r4, -1284(r30)
	storeli.w r4, -1288(r30)
	storeli.w r4, -1292(r30)
	storeli.w r4, -1296(r30)
	storeli.w r4, -1300(r30)
	storeli.w r4, -1304(r30)
	storeli.w r4, -1308(r30)
	storeli.w r4, -1312(r30)
	storeli.w r4, -1316(r30)
	storeli.w r4, -1320(r30)
	storeli.w r4, -1324(r30)
	storeli.w r4, -1328(r30)
	storeli.w r4, -1332(r30)
	storeli.w r4, -1336(r30)
	storeli.w r4, -1340(r30)
	storeli.w r4, -1344(r30)
	storeli.w r4, -1348(r30)
	storeli.w r4, -1352(r30)
	storeli.w r4, -1356(r30)
	storeli.w r4, -1360(r30)
	storeli.w r4, -1364(r30)
	storeli.w r4, -1368(r30)
	storeli.w r4, -1372(r30)
	storeli.w r4, -1376(r30)
	storeli.w r4, -1380(r30)
	storeli.w r4, -1384(r30)
	storeli.w r4, -1388(r30)
	storeli.w r4, -1392(r30)
	storeli.w r4, -1396(r30)
	storeli.w r4, -1400(r30)
	storeli.w r4, -1404(r30)
	storeli.w r4, -1408(r30)
	storeli.w r4, -1412(r30)
	storeli.w r4, -1416(r30)
	storeli.w r4, -1420(r30)
	storeli.w r4, -1424(r30)
	storeli.w r4, -1428(r30)
	storeli.w r4, -1432(r30)
	storeli.w r4, -1436(r30)
	storeli.w r4, -1440(r30)
	storeli.w r4, -1444(r30)
	storeli.w r4, -1448(r30)
	storeli.w r4, -1452(r30)
	storeli.w r4, -1456(r30)
	storeli.w r4, -1460(r30)
	storeli.w r4, -1464(r30)
	storeli.w r4, -1468(r30)
	storeli.w r4, -1472(r30)
	storeli.w r4, -1476(r30)
	storeli.w r4, -1480(r30)
	storeli.w r4, -1484(r30)
	storeli.w r4, -1488(r30)
	storeli.w r4, -1492(r30)
	storeli.w r4, -1496(r30)
	storeli.w r4, -1500(r30)
	storeli.w r4, -1504(r30)
	storeli.w r4, -1508(r30)
	storeli.w r4, -1512(r30)
	storeli.w r4, -1516(r30)
	storeli.w r4, -1520(r30)
	storeli.w r4, -1524(r30)
	storeli.w r4, -1528(r30)
	storeli.w r4, -1532(r30)
	storeli.w r4, -1536(r30)
	storeli.w r4, -1540(r30)
	storeli.w r4, -1544(r30)
	storeli.w r4, -1548(r30)
	storeli.w r4, -1552(r30)
	storeli.w r4, -1556(r30)
	storeli.w r4, -1560(r30)
	storeli.w r4, -1564(r30)
	storeli.w r4, -1568(r30)
	storeli.w r4, -1572(r30)
	storeli.w r4, -1576(r30)
	storeli.w r4, -1580(r30)
	storeli.w r4, -1584(r30)
	storeli.w r4, -1588(r30)
	storeli.w r4, -1592(r30)
	storeli.w r4, -1596(r30)
	storeli.w r4, -1600(r30)
	storeli.w r4, -1604(r30)
	storeli.w r4, -1608(r30)
	storeli.w r4, -1612(r30)
	storeli.w r4, -1616(r30)
	storeli.w r4, -1620(r30)
	storeli.w r4, -1624(r30)
	storeli.w r4, -1628(r30)
	storeli.w r4, -1632(r30)
	storeli.w r4, -1636(r30)
	storeli.w r4, -1640(r30)
	storeli.w r4, -1644(r30)
	storeli.w r4, -1648(r30)
	storeli.w r4, -1652(r30)
	storeli.w r4, -1656(r30)
	storeli.w r4, -1660(r30)
	storeli.w r4, -1664(r30)
	storeli.w r4, -1668(r30)
	storeli.w r4, -1672(r30)
	storeli.w r4, -1676(r30)
	storeli.w r4, -1680(r30)
	storeli.w r4, -1684(r30)
	storeli.w r4, -1688(r30)
	storeli.w r4, -1692(r30)
	storeli.w r4, -1696(r30)
	storeli.w r4, -1700(r30)
	storeli.w r4, -1704(r30)
	storeli.w r4, -1708(r30)
	storeli.w r4, -1712(r30)
	storeli.w r4, -1716(r30)
	storeli.w r4, -1720(r30)
	storeli.w r4, -1724(r30)
	storeli.w r4, -1728(r30)
	storeli.w r4, -1732(r30)
	storeli.w r4, -1736(r30)
	storeli.w r4, -1740(r30)
	storeli.w r4, -1744(r30)
	storeli.w r4, -1748(r30)
	storeli.w r4, -1752(r30)
	storeli.w r4, -1756(r30)
	storeli.w r4, -1760(r30)
	storeli.w r4, -1764(r30)
	storeli.w r4, -1768(r30)
	storeli.w r4, -1772(r30)
	storeli.w r4, -1776(r30)
	storeli.w r4, -1780(r30)
	storeli.w r4, -1784(r30)
	storeli.w r4, -1788(r30)
	storeli.w r4, -1792(r30)
	storeli.w r4, -1796(r30)
	storeli.w r4, -1800(r30)
	storeli.w r4, -1804(r30)
	storeli.w r4, -1808(r30)
	storeli.w r4, -1812(r30)
	storeli.w r4, -1816(r30)
	storeli.w r4, -1820(r30)
	storeli.w r4, -1824(r30)
	storeli.w r4, -1828(r30)
	storeli.w r4, -1832(r30)
	storeli.w r4, -1836(r30)
	storeli.w r4, -1840(r30)
	storeli.w r4, -1844(r30)
	storeli.w r4, -1848(r30)
	storeli.w r4, -1852(r30)
	storeli.w r4, -1856(r30)
	storeli.w r4, -1860(r30)
	storeli.w r4, -1864(r30)
	storeli.w r4, -1868(r30)
	storeli.w r4, -1872(r30)
	storeli.w r4, -1876(r30)
	storeli.w r4, -1880(r30)
	storeli.w r4, -1884(r30)
	storeli.w r4, -1888(r30)
	storeli.w r4, -1892(r30)
	storeli.w r4, -1896(r30)
	storeli.w r4, -1900(r30)
	storeli.w r4, -1904(r30)
	storeli.w r4, -1908(r30)
	storeli.w r4, -1912(r30)
	storeli.w r4, -1916(r30)
	storeli.w r4, -1920(r30)
	storeli.w r4, -1924(r30)
	storeli.w r4, -1928(r30)
	storeli.w r4, -1932(r30)
	storeli.w r4, -1936(r30)
	storeli.w r4, -1940(r30)
	storeli.w r4, -1944(r30)
	storeli.w r4, -1948(r30)
	storeli.w r4, -1952(r30)
	storeli.w r4, -1956(r30)
	storeli.w r4, -1960(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r4, -2052(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -4096(r30)
	storeli.w r4, -4092(r30)
	storeli.w r4, -4088(r30)
	storeli.w r4, -4084(r30)
	storeli.w r4, -4080(r30)
	storeli.w r4, -4076(r30)
	storeli.w r4, -4072(r30)
	storeli.w r4, -4068(r30)
	storeli.w r4, -4064(r30)
	storeli.w r4, -4060(r30)
	storeli.w r4, -4056(r30)
	storeli.w r4, -4052(r30)
	storeli.w r4, -4048(r30)
	storeli.w r4, -4044(r30)
	storeli.w r4, -4040(r30)
	storeli.w r4, -4036(r30)
	storeli.w r4, -4032(r30)
	storeli.w r4, -4028(r30)
	storeli.w r4, -4024(r30)
	storeli.w r4, -4020(r30)
	storeli.w r4, -4016(r30)
	storeli.w r4, -4012(r30)
	storeli.w r4, -4008(r30)
	storeli.w r4, -4004(r30)
	storeli.w r4, -4000(r30)
	storeli.w r4, -3996(r30)
	storeli.w r4, -3992(r30)
	storeli.w r4, -3988(r30)
	storeli.w r4, -3984(r30)
	storeli.w r4, -3980(r30)
	storeli.w r4, -3976(r30)
	storeli.w r4, -3972(r30)
	storeli.w r4, -3968(r30)
	storeli.w r4, -3964(r30)
	storeli.w r4, -3960(r30)
	storeli.w r4, -3956(r30)
	storeli.w r4, -3952(r30)
	storeli.w r4, -3948(r30)
	storeli.w r4, -3944(r30)
	storeli.w r4, -3940(r30)
	storeli.w r4, -3936(r30)
	storeli.w r4, -3932(r30)
	storeli.w r4, -3928(r30)
	storeli.w r4, -3924(r30)
	storeli.w r4, -3920(r30)
	storeli.w r4, -3916(r30)
	storeli.w r4, -3912(r30)
	storeli.w r4, -3908(r30)
	storeli.w r4, -3904(r30)
	storeli.w r4, -3900(r30)
	storeli.w r4, -3896(r30)
	storeli.w r4, -3892(r30)
	storeli.w r4, -3888(r30)
	storeli.w r4, -3884(r30)
	storeli.w r4, -3880(r30)
	storeli.w r4, -3876(r30)
	storeli.w r4, -3872(r30)
	storeli.w r4, -3868(r30)
	storeli.w r4, -3864(r30)
	storeli.w r4, -3860(r30)
	storeli.w r4, -3856(r30)
	storeli.w r4, -3852(r30)
	storeli.w r4, -3848(r30)
	storeli.w r4, -3844(r30)
	storeli.w r4, -3840(r30)
	storeli.w r4, -3836(r30)
	storeli.w r4, -3832(r30)
	storeli.w r4, -3828(r30)
	storeli.w r4, -3824(r30)
	storeli.w r4, -3820(r30)
	storeli.w r4, -3816(r30)
	storeli.w r4, -3812(r30)
	storeli.w r4, -3808(r30)
	storeli.w r4, -3804(r30)
	storeli.w r4, -3800(r30)
	storeli.w r4, -3796(r30)
	storeli.w r4, -3792(r30)
	storeli.w r4, -3788(r30)
	storeli.w r4, -3784(r30)
	storeli.w r4, -3780(r30)
	storeli.w r4, -3776(r30)
	storeli.w r4, -3772(r30)
	storeli.w r4, -3768(r30)
	storeli.w r4, -3764(r30)
	storeli.w r4, -3760(r30)
	storeli.w r4, -3756(r30)
	storeli.w r4, -3752(r30)
	storeli.w r4, -3748(r30)
	storeli.w r4, -3744(r30)
	storeli.w r4, -3740(r30)
	storeli.w r4, -3736(r30)
	storeli.w r4, -3732(r30)
	storeli.w r4, -3728(r30)
	storeli.w r4, -3724(r30)
	storeli.w r4, -3720(r30)
	storeli.w r4, -3716(r30)
	storeli.w r4, -3712(r30)
	storeli.w r4, -3708(r30)
	storeli.w r4, -3704(r30)
	storeli.w r4, -3700(r30)
	storeli.w r4, -3696(r30)
	storeli.w r4, -3692(r30)
	storeli.w r4, -3688(r30)
	storeli.w r4, -3684(r30)
	storeli.w r4, -3680(r30)
	storeli.w r4, -3676(r30)
	storeli.w r4, -3672(r30)
	storeli.w r4, -3668(r30)
	storeli.w r4, -3664(r30)
	storeli.w r4, -3660(r30)
	storeli.w r4, -3656(r30)
	storeli.w r4, -3652(r30)
	storeli.w r4, -3648(r30)
	storeli.w r4, -3644(r30)
	storeli.w r4, -3640(r30)
	storeli.w r4, -3636(r30)
	storeli.w r4, -3632(r30)
	storeli.w r4, -3628(r30)
	storeli.w r4, -3624(r30)
	storeli.w r4, -3620(r30)
	storeli.w r4, -3616(r30)
	storeli.w r4, -3612(r30)
	storeli.w r4, -3608(r30)
	storeli.w r4, -3604(r30)
	storeli.w r4, -3600(r30)
	storeli.w r4, -3596(r30)
	storeli.w r4, -3592(r30)
	storeli.w r4, -3588(r30)
	storeli.w r4, -3584(r30)
	storeli.w r4, -3580(r30)
	storeli.w r4, -3576(r30)
	storeli.w r4, -3572(r30)
	storeli.w r4, -3568(r30)
	storeli.w r4, -3564(r30)
	storeli.w r4, -3560(r30)
	storeli.w r4, -3556(r30)
	storeli.w r4, -3552(r30)
	storeli.w r4, -3548(r30)
	storeli.w r4, -3544(r30)
	storeli.w r4, -3540(r30)
	storeli.w r4, -3536(r30)
	storeli.w r4, -3532(r30)
	storeli.w r4, -3528(r30)
	storeli.w r4, -3524(r30)
	storeli.w r4, -3520(r30)
	storeli.w r4, -3516(r30)
	storeli.w r4, -3512(r30)
	storeli.w r4, -3508(r30)
	storeli.w r4, -3504(r30)
	storeli.w r4, -3500(r30)
	storeli.w r4, -3496(r30)
	storeli.w r4, -3492(r30)
	storeli.w r4, -3488(r30)
	storeli.w r4, -3484(r30)
	storeli.w r4, -3480(r30)
	storeli.w r4, -3476(r30)
	storeli.w r4, -3472(r30)
	storeli.w r4, -3468(r30)
	storeli.w r4, -3464(r30)
	storeli.w r4, -3460(r30)
	storeli.w r4, -3456(r30)
	storeli.w r4, -3452(r30)
	storeli.w r4, -3448(r30)
	storeli.w r4, -3444(r30)
	storeli.w r4, -3440(r30)
	storeli.w r4, -3436(r30)
	storeli.w r4, -3432(r30)
	storeli.w r4, -3428(r30)
	storeli.w r4, -3424(r30)
	storeli.w r4, -3420(r30)
	storeli.w r4, -3416(r30)
	storeli.w r4, -3412(r30)
	storeli.w r4, -3408(r30)
	storeli.w r4, -3404(r30)
	storeli.w r4, -3400(r30)
	storeli.w r4, -3396(r30)
	storeli.w r4, -3392(r30)
	storeli.w r4, -3388(r30)
	storeli.w r4, -3384(r30)
	storeli.w r4, -3380(r30)
	storeli.w r4, -3376(r30)
	storeli.w r4, -3372(r30)
	storeli.w r4, -3368(r30)
	storeli.w r4, -3364(r30)
	storeli.w r4, -3360(r30)
	storeli.w r4, -3356(r30)
	storeli.w r4, -3352(r30)
	storeli.w r4, -3348(r30)
	storeli.w r4, -3344(r30)
	storeli.w r4, -3340(r30)
	storeli.w r4, -3336(r30)
	storeli.w r4, -3332(r30)
	storeli.w r4, -3328(r30)
	storeli.w r4, -3324(r30)
	storeli.w r4, -3320(r30)
	storeli.w r4, -3316(r30)
	storeli.w r4, -3312(r30)
	storeli.w r4, -3308(r30)
	storeli.w r4, -3304(r30)
	storeli.w r4, -3300(r30)
	storeli.w r4, -3296(r30)
	storeli.w r4, -3292(r30)
	storeli.w r4, -3288(r30)
	storeli.w r4, -3284(r30)
	storeli.w r4, -3280(r30)
	storeli.w r4, -3276(r30)
	storeli.w r4, -3272(r30)
	storeli.w r4, -3268(r30)
	storeli.w r4, -3264(r30)
	storeli.w r4, -3260(r30)
	storeli.w r4, -3256(r30)
	storeli.w r4, -3252(r30)
	storeli.w r4, -3248(r30)
	storeli.w r4, -3244(r30)
	storeli.w r4, -3240(r30)
	storeli.w r4, -3236(r30)
	storeli.w r4, -3232(r30)
	storeli.w r4, -3228(r30)
	storeli.w r4, -3224(r30)
	storeli.w r4, -3220(r30)
	storeli.w r4, -3216(r30)
	storeli.w r4, -3212(r30)
	storeli.w r4, -3208(r30)
	storeli.w r4, -3204(r30)
	storeli.w r4, -3200(r30)
	storeli.w r4, -3196(r30)
	storeli.w r4, -3192(r30)
	storeli.w r4, -3188(r30)
	storeli.w r4, -3184(r30)
	storeli.w r4, -3180(r30)
	storeli.w r4, -3176(r30)
	storeli.w r4, -3172(r30)
	storeli.w r4, -3168(r30)
	storeli.w r4, -3164(r30)
	storeli.w r4, -3160(r30)
	storeli.w r4, -3156(r30)
	storeli.w r4, -3152(r30)
	storeli.w r4, -3148(r30)
	storeli.w r4, -3144(r30)
	storeli.w r4, -3140(r30)
	storeli.w r4, -3136(r30)
	storeli.w r4, -3132(r30)
	storeli.w r4, -3128(r30)
	storeli.w r4, -3124(r30)
	storeli.w r4, -3120(r30)
	storeli.w r4, -3116(r30)
	storeli.w r4, -3112(r30)
	storeli.w r4, -3108(r30)
	storeli.w r4, -3104(r30)
	storeli.w r4, -3100(r30)
	storeli.w r4, -3096(r30)
	storeli.w r4, -3092(r30)
	storeli.w r4, -3088(r30)
	storeli.w r4, -3084(r30)
	storeli.w r4, -3080(r30)
	storeli.w r4, -3076(r30)
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r1, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	fmac.s r2, r2, r6
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	min.s r3, r2, r3
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r3, r1, .LBB0_716
# %bb.4:                                # %.lr.ph
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	sext_int2long r[5:6], r1
	lui r1, 524287
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	addli r4, r30, -4192
	lui r23, 1024
	lui r24, 522240
	lui r26, 1048560
	addli r13, zero, 7
	ori r22, r1, 4095
	lui r1, 7
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r2, 40
	ori r25, r1, 4095
	lui r1, 522239
	ori r27, r1, 4095
	lui r1, 257
	ori r1, r1, 128
	storeli.w r1, -4108(r30)                # 4-byte Folded Spill
	ori r1, r2, 2114
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	storeli.w r1, -4196(r30)                # 4-byte Folded Spill
	lui r1, 256
	ori r15, r1, 128
	lui r1, 128
	ori r1, r1, 2048
	storeli.w r1, -4140(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge19.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1017 7                        # parallel-rne.mlir:1017:7
	addli r1, zero, 15
	xsignal r1, 0
	.loc	1 1018 7                        # parallel-rne.mlir:1018:7
	addli r1, zero, 22
	xsignal r1, 0
	.loc	1 1019 7                        # parallel-rne.mlir:1019:7
	addli r1, zero, 24
	xsignal r1, 0
	.loc	1 1020 7                        # parallel-rne.mlir:1020:7
	addli r1, zero, 26
	xsignal r1, 0
	addli r1, r30, -4152
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	addli r1, r30, -4192
	addli.d r[5:6], r[5:6], 1
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	setlt.sl r1, r[5:6], r[3:4]
	beq r1, zero, .LBB0_716
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #       Child Loop BB0_49 Depth 3
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_73 Depth 3
                                        #     Child Loop BB0_95 Depth 2
                                        #       Child Loop BB0_97 Depth 3
                                        #     Child Loop BB0_119 Depth 2
                                        #       Child Loop BB0_121 Depth 3
                                        #     Child Loop BB0_143 Depth 2
                                        #       Child Loop BB0_145 Depth 3
                                        #     Child Loop BB0_167 Depth 2
                                        #       Child Loop BB0_169 Depth 3
                                        #     Child Loop BB0_191 Depth 2
                                        #       Child Loop BB0_193 Depth 3
                                        #     Child Loop BB0_215 Depth 2
                                        #       Child Loop BB0_217 Depth 3
                                        #     Child Loop BB0_243 Depth 2
                                        #     Child Loop BB0_255 Depth 2
                                        #       Child Loop BB0_257 Depth 3
                                        #     Child Loop BB0_279 Depth 2
                                        #       Child Loop BB0_281 Depth 3
                                        #     Child Loop BB0_303 Depth 2
                                        #       Child Loop BB0_305 Depth 3
                                        #     Child Loop BB0_327 Depth 2
                                        #       Child Loop BB0_329 Depth 3
                                        #     Child Loop BB0_351 Depth 2
                                        #       Child Loop BB0_353 Depth 3
                                        #     Child Loop BB0_375 Depth 2
                                        #       Child Loop BB0_377 Depth 3
                                        #     Child Loop BB0_399 Depth 2
                                        #       Child Loop BB0_401 Depth 3
                                        #     Child Loop BB0_423 Depth 2
                                        #       Child Loop BB0_425 Depth 3
                                        #     Child Loop BB0_458 Depth 2
                                        #       Child Loop BB0_460 Depth 3
                                        #     Child Loop BB0_490 Depth 2
                                        #       Child Loop BB0_492 Depth 3
                                        #     Child Loop BB0_522 Depth 2
                                        #       Child Loop BB0_524 Depth 3
                                        #     Child Loop BB0_554 Depth 2
                                        #       Child Loop BB0_556 Depth 3
                                        #     Child Loop BB0_586 Depth 2
                                        #       Child Loop BB0_588 Depth 3
                                        #     Child Loop BB0_618 Depth 2
                                        #       Child Loop BB0_620 Depth 3
                                        #     Child Loop BB0_650 Depth 2
                                        #       Child Loop BB0_652 Depth 3
                                        #     Child Loop BB0_683 Depth 2
                                        #       Child Loop BB0_685 Depth 3
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r1, zero, 4
	bneq r2, r1, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  48(r30)
	addli r2, r30, -4152
	addli r7, zero, 8
	addli r8, r30, -4176
	addli r4, zero, 0
	addli r10, zero, 0
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  44(r30)
	div.s r1, r5, r1
	addli r5, zero, 1
	div.s r1, r1, r2
	addli r2, zero, 32
	div.s r2, r1, r2
	slli r3, r2, 3
	slli r2, r2, 5
	sub.s r6, r5, r3
	sub.s r2, r1, r2
	min.s r6, r6, r7
	mod.s r1, r1, r6
	div.s r2, r2, r6
	add.s r1, r3, r1
	slli r3, r2, 5
	slli r6, r1, 4
	storeli.w r3, -4128(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	storeli.w r6, -4180(r30)                # 4-byte Folded Spill
	zext_int2long r[6:7], r1
	addli r1, zero, 5
	sll.d r[1:2], r[2:3], r1
	addli r3, zero, 10
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r3
	.loc	1 76 7 is_stmt 1                # parallel-rne.mlir:76:7
	addli r3, r30, -4104
	store.d r[6:7], 0(r3)                   # 8-byte Folded Spill
	sll.d r[7:8], r[1:2], r5
	load.d r[1:2], 8(r30)
	addli r5, r30, -4160
	.loc	1 93 15                         # parallel-rne.mlir:93:15
	loadli.w r6,  -4096(r30)
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	loadli.w r3,  -3072(r30)
	store.d r[7:8], 0(r5)                   # 8-byte Folded Spill
	addli r5, r30, -4120
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	add.ul r[1:2], r[1:2], r[7:8]
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	addli r2, zero, 4
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 4
	.loc	1 99 9 is_stmt 1                # parallel-rne.mlir:99:9
	addli r7, r7, 4160
	addli r17, zero, 64
	addli r9, zero, 5
	lock zero, r8
	dma_cfg r20, r20, zero, 0
	dma_cfg zero, r12, zero, 2
	dma_cfg r7, r11, r17, 3
	addli r12, zero, 128
	addli r7, zero, 32
	addli r11, zero, 2
	dma_cfg r12, r17, r20, 4
	dma_cfg r12, r12, r2, 5
	dma_cfg zero, zero, r7, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 20
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 21
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 22
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 23
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 24
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 25
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 26
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 27
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 28
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 29
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 30
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 31
	dma_cfg zero, zero, r8, 10
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r17, 3
	dma_cfg r12, zero, r20, 4
	dma_cfg r12, zero, r2, 5
	dma_cfg zero, zero, r7, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r11, 0
.LBB0_11:                               # %.thread51
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	loadli.w r1,  -2048(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -1024(r30)
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r1, r1, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	storeli.w r1, -2048(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r2, -1024(r30)
.LBB0_12:                               # %.thread54
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	addli r10, r10, 1
	addli r2, zero, 4
	beq r10, r2, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	addli r4, r4, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 77 15                         # parallel-rne.mlir:77:15
	zext_int2long r[11:12], r10
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	addli r5, r30, -4104
	addli r21, zero, 4
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	sll.d r[16:17], r[11:12], r2
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	add.ul r[18:19], r[16:17], r[1:2]
	addli r1, zero, 1023
	zext_int2long r[1:2], r1
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	setlt.ul r1, r[1:2], r[18:19]
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli.d r[16:17], r[18:19], 0
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	add.s r1, r6, r4
	addli r5, zero, 255
	add.s r8, r3, r4
	addli r28, zero, 32
	.loc	1 93 15 is_stmt 1               # parallel-rne.mlir:93:15
	mod.s r2, r1, r5
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r7, r8, r5
	.loc	1 93 15                         # parallel-rne.mlir:93:15
	addli r1, r1, 1
	.loc	1 99 9                          # parallel-rne.mlir:99:9
	addli r5, zero, 2
	.loc	1 93 15                         # parallel-rne.mlir:93:15
	storeli.w r1, -4096(r30)
	slli r9, r2, 10
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r7, r7, 11
	addli r2, r8, 1
	storeli.w r2, -3072(r30)
	addli r1, r7, 4096
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 99 9                          # parallel-rne.mlir:99:9
	beq r2, r5, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r5
	addli r20, zero, 1
	.loc	1 99 9                          # parallel-rne.mlir:99:9
	bneq r5, r20, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	sll.d r[11:12], r[18:19], r20
	addli r18, zero, 6
	load.d r[13:14], 0(r30)
	addli r19, zero, 16
	addli r9, zero, 254
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	srl.d r[16:17], r[16:17], r18
	.loc	1 99 9                          # parallel-rne.mlir:99:9
	add.ul r[11:12], r[13:14], r[11:12]
	addli r13, zero, 7
	sub.s r2, r19, r16
	addli r16, zero, 3
	xwait r16, 0
	blt.s r9, r8, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	.loc	1 99 9                          # parallel-rne.mlir:99:9
	addli r8, zero, 2
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 20
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 21
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 22
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 23
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 24
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 25
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 26
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 27
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 28
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 29
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 30
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 31
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 64
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r8, 3
	addli r8, zero, 128
	dma_cfg r8, zero, r20, 4
	dma_cfg r8, zero, r19, 5
	dma_cfg zero, zero, r28, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 2
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	addli r2, zero, 5
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r5
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	xwait r7, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 16
	ds_cfg r7, zero, 0
	ds_cfg r28, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r9, r1, r2, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	xsignal r21, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	loadli.w r1,  -2048(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r8,  -1024(r30)
	addli r7, zero, 255
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	mod.s r2, r1, r7
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r16, r8, r7
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r1, r1, 1
	storeli.w r1, -2048(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r1,  -4140(r30)                # 4-byte Folded Reload
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	slli r7, r2, 11
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r2, r16, 11
	addli r16, r8, 1
	add.s r1, r2, r1
	storeli.w r16, -1024(r30)
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	beq r5, r13, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r16, zero, 6
	bneq r5, r16, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	addli r7, r30, -4120
	addli r14, zero, 12
	load.d r[16:17], 0(r7)                  # 8-byte Folded Reload
	sll.d r[11:12], r[11:12], r14
	addli r7, zero, 254
	xwait r13, 0
	add.ul r[11:12], r[16:17], r[11:12]
	blt.s r7, r8, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 5
	addli r7, zero, 1
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	addli r8, zero, 2
	addli r16, zero, 17
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 3
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 18
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 19
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 20
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 21
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 22
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 23
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 24
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 25
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 26
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 27
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 28
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 29
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 30
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 31
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 64
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r16, 3
	addli r16, zero, 128
	dma_cfg r16, zero, r7, 4
	dma_cfg r16, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r7, 128
	addli r9, zero, 4
	addli r16, zero, 64
	addli r8, zero, 5
	ori r7, r7, 2112
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	lock zero, r9
	add.s r2, r2, r7
	addli r7, zero, 1
	dma_cfg r7, r7, zero, 0
	dma_cfg zero, r12, zero, 2
	dma_cfg r2, r11, r16, 3
	addli r12, zero, 128
	addli r11, zero, 16
	addli r2, zero, 256
	dma_cfg r12, r16, r7, 4
	dma_cfg r12, r2, r11, 5
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 3
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r11, 10
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r16, 3
	dma_cfg r12, zero, r7, 4
	dma_cfg r12, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r9, 0
	.loc	1 117 9 is_stmt 1               # parallel-rne.mlir:117:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 6
	addli r8, zero, 16
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 32
	ds_cfg r2, zero, 1
	ds_cfg r8, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r7, r1, r8, 2
	addli r1, zero, 8
	unlock zero
	xsignal r13, 0
	xsignal r1, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r1
	addli r2, zero, 4
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	bneq r1, r2, .LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 8
	xwait r2, 0
	addli r2, zero, 1
	addli r5, zero, 16
	xwait r1, 0
	addli r1, zero, 32
	lock zero, r2
	mm_cfg r1, r5, r5, 0
	addli r1, zero, 1
	mm_cfg r2, r2, r2, 2
	addli r2, zero, 2048
	beq r4, zero, .LBB0_31
# %bb.29:                               # %.preheader83
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r2, r9, r7, 8
	j .LBB0_32
.LBB0_30:                               # %.thread54.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	addli r10, r10, 1
	bneq r10, r2, .LBB0_13
	j .LBB0_35
.LBB0_31:                               # %.preheader82
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	mm r2, r9, r7, 8
.LBB0_32:                               # %.thread54.thread114
                                        #   in Loop: Header=BB0_14 Depth=2
	unlock r1
	addli r1, zero, 5
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	addli r10, r10, 1
	addli r2, zero, 4
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r10, r2, .LBB0_13
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 123 7                         # parallel-rne.mlir:123:7
	bneq r5, r2, .LBB0_35
.LBB0_34:                               # %.thread116
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_35:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r1
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	addli r3, zero, 3
	bneq r1, r3, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	xwait r3, 0
	.loc	1 140 7                         # parallel-rne.mlir:140:7
	addli r3, zero, 16
	xwait r3, 0
.LBB0_37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	xfence
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	addli r3, zero, 255
	addli r5, zero, 32
	addli r6, zero, 1
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	mfence { lm, sm, gm }
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	csr_set csr5, r3
	sync_core
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	beq r1, zero, .LBB0_45
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	beq r1, r6, .LBB0_69
.LBB0_39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 203 7                         # parallel-rne.mlir:203:7
	addli r3, zero, 2
	beq r1, r3, .LBB0_93
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 232 7                         # parallel-rne.mlir:232:7
	addli r3, zero, 3
	beq r1, r3, .LBB0_117
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 261 7                         # parallel-rne.mlir:261:7
	beq r1, r2, .LBB0_141
.LBB0_42:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	addli r2, zero, 5
	beq r1, r2, .LBB0_165
.LBB0_43:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 319 7                         # parallel-rne.mlir:319:7
	addli r2, zero, 6
	beq r1, r2, .LBB0_189
.LBB0_44:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 348 7                         # parallel-rne.mlir:348:7
	beq r1, r13, .LBB0_213
	j .LBB0_237
.LBB0_45:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 145 7 is_stmt 1               # parallel-rne.mlir:145:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	addli.d r[10:11], r[1:2], 0
	j .LBB0_47
.LBB0_46:                               # %middle.block273
                                        #   in Loop: Header=BB0_47 Depth=2
	.loc	1 153 9                         # parallel-rne.mlir:153:9
	andi r4, r3, 1
	addli.d r[10:11], r[20:21], 0
	addli r3, zero, 0
	beq r4, zero, .LBB0_68
.LBB0_47:                               # %vector.ph268
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_49 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli.d r[13:14], r[1:2], 0
	j .LBB0_49
.LBB0_48:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 154 11 is_stmt 1              # parallel-rne.mlir:154:11
	addli.d r[13:14], r[13:14], 4
	zext_int2long r[20:21], r5
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	stores.w r7, 12(r4)
	stores.w r9, 8(r4)
	stores.w r17, 4(r4)
	stores.w r19, 0(r4)
	.loc	1 154 11                        # parallel-rne.mlir:154:11
	setneq.d r6, r[13:14], r[20:21]
	beq r6, zero, .LBB0_46
.LBB0_49:                               # %vector.body269
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	add.ul r[6:7], r[13:14], r[10:11]
	slli r4, r6, 2
	addli r6, r4, 2060
	addli r7, r4, 2048
	addli r8, r4, 2056
	loads.w r6, 0(r6)
	loads.w r21, 0(r7)
	addli r7, r4, 2052
	loads.w r16, 0(r8)
	loads.w r18, 0(r7)
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	and r12, r6, r22
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	setlt.u r7, r24, r12
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r7, zero, .LBB0_51
# %bb.50:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_49 Depth=3
	or r7, r6, r23
.LBB0_52:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	and r20, r16, r22
	setlt.u r8, r24, r20
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r8, zero, .LBB0_54
# %bb.53:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r16, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_49 Depth=3
	or r9, r16, r23
.LBB0_55:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	and r28, r18, r22
	setlt.u r8, r24, r28
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r8, zero, .LBB0_57
# %bb.56:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_49 Depth=3
	or r17, r18, r23
.LBB0_58:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	and r8, r21, r22
	setlt.u r19, r24, r8
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r19, zero, .LBB0_60
# %bb.59:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 166 19 is_stmt 1              # parallel-rne.mlir:166:19
	setlt.u r8, r27, r8
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	beq r8, zero, .LBB0_61
	j .LBB0_62
.LBB0_60:                               #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r23
	.loc	1 166 19 is_stmt 1              # parallel-rne.mlir:166:19
	setlt.u r8, r27, r8
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r8, zero, .LBB0_62
.LBB0_61:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r21, 16
	andi r8, r8, 1
	add.s r8, r21, r8
	add.s r8, r8, r25
	and r19, r8, r26
.LBB0_62:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	setlt.u r8, r27, r28
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	beq r8, zero, .LBB0_65
# %bb.63:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r20
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	beq r8, zero, .LBB0_66
.LBB0_64:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r12
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r8, zero, .LBB0_48
	j .LBB0_67
.LBB0_65:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r18, 16
	andi r8, r8, 1
	add.s r8, r18, r8
	add.s r8, r8, r25
	and r17, r8, r26
	setlt.u r8, r27, r20
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r8, zero, .LBB0_64
.LBB0_66:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r25
	and r9, r8, r26
	setlt.u r8, r27, r12
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r8, zero, .LBB0_48
.LBB0_67:                               # %vector.body269
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r25
	and r7, r6, r26
	j .LBB0_48
.LBB0_68:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r1
	addli r6, zero, 1
	addli r2, zero, 4
	addli r13, zero, 7
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	mfence { sm }
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	bneq r1, r6, .LBB0_39
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_71
.LBB0_70:                               # %middle.block267
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 182 9 is_stmt 1               # parallel-rne.mlir:182:9
	andi r4, r1, 1
	addli r1, zero, 96
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_92
.LBB0_71:                               # %vector.ph262
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_73 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_73
.LBB0_72:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 183 11 is_stmt 1              # parallel-rne.mlir:183:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[12:13], r5
	.loc	1 198 13                        # parallel-rne.mlir:198:13
	stores.w r7, 12(r4)
	stores.w r9, 8(r4)
	stores.w r14, 4(r4)
	stores.w r17, 0(r4)
	.loc	1 183 11                        # parallel-rne.mlir:183:11
	setneq.d r6, r[10:11], r[12:13]
	beq r6, zero, .LBB0_70
.LBB0_73:                               # %vector.body263
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	addli r6, r4, 2060
	addli r7, r4, 2048
	addli r8, r4, 2056
	loads.w r6, 0(r6)
	loads.w r19, 0(r7)
	addli r7, r4, 2052
	loads.w r13, 0(r8)
	loads.w r16, 0(r7)
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	and r12, r6, r22
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	setlt.u r7, r24, r12
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r7, zero, .LBB0_75
# %bb.74:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_73 Depth=3
	or r7, r6, r23
.LBB0_76:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	and r18, r13, r22
	setlt.u r8, r24, r18
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r8, zero, .LBB0_78
# %bb.77:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_73 Depth=3
	or r9, r13, r23
.LBB0_79:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	and r20, r16, r22
	setlt.u r8, r24, r20
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r8, zero, .LBB0_81
# %bb.80:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_73 Depth=3
	or r14, r16, r23
.LBB0_82:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	and r8, r19, r22
	setlt.u r17, r24, r8
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r17, zero, .LBB0_84
# %bb.83:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	.loc	1 195 19 is_stmt 1              # parallel-rne.mlir:195:19
	setlt.u r8, r27, r8
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	beq r8, zero, .LBB0_85
	j .LBB0_86
.LBB0_84:                               #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r17, r19, r23
	.loc	1 195 19 is_stmt 1              # parallel-rne.mlir:195:19
	setlt.u r8, r27, r8
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r8, zero, .LBB0_86
.LBB0_85:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r25
	and r17, r8, r26
.LBB0_86:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	setlt.u r8, r27, r20
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	beq r8, zero, .LBB0_89
# %bb.87:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r18
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	beq r8, zero, .LBB0_90
.LBB0_88:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r12
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r8, zero, .LBB0_72
	j .LBB0_91
.LBB0_89:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r18
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r8, zero, .LBB0_88
.LBB0_90:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r25
	and r9, r8, r26
	setlt.u r8, r27, r12
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r8, zero, .LBB0_72
.LBB0_91:                               # %vector.body263
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r25
	and r7, r6, r26
	j .LBB0_72
.LBB0_92:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r1
	addli r6, zero, 1
	addli r2, zero, 4
	addli r13, zero, 7
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	mfence { sm }
	.loc	1 203 7                         # parallel-rne.mlir:203:7
	addli r3, zero, 2
	bneq r1, r3, .LBB0_40
.LBB0_93:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	.loc	1 203 7                         # parallel-rne.mlir:203:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_95
.LBB0_94:                               # %middle.block261
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 211 9 is_stmt 1               # parallel-rne.mlir:211:9
	andi r4, r1, 1
	addli r1, zero, 160
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_116
.LBB0_95:                               # %vector.ph256
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_97 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_97
.LBB0_96:                               # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 212 11 is_stmt 1              # parallel-rne.mlir:212:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[12:13], r5
	.loc	1 227 13                        # parallel-rne.mlir:227:13
	stores.w r7, 12(r4)
	stores.w r9, 8(r4)
	stores.w r14, 4(r4)
	stores.w r17, 0(r4)
	.loc	1 212 11                        # parallel-rne.mlir:212:11
	setneq.d r6, r[10:11], r[12:13]
	beq r6, zero, .LBB0_94
.LBB0_97:                               # %vector.body257
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	addli r6, r4, 2060
	addli r7, r4, 2048
	addli r8, r4, 2056
	loads.w r6, 0(r6)
	loads.w r19, 0(r7)
	addli r7, r4, 2052
	loads.w r13, 0(r8)
	loads.w r16, 0(r7)
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	and r12, r6, r22
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	setlt.u r7, r24, r12
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r7, zero, .LBB0_99
# %bb.98:                               # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_97 Depth=3
	or r7, r6, r23
.LBB0_100:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	and r18, r13, r22
	setlt.u r8, r24, r18
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r8, zero, .LBB0_102
# %bb.101:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
	j .LBB0_103
.LBB0_102:                              #   in Loop: Header=BB0_97 Depth=3
	or r9, r13, r23
.LBB0_103:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	and r20, r16, r22
	setlt.u r8, r24, r20
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r8, zero, .LBB0_105
# %bb.104:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_97 Depth=3
	or r14, r16, r23
.LBB0_106:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	and r8, r19, r22
	setlt.u r17, r24, r8
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r17, zero, .LBB0_108
# %bb.107:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	.loc	1 224 19 is_stmt 1              # parallel-rne.mlir:224:19
	setlt.u r8, r27, r8
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	beq r8, zero, .LBB0_109
	j .LBB0_110
.LBB0_108:                              #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r17, r19, r23
	.loc	1 224 19 is_stmt 1              # parallel-rne.mlir:224:19
	setlt.u r8, r27, r8
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r8, zero, .LBB0_110
.LBB0_109:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r25
	and r17, r8, r26
.LBB0_110:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	setlt.u r8, r27, r20
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	beq r8, zero, .LBB0_113
# %bb.111:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r18
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	beq r8, zero, .LBB0_114
.LBB0_112:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r12
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r8, zero, .LBB0_96
	j .LBB0_115
.LBB0_113:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r18
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r8, zero, .LBB0_112
.LBB0_114:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r25
	and r9, r8, r26
	setlt.u r8, r27, r12
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r8, zero, .LBB0_96
.LBB0_115:                              # %vector.body257
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r25
	and r7, r6, r26
	j .LBB0_96
.LBB0_116:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r1
	addli r6, zero, 1
	addli r2, zero, 4
	addli r13, zero, 7
	.loc	1 203 7                         # parallel-rne.mlir:203:7
	mfence { sm }
	.loc	1 232 7                         # parallel-rne.mlir:232:7
	addli r3, zero, 3
	bneq r1, r3, .LBB0_41
.LBB0_117:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 192
	.loc	1 232 7                         # parallel-rne.mlir:232:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_119
.LBB0_118:                              # %middle.block255
                                        #   in Loop: Header=BB0_119 Depth=2
	.loc	1 240 9 is_stmt 1               # parallel-rne.mlir:240:9
	andi r4, r1, 1
	addli r1, zero, 224
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_140
.LBB0_119:                              # %vector.ph250
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_121 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_121
.LBB0_120:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 241 11 is_stmt 1              # parallel-rne.mlir:241:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[12:13], r5
	.loc	1 256 13                        # parallel-rne.mlir:256:13
	stores.w r7, 12(r4)
	stores.w r9, 8(r4)
	stores.w r14, 4(r4)
	stores.w r17, 0(r4)
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	setneq.d r6, r[10:11], r[12:13]
	beq r6, zero, .LBB0_118
.LBB0_121:                              # %vector.body251
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_119 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	addli r6, r4, 2060
	addli r7, r4, 2048
	addli r8, r4, 2056
	loads.w r6, 0(r6)
	loads.w r19, 0(r7)
	addli r7, r4, 2052
	loads.w r13, 0(r8)
	loads.w r16, 0(r7)
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	and r12, r6, r22
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	setlt.u r7, r24, r12
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r7, zero, .LBB0_123
# %bb.122:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_121 Depth=3
	or r7, r6, r23
.LBB0_124:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	and r18, r13, r22
	setlt.u r8, r24, r18
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r8, zero, .LBB0_126
# %bb.125:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_121 Depth=3
	or r9, r13, r23
.LBB0_127:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	and r20, r16, r22
	setlt.u r8, r24, r20
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r8, zero, .LBB0_129
# %bb.128:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_130
.LBB0_129:                              #   in Loop: Header=BB0_121 Depth=3
	or r14, r16, r23
.LBB0_130:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	and r8, r19, r22
	setlt.u r17, r24, r8
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r17, zero, .LBB0_132
# %bb.131:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	.loc	1 253 19 is_stmt 1              # parallel-rne.mlir:253:19
	setlt.u r8, r27, r8
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	beq r8, zero, .LBB0_133
	j .LBB0_134
.LBB0_132:                              #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r17, r19, r23
	.loc	1 253 19 is_stmt 1              # parallel-rne.mlir:253:19
	setlt.u r8, r27, r8
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r8, zero, .LBB0_134
.LBB0_133:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r25
	and r17, r8, r26
.LBB0_134:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	setlt.u r8, r27, r20
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	beq r8, zero, .LBB0_137
# %bb.135:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r18
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	beq r8, zero, .LBB0_138
.LBB0_136:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r12
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r8, zero, .LBB0_120
	j .LBB0_139
.LBB0_137:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r18
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r8, zero, .LBB0_136
.LBB0_138:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r25
	and r9, r8, r26
	setlt.u r8, r27, r12
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r8, zero, .LBB0_120
.LBB0_139:                              # %vector.body251
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r25
	and r7, r6, r26
	j .LBB0_120
.LBB0_140:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r1
	addli r6, zero, 1
	addli r2, zero, 4
	addli r13, zero, 7
	.loc	1 232 7                         # parallel-rne.mlir:232:7
	mfence { sm }
	.loc	1 261 7                         # parallel-rne.mlir:261:7
	bneq r1, r2, .LBB0_42
.LBB0_141:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 261 7                         # parallel-rne.mlir:261:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_143
.LBB0_142:                              # %middle.block249
                                        #   in Loop: Header=BB0_143 Depth=2
	.loc	1 269 9 is_stmt 1               # parallel-rne.mlir:269:9
	andi r4, r1, 1
	addli r1, zero, 288
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_164
.LBB0_143:                              # %vector.ph244
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_145 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_145
.LBB0_144:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 270 11 is_stmt 1              # parallel-rne.mlir:270:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[12:13], r5
	.loc	1 285 13                        # parallel-rne.mlir:285:13
	stores.w r7, 12(r4)
	stores.w r9, 8(r4)
	stores.w r14, 4(r4)
	stores.w r17, 0(r4)
	.loc	1 270 11                        # parallel-rne.mlir:270:11
	setneq.d r6, r[10:11], r[12:13]
	beq r6, zero, .LBB0_142
.LBB0_145:                              # %vector.body245
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_143 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	addli r6, r4, 2060
	addli r7, r4, 2048
	addli r8, r4, 2056
	loads.w r6, 0(r6)
	loads.w r19, 0(r7)
	addli r7, r4, 2052
	loads.w r13, 0(r8)
	loads.w r16, 0(r7)
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	and r12, r6, r22
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	setlt.u r7, r24, r12
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r7, zero, .LBB0_147
# %bb.146:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_145 Depth=3
	or r7, r6, r23
.LBB0_148:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	and r18, r13, r22
	setlt.u r8, r24, r18
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r8, zero, .LBB0_150
# %bb.149:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_145 Depth=3
	or r9, r13, r23
.LBB0_151:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	and r20, r16, r22
	setlt.u r8, r24, r20
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r8, zero, .LBB0_153
# %bb.152:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_145 Depth=3
	or r14, r16, r23
.LBB0_154:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	and r8, r19, r22
	setlt.u r17, r24, r8
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r17, zero, .LBB0_156
# %bb.155:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	.loc	1 282 19 is_stmt 1              # parallel-rne.mlir:282:19
	setlt.u r8, r27, r8
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	beq r8, zero, .LBB0_157
	j .LBB0_158
.LBB0_156:                              #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r17, r19, r23
	.loc	1 282 19 is_stmt 1              # parallel-rne.mlir:282:19
	setlt.u r8, r27, r8
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r8, zero, .LBB0_158
.LBB0_157:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r25
	and r17, r8, r26
.LBB0_158:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.u r8, r27, r20
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	beq r8, zero, .LBB0_161
# %bb.159:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r18
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	beq r8, zero, .LBB0_162
.LBB0_160:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r12
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r8, zero, .LBB0_144
	j .LBB0_163
.LBB0_161:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r18
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r8, zero, .LBB0_160
.LBB0_162:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r25
	and r9, r8, r26
	setlt.u r8, r27, r12
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r8, zero, .LBB0_144
.LBB0_163:                              # %vector.body245
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r25
	and r7, r6, r26
	j .LBB0_144
.LBB0_164:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r1
	addli r6, zero, 1
	addli r13, zero, 7
	.loc	1 261 7                         # parallel-rne.mlir:261:7
	mfence { sm }
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	addli r2, zero, 5
	bneq r1, r2, .LBB0_43
.LBB0_165:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 320
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_167
.LBB0_166:                              # %middle.block243
                                        #   in Loop: Header=BB0_167 Depth=2
	.loc	1 298 9 is_stmt 1               # parallel-rne.mlir:298:9
	andi r4, r1, 1
	addli r1, zero, 352
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_188
.LBB0_167:                              # %vector.ph238
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_169 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_169
.LBB0_168:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 299 11 is_stmt 1              # parallel-rne.mlir:299:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[12:13], r5
	.loc	1 314 13                        # parallel-rne.mlir:314:13
	stores.w r7, 12(r4)
	stores.w r9, 8(r4)
	stores.w r14, 4(r4)
	stores.w r17, 0(r4)
	.loc	1 299 11                        # parallel-rne.mlir:299:11
	setneq.d r6, r[10:11], r[12:13]
	beq r6, zero, .LBB0_166
.LBB0_169:                              # %vector.body239
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_167 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	addli r6, r4, 2060
	addli r7, r4, 2048
	addli r8, r4, 2056
	loads.w r6, 0(r6)
	loads.w r19, 0(r7)
	addli r7, r4, 2052
	loads.w r13, 0(r8)
	loads.w r16, 0(r7)
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	and r12, r6, r22
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	setlt.u r7, r24, r12
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r7, zero, .LBB0_171
# %bb.170:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_172
.LBB0_171:                              #   in Loop: Header=BB0_169 Depth=3
	or r7, r6, r23
.LBB0_172:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	and r18, r13, r22
	setlt.u r8, r24, r18
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r8, zero, .LBB0_174
# %bb.173:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_169 Depth=3
	or r9, r13, r23
.LBB0_175:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	and r20, r16, r22
	setlt.u r8, r24, r20
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r8, zero, .LBB0_177
# %bb.176:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_169 Depth=3
	or r14, r16, r23
.LBB0_178:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	and r8, r19, r22
	setlt.u r17, r24, r8
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r17, zero, .LBB0_180
# %bb.179:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	.loc	1 311 19 is_stmt 1              # parallel-rne.mlir:311:19
	setlt.u r8, r27, r8
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	beq r8, zero, .LBB0_181
	j .LBB0_182
.LBB0_180:                              #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r17, r19, r23
	.loc	1 311 19 is_stmt 1              # parallel-rne.mlir:311:19
	setlt.u r8, r27, r8
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r8, zero, .LBB0_182
.LBB0_181:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r25
	and r17, r8, r26
.LBB0_182:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	setlt.u r8, r27, r20
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	beq r8, zero, .LBB0_185
# %bb.183:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r18
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	beq r8, zero, .LBB0_186
.LBB0_184:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r12
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r8, zero, .LBB0_168
	j .LBB0_187
.LBB0_185:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r18
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r8, zero, .LBB0_184
.LBB0_186:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r25
	and r9, r8, r26
	setlt.u r8, r27, r12
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r8, zero, .LBB0_168
.LBB0_187:                              # %vector.body239
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r25
	and r7, r6, r26
	j .LBB0_168
.LBB0_188:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r1
	addli r6, zero, 1
	addli r13, zero, 7
	.loc	1 290 7                         # parallel-rne.mlir:290:7
	mfence { sm }
	.loc	1 319 7                         # parallel-rne.mlir:319:7
	addli r2, zero, 6
	bneq r1, r2, .LBB0_44
.LBB0_189:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 384
	.loc	1 319 7                         # parallel-rne.mlir:319:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_191
.LBB0_190:                              # %middle.block237
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 327 9 is_stmt 1               # parallel-rne.mlir:327:9
	andi r4, r1, 1
	addli r1, zero, 416
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_212
.LBB0_191:                              # %vector.ph232
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_193 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_193
.LBB0_192:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 328 11 is_stmt 1              # parallel-rne.mlir:328:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[12:13], r5
	.loc	1 343 13                        # parallel-rne.mlir:343:13
	stores.w r7, 12(r4)
	stores.w r9, 8(r4)
	stores.w r14, 4(r4)
	stores.w r17, 0(r4)
	.loc	1 328 11                        # parallel-rne.mlir:328:11
	setneq.d r6, r[10:11], r[12:13]
	beq r6, zero, .LBB0_190
.LBB0_193:                              # %vector.body233
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	addli r6, r4, 2060
	addli r7, r4, 2048
	addli r8, r4, 2056
	loads.w r6, 0(r6)
	loads.w r19, 0(r7)
	addli r7, r4, 2052
	loads.w r13, 0(r8)
	loads.w r16, 0(r7)
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	and r12, r6, r22
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	setlt.u r7, r24, r12
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r7, zero, .LBB0_195
# %bb.194:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_196
.LBB0_195:                              #   in Loop: Header=BB0_193 Depth=3
	or r7, r6, r23
.LBB0_196:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	and r18, r13, r22
	setlt.u r8, r24, r18
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r8, zero, .LBB0_198
# %bb.197:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_193 Depth=3
	or r9, r13, r23
.LBB0_199:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	and r20, r16, r22
	setlt.u r8, r24, r20
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r8, zero, .LBB0_201
# %bb.200:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_193 Depth=3
	or r14, r16, r23
.LBB0_202:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	and r8, r19, r22
	setlt.u r17, r24, r8
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r17, zero, .LBB0_204
# %bb.203:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	.loc	1 340 19 is_stmt 1              # parallel-rne.mlir:340:19
	setlt.u r8, r27, r8
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	beq r8, zero, .LBB0_205
	j .LBB0_206
.LBB0_204:                              #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r17, r19, r23
	.loc	1 340 19 is_stmt 1              # parallel-rne.mlir:340:19
	setlt.u r8, r27, r8
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	bneq r8, zero, .LBB0_206
.LBB0_205:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r25
	and r17, r8, r26
.LBB0_206:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	setlt.u r8, r27, r20
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	beq r8, zero, .LBB0_209
# %bb.207:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r18
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	beq r8, zero, .LBB0_210
.LBB0_208:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r12
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	bneq r8, zero, .LBB0_192
	j .LBB0_211
.LBB0_209:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r18
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	bneq r8, zero, .LBB0_208
.LBB0_210:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r25
	and r9, r8, r26
	setlt.u r8, r27, r12
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	bneq r8, zero, .LBB0_192
.LBB0_211:                              # %vector.body233
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r25
	and r7, r6, r26
	j .LBB0_192
.LBB0_212:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r1
	addli r6, zero, 1
	addli r13, zero, 7
	.loc	1 319 7                         # parallel-rne.mlir:319:7
	mfence { sm }
	.loc	1 348 7                         # parallel-rne.mlir:348:7
	bneq r1, r13, .LBB0_237
.LBB0_213:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 448
	.loc	1 348 7                         # parallel-rne.mlir:348:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_215
.LBB0_214:                              # %middle.block231
                                        #   in Loop: Header=BB0_215 Depth=2
	.loc	1 356 9 is_stmt 1               # parallel-rne.mlir:356:9
	andi r4, r1, 1
	addli r1, zero, 480
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_236
.LBB0_215:                              # %vector.ph226
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_217 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_217
.LBB0_216:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 357 11 is_stmt 1              # parallel-rne.mlir:357:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[12:13], r5
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	stores.w r7, 12(r4)
	stores.w r9, 8(r4)
	stores.w r14, 4(r4)
	stores.w r17, 0(r4)
	.loc	1 357 11                        # parallel-rne.mlir:357:11
	setneq.d r6, r[10:11], r[12:13]
	beq r6, zero, .LBB0_214
.LBB0_217:                              # %vector.body227
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	addli r6, r4, 2060
	addli r7, r4, 2048
	addli r8, r4, 2056
	loads.w r6, 0(r6)
	loads.w r19, 0(r7)
	addli r7, r4, 2052
	loads.w r13, 0(r8)
	loads.w r16, 0(r7)
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	and r12, r6, r22
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	setlt.u r7, r24, r12
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r7, zero, .LBB0_219
# %bb.218:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_217 Depth=3
	or r7, r6, r23
.LBB0_220:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	and r18, r13, r22
	setlt.u r8, r24, r18
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r8, zero, .LBB0_222
# %bb.221:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
	j .LBB0_223
.LBB0_222:                              #   in Loop: Header=BB0_217 Depth=3
	or r9, r13, r23
.LBB0_223:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	and r20, r16, r22
	setlt.u r8, r24, r20
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r8, zero, .LBB0_225
# %bb.224:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_226
.LBB0_225:                              #   in Loop: Header=BB0_217 Depth=3
	or r14, r16, r23
.LBB0_226:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	and r8, r19, r22
	setlt.u r17, r24, r8
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r17, zero, .LBB0_228
# %bb.227:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	.loc	1 369 19 is_stmt 1              # parallel-rne.mlir:369:19
	setlt.u r8, r27, r8
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	beq r8, zero, .LBB0_229
	j .LBB0_230
.LBB0_228:                              #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r17, r19, r23
	.loc	1 369 19 is_stmt 1              # parallel-rne.mlir:369:19
	setlt.u r8, r27, r8
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r8, zero, .LBB0_230
.LBB0_229:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r25
	and r17, r8, r26
.LBB0_230:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	setlt.u r8, r27, r20
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	beq r8, zero, .LBB0_233
# %bb.231:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r18
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	beq r8, zero, .LBB0_234
.LBB0_232:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r12
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r8, zero, .LBB0_216
	j .LBB0_235
.LBB0_233:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r18
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r8, zero, .LBB0_232
.LBB0_234:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r13, 16
	andi r8, r8, 1
	add.s r8, r13, r8
	add.s r8, r8, r25
	and r9, r8, r26
	setlt.u r8, r27, r12
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r8, zero, .LBB0_216
.LBB0_235:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r25
	and r7, r6, r26
	j .LBB0_216
.LBB0_236:                              #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 1
	addli r13, zero, 7
	.loc	1 348 7 is_stmt 1               # parallel-rne.mlir:348:7
	mfence { sm }
.LBB0_237:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4128(r30)                # 4-byte Folded Reload
	addli r3, zero, 96
	addli r7, r30, -4128
	zext_int2long r[3:4], r3
	zext_int2long r[1:2], r1
	store.d r[3:4], 0(r7)                   # 8-byte Folded Spill
	zext_int2long r[7:8], r5
	min.ul r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 32
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	addli r3, r30, -4104
	store.d r[7:8], 0(r3)                   # 8-byte Folded Spill
	min.ul r[1:2], r[1:2], r[7:8]
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	addli r3, r30, -4168
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, zero, 255
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	csr_set csr5, r1
	addli r1, zero, 3
	sync_core
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	bneq r2, r1, .LBB0_239
# %bb.238:                              # %.thread56.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xsignal r1, 0
	addli r1, zero, 12
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	xsignal r1, 0
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r1, zero, 13
	xwait r1, 0
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	addli r1, zero, 22
	xwait r1, 0
	j .LBB0_245
.LBB0_239:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 6
	.loc	1 381 7 is_stmt 1               # parallel-rne.mlir:381:7
	bneq r2, r6, .LBB0_241
# %bb.240:                              # %.thread56.thread58
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, r30, -4160
	addli r12, zero, 18
	addli r10, zero, 5
	addli r13, zero, 2
	addli r14, zero, 3
	addli r9, zero, 4
	load.d r[1:2], 16(r30)
	addli r18, zero, 13
	addli r21, zero, 14
	addli r11, zero, 17
	addli r28, zero, 21
	addli r20, zero, 22
	addli r16, zero, 64
	lui r19, 256
	addli r17, zero, 128
	load.d r[7:8], 0(r4)                    # 8-byte Folded Reload
	xwait r12, 0
	lock zero, r10
	addli r4, zero, 7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r13, 10
	add.ul r[7:8], r[1:2], r[7:8]
	addli r1, zero, 8
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, r30, -4168
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r3, 10
	ori r3, r19, 64
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	dma_cfg r6, r6, zero, 0
	dma_cfg r6, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r16, 3
	dma_cfg r17, zero, r6, 4
	dma_cfg r17, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r9
	dma_cfg r6, r6, zero, 0
	dma_cfg zero, r8, zero, 2
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	dma_cfg r3, r7, r16, 3
	addli r3, zero, 6
	addli r4, r1, 31
	slli r2, r1, 1
	addli r1, zero, 8
	srli r7, r4, 5
	andi r2, r2, 62
	addli r4, zero, 12
	dma_cfg r17, r16, r7, 4
	dma_cfg r17, r16, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 7
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	dma_cfg r6, r6, zero, 0
	dma_cfg r6, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r16, 3
	dma_cfg r17, zero, r7, 4
	dma_cfg r17, zero, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r6, 5
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r11, 0
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	j .LBB0_245
.LBB0_241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	addli r1, zero, 5
	addli r3, zero, 12
	addli r4, zero, 2048
	bneq r2, r1, .LBB0_245
# %bb.242:                              #   in Loop: Header=BB0_7 Depth=1
	xwait r3, 0
	addli r3, zero, 17
	addli r1, zero, 0
	xwait r3, 0
	addli r3, zero, 2
	lock zero, r3
	lui r3, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r3, r3, zero, 0
	addli r3, zero, 31
	ew_cfg zero, r3, zero, 2
	lui r3, 256
	ew_cfg r6, zero, zero, 3
.LBB0_243:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	dsmadd r1, r1, r3, 0
	addli r1, r1, 128
	bneq r1, r4, .LBB0_243
# %bb.244:                              # %.thread56
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 2
	unlock r1
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
.LBB0_245:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	xfence
	.loc	1 390 7                         # parallel-rne.mlir:390:7
	addli r1, zero, 255
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	mfence { lm, sm, gm }
	.loc	1 390 7                         # parallel-rne.mlir:390:7
	csr_set csr5, r1
	sync_core
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	beq r2, zero, .LBB0_253
# %bb.246:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 420 7                         # parallel-rne.mlir:420:7
	beq r2, r6, .LBB0_277
.LBB0_247:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	addli r1, zero, 2
	beq r2, r1, .LBB0_301
.LBB0_248:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	addli r1, zero, 3
	beq r2, r1, .LBB0_325
.LBB0_249:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 507 7                         # parallel-rne.mlir:507:7
	addli r1, zero, 4
	beq r2, r1, .LBB0_349
.LBB0_250:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 536 7                         # parallel-rne.mlir:536:7
	addli r1, zero, 5
	beq r2, r1, .LBB0_373
.LBB0_251:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 6
	.loc	1 565 7 is_stmt 1               # parallel-rne.mlir:565:7
	beq r2, r3, .LBB0_397
.LBB0_252:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 594 7                         # parallel-rne.mlir:594:7
	beq r2, r13, .LBB0_421
	j .LBB0_445
.LBB0_253:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[16:17], zero
	.loc	1 391 7 is_stmt 1               # parallel-rne.mlir:391:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	addli.d r[10:11], r[16:17], 0
	j .LBB0_255
.LBB0_254:                              # %middle.block225
                                        #   in Loop: Header=BB0_255 Depth=2
	.loc	1 399 9                         # parallel-rne.mlir:399:9
	andi r1, r3, 1
	addli.d r[10:11], r[7:8], 0
	addli r3, zero, 0
	beq r1, zero, .LBB0_276
.LBB0_255:                              # %vector.ph220
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_257 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli.d r[20:21], r[16:17], 0
	j .LBB0_257
.LBB0_256:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 400 11 is_stmt 1              # parallel-rne.mlir:400:11
	addli.d r[20:21], r[20:21], 4
	zext_int2long r[7:8], r5
	.loc	1 415 13                        # parallel-rne.mlir:415:13
	add.s r4, r4, r15
	.loc	1 400 11                        # parallel-rne.mlir:400:11
	setneq.d r2, r[20:21], r[7:8]
	.loc	1 415 13                        # parallel-rne.mlir:415:13
	stores.w r6, 12(r4)
	stores.w r12, 8(r4)
	stores.w r14, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 400 11                        # parallel-rne.mlir:400:11
	beq r2, zero, .LBB0_254
.LBB0_257:                              # %vector.body221
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_255 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	add.ul r[1:2], r[20:21], r[10:11]
	slli r4, r1, 2
	loads.w r7, 12(r4)
	loads.w r19, 0(r4)
	loads.w r18, 4(r4)
	loads.w r9, 8(r4)
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	and r13, r7, r22
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	setlt.u r1, r24, r13
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r1, zero, .LBB0_259
# %bb.258:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_257 Depth=3
	or r6, r7, r23
.LBB0_260:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	and r28, r9, r22
	setlt.u r1, r24, r28
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r1, zero, .LBB0_262
# %bb.261:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	j .LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_257 Depth=3
	or r12, r9, r23
.LBB0_263:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	and r2, r18, r22
	setlt.u r1, r24, r2
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r1, zero, .LBB0_265
# %bb.264:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_257 Depth=3
	or r14, r18, r23
.LBB0_266:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	and r8, r19, r22
	setlt.u r1, r24, r8
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r1, zero, .LBB0_268
# %bb.267:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r19, 0
	.loc	1 412 19 is_stmt 1              # parallel-rne.mlir:412:19
	setlt.u r8, r27, r8
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	beq r8, zero, .LBB0_269
	j .LBB0_270
.LBB0_268:                              #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r19, r23
	.loc	1 412 19 is_stmt 1              # parallel-rne.mlir:412:19
	setlt.u r8, r27, r8
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r8, zero, .LBB0_270
.LBB0_269:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r25
	and r1, r1, r26
.LBB0_270:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	setlt.u r2, r27, r2
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	beq r2, zero, .LBB0_273
# %bb.271:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r27, r28
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	beq r2, zero, .LBB0_274
.LBB0_272:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r27, r13
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r2, zero, .LBB0_256
	j .LBB0_275
.LBB0_273:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r25
	and r14, r2, r26
	setlt.u r2, r27, r28
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r2, zero, .LBB0_272
.LBB0_274:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r25
	and r12, r2, r26
	setlt.u r2, r27, r13
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r2, zero, .LBB0_256
.LBB0_275:                              # %vector.body221
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r25
	and r6, r2, r26
	j .LBB0_256
.LBB0_276:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r6, zero, 1
	addli r13, zero, 7
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	mfence { sm }
	.loc	1 420 7                         # parallel-rne.mlir:420:7
	bneq r2, r6, .LBB0_247
.LBB0_277:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 420 7                         # parallel-rne.mlir:420:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_279
.LBB0_278:                              # %middle.block219
                                        #   in Loop: Header=BB0_279 Depth=2
	.loc	1 428 9 is_stmt 1               # parallel-rne.mlir:428:9
	andi r4, r1, 1
	addli r1, zero, 96
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_300
.LBB0_279:                              # %vector.ph214
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_281 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_281
.LBB0_280:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 429 11 is_stmt 1              # parallel-rne.mlir:429:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[7:8], r5
	.loc	1 444 13                        # parallel-rne.mlir:444:13
	add.s r4, r4, r15
	.loc	1 429 11                        # parallel-rne.mlir:429:11
	setneq.d r7, r[10:11], r[7:8]
	.loc	1 444 13                        # parallel-rne.mlir:444:13
	stores.w r6, 12(r4)
	stores.w r12, 8(r4)
	stores.w r14, 4(r4)
	stores.w r19, 0(r4)
	.loc	1 429 11                        # parallel-rne.mlir:429:11
	beq r7, zero, .LBB0_278
.LBB0_281:                              # %vector.body215
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	loads.w r7, 12(r4)
	loads.w r21, 0(r4)
	loads.w r18, 4(r4)
	loads.w r9, 8(r4)
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	and r13, r7, r22
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	setlt.u r6, r24, r13
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r6, zero, .LBB0_283
# %bb.282:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_284
.LBB0_283:                              #   in Loop: Header=BB0_281 Depth=3
	or r6, r7, r23
.LBB0_284:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	and r20, r9, r22
	setlt.u r8, r24, r20
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r8, zero, .LBB0_286
# %bb.285:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	j .LBB0_287
.LBB0_286:                              #   in Loop: Header=BB0_281 Depth=3
	or r12, r9, r23
.LBB0_287:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	and r28, r18, r22
	setlt.u r8, r24, r28
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r8, zero, .LBB0_289
# %bb.288:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_290
.LBB0_289:                              #   in Loop: Header=BB0_281 Depth=3
	or r14, r18, r23
.LBB0_290:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	and r8, r21, r22
	setlt.u r19, r24, r8
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r19, zero, .LBB0_292
# %bb.291:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 441 19 is_stmt 1              # parallel-rne.mlir:441:19
	setlt.u r8, r27, r8
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	beq r8, zero, .LBB0_293
	j .LBB0_294
.LBB0_292:                              #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r23
	.loc	1 441 19 is_stmt 1              # parallel-rne.mlir:441:19
	setlt.u r8, r27, r8
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r8, zero, .LBB0_294
.LBB0_293:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r21, 16
	andi r8, r8, 1
	add.s r8, r21, r8
	add.s r8, r8, r25
	and r19, r8, r26
.LBB0_294:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	setlt.u r8, r27, r28
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	beq r8, zero, .LBB0_297
# %bb.295:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r20
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	beq r8, zero, .LBB0_298
.LBB0_296:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r13
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r8, zero, .LBB0_280
	j .LBB0_299
.LBB0_297:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r18, 16
	andi r8, r8, 1
	add.s r8, r18, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r20
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r8, zero, .LBB0_296
.LBB0_298:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r25
	and r12, r8, r26
	setlt.u r8, r27, r13
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r8, zero, .LBB0_280
.LBB0_299:                              # %vector.body215
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r25
	and r6, r6, r26
	j .LBB0_280
.LBB0_300:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 7
	.loc	1 420 7                         # parallel-rne.mlir:420:7
	mfence { sm }
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	addli r1, zero, 2
	bneq r2, r1, .LBB0_248
.LBB0_301:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_303
.LBB0_302:                              # %middle.block213
                                        #   in Loop: Header=BB0_303 Depth=2
	.loc	1 457 9 is_stmt 1               # parallel-rne.mlir:457:9
	andi r4, r1, 1
	addli r1, zero, 160
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_324
.LBB0_303:                              # %vector.ph208
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_305 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_305
.LBB0_304:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 458 11 is_stmt 1              # parallel-rne.mlir:458:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[7:8], r5
	.loc	1 473 13                        # parallel-rne.mlir:473:13
	add.s r4, r4, r15
	.loc	1 458 11                        # parallel-rne.mlir:458:11
	setneq.d r7, r[10:11], r[7:8]
	.loc	1 473 13                        # parallel-rne.mlir:473:13
	stores.w r6, 12(r4)
	stores.w r12, 8(r4)
	stores.w r14, 4(r4)
	stores.w r19, 0(r4)
	.loc	1 458 11                        # parallel-rne.mlir:458:11
	beq r7, zero, .LBB0_302
.LBB0_305:                              # %vector.body209
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	loads.w r7, 12(r4)
	loads.w r21, 0(r4)
	loads.w r18, 4(r4)
	loads.w r9, 8(r4)
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	and r13, r7, r22
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	setlt.u r6, r24, r13
	.loc	1 464 19                        # parallel-rne.mlir:464:19
	bneq r6, zero, .LBB0_307
# %bb.306:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_308
.LBB0_307:                              #   in Loop: Header=BB0_305 Depth=3
	or r6, r7, r23
.LBB0_308:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	and r20, r9, r22
	setlt.u r8, r24, r20
	.loc	1 464 19                        # parallel-rne.mlir:464:19
	bneq r8, zero, .LBB0_310
# %bb.309:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	j .LBB0_311
.LBB0_310:                              #   in Loop: Header=BB0_305 Depth=3
	or r12, r9, r23
.LBB0_311:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	and r28, r18, r22
	setlt.u r8, r24, r28
	.loc	1 464 19                        # parallel-rne.mlir:464:19
	bneq r8, zero, .LBB0_313
# %bb.312:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_305 Depth=3
	or r14, r18, r23
.LBB0_314:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	and r8, r21, r22
	setlt.u r19, r24, r8
	.loc	1 464 19                        # parallel-rne.mlir:464:19
	bneq r19, zero, .LBB0_316
# %bb.315:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 470 19 is_stmt 1              # parallel-rne.mlir:470:19
	setlt.u r8, r27, r8
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	beq r8, zero, .LBB0_317
	j .LBB0_318
.LBB0_316:                              #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r23
	.loc	1 470 19 is_stmt 1              # parallel-rne.mlir:470:19
	setlt.u r8, r27, r8
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	bneq r8, zero, .LBB0_318
.LBB0_317:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r21, 16
	andi r8, r8, 1
	add.s r8, r21, r8
	add.s r8, r8, r25
	and r19, r8, r26
.LBB0_318:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	setlt.u r8, r27, r28
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	beq r8, zero, .LBB0_321
# %bb.319:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r20
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	beq r8, zero, .LBB0_322
.LBB0_320:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r13
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	bneq r8, zero, .LBB0_304
	j .LBB0_323
.LBB0_321:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r18, 16
	andi r8, r8, 1
	add.s r8, r18, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r20
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	bneq r8, zero, .LBB0_320
.LBB0_322:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r25
	and r12, r8, r26
	setlt.u r8, r27, r13
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	bneq r8, zero, .LBB0_304
.LBB0_323:                              # %vector.body209
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r25
	and r6, r6, r26
	j .LBB0_304
.LBB0_324:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 7
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	mfence { sm }
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	addli r1, zero, 3
	bneq r2, r1, .LBB0_249
.LBB0_325:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 192
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_327
.LBB0_326:                              # %middle.block207
                                        #   in Loop: Header=BB0_327 Depth=2
	.loc	1 486 9 is_stmt 1               # parallel-rne.mlir:486:9
	andi r4, r1, 1
	addli r1, zero, 224
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_348
.LBB0_327:                              # %vector.ph202
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_329 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_329
.LBB0_328:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 487 11 is_stmt 1              # parallel-rne.mlir:487:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[7:8], r5
	.loc	1 502 13                        # parallel-rne.mlir:502:13
	add.s r4, r4, r15
	.loc	1 487 11                        # parallel-rne.mlir:487:11
	setneq.d r7, r[10:11], r[7:8]
	.loc	1 502 13                        # parallel-rne.mlir:502:13
	stores.w r6, 12(r4)
	stores.w r12, 8(r4)
	stores.w r14, 4(r4)
	stores.w r19, 0(r4)
	.loc	1 487 11                        # parallel-rne.mlir:487:11
	beq r7, zero, .LBB0_326
.LBB0_329:                              # %vector.body203
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_327 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	loads.w r7, 12(r4)
	loads.w r21, 0(r4)
	loads.w r18, 4(r4)
	loads.w r9, 8(r4)
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	and r13, r7, r22
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	setlt.u r6, r24, r13
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r6, zero, .LBB0_331
# %bb.330:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_332
.LBB0_331:                              #   in Loop: Header=BB0_329 Depth=3
	or r6, r7, r23
.LBB0_332:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	and r20, r9, r22
	setlt.u r8, r24, r20
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r8, zero, .LBB0_334
# %bb.333:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	j .LBB0_335
.LBB0_334:                              #   in Loop: Header=BB0_329 Depth=3
	or r12, r9, r23
.LBB0_335:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	and r28, r18, r22
	setlt.u r8, r24, r28
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r8, zero, .LBB0_337
# %bb.336:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_338
.LBB0_337:                              #   in Loop: Header=BB0_329 Depth=3
	or r14, r18, r23
.LBB0_338:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	and r8, r21, r22
	setlt.u r19, r24, r8
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	bneq r19, zero, .LBB0_340
# %bb.339:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 499 19 is_stmt 1              # parallel-rne.mlir:499:19
	setlt.u r8, r27, r8
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	beq r8, zero, .LBB0_341
	j .LBB0_342
.LBB0_340:                              #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r23
	.loc	1 499 19 is_stmt 1              # parallel-rne.mlir:499:19
	setlt.u r8, r27, r8
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r8, zero, .LBB0_342
.LBB0_341:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r21, 16
	andi r8, r8, 1
	add.s r8, r21, r8
	add.s r8, r8, r25
	and r19, r8, r26
.LBB0_342:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	setlt.u r8, r27, r28
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	beq r8, zero, .LBB0_345
# %bb.343:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r20
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	beq r8, zero, .LBB0_346
.LBB0_344:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r13
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r8, zero, .LBB0_328
	j .LBB0_347
.LBB0_345:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r18, 16
	andi r8, r8, 1
	add.s r8, r18, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r20
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r8, zero, .LBB0_344
.LBB0_346:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r25
	and r12, r8, r26
	setlt.u r8, r27, r13
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	bneq r8, zero, .LBB0_328
.LBB0_347:                              # %vector.body203
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r25
	and r6, r6, r26
	j .LBB0_328
.LBB0_348:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 7
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	mfence { sm }
	.loc	1 507 7                         # parallel-rne.mlir:507:7
	addli r1, zero, 4
	bneq r2, r1, .LBB0_250
.LBB0_349:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 507 7                         # parallel-rne.mlir:507:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_351
.LBB0_350:                              # %middle.block201
                                        #   in Loop: Header=BB0_351 Depth=2
	.loc	1 515 9 is_stmt 1               # parallel-rne.mlir:515:9
	andi r4, r1, 1
	addli r1, zero, 288
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_372
.LBB0_351:                              # %vector.ph196
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_353 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_353
.LBB0_352:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 516 11 is_stmt 1              # parallel-rne.mlir:516:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[7:8], r5
	.loc	1 531 13                        # parallel-rne.mlir:531:13
	add.s r4, r4, r15
	.loc	1 516 11                        # parallel-rne.mlir:516:11
	setneq.d r7, r[10:11], r[7:8]
	.loc	1 531 13                        # parallel-rne.mlir:531:13
	stores.w r6, 12(r4)
	stores.w r12, 8(r4)
	stores.w r14, 4(r4)
	stores.w r19, 0(r4)
	.loc	1 516 11                        # parallel-rne.mlir:516:11
	beq r7, zero, .LBB0_350
.LBB0_353:                              # %vector.body197
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	loads.w r7, 12(r4)
	loads.w r21, 0(r4)
	loads.w r18, 4(r4)
	loads.w r9, 8(r4)
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	and r13, r7, r22
	.loc	1 521 19                        # parallel-rne.mlir:521:19
	setlt.u r6, r24, r13
	.loc	1 522 19                        # parallel-rne.mlir:522:19
	bneq r6, zero, .LBB0_355
# %bb.354:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_356
.LBB0_355:                              #   in Loop: Header=BB0_353 Depth=3
	or r6, r7, r23
.LBB0_356:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	and r20, r9, r22
	setlt.u r8, r24, r20
	.loc	1 522 19                        # parallel-rne.mlir:522:19
	bneq r8, zero, .LBB0_358
# %bb.357:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	j .LBB0_359
.LBB0_358:                              #   in Loop: Header=BB0_353 Depth=3
	or r12, r9, r23
.LBB0_359:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	and r28, r18, r22
	setlt.u r8, r24, r28
	.loc	1 522 19                        # parallel-rne.mlir:522:19
	bneq r8, zero, .LBB0_361
# %bb.360:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_362
.LBB0_361:                              #   in Loop: Header=BB0_353 Depth=3
	or r14, r18, r23
.LBB0_362:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	and r8, r21, r22
	setlt.u r19, r24, r8
	.loc	1 522 19                        # parallel-rne.mlir:522:19
	bneq r19, zero, .LBB0_364
# %bb.363:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 528 19 is_stmt 1              # parallel-rne.mlir:528:19
	setlt.u r8, r27, r8
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	beq r8, zero, .LBB0_365
	j .LBB0_366
.LBB0_364:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r23
	.loc	1 528 19 is_stmt 1              # parallel-rne.mlir:528:19
	setlt.u r8, r27, r8
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	bneq r8, zero, .LBB0_366
.LBB0_365:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r21, 16
	andi r8, r8, 1
	add.s r8, r21, r8
	add.s r8, r8, r25
	and r19, r8, r26
.LBB0_366:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	setlt.u r8, r27, r28
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	beq r8, zero, .LBB0_369
# %bb.367:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r20
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	beq r8, zero, .LBB0_370
.LBB0_368:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r13
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	bneq r8, zero, .LBB0_352
	j .LBB0_371
.LBB0_369:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r18, 16
	andi r8, r8, 1
	add.s r8, r18, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r20
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	bneq r8, zero, .LBB0_368
.LBB0_370:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r25
	and r12, r8, r26
	setlt.u r8, r27, r13
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	bneq r8, zero, .LBB0_352
.LBB0_371:                              # %vector.body197
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r25
	and r6, r6, r26
	j .LBB0_352
.LBB0_372:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 7
	.loc	1 507 7                         # parallel-rne.mlir:507:7
	mfence { sm }
	.loc	1 536 7                         # parallel-rne.mlir:536:7
	addli r1, zero, 5
	bneq r2, r1, .LBB0_251
.LBB0_373:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 320
	.loc	1 536 7                         # parallel-rne.mlir:536:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_375
.LBB0_374:                              # %middle.block195
                                        #   in Loop: Header=BB0_375 Depth=2
	.loc	1 544 9 is_stmt 1               # parallel-rne.mlir:544:9
	andi r4, r1, 1
	addli r1, zero, 352
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_396
.LBB0_375:                              # %vector.ph190
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_377 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_377
.LBB0_376:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 545 11 is_stmt 1              # parallel-rne.mlir:545:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[7:8], r5
	.loc	1 560 13                        # parallel-rne.mlir:560:13
	add.s r4, r4, r15
	.loc	1 545 11                        # parallel-rne.mlir:545:11
	setneq.d r7, r[10:11], r[7:8]
	.loc	1 560 13                        # parallel-rne.mlir:560:13
	stores.w r6, 12(r4)
	stores.w r12, 8(r4)
	stores.w r14, 4(r4)
	stores.w r19, 0(r4)
	.loc	1 545 11                        # parallel-rne.mlir:545:11
	beq r7, zero, .LBB0_374
.LBB0_377:                              # %vector.body191
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_375 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	loads.w r7, 12(r4)
	loads.w r21, 0(r4)
	loads.w r18, 4(r4)
	loads.w r9, 8(r4)
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	and r13, r7, r22
	.loc	1 550 19                        # parallel-rne.mlir:550:19
	setlt.u r6, r24, r13
	.loc	1 551 19                        # parallel-rne.mlir:551:19
	bneq r6, zero, .LBB0_379
# %bb.378:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_380
.LBB0_379:                              #   in Loop: Header=BB0_377 Depth=3
	or r6, r7, r23
.LBB0_380:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	and r20, r9, r22
	setlt.u r8, r24, r20
	.loc	1 551 19                        # parallel-rne.mlir:551:19
	bneq r8, zero, .LBB0_382
# %bb.381:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	j .LBB0_383
.LBB0_382:                              #   in Loop: Header=BB0_377 Depth=3
	or r12, r9, r23
.LBB0_383:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	and r28, r18, r22
	setlt.u r8, r24, r28
	.loc	1 551 19                        # parallel-rne.mlir:551:19
	bneq r8, zero, .LBB0_385
# %bb.384:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_377 Depth=3
	or r14, r18, r23
.LBB0_386:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	and r8, r21, r22
	setlt.u r19, r24, r8
	.loc	1 551 19                        # parallel-rne.mlir:551:19
	bneq r19, zero, .LBB0_388
# %bb.387:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 557 19 is_stmt 1              # parallel-rne.mlir:557:19
	setlt.u r8, r27, r8
	.loc	1 558 19                        # parallel-rne.mlir:558:19
	beq r8, zero, .LBB0_389
	j .LBB0_390
.LBB0_388:                              #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r23
	.loc	1 557 19 is_stmt 1              # parallel-rne.mlir:557:19
	setlt.u r8, r27, r8
	.loc	1 558 19                        # parallel-rne.mlir:558:19
	bneq r8, zero, .LBB0_390
.LBB0_389:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r21, 16
	andi r8, r8, 1
	add.s r8, r21, r8
	add.s r8, r8, r25
	and r19, r8, r26
.LBB0_390:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	setlt.u r8, r27, r28
	.loc	1 558 19                        # parallel-rne.mlir:558:19
	beq r8, zero, .LBB0_393
# %bb.391:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r20
	.loc	1 558 19                        # parallel-rne.mlir:558:19
	beq r8, zero, .LBB0_394
.LBB0_392:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r13
	.loc	1 558 19                        # parallel-rne.mlir:558:19
	bneq r8, zero, .LBB0_376
	j .LBB0_395
.LBB0_393:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r18, 16
	andi r8, r8, 1
	add.s r8, r18, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r20
	.loc	1 558 19                        # parallel-rne.mlir:558:19
	bneq r8, zero, .LBB0_392
.LBB0_394:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r25
	and r12, r8, r26
	setlt.u r8, r27, r13
	.loc	1 558 19                        # parallel-rne.mlir:558:19
	bneq r8, zero, .LBB0_376
.LBB0_395:                              # %vector.body191
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r25
	and r6, r6, r26
	j .LBB0_376
.LBB0_396:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 7
	.loc	1 536 7                         # parallel-rne.mlir:536:7
	mfence { sm }
	addli r3, zero, 6
	.loc	1 565 7                         # parallel-rne.mlir:565:7
	bneq r2, r3, .LBB0_252
.LBB0_397:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 384
	.loc	1 565 7                         # parallel-rne.mlir:565:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_399
.LBB0_398:                              # %middle.block189
                                        #   in Loop: Header=BB0_399 Depth=2
	.loc	1 573 9 is_stmt 1               # parallel-rne.mlir:573:9
	andi r4, r1, 1
	addli r1, zero, 416
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_420
.LBB0_399:                              # %vector.ph184
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_401 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_401
.LBB0_400:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 574 11 is_stmt 1              # parallel-rne.mlir:574:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[7:8], r5
	.loc	1 589 13                        # parallel-rne.mlir:589:13
	add.s r4, r4, r15
	.loc	1 574 11                        # parallel-rne.mlir:574:11
	setneq.d r7, r[10:11], r[7:8]
	.loc	1 589 13                        # parallel-rne.mlir:589:13
	stores.w r6, 12(r4)
	stores.w r12, 8(r4)
	stores.w r14, 4(r4)
	stores.w r19, 0(r4)
	.loc	1 574 11                        # parallel-rne.mlir:574:11
	beq r7, zero, .LBB0_398
.LBB0_401:                              # %vector.body185
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_399 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	loads.w r7, 12(r4)
	loads.w r21, 0(r4)
	loads.w r18, 4(r4)
	loads.w r9, 8(r4)
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	and r13, r7, r22
	.loc	1 579 19                        # parallel-rne.mlir:579:19
	setlt.u r6, r24, r13
	.loc	1 580 19                        # parallel-rne.mlir:580:19
	bneq r6, zero, .LBB0_403
# %bb.402:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_404
.LBB0_403:                              #   in Loop: Header=BB0_401 Depth=3
	or r6, r7, r23
.LBB0_404:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	and r20, r9, r22
	setlt.u r8, r24, r20
	.loc	1 580 19                        # parallel-rne.mlir:580:19
	bneq r8, zero, .LBB0_406
# %bb.405:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_401 Depth=3
	or r12, r9, r23
.LBB0_407:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	and r28, r18, r22
	setlt.u r8, r24, r28
	.loc	1 580 19                        # parallel-rne.mlir:580:19
	bneq r8, zero, .LBB0_409
# %bb.408:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_401 Depth=3
	or r14, r18, r23
.LBB0_410:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	and r8, r21, r22
	setlt.u r19, r24, r8
	.loc	1 580 19                        # parallel-rne.mlir:580:19
	bneq r19, zero, .LBB0_412
# %bb.411:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 586 19 is_stmt 1              # parallel-rne.mlir:586:19
	setlt.u r8, r27, r8
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	beq r8, zero, .LBB0_413
	j .LBB0_414
.LBB0_412:                              #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r23
	.loc	1 586 19 is_stmt 1              # parallel-rne.mlir:586:19
	setlt.u r8, r27, r8
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	bneq r8, zero, .LBB0_414
.LBB0_413:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r21, 16
	andi r8, r8, 1
	add.s r8, r21, r8
	add.s r8, r8, r25
	and r19, r8, r26
.LBB0_414:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	setlt.u r8, r27, r28
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	beq r8, zero, .LBB0_417
# %bb.415:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r20
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	beq r8, zero, .LBB0_418
.LBB0_416:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r13
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	bneq r8, zero, .LBB0_400
	j .LBB0_419
.LBB0_417:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r18, 16
	andi r8, r8, 1
	add.s r8, r18, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r20
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	bneq r8, zero, .LBB0_416
.LBB0_418:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r25
	and r12, r8, r26
	setlt.u r8, r27, r13
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	bneq r8, zero, .LBB0_400
.LBB0_419:                              # %vector.body185
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r25
	and r6, r6, r26
	j .LBB0_400
.LBB0_420:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r3, zero, 6
	addli r13, zero, 7
	.loc	1 565 7                         # parallel-rne.mlir:565:7
	mfence { sm }
	.loc	1 594 7                         # parallel-rne.mlir:594:7
	bneq r2, r13, .LBB0_445
.LBB0_421:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 448
	.loc	1 594 7                         # parallel-rne.mlir:594:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r2
	j .LBB0_423
.LBB0_422:                              # %middle.block183
                                        #   in Loop: Header=BB0_423 Depth=2
	.loc	1 602 9 is_stmt 1               # parallel-rne.mlir:602:9
	andi r4, r1, 1
	addli r1, zero, 480
	zext_int2long r[2:3], r1
	addli r1, zero, 0
	beq r4, zero, .LBB0_444
.LBB0_423:                              # %vector.ph178
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_425 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[10:11], zero
	j .LBB0_425
.LBB0_424:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 603 11 is_stmt 1              # parallel-rne.mlir:603:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[7:8], r5
	.loc	1 618 13                        # parallel-rne.mlir:618:13
	add.s r4, r4, r15
	.loc	1 603 11                        # parallel-rne.mlir:603:11
	setneq.d r7, r[10:11], r[7:8]
	.loc	1 618 13                        # parallel-rne.mlir:618:13
	stores.w r6, 12(r4)
	stores.w r12, 8(r4)
	stores.w r14, 4(r4)
	stores.w r19, 0(r4)
	.loc	1 603 11                        # parallel-rne.mlir:603:11
	beq r7, zero, .LBB0_422
.LBB0_425:                              # %vector.body179
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_423 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	add.ul r[6:7], r[10:11], r[2:3]
	slli r4, r6, 2
	loads.w r7, 12(r4)
	loads.w r21, 0(r4)
	loads.w r18, 4(r4)
	loads.w r9, 8(r4)
	.loc	1 606 19                        # parallel-rne.mlir:606:19
	and r13, r7, r22
	.loc	1 608 19                        # parallel-rne.mlir:608:19
	setlt.u r6, r24, r13
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r6, zero, .LBB0_427
# %bb.426:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	j .LBB0_428
.LBB0_427:                              #   in Loop: Header=BB0_425 Depth=3
	or r6, r7, r23
.LBB0_428:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	and r20, r9, r22
	setlt.u r8, r24, r20
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r8, zero, .LBB0_430
# %bb.429:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
	j .LBB0_431
.LBB0_430:                              #   in Loop: Header=BB0_425 Depth=3
	or r12, r9, r23
.LBB0_431:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	and r28, r18, r22
	setlt.u r8, r24, r28
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r8, zero, .LBB0_433
# %bb.432:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_434
.LBB0_433:                              #   in Loop: Header=BB0_425 Depth=3
	or r14, r18, r23
.LBB0_434:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	and r8, r21, r22
	setlt.u r19, r24, r8
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r19, zero, .LBB0_436
# %bb.435:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 615 19 is_stmt 1              # parallel-rne.mlir:615:19
	setlt.u r8, r27, r8
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	beq r8, zero, .LBB0_437
	j .LBB0_438
.LBB0_436:                              #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r23
	.loc	1 615 19 is_stmt 1              # parallel-rne.mlir:615:19
	setlt.u r8, r27, r8
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	bneq r8, zero, .LBB0_438
.LBB0_437:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r21, 16
	andi r8, r8, 1
	add.s r8, r21, r8
	add.s r8, r8, r25
	and r19, r8, r26
.LBB0_438:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	setlt.u r8, r27, r28
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	beq r8, zero, .LBB0_441
# %bb.439:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r20
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	beq r8, zero, .LBB0_442
.LBB0_440:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r27, r13
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	bneq r8, zero, .LBB0_424
	j .LBB0_443
.LBB0_441:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r18, 16
	andi r8, r8, 1
	add.s r8, r18, r8
	add.s r8, r8, r25
	and r14, r8, r26
	setlt.u r8, r27, r20
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	bneq r8, zero, .LBB0_440
.LBB0_442:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r25
	and r12, r8, r26
	setlt.u r8, r27, r13
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	bneq r8, zero, .LBB0_424
.LBB0_443:                              # %vector.body179
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r25
	and r6, r6, r26
	j .LBB0_424
.LBB0_444:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r3, zero, 6
	addli r13, zero, 7
	.loc	1 594 7                         # parallel-rne.mlir:594:7
	mfence { sm }
.LBB0_445:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	addli r1, zero, 255
	csr_set csr5, r1
	lui r1, 256
	sync_core
	ori r6, r1, 2176
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	addli r1, zero, 3
	bneq r2, r1, .LBB0_447
# %bb.446:                              # %.critedge13
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 14
	.loc	1 625 7 is_stmt 1               # parallel-rne.mlir:625:7
	addli r4, zero, 21
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	xsignal r1, 0
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	xsignal r4, 0
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	addli r4, zero, 19
	xsignal r4, 0
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	xwait r1, 0
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	addli r1, zero, 20
	xwait r1, 0
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	addli r1, zero, 23
	xwait r1, 0
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	addli r1, zero, 25
	xwait r1, 0
	j .LBB0_449
.LBB0_447:                              # %.critedge9
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	addli r1, zero, 5
	bneq r2, r1, .LBB0_449
# %bb.448:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 19
	addli r4, zero, 2
	addli r7, zero, 511
	lui r5, 268284
	xwait r1, 0
	addli r1, zero, 24
	xwait r1, 0
	lock zero, r4
	addli r1, zero, 1
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r7, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	ew_cfg r4, zero, zero, 10
	loadli.w r3,  -4196(r30)                # 4-byte Folded Reload
	ew_cfg r4, r1, r3, 11
	addli r3, zero, 4
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r3, r5, 14
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	addli r5, zero, 21
	addli r3, zero, 6
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	ew_cfg zero, zero, zero, 15
	sslut r6, r15, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r4
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	xwait r5, 0
	addli r5, zero, 26
	xwait r5, 0
	lock zero, r4
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r5, 0
	ew_cfg zero, r7, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, r1, 19
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	dsmul r1, r15, r6, 0
	addli r1, zero, 20
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r1, 0
	addli r1, zero, 23
	xsignal r1, 0
	addli r1, zero, 25
	xsignal r1, 0
.LBB0_449:                              # %.critedge15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	xfence
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	addli r1, zero, 255
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	mfence { lm, sm, gm }
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	csr_set csr5, r1
	sync_core
	.loc	1 640 7                         # parallel-rne.mlir:640:7
	beq r2, zero, .LBB0_456
# %bb.450:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 687 7                         # parallel-rne.mlir:687:7
	addli r1, zero, 1
	beq r2, r1, .LBB0_488
.LBB0_451:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 734 7                         # parallel-rne.mlir:734:7
	addli r1, zero, 2
	beq r2, r1, .LBB0_520
.LBB0_452:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	addli r1, zero, 3
	beq r2, r1, .LBB0_552
.LBB0_453:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 828 7                         # parallel-rne.mlir:828:7
	addli r1, zero, 4
	beq r2, r1, .LBB0_584
.LBB0_454:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 875 7                         # parallel-rne.mlir:875:7
	addli r1, zero, 5
	beq r2, r1, .LBB0_616
.LBB0_455:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 922 7                         # parallel-rne.mlir:922:7
	beq r2, r3, .LBB0_648
	j .LBB0_680
.LBB0_456:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 640 7                         # parallel-rne.mlir:640:7
	xfence
	zext_int2long r[3:4], zero
	addli r2, zero, 1
	addli r1, r30, -4136
	mfence { lm, sm, gm }
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	j .LBB0_458
.LBB0_457:                              # %middle.block177
                                        #   in Loop: Header=BB0_458 Depth=2
	.loc	1 648 9                         # parallel-rne.mlir:648:9
	loadli.w r1,  -4120(r30)                # 4-byte Folded Reload
	addli r2, r30, -4104
	load.d r[3:4], 0(r2)                    # 8-byte Folded Reload
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_487
.LBB0_458:                              # %vector.ph170
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_460 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -4136
	storeli.w r2, -4120(r30)                # 4-byte Folded Spill
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_460
.LBB0_459:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 649 11 is_stmt 1              # parallel-rne.mlir:649:11
	addli r1, r30, -4104
	addli.d r[20:21], r[20:21], 4
	.loc	1 682 13                        # parallel-rne.mlir:682:13
	stores.w r12, 12(r2)
	stores.w r9, 8(r2)
	stores.w r14, 4(r2)
	stores.w r10, 0(r2)
	.loc	1 649 11                        # parallel-rne.mlir:649:11
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setneq.d r1, r[20:21], r[7:8]
	beq r1, zero, .LBB0_457
.LBB0_460:                              # %vector.body171
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_458 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	add.ul r[1:2], r[20:21], r[3:4]
	slli r2, r1, 2
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	add.s r8, r2, r15
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	add.s r12, r2, r6
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	add.s r1, r2, r1
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	loads.w r18, 0(r12)
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	loads.w r14, 0(r8)
	loads.w r7, 4(r8)
	loads.w r19, 8(r8)
	loads.w r9, 12(r8)
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	loads.w r11, 4(r12)
	loads.w r10, 8(r12)
	loads.w r12, 12(r12)
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	loads.w r13, 12(r1)
	.loc	1 657 19                        # parallel-rne.mlir:657:19
	and r8, r14, r22
	.loc	1 655 19                        # parallel-rne.mlir:655:19
	and r18, r18, r22
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	loads.w r14, 8(r1)
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	seteq r28, r8, r24
	.loc	1 659 19                        # parallel-rne.mlir:659:19
	seteq r5, r18, zero
	.loc	1 661 19                        # parallel-rne.mlir:661:19
	seteq r16, r18, r24
	.loc	1 662 19                        # parallel-rne.mlir:662:19
	seteq r17, r8, zero
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	max.u r18, r8, r18
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	loads.w r8, 4(r1)
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	setlt.u r18, r24, r18
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	and r5, r28, r5
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	and r16, r17, r16
	lui r28, 523264
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	or r5, r5, r16
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	or r5, r18, r5
	lui r18, 523264
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	bneq r5, zero, .LBB0_462
# %bb.461:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r1)
.LBB0_462:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	and r1, r7, r22
	and r5, r11, r22
	seteq r7, r1, r24
	seteq r17, r1, zero
	seteq r11, r5, zero
	seteq r16, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r7, r11
	and r7, r17, r16
	or r5, r5, r7
	lui r7, 523264
	or r1, r1, r5
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	bneq r1, zero, .LBB0_464
# %bb.463:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
.LBB0_464:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	and r1, r19, r22
	and r5, r10, r22
	lui r19, 523264
	seteq r8, r1, r24
	seteq r16, r1, zero
	seteq r10, r5, zero
	seteq r11, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r10
	and r8, r16, r11
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	bneq r1, zero, .LBB0_466
# %bb.465:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
.LBB0_466:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	and r1, r9, r22
	and r5, r12, r22
	seteq r8, r1, r24
	seteq r11, r1, zero
	seteq r9, r5, zero
	seteq r10, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r9
	and r8, r11, r10
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	bneq r1, zero, .LBB0_468
# %bb.467:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r13, 0
.LBB0_468:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 670 19 is_stmt 1              # parallel-rne.mlir:670:19
	and r13, r28, r22
	.loc	1 672 19                        # parallel-rne.mlir:672:19
	setlt.u r1, r24, r13
	.loc	1 673 19                        # parallel-rne.mlir:673:19
	bneq r1, zero, .LBB0_470
# %bb.469:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r28, 0
	j .LBB0_471
.LBB0_470:                              #   in Loop: Header=BB0_460 Depth=3
	or r12, r28, r23
.LBB0_471:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	and r11, r19, r22
	setlt.u r1, r24, r11
	.loc	1 673 19                        # parallel-rne.mlir:673:19
	bneq r1, zero, .LBB0_473
# %bb.472:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r19, 0
	j .LBB0_474
.LBB0_473:                              #   in Loop: Header=BB0_460 Depth=3
	or r9, r19, r23
.LBB0_474:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	and r1, r7, r22
	setlt.u r5, r24, r1
	.loc	1 673 19                        # parallel-rne.mlir:673:19
	bneq r5, zero, .LBB0_476
# %bb.475:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r7, 0
	j .LBB0_477
.LBB0_476:                              #   in Loop: Header=BB0_460 Depth=3
	or r14, r7, r23
.LBB0_477:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	and r8, r18, r22
	setlt.u r5, r24, r8
	.loc	1 673 19                        # parallel-rne.mlir:673:19
	bneq r5, zero, .LBB0_479
# %bb.478:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r18, 0
	.loc	1 679 19 is_stmt 1              # parallel-rne.mlir:679:19
	setlt.u r5, r27, r8
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	beq r5, zero, .LBB0_480
	j .LBB0_481
.LBB0_479:                              #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r18, r23
	.loc	1 679 19 is_stmt 1              # parallel-rne.mlir:679:19
	setlt.u r5, r27, r8
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	bneq r5, zero, .LBB0_481
.LBB0_480:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r18, 16
	andi r5, r5, 1
	add.s r5, r18, r5
	add.s r5, r5, r25
	and r10, r5, r26
.LBB0_481:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	setlt.u r1, r27, r1
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	beq r1, zero, .LBB0_484
# %bb.482:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r11
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	beq r1, zero, .LBB0_485
.LBB0_483:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r13
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	bneq r1, zero, .LBB0_459
	j .LBB0_486
.LBB0_484:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r25
	and r14, r1, r26
	setlt.u r1, r27, r11
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	bneq r1, zero, .LBB0_483
.LBB0_485:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r25
	and r9, r1, r26
	setlt.u r1, r27, r13
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	bneq r1, zero, .LBB0_459
.LBB0_486:                              # %vector.body171
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r25
	and r12, r1, r26
	j .LBB0_459
.LBB0_487:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r3, zero, 6
	addli r13, zero, 7
	.loc	1 640 7                         # parallel-rne.mlir:640:7
	mfence { sm }
	.loc	1 687 7                         # parallel-rne.mlir:687:7
	addli r1, zero, 1
	bneq r2, r1, .LBB0_451
.LBB0_488:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 64
	.loc	1 687 7                         # parallel-rne.mlir:687:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[20:21], r1
	j .LBB0_490
.LBB0_489:                              # %middle.block169
                                        #   in Loop: Header=BB0_490 Depth=2
	.loc	1 695 9 is_stmt 1               # parallel-rne.mlir:695:9
	loadli.w r1,  -4120(r30)                # 4-byte Folded Reload
	addli r2, r30, -4128
	load.d r[20:21], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_519
.LBB0_490:                              # %vector.ph162
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_492 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -4120(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], zero
	j .LBB0_492
.LBB0_491:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 696 11 is_stmt 1              # parallel-rne.mlir:696:11
	addli r1, r30, -4104
	addli.d r[2:3], r[2:3], 4
	.loc	1 729 13                        # parallel-rne.mlir:729:13
	stores.w r12, 12(r4)
	stores.w r9, 8(r4)
	stores.w r14, 4(r4)
	stores.w r19, 0(r4)
	.loc	1 696 11                        # parallel-rne.mlir:696:11
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setneq.d r1, r[2:3], r[7:8]
	beq r1, zero, .LBB0_489
.LBB0_492:                              # %vector.body163
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_490 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	add.ul r[4:5], r[2:3], r[20:21]
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	slli r4, r4, 2
	add.s r5, r4, r15
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	add.s r8, r4, r6
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	add.s r1, r4, r1
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	loads.w r10, 0(r5)
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	loads.w r11, 0(r8)
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	loads.w r7, 4(r5)
	loads.w r18, 8(r5)
	loads.w r9, 12(r5)
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	loads.w r28, 4(r8)
	loads.w r19, 8(r8)
	loads.w r12, 12(r8)
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	loads.w r13, 12(r1)
	loads.w r14, 8(r1)
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	and r5, r10, r22
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	and r8, r11, r22
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	seteq r10, r5, r24
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	seteq r11, r8, zero
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	seteq r17, r5, zero
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	seteq r16, r8, r24
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	max.u r5, r5, r8
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	loads.w r8, 4(r1)
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	setlt.u r5, r24, r5
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	and r10, r10, r11
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	and r11, r17, r16
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	or r5, r5, r10
	lui r10, 523264
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	bneq r5, zero, .LBB0_494
# %bb.493:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r1)
.LBB0_494:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	and r1, r7, r22
	and r5, r28, r22
	seteq r7, r1, r24
	seteq r28, r1, zero
	seteq r16, r5, zero
	seteq r17, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r7, r16
	and r7, r28, r17
	or r5, r5, r7
	lui r7, 523264
	or r1, r1, r5
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	bneq r1, zero, .LBB0_496
# %bb.495:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
.LBB0_496:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	and r1, r18, r22
	and r5, r19, r22
	seteq r8, r1, r24
	seteq r18, r1, zero
	seteq r16, r5, zero
	seteq r17, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r16
	and r8, r18, r17
	lui r18, 523264
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	bneq r1, zero, .LBB0_498
# %bb.497:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r14, 0
.LBB0_498:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	and r1, r9, r22
	and r5, r12, r22
	seteq r8, r1, r24
	seteq r14, r1, zero
	seteq r9, r5, zero
	seteq r12, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r9
	and r8, r14, r12
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	bneq r1, zero, .LBB0_500
# %bb.499:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r13, 0
.LBB0_500:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 717 19 is_stmt 1              # parallel-rne.mlir:717:19
	and r13, r10, r22
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	setlt.u r1, r24, r13
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	bneq r1, zero, .LBB0_502
# %bb.501:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_503
.LBB0_502:                              #   in Loop: Header=BB0_492 Depth=3
	or r12, r10, r23
.LBB0_503:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	and r28, r18, r22
	setlt.u r1, r24, r28
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	bneq r1, zero, .LBB0_505
# %bb.504:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_506
.LBB0_505:                              #   in Loop: Header=BB0_492 Depth=3
	or r9, r18, r23
.LBB0_506:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	and r1, r7, r22
	setlt.u r5, r24, r1
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	bneq r5, zero, .LBB0_508
# %bb.507:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r7, 0
	j .LBB0_509
.LBB0_508:                              #   in Loop: Header=BB0_492 Depth=3
	or r14, r7, r23
.LBB0_509:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	and r8, r11, r22
	setlt.u r5, r24, r8
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	bneq r5, zero, .LBB0_511
# %bb.510:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r11, 0
	.loc	1 726 19 is_stmt 1              # parallel-rne.mlir:726:19
	setlt.u r5, r27, r8
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	beq r5, zero, .LBB0_512
	j .LBB0_513
.LBB0_511:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r11, r23
	.loc	1 726 19 is_stmt 1              # parallel-rne.mlir:726:19
	setlt.u r5, r27, r8
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r5, zero, .LBB0_513
.LBB0_512:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r25
	and r19, r5, r26
.LBB0_513:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	setlt.u r1, r27, r1
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	beq r1, zero, .LBB0_516
# %bb.514:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r28
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	beq r1, zero, .LBB0_517
.LBB0_515:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r13
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r1, zero, .LBB0_491
	j .LBB0_518
.LBB0_516:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r25
	and r14, r1, r26
	setlt.u r1, r27, r28
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r1, zero, .LBB0_515
.LBB0_517:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r25
	and r9, r1, r26
	setlt.u r1, r27, r13
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r1, zero, .LBB0_491
.LBB0_518:                              # %vector.body163
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r25
	and r12, r1, r26
	j .LBB0_491
.LBB0_519:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r3, zero, 6
	addli r13, zero, 7
	.loc	1 687 7                         # parallel-rne.mlir:687:7
	mfence { sm }
	.loc	1 734 7                         # parallel-rne.mlir:734:7
	addli r1, zero, 2
	bneq r2, r1, .LBB0_452
.LBB0_520:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 128
	.loc	1 734 7                         # parallel-rne.mlir:734:7
	addli r3, r30, -4128
	zext_int2long r[20:21], r1
	addli r1, zero, 160
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r2, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_522
.LBB0_521:                              # %middle.block161
                                        #   in Loop: Header=BB0_522 Depth=2
	.loc	1 742 9 is_stmt 1               # parallel-rne.mlir:742:9
	loadli.w r1,  -4120(r30)                # 4-byte Folded Reload
	addli r2, r30, -4128
	load.d r[20:21], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_551
.LBB0_522:                              # %vector.ph154
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_524 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -4120(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], zero
	j .LBB0_524
.LBB0_523:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 743 11 is_stmt 1              # parallel-rne.mlir:743:11
	addli r1, r30, -4104
	addli.d r[2:3], r[2:3], 4
	.loc	1 776 13                        # parallel-rne.mlir:776:13
	stores.w r12, 12(r4)
	stores.w r9, 8(r4)
	stores.w r28, 4(r4)
	stores.w r13, 0(r4)
	.loc	1 743 11                        # parallel-rne.mlir:743:11
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setneq.d r1, r[2:3], r[7:8]
	beq r1, zero, .LBB0_521
.LBB0_524:                              # %vector.body155
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_522 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	add.ul r[4:5], r[2:3], r[20:21]
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	slli r4, r4, 2
	add.s r5, r4, r15
	.loc	1 745 19                        # parallel-rne.mlir:745:19
	add.s r8, r4, r6
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	add.s r1, r4, r1
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	loads.w r10, 0(r5)
	.loc	1 745 19                        # parallel-rne.mlir:745:19
	loads.w r11, 0(r8)
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	loads.w r7, 4(r5)
	loads.w r18, 8(r5)
	loads.w r9, 12(r5)
	.loc	1 745 19                        # parallel-rne.mlir:745:19
	loads.w r14, 4(r8)
	loads.w r13, 8(r8)
	loads.w r12, 12(r8)
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	loads.w r19, 12(r1)
	loads.w r28, 8(r1)
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	and r5, r10, r22
	.loc	1 749 19                        # parallel-rne.mlir:749:19
	and r8, r11, r22
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	seteq r10, r5, r24
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	seteq r11, r8, zero
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	seteq r17, r5, zero
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	seteq r16, r8, r24
	.loc	1 761 19                        # parallel-rne.mlir:761:19
	max.u r5, r5, r8
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	loads.w r8, 4(r1)
	.loc	1 761 19                        # parallel-rne.mlir:761:19
	setlt.u r5, r24, r5
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	and r10, r10, r11
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	and r11, r17, r16
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	or r5, r5, r10
	lui r10, 523264
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r5, zero, .LBB0_526
# %bb.525:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r1)
.LBB0_526:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	and r1, r7, r22
	and r5, r14, r22
	seteq r7, r1, r24
	seteq r17, r1, zero
	seteq r14, r5, zero
	seteq r16, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r7, r14
	and r7, r17, r16
	or r5, r5, r7
	lui r7, 523264
	or r1, r1, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r1, zero, .LBB0_528
# %bb.527:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
.LBB0_528:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	and r1, r18, r22
	and r5, r13, r22
	lui r18, 523264
	seteq r8, r1, r24
	seteq r16, r1, zero
	seteq r13, r5, zero
	seteq r14, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r13
	and r8, r16, r14
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r1, zero, .LBB0_530
# %bb.529:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r28, 0
.LBB0_530:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	and r1, r9, r22
	and r5, r12, r22
	seteq r8, r1, r24
	seteq r13, r1, zero
	seteq r9, r5, zero
	seteq r12, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r9
	and r8, r13, r12
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r1, zero, .LBB0_532
# %bb.531:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r19, 0
.LBB0_532:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 764 19 is_stmt 1              # parallel-rne.mlir:764:19
	and r19, r10, r22
	.loc	1 766 19                        # parallel-rne.mlir:766:19
	setlt.u r1, r24, r19
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	bneq r1, zero, .LBB0_534
# %bb.533:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_535
.LBB0_534:                              #   in Loop: Header=BB0_524 Depth=3
	or r12, r10, r23
.LBB0_535:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	and r14, r18, r22
	setlt.u r1, r24, r14
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	bneq r1, zero, .LBB0_537
# %bb.536:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_538
.LBB0_537:                              #   in Loop: Header=BB0_524 Depth=3
	or r9, r18, r23
.LBB0_538:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	and r1, r7, r22
	setlt.u r5, r24, r1
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	bneq r5, zero, .LBB0_540
# %bb.539:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r7, 0
	j .LBB0_541
.LBB0_540:                              #   in Loop: Header=BB0_524 Depth=3
	or r28, r7, r23
.LBB0_541:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	and r8, r11, r22
	setlt.u r5, r24, r8
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	bneq r5, zero, .LBB0_543
# %bb.542:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r11, 0
	.loc	1 773 19 is_stmt 1              # parallel-rne.mlir:773:19
	setlt.u r5, r27, r8
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	beq r5, zero, .LBB0_544
	j .LBB0_545
.LBB0_543:                              #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r11, r23
	.loc	1 773 19 is_stmt 1              # parallel-rne.mlir:773:19
	setlt.u r5, r27, r8
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	bneq r5, zero, .LBB0_545
.LBB0_544:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r25
	and r13, r5, r26
.LBB0_545:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	setlt.u r1, r27, r1
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	beq r1, zero, .LBB0_548
# %bb.546:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r14
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	beq r1, zero, .LBB0_549
.LBB0_547:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r19
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	bneq r1, zero, .LBB0_523
	j .LBB0_550
.LBB0_548:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r25
	and r28, r1, r26
	setlt.u r1, r27, r14
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	bneq r1, zero, .LBB0_547
.LBB0_549:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r25
	and r9, r1, r26
	setlt.u r1, r27, r19
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	bneq r1, zero, .LBB0_523
.LBB0_550:                              # %vector.body155
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r25
	and r12, r1, r26
	j .LBB0_523
.LBB0_551:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r3, zero, 6
	addli r13, zero, 7
	.loc	1 734 7                         # parallel-rne.mlir:734:7
	mfence { sm }
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	addli r1, zero, 3
	bneq r2, r1, .LBB0_453
.LBB0_552:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 192
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	addli r3, r30, -4128
	zext_int2long r[20:21], r1
	addli r1, zero, 224
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r2, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_554
.LBB0_553:                              # %middle.block153
                                        #   in Loop: Header=BB0_554 Depth=2
	.loc	1 789 9 is_stmt 1               # parallel-rne.mlir:789:9
	loadli.w r1,  -4120(r30)                # 4-byte Folded Reload
	addli r2, r30, -4128
	load.d r[20:21], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_583
.LBB0_554:                              # %vector.ph146
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_556 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -4120(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], zero
	j .LBB0_556
.LBB0_555:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 790 11 is_stmt 1              # parallel-rne.mlir:790:11
	addli r1, r30, -4104
	addli.d r[2:3], r[2:3], 4
	.loc	1 823 13                        # parallel-rne.mlir:823:13
	stores.w r12, 12(r4)
	stores.w r9, 8(r4)
	stores.w r28, 4(r4)
	stores.w r13, 0(r4)
	.loc	1 790 11                        # parallel-rne.mlir:790:11
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setneq.d r1, r[2:3], r[7:8]
	beq r1, zero, .LBB0_553
.LBB0_556:                              # %vector.body147
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_554 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	add.ul r[4:5], r[2:3], r[20:21]
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	slli r4, r4, 2
	add.s r5, r4, r15
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	add.s r8, r4, r6
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	add.s r1, r4, r1
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	loads.w r10, 0(r5)
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	loads.w r11, 0(r8)
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	loads.w r7, 4(r5)
	loads.w r18, 8(r5)
	loads.w r9, 12(r5)
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	loads.w r14, 4(r8)
	loads.w r13, 8(r8)
	loads.w r12, 12(r8)
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	loads.w r19, 12(r1)
	loads.w r28, 8(r1)
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	and r5, r10, r22
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	and r8, r11, r22
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	seteq r10, r5, r24
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	seteq r11, r8, zero
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	seteq r17, r5, zero
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	seteq r16, r8, r24
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	max.u r5, r5, r8
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	loads.w r8, 4(r1)
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	setlt.u r5, r24, r5
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	and r10, r10, r11
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	and r11, r17, r16
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	or r5, r5, r10
	lui r10, 523264
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	bneq r5, zero, .LBB0_558
# %bb.557:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r1)
.LBB0_558:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	and r1, r7, r22
	and r5, r14, r22
	seteq r7, r1, r24
	seteq r17, r1, zero
	seteq r14, r5, zero
	seteq r16, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r7, r14
	and r7, r17, r16
	or r5, r5, r7
	lui r7, 523264
	or r1, r1, r5
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	bneq r1, zero, .LBB0_560
# %bb.559:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
.LBB0_560:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	and r1, r18, r22
	and r5, r13, r22
	lui r18, 523264
	seteq r8, r1, r24
	seteq r16, r1, zero
	seteq r13, r5, zero
	seteq r14, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r13
	and r8, r16, r14
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	bneq r1, zero, .LBB0_562
# %bb.561:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r28, 0
.LBB0_562:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	and r1, r9, r22
	and r5, r12, r22
	seteq r8, r1, r24
	seteq r13, r1, zero
	seteq r9, r5, zero
	seteq r12, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r9
	and r8, r13, r12
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	bneq r1, zero, .LBB0_564
# %bb.563:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r19, 0
.LBB0_564:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 811 19 is_stmt 1              # parallel-rne.mlir:811:19
	and r19, r10, r22
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	setlt.u r1, r24, r19
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r1, zero, .LBB0_566
# %bb.565:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_567
.LBB0_566:                              #   in Loop: Header=BB0_556 Depth=3
	or r12, r10, r23
.LBB0_567:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	and r14, r18, r22
	setlt.u r1, r24, r14
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r1, zero, .LBB0_569
# %bb.568:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_570
.LBB0_569:                              #   in Loop: Header=BB0_556 Depth=3
	or r9, r18, r23
.LBB0_570:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	and r1, r7, r22
	setlt.u r5, r24, r1
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r5, zero, .LBB0_572
# %bb.571:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r7, 0
	j .LBB0_573
.LBB0_572:                              #   in Loop: Header=BB0_556 Depth=3
	or r28, r7, r23
.LBB0_573:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	and r8, r11, r22
	setlt.u r5, r24, r8
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r5, zero, .LBB0_575
# %bb.574:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r11, 0
	.loc	1 820 19 is_stmt 1              # parallel-rne.mlir:820:19
	setlt.u r5, r27, r8
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	beq r5, zero, .LBB0_576
	j .LBB0_577
.LBB0_575:                              #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r11, r23
	.loc	1 820 19 is_stmt 1              # parallel-rne.mlir:820:19
	setlt.u r5, r27, r8
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r5, zero, .LBB0_577
.LBB0_576:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r25
	and r13, r5, r26
.LBB0_577:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	setlt.u r1, r27, r1
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	beq r1, zero, .LBB0_580
# %bb.578:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r14
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	beq r1, zero, .LBB0_581
.LBB0_579:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r19
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r1, zero, .LBB0_555
	j .LBB0_582
.LBB0_580:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r25
	and r28, r1, r26
	setlt.u r1, r27, r14
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r1, zero, .LBB0_579
.LBB0_581:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r25
	and r9, r1, r26
	setlt.u r1, r27, r19
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r1, zero, .LBB0_555
.LBB0_582:                              # %vector.body147
                                        #   in Loop: Header=BB0_556 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r25
	and r12, r1, r26
	j .LBB0_555
.LBB0_583:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r3, zero, 6
	addli r13, zero, 7
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	mfence { sm }
	.loc	1 828 7                         # parallel-rne.mlir:828:7
	addli r1, zero, 4
	bneq r2, r1, .LBB0_454
.LBB0_584:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 828 7                         # parallel-rne.mlir:828:7
	addli r3, r30, -4128
	zext_int2long r[20:21], r1
	addli r1, zero, 288
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r2, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_586
.LBB0_585:                              # %middle.block145
                                        #   in Loop: Header=BB0_586 Depth=2
	.loc	1 836 9 is_stmt 1               # parallel-rne.mlir:836:9
	loadli.w r1,  -4120(r30)                # 4-byte Folded Reload
	addli r2, r30, -4128
	load.d r[20:21], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_615
.LBB0_586:                              # %vector.ph138
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_588 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -4120(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], zero
	j .LBB0_588
.LBB0_587:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 837 11 is_stmt 1              # parallel-rne.mlir:837:11
	addli r1, r30, -4104
	addli.d r[2:3], r[2:3], 4
	.loc	1 870 13                        # parallel-rne.mlir:870:13
	stores.w r12, 12(r4)
	stores.w r9, 8(r4)
	stores.w r28, 4(r4)
	stores.w r13, 0(r4)
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setneq.d r1, r[2:3], r[7:8]
	beq r1, zero, .LBB0_585
.LBB0_588:                              # %vector.body139
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_586 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	add.ul r[4:5], r[2:3], r[20:21]
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	slli r4, r4, 2
	add.s r5, r4, r15
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	add.s r8, r4, r6
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	add.s r1, r4, r1
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	loads.w r10, 0(r5)
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	loads.w r11, 0(r8)
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	loads.w r7, 4(r5)
	loads.w r18, 8(r5)
	loads.w r9, 12(r5)
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	loads.w r14, 4(r8)
	loads.w r13, 8(r8)
	loads.w r12, 12(r8)
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	loads.w r19, 12(r1)
	loads.w r28, 8(r1)
	.loc	1 845 19                        # parallel-rne.mlir:845:19
	and r5, r10, r22
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	and r8, r11, r22
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	seteq r10, r5, r24
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	seteq r11, r8, zero
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	seteq r17, r5, zero
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	seteq r16, r8, r24
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	max.u r5, r5, r8
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	loads.w r8, 4(r1)
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	setlt.u r5, r24, r5
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	and r10, r10, r11
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	and r11, r17, r16
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	or r5, r5, r10
	lui r10, 523264
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r5, zero, .LBB0_590
# %bb.589:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r1)
.LBB0_590:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	and r1, r7, r22
	and r5, r14, r22
	seteq r7, r1, r24
	seteq r17, r1, zero
	seteq r14, r5, zero
	seteq r16, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r7, r14
	and r7, r17, r16
	or r5, r5, r7
	lui r7, 523264
	or r1, r1, r5
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r1, zero, .LBB0_592
# %bb.591:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
.LBB0_592:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	and r1, r18, r22
	and r5, r13, r22
	lui r18, 523264
	seteq r8, r1, r24
	seteq r16, r1, zero
	seteq r13, r5, zero
	seteq r14, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r13
	and r8, r16, r14
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r1, zero, .LBB0_594
# %bb.593:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r28, 0
.LBB0_594:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	and r1, r9, r22
	and r5, r12, r22
	seteq r8, r1, r24
	seteq r13, r1, zero
	seteq r9, r5, zero
	seteq r12, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r9
	and r8, r13, r12
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r1, zero, .LBB0_596
# %bb.595:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r19, 0
.LBB0_596:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 858 19 is_stmt 1              # parallel-rne.mlir:858:19
	and r19, r10, r22
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	setlt.u r1, r24, r19
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	bneq r1, zero, .LBB0_598
# %bb.597:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_599
.LBB0_598:                              #   in Loop: Header=BB0_588 Depth=3
	or r12, r10, r23
.LBB0_599:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	and r14, r18, r22
	setlt.u r1, r24, r14
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	bneq r1, zero, .LBB0_601
# %bb.600:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_602
.LBB0_601:                              #   in Loop: Header=BB0_588 Depth=3
	or r9, r18, r23
.LBB0_602:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	and r1, r7, r22
	setlt.u r5, r24, r1
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	bneq r5, zero, .LBB0_604
# %bb.603:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r7, 0
	j .LBB0_605
.LBB0_604:                              #   in Loop: Header=BB0_588 Depth=3
	or r28, r7, r23
.LBB0_605:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	and r8, r11, r22
	setlt.u r5, r24, r8
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	bneq r5, zero, .LBB0_607
# %bb.606:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r11, 0
	.loc	1 867 19 is_stmt 1              # parallel-rne.mlir:867:19
	setlt.u r5, r27, r8
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	beq r5, zero, .LBB0_608
	j .LBB0_609
.LBB0_607:                              #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r11, r23
	.loc	1 867 19 is_stmt 1              # parallel-rne.mlir:867:19
	setlt.u r5, r27, r8
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	bneq r5, zero, .LBB0_609
.LBB0_608:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r25
	and r13, r5, r26
.LBB0_609:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	setlt.u r1, r27, r1
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	beq r1, zero, .LBB0_612
# %bb.610:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r14
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	beq r1, zero, .LBB0_613
.LBB0_611:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r19
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	bneq r1, zero, .LBB0_587
	j .LBB0_614
.LBB0_612:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r25
	and r28, r1, r26
	setlt.u r1, r27, r14
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	bneq r1, zero, .LBB0_611
.LBB0_613:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r25
	and r9, r1, r26
	setlt.u r1, r27, r19
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	bneq r1, zero, .LBB0_587
.LBB0_614:                              # %vector.body139
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r25
	and r12, r1, r26
	j .LBB0_587
.LBB0_615:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r3, zero, 6
	addli r13, zero, 7
	.loc	1 828 7                         # parallel-rne.mlir:828:7
	mfence { sm }
	.loc	1 875 7                         # parallel-rne.mlir:875:7
	addli r1, zero, 5
	bneq r2, r1, .LBB0_455
.LBB0_616:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 320
	.loc	1 875 7                         # parallel-rne.mlir:875:7
	addli r3, r30, -4128
	zext_int2long r[20:21], r1
	addli r1, zero, 352
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r2, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_618
.LBB0_617:                              # %middle.block137
                                        #   in Loop: Header=BB0_618 Depth=2
	.loc	1 883 9 is_stmt 1               # parallel-rne.mlir:883:9
	loadli.w r1,  -4120(r30)                # 4-byte Folded Reload
	addli r2, r30, -4128
	load.d r[20:21], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_647
.LBB0_618:                              # %vector.ph130
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_620 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -4120(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], zero
	j .LBB0_620
.LBB0_619:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 884 11 is_stmt 1              # parallel-rne.mlir:884:11
	addli r1, r30, -4104
	addli.d r[2:3], r[2:3], 4
	.loc	1 917 13                        # parallel-rne.mlir:917:13
	stores.w r12, 12(r4)
	stores.w r9, 8(r4)
	stores.w r28, 4(r4)
	stores.w r13, 0(r4)
	.loc	1 884 11                        # parallel-rne.mlir:884:11
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setneq.d r1, r[2:3], r[7:8]
	beq r1, zero, .LBB0_617
.LBB0_620:                              # %vector.body131
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_618 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	add.ul r[4:5], r[2:3], r[20:21]
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	slli r4, r4, 2
	add.s r5, r4, r15
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	add.s r8, r4, r6
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	add.s r1, r4, r1
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	loads.w r10, 0(r5)
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	loads.w r11, 0(r8)
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	loads.w r7, 4(r5)
	loads.w r18, 8(r5)
	loads.w r9, 12(r5)
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	loads.w r14, 4(r8)
	loads.w r13, 8(r8)
	loads.w r12, 12(r8)
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	loads.w r19, 12(r1)
	loads.w r28, 8(r1)
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	and r5, r10, r22
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	and r8, r11, r22
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	seteq r10, r5, r24
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	seteq r11, r8, zero
	.loc	1 897 19                        # parallel-rne.mlir:897:19
	seteq r17, r5, zero
	.loc	1 896 19                        # parallel-rne.mlir:896:19
	seteq r16, r8, r24
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	max.u r5, r5, r8
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	loads.w r8, 4(r1)
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	setlt.u r5, r24, r5
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	and r10, r10, r11
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	and r11, r17, r16
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	or r5, r5, r10
	lui r10, 523264
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r5, zero, .LBB0_622
# %bb.621:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r1)
.LBB0_622:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	and r1, r7, r22
	and r5, r14, r22
	seteq r7, r1, r24
	seteq r17, r1, zero
	seteq r14, r5, zero
	seteq r16, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r7, r14
	and r7, r17, r16
	or r5, r5, r7
	lui r7, 523264
	or r1, r1, r5
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r1, zero, .LBB0_624
# %bb.623:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
.LBB0_624:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	and r1, r18, r22
	and r5, r13, r22
	lui r18, 523264
	seteq r8, r1, r24
	seteq r16, r1, zero
	seteq r13, r5, zero
	seteq r14, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r13
	and r8, r16, r14
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r1, zero, .LBB0_626
# %bb.625:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r28, 0
.LBB0_626:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	and r1, r9, r22
	and r5, r12, r22
	seteq r8, r1, r24
	seteq r13, r1, zero
	seteq r9, r5, zero
	seteq r12, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r9
	and r8, r13, r12
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r1, zero, .LBB0_628
# %bb.627:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r19, 0
.LBB0_628:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 905 19 is_stmt 1              # parallel-rne.mlir:905:19
	and r19, r10, r22
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	setlt.u r1, r24, r19
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	bneq r1, zero, .LBB0_630
# %bb.629:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_631
.LBB0_630:                              #   in Loop: Header=BB0_620 Depth=3
	or r12, r10, r23
.LBB0_631:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	and r14, r18, r22
	setlt.u r1, r24, r14
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	bneq r1, zero, .LBB0_633
# %bb.632:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_634
.LBB0_633:                              #   in Loop: Header=BB0_620 Depth=3
	or r9, r18, r23
.LBB0_634:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	and r1, r7, r22
	setlt.u r5, r24, r1
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	bneq r5, zero, .LBB0_636
# %bb.635:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r7, 0
	j .LBB0_637
.LBB0_636:                              #   in Loop: Header=BB0_620 Depth=3
	or r28, r7, r23
.LBB0_637:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	and r8, r11, r22
	setlt.u r5, r24, r8
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	bneq r5, zero, .LBB0_639
# %bb.638:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r11, 0
	.loc	1 914 19 is_stmt 1              # parallel-rne.mlir:914:19
	setlt.u r5, r27, r8
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	beq r5, zero, .LBB0_640
	j .LBB0_641
.LBB0_639:                              #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r11, r23
	.loc	1 914 19 is_stmt 1              # parallel-rne.mlir:914:19
	setlt.u r5, r27, r8
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r5, zero, .LBB0_641
.LBB0_640:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r25
	and r13, r5, r26
.LBB0_641:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	setlt.u r1, r27, r1
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	beq r1, zero, .LBB0_644
# %bb.642:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r14
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	beq r1, zero, .LBB0_645
.LBB0_643:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r19
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r1, zero, .LBB0_619
	j .LBB0_646
.LBB0_644:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r25
	and r28, r1, r26
	setlt.u r1, r27, r14
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r1, zero, .LBB0_643
.LBB0_645:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r25
	and r9, r1, r26
	setlt.u r1, r27, r19
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r1, zero, .LBB0_619
.LBB0_646:                              # %vector.body131
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r25
	and r12, r1, r26
	j .LBB0_619
.LBB0_647:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r3, zero, 6
	addli r13, zero, 7
	.loc	1 875 7                         # parallel-rne.mlir:875:7
	mfence { sm }
	.loc	1 922 7                         # parallel-rne.mlir:922:7
	bneq r2, r3, .LBB0_680
.LBB0_648:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 384
	.loc	1 922 7                         # parallel-rne.mlir:922:7
	addli r3, r30, -4128
	zext_int2long r[20:21], r1
	addli r1, zero, 416
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r2, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_650
.LBB0_649:                              # %middle.block129
                                        #   in Loop: Header=BB0_650 Depth=2
	.loc	1 930 9 is_stmt 1               # parallel-rne.mlir:930:9
	loadli.w r1,  -4120(r30)                # 4-byte Folded Reload
	addli r2, r30, -4128
	load.d r[20:21], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_679
.LBB0_650:                              # %vector.ph122
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_652 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -4120(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], zero
	j .LBB0_652
.LBB0_651:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 931 11 is_stmt 1              # parallel-rne.mlir:931:11
	addli r1, r30, -4104
	addli.d r[2:3], r[2:3], 4
	.loc	1 964 13                        # parallel-rne.mlir:964:13
	stores.w r12, 12(r4)
	stores.w r9, 8(r4)
	stores.w r28, 4(r4)
	stores.w r13, 0(r4)
	.loc	1 931 11                        # parallel-rne.mlir:931:11
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setneq.d r1, r[2:3], r[7:8]
	beq r1, zero, .LBB0_649
.LBB0_652:                              # %vector.body123
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_650 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	add.ul r[4:5], r[2:3], r[20:21]
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	slli r4, r4, 2
	add.s r5, r4, r15
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	add.s r8, r4, r6
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	add.s r1, r4, r1
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	loads.w r10, 0(r5)
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	loads.w r11, 0(r8)
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	loads.w r7, 4(r5)
	loads.w r18, 8(r5)
	loads.w r9, 12(r5)
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	loads.w r14, 4(r8)
	loads.w r13, 8(r8)
	loads.w r12, 12(r8)
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	loads.w r19, 12(r1)
	loads.w r28, 8(r1)
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	and r5, r10, r22
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	and r8, r11, r22
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	seteq r10, r5, r24
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	seteq r11, r8, zero
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	seteq r17, r5, zero
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	seteq r16, r8, r24
	.loc	1 949 19                        # parallel-rne.mlir:949:19
	max.u r5, r5, r8
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	loads.w r8, 4(r1)
	.loc	1 949 19                        # parallel-rne.mlir:949:19
	setlt.u r5, r24, r5
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	and r10, r10, r11
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	and r11, r17, r16
	.loc	1 946 19                        # parallel-rne.mlir:946:19
	or r10, r10, r11
	lui r11, 523264
	.loc	1 950 19                        # parallel-rne.mlir:950:19
	or r5, r5, r10
	lui r10, 523264
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r5, zero, .LBB0_654
# %bb.653:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r1)
.LBB0_654:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	and r1, r7, r22
	and r5, r14, r22
	seteq r7, r1, r24
	seteq r17, r1, zero
	seteq r14, r5, zero
	seteq r16, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r7, r14
	and r7, r17, r16
	or r5, r5, r7
	lui r7, 523264
	or r1, r1, r5
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r1, zero, .LBB0_656
# %bb.655:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
.LBB0_656:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	and r1, r18, r22
	and r5, r13, r22
	lui r18, 523264
	seteq r8, r1, r24
	seteq r16, r1, zero
	seteq r13, r5, zero
	seteq r14, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r13
	and r8, r16, r14
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r1, zero, .LBB0_658
# %bb.657:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r28, 0
.LBB0_658:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	and r1, r9, r22
	and r5, r12, r22
	seteq r8, r1, r24
	seteq r13, r1, zero
	seteq r9, r5, zero
	seteq r12, r5, r24
	max.u r1, r1, r5
	setlt.u r1, r24, r1
	and r5, r8, r9
	and r8, r13, r12
	or r5, r5, r8
	or r1, r1, r5
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r1, zero, .LBB0_660
# %bb.659:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r19, 0
.LBB0_660:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 952 19 is_stmt 1              # parallel-rne.mlir:952:19
	and r19, r10, r22
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	setlt.u r1, r24, r19
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r1, zero, .LBB0_662
# %bb.661:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_663
.LBB0_662:                              #   in Loop: Header=BB0_652 Depth=3
	or r12, r10, r23
.LBB0_663:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	and r14, r18, r22
	setlt.u r1, r24, r14
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r1, zero, .LBB0_665
# %bb.664:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_666
.LBB0_665:                              #   in Loop: Header=BB0_652 Depth=3
	or r9, r18, r23
.LBB0_666:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	and r1, r7, r22
	setlt.u r5, r24, r1
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r5, zero, .LBB0_668
# %bb.667:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r7, 0
	j .LBB0_669
.LBB0_668:                              #   in Loop: Header=BB0_652 Depth=3
	or r28, r7, r23
.LBB0_669:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	and r8, r11, r22
	setlt.u r5, r24, r8
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r5, zero, .LBB0_671
# %bb.670:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r11, 0
	.loc	1 961 19 is_stmt 1              # parallel-rne.mlir:961:19
	setlt.u r5, r27, r8
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	beq r5, zero, .LBB0_672
	j .LBB0_673
.LBB0_671:                              #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r11, r23
	.loc	1 961 19 is_stmt 1              # parallel-rne.mlir:961:19
	setlt.u r5, r27, r8
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r5, zero, .LBB0_673
.LBB0_672:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r25
	and r13, r5, r26
.LBB0_673:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	setlt.u r1, r27, r1
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	beq r1, zero, .LBB0_676
# %bb.674:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r14
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	beq r1, zero, .LBB0_677
.LBB0_675:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r19
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r1, zero, .LBB0_651
	j .LBB0_678
.LBB0_676:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r25
	and r28, r1, r26
	setlt.u r1, r27, r14
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r1, zero, .LBB0_675
.LBB0_677:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r25
	and r9, r1, r26
	setlt.u r1, r27, r19
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	bneq r1, zero, .LBB0_651
.LBB0_678:                              # %vector.body123
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r25
	and r12, r1, r26
	j .LBB0_651
.LBB0_679:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 7
	.loc	1 922 7                         # parallel-rne.mlir:922:7
	mfence { sm }
.LBB0_680:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[3:4], zero
	.loc	1 969 7 is_stmt 1               # parallel-rne.mlir:969:7
	addli r1, r30, -4128
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	bneq r2, r13, .LBB0_713
# %bb.681:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 448
	.loc	1 969 7                         # parallel-rne.mlir:969:7
	addli r3, r30, -4136
	zext_int2long r[20:21], r1
	addli r1, zero, 480
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r2, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_683
.LBB0_682:                              # %middle.block
                                        #   in Loop: Header=BB0_683 Depth=2
	.loc	1 977 9 is_stmt 1               # parallel-rne.mlir:977:9
	loadli.w r1,  -4120(r30)                # 4-byte Folded Reload
	addli r2, r30, -4136
	load.d r[20:21], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_712
.LBB0_683:                              # %vector.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_685 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -4128
	storeli.w r2, -4120(r30)                # 4-byte Folded Spill
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	j .LBB0_685
.LBB0_684:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 978 11 is_stmt 1              # parallel-rne.mlir:978:11
	addli r2, r30, -4104
	addli.d r[3:4], r[3:4], 4
	.loc	1 1011 13                       # parallel-rne.mlir:1011:13
	stores.w r12, 12(r11)
	stores.w r13, 8(r11)
	stores.w r14, 4(r11)
	stores.w r1, 0(r11)
	.loc	1 978 11                        # parallel-rne.mlir:978:11
	load.d r[7:8], 0(r2)                    # 8-byte Folded Reload
	setneq.d r2, r[3:4], r[7:8]
	beq r2, zero, .LBB0_682
.LBB0_685:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_683 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	add.ul r[1:2], r[3:4], r[20:21]
	slli r11, r1, 2
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	loadli.w r2,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	add.s r1, r11, r15
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	add.s r5, r11, r6
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	add.s r8, r11, r2
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	loads.w r10, 0(r1)
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	loads.w r14, 0(r5)
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	loads.w r2, 4(r1)
	loads.w r19, 8(r1)
	loads.w r9, 12(r1)
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	loads.w r7, 4(r5)
	loads.w r1, 8(r5)
	loads.w r13, 12(r5)
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	loads.w r12, 12(r8)
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	and r5, r10, r22
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	and r10, r14, r22
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	loads.w r14, 8(r8)
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	seteq r16, r5, r24
	.loc	1 988 19                        # parallel-rne.mlir:988:19
	seteq r17, r10, zero
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	seteq r28, r5, zero
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	seteq r18, r10, r24
	.loc	1 996 19                        # parallel-rne.mlir:996:19
	max.u r5, r5, r10
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	loads.w r10, 4(r8)
	.loc	1 996 19                        # parallel-rne.mlir:996:19
	setlt.u r5, r24, r5
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	and r16, r16, r17
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	and r17, r28, r18
	lui r28, 523264
	lui r18, 523264
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	or r16, r16, r17
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	or r5, r5, r16
	.loc	1 998 19                        # parallel-rne.mlir:998:19
	bneq r5, zero, .LBB0_687
# %bb.686:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r8)
.LBB0_687:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	and r5, r7, r22
	and r2, r2, r22
	seteq r7, r2, r24
	seteq r17, r2, zero
	seteq r8, r5, zero
	seteq r16, r5, r24
	max.u r2, r2, r5
	setlt.u r2, r24, r2
	and r5, r7, r8
	and r7, r17, r16
	or r5, r5, r7
	lui r7, 523264
	or r2, r2, r5
	.loc	1 998 19                        # parallel-rne.mlir:998:19
	bneq r2, zero, .LBB0_689
# %bb.688:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r10, 0
.LBB0_689:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	and r2, r19, r22
	and r1, r1, r22
	lui r19, 523264
	seteq r5, r2, r24
	seteq r8, r1, zero
	seteq r10, r1, r24
	seteq r16, r2, zero
	max.u r1, r2, r1
	setlt.u r1, r24, r1
	and r2, r5, r8
	and r5, r16, r10
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 998 19                        # parallel-rne.mlir:998:19
	bneq r1, zero, .LBB0_691
# %bb.690:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
.LBB0_691:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	and r1, r9, r22
	and r2, r13, r22
	seteq r5, r1, r24
	seteq r10, r1, zero
	seteq r8, r2, zero
	seteq r9, r2, r24
	max.u r1, r1, r2
	setlt.u r1, r24, r1
	and r2, r5, r8
	and r5, r10, r9
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 998 19                        # parallel-rne.mlir:998:19
	bneq r1, zero, .LBB0_693
# %bb.692:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r12, 0
.LBB0_693:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 999 19 is_stmt 1              # parallel-rne.mlir:999:19
	and r9, r28, r22
	.loc	1 1001 19                       # parallel-rne.mlir:1001:19
	setlt.u r1, r24, r9
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	bneq r1, zero, .LBB0_695
# %bb.694:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r28, 0
	j .LBB0_696
.LBB0_695:                              #   in Loop: Header=BB0_685 Depth=3
	or r12, r28, r23
.LBB0_696:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	and r2, r19, r22
	setlt.u r1, r24, r2
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	bneq r1, zero, .LBB0_698
# %bb.697:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r19, 0
	j .LBB0_699
.LBB0_698:                              #   in Loop: Header=BB0_685 Depth=3
	or r13, r19, r23
.LBB0_699:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	and r10, r7, r22
	setlt.u r1, r24, r10
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	bneq r1, zero, .LBB0_701
# %bb.700:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r7, 0
	j .LBB0_702
.LBB0_701:                              #   in Loop: Header=BB0_685 Depth=3
	or r14, r7, r23
.LBB0_702:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	and r8, r18, r22
	setlt.u r1, r24, r8
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	bneq r1, zero, .LBB0_704
# %bb.703:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r18, 0
	.loc	1 1008 19 is_stmt 1             # parallel-rne.mlir:1008:19
	setlt.u r5, r27, r8
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	beq r5, zero, .LBB0_705
	j .LBB0_706
.LBB0_704:                              #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r18, r23
	.loc	1 1008 19 is_stmt 1             # parallel-rne.mlir:1008:19
	setlt.u r5, r27, r8
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	bneq r5, zero, .LBB0_706
.LBB0_705:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r25
	and r1, r1, r26
.LBB0_706:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	setlt.u r5, r27, r10
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	beq r5, zero, .LBB0_709
# %bb.707:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r27, r2
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	beq r2, zero, .LBB0_710
.LBB0_708:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r27, r9
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	bneq r2, zero, .LBB0_684
	j .LBB0_711
.LBB0_709:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r7, 16
	andi r5, r5, 1
	add.s r5, r7, r5
	add.s r5, r5, r25
	and r14, r5, r26
	setlt.u r2, r27, r2
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	bneq r2, zero, .LBB0_708
.LBB0_710:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r25
	and r13, r2, r26
	setlt.u r2, r27, r9
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	bneq r2, zero, .LBB0_684
.LBB0_711:                              # %vector.body
                                        #   in Loop: Header=BB0_685 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r28, 16
	andi r2, r2, 1
	add.s r2, r28, r2
	add.s r2, r2, r25
	and r12, r2, r26
	j .LBB0_684
.LBB0_712:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 7
	.loc	1 969 7                         # parallel-rne.mlir:969:7
	mfence { sm }
.LBB0_713:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1017 7                        # parallel-rne.mlir:1017:7
	addli r1, zero, 3
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	sync_core
	.loc	1 1017 7                        # parallel-rne.mlir:1017:7
	beq r2, r1, .LBB0_5
# %bb.714:                              # %.critedge19
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, r30, -4152
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	.loc	1 1028 7 is_stmt 1              # parallel-rne.mlir:1028:7
	bneq r2, zero, .LBB0_6
# %bb.715:                              #   in Loop: Header=BB0_7 Depth=1
	addli r6, r30, -4176
	loadli.w r1,  -4180(r30)                # 4-byte Folded Reload
	addli r3, zero, 12
	addli r7, r30, -4128
	addli r9, r30, -4160
	addli r10, zero, 5
	addli r12, zero, 64
	addli r11, zero, 16
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	sext_int2long r[1:2], r1
	sll.d r[3:4], r[4:5], r3
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	load.d r[7:8], 24(r30)
	min.sl r[5:6], r[1:2], r[5:6]
	add.ul r[3:4], r[7:8], r[3:4]
	load.d r[7:8], 0(r9)                    # 8-byte Folded Reload
	addli r9, r30, -4152
	addli.d r[5:6], r[5:6], 16
	add.ul r[3:4], r[3:4], r[7:8]
	zext_int2long r[7:8], r11
	max.sl r[5:6], r[5:6], r[1:2]
	sub.sl r[1:2], r[5:6], r[1:2]
	load.d r[5:6], 0(r9)                    # 8-byte Folded Reload
	addli r9, zero, 15
	xwait r9, 0
	addli r9, zero, 1
	lock zero, r10
	.loc	1 1024 13                       # parallel-rne.mlir:1024:13
	min.sl r[1:2], r[1:2], r[7:8]
	addli r7, zero, 128
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	dma_cfg r9, r9, zero, 0
	dma_cfg zero, r9, zero, 1
	dma_cfg r4, zero, zero, 2
	dma_cfg r3, r12, r12, 3
	addli r3, r30, -4168
	load.d r[16:17], 0(r3)                  # 8-byte Folded Reload
	addli r3, r16, 31
	slli r4, r16, 1
	srli r3, r3, 5
	dma_cfg r12, r7, r3, 4
	andi r3, r4, 62
	addli r4, zero, 256
	dma_cfg r4, r7, r1, 5
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r11, 0
	j .LBB0_6
.LBB0_716:                              # %._crit_edge
	.loc	1 1030 5                        # parallel-rne.mlir:1030:5
	xsignal zero, 0
	bneq r2, zero, .LBB0_718
# %bb.717:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1030 5                        # parallel-rne.mlir:1030:5
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
.LBB0_718:
	.loc	1 1031 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1031:5
	addli sp, sp, 4200
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
	.long	4264                            # 0x10a8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-2tn04ktw" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
