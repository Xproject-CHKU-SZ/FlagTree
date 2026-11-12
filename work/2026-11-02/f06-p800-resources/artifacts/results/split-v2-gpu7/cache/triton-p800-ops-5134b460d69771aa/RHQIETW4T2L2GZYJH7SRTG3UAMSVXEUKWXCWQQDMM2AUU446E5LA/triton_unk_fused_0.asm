	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-voz9lfqi" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4488
	addli r2, zero, 1
.Ltmp0:
	.loc	1 38 5 prologue_end             # parallel-rne.mlir:38:5
	core_id r7
	addli r30, sp, 4424
	xsignal_mode_cfg r2
	beq r7, zero, .LBB0_2
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
	addli r4, zero, 3
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
	addli r3, zero, 5
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
	addli r2, zero, 18
	sync_group
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	addli r4, zero, 7
	addli r2, zero, 20
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 23
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 26
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 28
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 30
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 35
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 38
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 40
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 40 10 is_stmt 1               # parallel-rne.mlir:40:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -24(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -48(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -72(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -96(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -120(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -144(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -168(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -192(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -216(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -1204(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -2228(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -4240(r30)
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r1, r2, r1
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	mul.s r3, r1, r3
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	addli r2, r2, -1
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r4, -20(r30)
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r4, -44(r30)
	storeli.w r4, -40(r30)
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
	storeli.w r4, -60(r30)
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r4, -92(r30)
	storeli.w r4, -88(r30)
	storeli.w r4, -84(r30)
	storeli.w r4, -80(r30)
	storeli.w r4, -76(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r4, -116(r30)
	storeli.w r4, -112(r30)
	storeli.w r4, -108(r30)
	storeli.w r4, -104(r30)
	storeli.w r4, -100(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r4, -140(r30)
	storeli.w r4, -136(r30)
	storeli.w r4, -132(r30)
	storeli.w r4, -128(r30)
	storeli.w r4, -124(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r4, -164(r30)
	storeli.w r4, -160(r30)
	storeli.w r4, -156(r30)
	storeli.w r4, -152(r30)
	storeli.w r4, -148(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r4, -188(r30)
	storeli.w r4, -184(r30)
	storeli.w r4, -180(r30)
	storeli.w r4, -176(r30)
	storeli.w r4, -172(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r4, -212(r30)
	storeli.w r4, -208(r30)
	storeli.w r4, -204(r30)
	storeli.w r4, -200(r30)
	storeli.w r4, -196(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
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
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w r4, -3196(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
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
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r4, -2224(r30)
	storeli.w r4, -2220(r30)
	storeli.w r4, -2216(r30)
	storeli.w r4, -2212(r30)
	storeli.w r4, -2208(r30)
	storeli.w r4, -2204(r30)
	storeli.w r4, -2200(r30)
	storeli.w r4, -2196(r30)
	storeli.w r4, -2192(r30)
	storeli.w r4, -2188(r30)
	storeli.w r4, -2184(r30)
	storeli.w r4, -2180(r30)
	storeli.w r4, -2176(r30)
	storeli.w r4, -2172(r30)
	storeli.w r4, -2168(r30)
	storeli.w r4, -2164(r30)
	storeli.w r4, -2160(r30)
	storeli.w r4, -2156(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w r4, -3180(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r4, -4224(r30)
	storeli.w r4, -4228(r30)
	storeli.w r4, -4232(r30)
	storeli.w r4, -4236(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
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
	storeli.w r4, -3024(r30)
	storeli.w r4, -3028(r30)
	storeli.w r4, -3032(r30)
	storeli.w r4, -3036(r30)
	storeli.w r4, -3040(r30)
	storeli.w r4, -3044(r30)
	storeli.w r4, -3048(r30)
	storeli.w r4, -3052(r30)
	storeli.w r4, -3056(r30)
	storeli.w r4, -3060(r30)
	storeli.w r4, -3064(r30)
	storeli.w r4, -3068(r30)
	storeli.w r4, -3072(r30)
	storeli.w r4, -3076(r30)
	storeli.w r4, -3080(r30)
	storeli.w r4, -3084(r30)
	storeli.w r4, -3088(r30)
	storeli.w r4, -3092(r30)
	storeli.w r4, -3096(r30)
	storeli.w r4, -3100(r30)
	storeli.w r4, -3104(r30)
	storeli.w r4, -3108(r30)
	storeli.w r4, -3112(r30)
	storeli.w r4, -3116(r30)
	storeli.w r4, -3120(r30)
	storeli.w r4, -3124(r30)
	storeli.w r4, -3128(r30)
	storeli.w r4, -3132(r30)
	storeli.w r4, -3136(r30)
	storeli.w r4, -3140(r30)
	storeli.w r4, -3144(r30)
	storeli.w r4, -3148(r30)
	storeli.w r4, -3152(r30)
	storeli.w r4, -3156(r30)
	storeli.w r4, -3160(r30)
	storeli.w r4, -3164(r30)
	storeli.w r4, -3168(r30)
	storeli.w r4, -3172(r30)
	storeli.w r4, -3176(r30)
	storeli.w r4, -3184(r30)
	storeli.w r4, -3188(r30)
	storeli.w r4, -3192(r30)
	storeli.w r4, -3200(r30)
	storeli.w r4, -3204(r30)
	storeli.w r4, -3208(r30)
	storeli.w r4, -3212(r30)
	storeli.w zero, -3216(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
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
	storeli.w r4, -1964(r30)
	storeli.w r4, -1968(r30)
	storeli.w r4, -1972(r30)
	storeli.w r4, -1976(r30)
	storeli.w r4, -1980(r30)
	storeli.w r4, -1984(r30)
	storeli.w r4, -1988(r30)
	storeli.w r4, -1992(r30)
	storeli.w r4, -1996(r30)
	storeli.w r4, -2000(r30)
	storeli.w r4, -2004(r30)
	storeli.w r4, -2008(r30)
	storeli.w r4, -2012(r30)
	storeli.w r4, -2016(r30)
	storeli.w r4, -2020(r30)
	storeli.w r4, -2024(r30)
	storeli.w r4, -2028(r30)
	storeli.w r4, -2032(r30)
	storeli.w r4, -2036(r30)
	storeli.w r4, -2040(r30)
	storeli.w r4, -2044(r30)
	storeli.w r4, -2048(r30)
	storeli.w r4, -2052(r30)
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
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r4, -4220(r30)
	storeli.w r4, -4216(r30)
	storeli.w r4, -4212(r30)
	storeli.w r4, -4208(r30)
	storeli.w r4, -4204(r30)
	storeli.w r4, -4200(r30)
	storeli.w r4, -4196(r30)
	storeli.w r4, -4192(r30)
	storeli.w r4, -4188(r30)
	storeli.w r4, -4184(r30)
	storeli.w r4, -4180(r30)
	storeli.w r4, -4176(r30)
	storeli.w r4, -4172(r30)
	storeli.w r4, -4168(r30)
	storeli.w r4, -4164(r30)
	storeli.w r4, -4160(r30)
	storeli.w r4, -4156(r30)
	storeli.w r4, -4152(r30)
	storeli.w r4, -4148(r30)
	storeli.w r4, -4144(r30)
	storeli.w r4, -4140(r30)
	storeli.w r4, -4136(r30)
	storeli.w r4, -4132(r30)
	storeli.w r4, -4128(r30)
	storeli.w r4, -4124(r30)
	storeli.w r4, -4120(r30)
	storeli.w r4, -4116(r30)
	storeli.w r4, -4112(r30)
	storeli.w r4, -4108(r30)
	storeli.w r4, -4104(r30)
	storeli.w r4, -4100(r30)
	storeli.w r4, -4096(r30)
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
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w zero, -4264(r30)
	storeli.w r4, -4260(r30)
	storeli.w r4, -4256(r30)
	storeli.w r4, -4252(r30)
	storeli.w r4, -4248(r30)
	storeli.w r4, -4244(r30)
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	mul.s r1, r2, r6
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	fmac.s r2, r2, r6
	.loc	1 48 10                         # parallel-rne.mlir:48:10
	min.s r3, r2, r3
	.loc	1 65 5                          # parallel-rne.mlir:65:5
	ble.s r3, r1, .LBB0_1051
# %bb.4:                                # %.lr.ph
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	sext_int2long r[14:15], r1
	lui r1, 374
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	addli r4, r30, -4376
	addli r12, zero, 32
	addli r17, zero, 1
	addli r16, zero, 5
	lui r5, 522240
	lui r6, 268288
	ori r1, r1, 640
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r2, 379
	storeli.w r1, -4380(r30)                # 4-byte Folded Spill
	lui r1, 376
	ori r1, r1, 2688
	storeli.w r1, -4384(r30)                # 4-byte Folded Spill
	ori r1, r2, 640
	lui r2, 524287
	storeli.w r1, -4388(r30)                # 4-byte Folded Spill
	lui r1, 381
	ori r26, r2, 4095
	lui r2, 386
	ori r1, r1, 2688
	storeli.w r1, -4392(r30)                # 4-byte Folded Spill
	lui r1, 384
	ori r1, r1, 640
	storeli.w r1, -4396(r30)                # 4-byte Folded Spill
	ori r1, r2, 2688
	lui r2, 389
	storeli.w r1, -4400(r30)                # 4-byte Folded Spill
	lui r1, 2047
	ori r13, r1, 4095
	ori r1, r2, 640
	lui r2, 250738
	storeli.w r1, -4404(r30)                # 4-byte Folded Spill
	lui r1, 56
	ori r1, r1, 2115
	storeli.w r1, -4412(r30)                # 4-byte Folded Spill
	ori r1, r2, 1811
	lui r2, 125
	storeli.w r1, -4416(r30)                # 4-byte Folded Spill
	lui r1, 259268
	ori r1, r1, 554
	storeli.w r1, -4420(r30)                # 4-byte Folded Spill
	ori r1, r2, 2048
	storeli.w r1, -4308(r30)                # 4-byte Folded Spill
	lui r1, 371
	ori r1, r1, 2048
	storeli.w r1, -4408(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1333 7 is_stmt 1              # parallel-rne.mlir:1333:7
	addli r1, zero, 17
	addli r16, zero, 5
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
	addli r1, r30, -4328
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 65 5                          # parallel-rne.mlir:65:5
	addli r3, r30, -4376
	addli.d r[14:15], r[14:15], 1
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	setlt.sl r1, r[14:15], r[1:2]
	beq r1, zero, .LBB0_1051
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
                                        #     Child Loop BB0_216 Depth 2
                                        #       Child Loop BB0_233 Depth 3
                                        #       Child Loop BB0_219 Depth 3
                                        #     Child Loop BB0_245 Depth 2
                                        #       Child Loop BB0_262 Depth 3
                                        #       Child Loop BB0_248 Depth 3
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
                                        #     Child Loop BB0_327 Depth 2
                                        #       Child Loop BB0_329 Depth 3
                                        #       Child Loop BB0_328 Depth 3
                                        #     Child Loop BB0_343 Depth 2
                                        #       Child Loop BB0_345 Depth 3
                                        #     Child Loop BB0_364 Depth 2
                                        #       Child Loop BB0_366 Depth 3
                                        #     Child Loop BB0_385 Depth 2
                                        #       Child Loop BB0_387 Depth 3
                                        #     Child Loop BB0_406 Depth 2
                                        #       Child Loop BB0_408 Depth 3
                                        #     Child Loop BB0_427 Depth 2
                                        #       Child Loop BB0_429 Depth 3
                                        #     Child Loop BB0_448 Depth 2
                                        #       Child Loop BB0_450 Depth 3
                                        #     Child Loop BB0_469 Depth 2
                                        #       Child Loop BB0_471 Depth 3
                                        #     Child Loop BB0_490 Depth 2
                                        #       Child Loop BB0_492 Depth 3
                                        #     Child Loop BB0_524 Depth 2
                                        #       Child Loop BB0_534 Depth 3
                                        #       Child Loop BB0_527 Depth 3
                                        #     Child Loop BB0_560 Depth 2
                                        #       Child Loop BB0_570 Depth 3
                                        #       Child Loop BB0_563 Depth 3
                                        #     Child Loop BB0_596 Depth 2
                                        #       Child Loop BB0_606 Depth 3
                                        #       Child Loop BB0_599 Depth 3
                                        #     Child Loop BB0_632 Depth 2
                                        #       Child Loop BB0_642 Depth 3
                                        #       Child Loop BB0_635 Depth 3
                                        #     Child Loop BB0_668 Depth 2
                                        #       Child Loop BB0_678 Depth 3
                                        #       Child Loop BB0_671 Depth 3
                                        #     Child Loop BB0_704 Depth 2
                                        #       Child Loop BB0_714 Depth 3
                                        #       Child Loop BB0_707 Depth 3
                                        #     Child Loop BB0_740 Depth 2
                                        #       Child Loop BB0_750 Depth 3
                                        #       Child Loop BB0_743 Depth 3
                                        #     Child Loop BB0_776 Depth 2
                                        #       Child Loop BB0_786 Depth 3
                                        #       Child Loop BB0_779 Depth 3
                                        #     Child Loop BB0_824 Depth 2
                                        #       Child Loop BB0_841 Depth 3
                                        #       Child Loop BB0_827 Depth 3
                                        #     Child Loop BB0_852 Depth 2
                                        #       Child Loop BB0_869 Depth 3
                                        #       Child Loop BB0_855 Depth 3
                                        #     Child Loop BB0_880 Depth 2
                                        #       Child Loop BB0_897 Depth 3
                                        #       Child Loop BB0_883 Depth 3
                                        #     Child Loop BB0_908 Depth 2
                                        #       Child Loop BB0_925 Depth 3
                                        #       Child Loop BB0_911 Depth 3
                                        #     Child Loop BB0_936 Depth 2
                                        #       Child Loop BB0_953 Depth 3
                                        #       Child Loop BB0_939 Depth 3
                                        #     Child Loop BB0_964 Depth 2
                                        #       Child Loop BB0_981 Depth 3
                                        #       Child Loop BB0_967 Depth 3
                                        #     Child Loop BB0_992 Depth 2
                                        #       Child Loop BB0_1009 Depth 3
                                        #       Child Loop BB0_995 Depth 3
                                        #     Child Loop BB0_1021 Depth 2
                                        #       Child Loop BB0_1038 Depth 3
                                        #       Child Loop BB0_1024 Depth 3
	.loc	1 89 13                         # parallel-rne.mlir:89:13
	loadli.w r1,  -4264(r30)
	addli r2, r1, 1
	storeli.w r2, -4264(r30)
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r2, zero, 4
	bneq r7, r2, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 18
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  48(r30)
	addli r4, r30, -4328
	addli r10, zero, 8
	mod.s r1, r1, r16
	addli r19, zero, 5
	addli r22, zero, 1
	.loc	1 91 7 is_stmt 1                # parallel-rne.mlir:91:7
	load.d r[23:24], 8(r30)
	loadli.w r11,  -4240(r30)
	loadli.w r16,  -3216(r30)
	addli r2, zero, 0
	addli r8, zero, 32
	store.d r[14:15], 0(r4)                 # 8-byte Folded Spill
	loadli.w r4,  44(r30)
	div.s r3, r14, r3
	loadli.w r14,  -2228(r30)
	div.s r3, r3, r4
	div.s r4, r3, r12
	slli r9, r4, 3
	slli r4, r4, 5
	sub.s r12, r17, r9
	sub.s r4, r3, r4
	min.s r12, r12, r10
	addli r10, zero, 5
	mod.s r3, r3, r12
	div.s r15, r4, r12
	slli r4, r1, 11
	loadli.w r12,  -1204(r30)
	slli r1, r15, 5
	add.s r3, r9, r3
	zext_int2long r[17:18], r15
	storeli.w r1, -4272(r30)                # 4-byte Folded Spill
	slli r1, r3, 4
	sll.d r[17:18], r[17:18], r19
	zext_int2long r[19:20], r3
	addli r3, zero, 11
	storeli.w r1, -4356(r30)                # 4-byte Folded Spill
	addli r1, r30, -4344
	store.d r[17:18], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -4352
	sll.d r[17:18], r[17:18], r22
	store.d r[19:20], 0(r1)                 # 8-byte Folded Spill
	sll.d r[20:21], r[19:20], r3
	add.ul r[18:19], r[23:24], r[17:18]
	load.d r[23:24], 0(r30)
	addli r17, zero, 1
	add.ul r[20:21], r[23:24], r[20:21]
	addli r23, zero, 0
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	addli r2, zero, 2
	addli r15, zero, 3
	addli r8, zero, 16
	xwait r2, 0
	xwait r10, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r15, zero, 0
	ds_cfg r2, zero, 1
	addli r2, zero, 32
	ds_cfg r2, zero, 14
	ds_cfg r8, zero, 13
	addli r8, zero, 32
	shuffle_batch r3, r9, r2, 1
	addli r2, zero, 4
	unlock zero
	xsignal r15, 0
.LBB0_11:                               # %.thread78
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
	.loc	1 125 15 is_stmt 1              # parallel-rne.mlir:125:15
	addli r14, r14, 1
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	addli r12, r12, 1
.LBB0_12:                               # %.thread80
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	andi r2, r22, 1
	beq r2, zero, .LBB0_28
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 135 15                        # parallel-rne.mlir:135:15
	addli r23, r23, 1
	addli r2, zero, 1
	addli r22, zero, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	add.s r24, r16, r23
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r3, zero, 246
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	add.s r25, r11, r23
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	addli r9, zero, 255
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	mod.s r3, r24, r3
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	mod.s r9, r25, r9
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	slli r15, r3, 11
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	slli r3, r9, 10
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r9, r15, 10240
	.loc	1 114 9                         # parallel-rne.mlir:114:9
	addli r15, zero, 2
	beq r7, r15, .LBB0_10
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[27:28], r2
	.loc	1 114 9                         # parallel-rne.mlir:114:9
	bneq r7, r17, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 6
	addli r15, zero, 3
	sll.d r[2:3], r[27:28], r1
	xwait r15, 0
	addli r15, zero, 4
	addli r27, zero, 64
	lock zero, r15
	add.ul r[2:3], r[20:21], r[2:3]
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg r9, r2, r27, 3
	addli r2, zero, 16
	addli r3, zero, 128
	dma_cfg r3, r3, r2, 4
	dma_run zero
	unlock r15
	addli r2, zero, 2
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 127 15 is_stmt 1              # parallel-rne.mlir:127:15
	addli r2, zero, 246
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	addli r9, zero, 255
	.loc	1 131 9                         # parallel-rne.mlir:131:9
	addli r1, zero, 7
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	mod.s r2, r12, r2
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	mod.s r9, r14, r9
	addli r14, r14, 1
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	addli r12, r12, 1
	slli r15, r2, 12
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	slli r2, r9, 11
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	loadli.w r9,  -4308(r30)                # 4-byte Folded Reload
	add.s r9, r15, r9
	.loc	1 131 9                         # parallel-rne.mlir:131:9
	beq r7, r1, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 131 9                         # parallel-rne.mlir:131:9
	bneq r7, r1, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 13
	addli r15, zero, 7
	sll.d r[2:3], r[27:28], r2
	xwait r15, 0
	addli r15, zero, 4
	addli r27, zero, 64
	lock zero, r15
	add.ul r[2:3], r[18:19], r[2:3]
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg r9, r2, r27, 3
	addli r2, zero, 128
	addli r3, zero, 256
	dma_cfg r2, r3, r8, 4
	dma_run zero
	unlock r15
	xsignal r1, 0
	.loc	1 132 9 is_stmt 1               # parallel-rne.mlir:132:9
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 6
	addli r3, zero, 3
	addli r8, zero, 32
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 7
	ds_cfg r3, zero, 0
	addli r3, zero, 64
	ds_cfg r3, zero, 1
	addli r3, zero, 32
	ds_cfg r3, zero, 14
	ds_cfg r3, zero, 13
	shuffle_coa r2, r9, r3, 2
	addli r2, zero, 8
	unlock zero
	xsignal r1, 0
	xsignal r2, 0
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 4
	.loc	1 134 9 is_stmt 1               # parallel-rne.mlir:134:9
	bneq r7, r9, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r9, 0
	addli r9, zero, 8
	xwait r9, 0
	addli r9, zero, 16
	lock zero, r17
	mm_cfg r8, r8, r9, 0
	mm_cfg r17, r17, r17, 2
	beq r23, zero, .LBB0_25
# %bb.23:                               # %.preheader132
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r4, r3, r2, 5
	j .LBB0_26
.LBB0_24:                               # %.thread80.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	andi r2, r22, 1
	bneq r2, zero, .LBB0_13
	j .LBB0_1050
.LBB0_25:                               # %.preheader131
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 134 9                         # parallel-rne.mlir:134:9
	mm r4, r3, r2, 5
.LBB0_26:                               # %.thread80.thread191
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	andi r2, r22, 1
	.loc	1 134 9                         # parallel-rne.mlir:134:9
	addli r1, zero, 9
	unlock r17
	xsignal r10, 0
	xsignal r1, 0
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	bneq r2, zero, .LBB0_13
# %bb.27:                               # %.thread192
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	addli r2, r25, 1
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r3, r24, 1
	loadli.w r1,  -4272(r30)                # 4-byte Folded Reload
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	storeli.w r14, -2228(r30)
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	storeli.w r12, -1204(r30)
	addli r10, zero, 4
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	storeli.w r2, -4240(r30)
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	storeli.w r3, -3216(r30)
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4272(r30)                # 4-byte Folded Reload
	.loc	1 108 15 is_stmt 1              # parallel-rne.mlir:108:15
	addli r2, r25, 1
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r3, r24, 1
	addli r10, zero, 4
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	storeli.w r14, -2228(r30)
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	storeli.w r12, -1204(r30)
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	storeli.w r2, -4240(r30)
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	storeli.w r3, -3216(r30)
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	bneq r7, r10, .LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 96
	.loc	1 145 13 is_stmt 1              # parallel-rne.mlir:145:13
	zext_int2long r[1:2], r1
	zext_int2long r[8:9], r3
	addli r3, r30, -4296
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	min.ul r[11:12], r[1:2], r[8:9]
	store.d r[8:9], 0(r3)                   # 8-byte Folded Spill
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	loadli.w r3,  -216(r30)
	addli r8, zero, 5
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	addli.d r[11:12], r[11:12], 32
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	mod.s r9, r3, r8
	addli r3, r3, 1
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	max.ul r[11:12], r[11:12], r[1:2]
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	storeli.w r3, -216(r30)
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	addli r3, r30, -4368
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	sub.sl r[1:2], r[11:12], r[1:2]
	addli r12, zero, 32
	addli r11, r30, -4280
	zext_int2long r[14:15], r12
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	slli r9, r9, 7
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	min.ul r[18:19], r[1:2], r[14:15]
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	loadli.w r1,  -4408(r30)                # 4-byte Folded Reload
	lui r2, 371
	store.d r[14:15], 0(r11)                # 8-byte Folded Spill
	addli r11, zero, 2048
	ori r2, r2, 2688
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	store.d r[18:19], 0(r3)                 # 8-byte Folded Spill
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	add.s r1, r9, r1
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	bneq r7, r17, .LBB0_32
# %bb.31:                               # %.thread193
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, r30, -4344
	load.d r[14:15], 16(r30)
	load.d r[11:12], 0(r3)                  # 8-byte Folded Reload
	addli r3, zero, 20
	xwait r3, 0
	lock zero, r10
	slli r3, r18, 1
	sll.d r[11:12], r[11:12], r17
	dma_cfg zero, r17, zero, 0
	add.ul r[11:12], r[14:15], r[11:12]
	dma_cfg zero, r12, zero, 2
	dma_cfg r1, r11, r3, 3
	addli r1, zero, 64
	addli r3, zero, 128
	dma_cfg r3, r1, r17, 4
	addli r1, zero, 19
	dma_run zero
	unlock r10
	xsignal r1, 0
	.loc	1 157 13                        # parallel-rne.mlir:157:13
	loadli.w r1,  -192(r30)
	mod.s r3, r1, r8
	addli r1, r1, 1
	storeli.w r1, -192(r30)
	slli r3, r3, 11
	add.s r23, r3, r2
	j .LBB0_36
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r3,  -192(r30)
	mod.s r9, r3, r8
	addli r3, r3, 1
	storeli.w r3, -192(r30)
	slli r9, r9, 11
	add.s r23, r9, r2
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	bneq r7, r8, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	addli r2, zero, 0
	xwait r3, 0
	addli r3, zero, 19
	xwait r3, 0
	addli r3, zero, 23
	xwait r3, 0
	addli r3, zero, 2
	lock zero, r3
	lui r3, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r3, r3, zero, 0
	addli r3, zero, 31
	ew_cfg zero, r3, zero, 2
	ew_cfg r17, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r23, r2
	add.s r9, r4, r2
	addli r2, r2, 128
	dsmadd r3, r9, r1, 0
	bneq r2, r11, .LBB0_34
# %bb.35:                               # %.thread194
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 2
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	addli r1, zero, 11
	addli r11, zero, 511
	lui r9, 260096
	addli r10, zero, 5
	unlock r3
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	addli r1, zero, 24
	xsignal r1, 0
	.loc	1 160 13 is_stmt 1              # parallel-rne.mlir:160:13
	loadli.w r1,  -168(r30)
	mod.s r2, r1, r8
	addli r1, r1, 1
	storeli.w r1, -168(r30)
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r1, zero, 26
	xwait r1, 0
	lock zero, r3
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	slli r1, r2, 11
	loadli.w r2,  -4380(r30)                # 4-byte Folded Reload
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	ew_cfg zero, zero, zero, 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r25, r1, r2
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	lui r1, 258048
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 25
	ew_cfg zero, r11, zero, 2
	ew_cfg r17, zero, zero, 3
	ew_cfg r17, r17, zero, 19
	hp_ssmul r25, r23, r23, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r1, 0
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	loadli.w r1,  -144(r30)
	mod.s r2, r1, r8
	addli r1, r1, 1
	storeli.w r1, -144(r30)
	loadli.w r1,  -4384(r30)                # 4-byte Folded Reload
	slli r2, r2, 11
	add.s r18, r2, r1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r1, zero, 28
	xwait r1, 0
	lock zero, r3
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r9, 0
	ew_cfg zero, r11, zero, 2
	ew_cfg r17, zero, zero, 3
	ew_cfg r17, r17, r17, 19
	dsmul r18, r23, r23, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	loadli.w r1,  -120(r30)
	mod.s r2, r1, r8
	addli r1, r1, 1
	storeli.w r1, -120(r30)
	loadli.w r1,  -4388(r30)                # 4-byte Folded Reload
	slli r2, r2, 11
	add.s r16, r2, r1
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	addli r1, zero, 30
	xwait r1, 0
	lock zero, r3
	addli r1, zero, 21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r9, 0
	ew_cfg zero, r11, zero, 2
	ew_cfg r17, zero, zero, 3
	ew_cfg r17, r17, r17, 19
	dsmul r16, r18, r23, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r1, 0
	addli r1, zero, 27
	xsignal r1, 0
	addli r1, zero, 29
	xsignal r1, 0
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	loadli.w r1,  -96(r30)
	storeli.w r1, -4332(r30)                # 4-byte Folded Spill
	addli r1, r1, 1
	storeli.w r1, -96(r30)
	j .LBB0_39
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	loadli.w r1,  -168(r30)
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	loadli.w r2,  -144(r30)
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	loadli.w r11,  -120(r30)
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	loadli.w r12,  -96(r30)
	addli r10, zero, 5
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	mod.s r3, r1, r8
	addli r1, r1, 1
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	mod.s r9, r2, r8
	addli r2, r2, 1
	storeli.w r12, -4332(r30)               # 4-byte Folded Spill
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	storeli.w r1, -168(r30)
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	mod.s r1, r11, r8
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	loadli.w r8,  -4380(r30)                # 4-byte Folded Reload
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	storeli.w r2, -144(r30)
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	slli r2, r3, 11
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	slli r3, r9, 11
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r25, r2, r8
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	loadli.w r2,  -4384(r30)                # 4-byte Folded Reload
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	slli r1, r1, 11
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	add.s r18, r3, r2
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	loadli.w r3,  -4388(r30)                # 4-byte Folded Reload
	addli r2, r11, 1
	storeli.w r2, -120(r30)
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	addli r2, r12, 1
	.loc	1 166 13                        # parallel-rne.mlir:166:13
	add.s r16, r1, r3
	.loc	1 171 7                         # parallel-rne.mlir:171:7
	addli r1, zero, 3
	.loc	1 169 13                        # parallel-rne.mlir:169:13
	storeli.w r2, -96(r30)
	bneq r7, r1, .LBB0_38
# %bb.37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 171 7                         # parallel-rne.mlir:171:7
	addli r1, zero, 11
	xwait r1, 0
	.loc	1 172 7                         # parallel-rne.mlir:172:7
	addli r1, zero, 21
	xwait r1, 0
	.loc	1 173 7                         # parallel-rne.mlir:173:7
	addli r1, zero, 27
	xwait r1, 0
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	addli r1, zero, 29
	xwait r1, 0
.LBB0_38:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 32
.LBB0_39:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 178 7 is_stmt 1               # parallel-rne.mlir:178:7
	addli r1, zero, 255
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	xfence
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	addli r3, r30, -4272
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	mfence { lm, sm, gm }
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	csr_set csr5, r1
	sub.s r1, r4, r18
	storeli.w r1, -4312(r30)                # 4-byte Folded Spill
	sub.s r1, r4, r23
	storeli.w r1, -4316(r30)                # 4-byte Folded Spill
	sub.s r1, r4, r16
	storeli.w r1, -4320(r30)                # 4-byte Folded Spill
	addli r1, zero, 31
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	sync_core
	storeli.w r25, -4284(r30)               # 4-byte Folded Spill
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	beq r7, zero, .LBB0_45
# %bb.40:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 215 7                         # parallel-rne.mlir:215:7
	beq r7, r17, .LBB0_73
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	addli r1, zero, 2
	beq r7, r1, .LBB0_101
.LBB0_42:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 287 7                         # parallel-rne.mlir:287:7
	addli r1, zero, 3
	beq r7, r1, .LBB0_129
.LBB0_43:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	addli r1, zero, 4
	beq r7, r1, .LBB0_157
.LBB0_44:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	beq r7, r10, .LBB0_185
	j .LBB0_213
.LBB0_45:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r11, zero, 1
	zext_int2long r[24:25], zero
	min.u r1, r1, r2
	loadli.w r2,  -4320(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 179 7 is_stmt 1               # parallel-rne.mlir:179:7
	storeli.w r1, -4304(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_47
.LBB0_46:                               # %middle.block711
                                        #   in Loop: Header=BB0_47 Depth=2
	.loc	1 187 9                         # parallel-rne.mlir:187:9
	andi r1, r11, 1
	zext_int2long r[24:25], r12
	addli r11, zero, 0
	beq r1, zero, .LBB0_72
.LBB0_47:                               # %vector.memcheck697
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_64 Depth 3
                                        #       Child Loop BB0_50 Depth 3
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	loadli.w r1,  -4304(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_62
# %bb.48:                               # %scalar.ph703.preheader
                                        #   in Loop: Header=BB0_47 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_50
.LBB0_49:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	addli r1, r30, -4272
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[7:8]
	.loc	1 210 13 is_stmt 1              # parallel-rne.mlir:210:13
	add.s r7, r4, r9
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 210 13                        # parallel-rne.mlir:210:13
	stores.w r15, 0(r7)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	beq r1, zero, .LBB0_46
.LBB0_50:                               # %scalar.ph703
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[7:8], r[2:3], r[24:25]
	lui r15, 523264
	lui r20, 523264
	slli r9, r7, 2
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	add.s r1, r23, r9
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.s r7, r16, r9
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	loads.w r1, 0(r1)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	loads.w r22, 0(r7)
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r17, r1, r26
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	beq r17, r5, .LBB0_52
# %bb.51:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r22, 0
.LBB0_52:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	add.s r1, r18, r9
	loads.w r1, 0(r1)
	and r19, r1, r26
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r19, zero, .LBB0_60
# %bb.53:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r17, zero, .LBB0_61
.LBB0_54:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	beq r19, r5, .LBB0_56
.LBB0_55:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
.LBB0_56:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r1, r5, r17
	lui r17, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_58
# %bb.57:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r22, 0
.LBB0_58:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r1, r5, r19
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_49
# %bb.59:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r17, 0
	j .LBB0_49
.LBB0_60:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	addli r20, r22, 0
	lui r22, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	beq r17, zero, .LBB0_54
.LBB0_61:                               # %scalar.ph703
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r19, r5, .LBB0_55
	j .LBB0_56
.LBB0_62:                               # %vector.body705.preheader
                                        #   in Loop: Header=BB0_47 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_64
.LBB0_63:                               # %vector.body705
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	addli.d r[27:28], r[27:28], 4
	zext_int2long r[7:8], r12
	.loc	1 210 13                        # parallel-rne.mlir:210:13
	add.s r2, r4, r2
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	seteq.d r1, r[27:28], r[7:8]
	.loc	1 210 13                        # parallel-rne.mlir:210:13
	stores.w r9, 12(r2)
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	bneq r1, zero, .LBB0_46
.LBB0_64:                               # %vector.body705
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[2:3], r[27:28], r[24:25]
	slli r2, r2, 2
	add.s r15, r18, r2
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	add.s r17, r23, r2
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	loads.w r3, 0(r15)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	loads.w r9, 0(r17)
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	and r3, r3, r26
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r9, r9, r26
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	seteq r19, r3, r5
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	seteq r1, r3, zero
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	seteq r22, r9, r5
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	seteq r20, r9, zero
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	max.u r3, r3, r9
	setlt.u r3, r5, r3
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	and r9, r19, r20
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r1, r1, r22
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.s r19, r16, r2
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	or r1, r9, r1
	lui r9, 523264
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	or r1, r3, r1
	lui r3, 523264
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_66
# %bb.65:                               # %vector.body705
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_66:                               # %vector.body705
                                        #   in Loop: Header=BB0_64 Depth=3
	loads.w r1, 4(r15)
	loads.w r20, 4(r17)
	and r1, r1, r26
	and r20, r20, r26
	seteq r22, r1, r5
	seteq r7, r1, zero
	seteq r14, r20, r5
	seteq r21, r20, zero
	max.u r1, r1, r20
	setlt.u r1, r5, r1
	and r20, r22, r21
	and r7, r7, r14
	or r7, r20, r7
	lui r20, 523264
	or r1, r1, r7
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_68
# %bb.67:                               # %vector.body705
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_68:                               # %vector.body705
                                        #   in Loop: Header=BB0_64 Depth=3
	loads.w r1, 8(r15)
	loads.w r7, 8(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r14, r1, r5
	seteq r8, r1, zero
	seteq r22, r7, r5
	seteq r21, r7, zero
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r8, r8, r22
	and r7, r14, r21
	lui r22, 523264
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_70
# %bb.69:                               # %vector.body705
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 8(r19)
.LBB0_70:                               # %vector.body705
                                        #   in Loop: Header=BB0_64 Depth=3
	loads.w r1, 12(r15)
	loads.w r7, 12(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r17, r1, zero
	seteq r14, r7, zero
	seteq r15, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r17, r15
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r1, zero, .LBB0_63
# %bb.71:                               # %vector.body705
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r19)
	j .LBB0_63
.LBB0_72:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 179 7 is_stmt 1               # parallel-rne.mlir:179:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 215 7                         # parallel-rne.mlir:215:7
	bneq r7, r17, .LBB0_41
.LBB0_73:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r11, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -4320(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 215 7                         # parallel-rne.mlir:215:7
	storeli.w r1, -4304(r30)                # 4-byte Folded Spill
	addli r1, zero, 64
	xfence
	zext_int2long r[24:25], r1
	mfence { lm, sm, gm }
	j .LBB0_75
.LBB0_74:                               # %middle.block696
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 223 9 is_stmt 1               # parallel-rne.mlir:223:9
	andi r1, r11, 1
	addli r11, zero, 0
	zext_int2long r[24:25], r2
	beq r1, zero, .LBB0_100
.LBB0_75:                               # %vector.memcheck682
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_78 Depth 3
	.loc	1 224 11                        # parallel-rne.mlir:224:11
	loadli.w r1,  -4304(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_90
# %bb.76:                               # %scalar.ph688.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_78
.LBB0_77:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 224 11                        # parallel-rne.mlir:224:11
	addli r1, r30, -4272
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[7:8]
	.loc	1 246 13 is_stmt 1              # parallel-rne.mlir:246:13
	add.s r7, r4, r9
	.loc	1 224 11                        # parallel-rne.mlir:224:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r15, 0(r7)
	.loc	1 224 11                        # parallel-rne.mlir:224:11
	beq r1, zero, .LBB0_74
.LBB0_78:                               # %scalar.ph688
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	add.ul r[7:8], r[2:3], r[24:25]
	lui r15, 523264
	lui r20, 523264
	slli r9, r7, 2
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.s r1, r23, r9
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	add.s r7, r16, r9
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	loads.w r1, 0(r1)
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	loads.w r22, 0(r7)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r17, r1, r26
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r17, r5, .LBB0_80
# %bb.79:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r22, 0
.LBB0_80:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	add.s r1, r18, r9
	loads.w r1, 0(r1)
	and r19, r1, r26
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r19, zero, .LBB0_88
# %bb.81:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r17, zero, .LBB0_89
.LBB0_82:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	beq r19, r5, .LBB0_84
.LBB0_83:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
.LBB0_84:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	setlt.u r1, r5, r17
	lui r17, 523264
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_86
# %bb.85:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r22, 0
.LBB0_86:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	setlt.u r1, r5, r19
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_77
# %bb.87:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r17, 0
	j .LBB0_77
.LBB0_88:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	addli r20, r22, 0
	lui r22, 523264
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r17, zero, .LBB0_82
.LBB0_89:                               # %scalar.ph688
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r19, r5, .LBB0_83
	j .LBB0_84
.LBB0_90:                               # %vector.body690.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_92
.LBB0_91:                               # %vector.body690
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 224 11 is_stmt 1              # parallel-rne.mlir:224:11
	addli.d r[27:28], r[27:28], 4
	zext_int2long r[7:8], r12
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r2, r4, r2
	.loc	1 224 11                        # parallel-rne.mlir:224:11
	seteq.d r1, r[27:28], r[7:8]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r9, 12(r2)
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 224 11                        # parallel-rne.mlir:224:11
	bneq r1, zero, .LBB0_74
.LBB0_92:                               # %vector.body690
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	add.ul r[2:3], r[27:28], r[24:25]
	slli r2, r2, 2
	add.s r15, r18, r2
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.s r17, r23, r2
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	loads.w r3, 0(r15)
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	loads.w r7, 0(r17)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r3, r3, r26
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r7, r7, r26
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	seteq r8, r3, r5
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	seteq r19, r3, zero
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	seteq r9, r7, zero
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	seteq r14, r7, r5
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	max.u r3, r3, r7
	setlt.u r3, r5, r3
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r7, r8, r9
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r8, r19, r14
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	add.s r19, r16, r2
	lui r9, 523264
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	or r7, r7, r8
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	or r7, r3, r7
	lui r3, 523264
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r7, zero, .LBB0_94
# %bb.93:                               # %vector.body690
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_94:                               # %vector.body690
                                        #   in Loop: Header=BB0_92 Depth=3
	loads.w r7, 4(r15)
	loads.w r8, 4(r17)
	and r7, r7, r26
	and r8, r8, r26
	seteq r14, r7, r5
	seteq r1, r7, zero
	seteq r22, r8, r5
	seteq r20, r8, zero
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r14, r20
	and r1, r1, r22
	lui r20, 523264
	or r1, r8, r1
	or r1, r7, r1
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_96
# %bb.95:                               # %vector.body690
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_96:                               # %vector.body690
                                        #   in Loop: Header=BB0_92 Depth=3
	loads.w r1, 8(r15)
	loads.w r7, 8(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r21, r1, zero
	seteq r14, r7, zero
	seteq r22, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r21, r22
	lui r22, 523264
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_98
# %bb.97:                               # %vector.body690
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 8(r19)
.LBB0_98:                               # %vector.body690
                                        #   in Loop: Header=BB0_92 Depth=3
	loads.w r1, 12(r15)
	loads.w r7, 12(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r17, r1, zero
	seteq r14, r7, zero
	seteq r15, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r17, r15
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r1, zero, .LBB0_91
# %bb.99:                               # %vector.body690
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r19)
	j .LBB0_91
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 215 7 is_stmt 1               # parallel-rne.mlir:215:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	addli r1, zero, 2
	bneq r7, r1, .LBB0_42
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r11, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -4320(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	storeli.w r1, -4304(r30)                # 4-byte Folded Spill
	addli r1, zero, 128
	xfence
	zext_int2long r[24:25], r1
	mfence { lm, sm, gm }
	j .LBB0_103
.LBB0_102:                              # %middle.block681
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 160
	.loc	1 259 9 is_stmt 1               # parallel-rne.mlir:259:9
	andi r1, r11, 1
	addli r11, zero, 0
	zext_int2long r[24:25], r2
	beq r1, zero, .LBB0_128
.LBB0_103:                              # %vector.memcheck667
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	loadli.w r1,  -4304(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_118
# %bb.104:                              # %scalar.ph673.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_106
.LBB0_105:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	addli r1, r30, -4272
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[7:8]
	.loc	1 282 13 is_stmt 1              # parallel-rne.mlir:282:13
	add.s r7, r4, r9
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 282 13                        # parallel-rne.mlir:282:13
	stores.w r15, 0(r7)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	beq r1, zero, .LBB0_102
.LBB0_106:                              # %scalar.ph673
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[7:8], r[2:3], r[24:25]
	lui r15, 523264
	lui r20, 523264
	slli r9, r7, 2
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.s r1, r23, r9
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.s r7, r16, r9
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	loads.w r1, 0(r1)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	loads.w r22, 0(r7)
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	and r17, r1, r26
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	beq r17, r5, .LBB0_108
# %bb.107:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r22, 0
.LBB0_108:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	add.s r1, r18, r9
	loads.w r1, 0(r1)
	and r19, r1, r26
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r19, zero, .LBB0_116
# %bb.109:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r17, zero, .LBB0_117
.LBB0_110:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	beq r19, r5, .LBB0_112
.LBB0_111:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
.LBB0_112:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r1, r5, r17
	lui r17, 523264
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_114
# %bb.113:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r22, 0
.LBB0_114:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r1, r5, r19
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_105
# %bb.115:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r17, 0
	j .LBB0_105
.LBB0_116:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	addli r20, r22, 0
	lui r22, 523264
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	beq r17, zero, .LBB0_110
.LBB0_117:                              # %scalar.ph673
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r19, r5, .LBB0_111
	j .LBB0_112
.LBB0_118:                              # %vector.body675.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_120
.LBB0_119:                              # %vector.body675
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	addli.d r[27:28], r[27:28], 4
	zext_int2long r[7:8], r12
	.loc	1 282 13                        # parallel-rne.mlir:282:13
	add.s r2, r4, r2
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	seteq.d r1, r[27:28], r[7:8]
	.loc	1 282 13                        # parallel-rne.mlir:282:13
	stores.w r9, 12(r2)
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	bneq r1, zero, .LBB0_102
.LBB0_120:                              # %vector.body675
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[2:3], r[27:28], r[24:25]
	slli r2, r2, 2
	add.s r15, r18, r2
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.s r17, r23, r2
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	loads.w r3, 0(r15)
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	loads.w r7, 0(r17)
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	and r3, r3, r26
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	and r7, r7, r26
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	seteq r8, r3, r5
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	seteq r19, r3, zero
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	seteq r9, r7, zero
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	seteq r14, r7, r5
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	max.u r3, r3, r7
	setlt.u r3, r5, r3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	and r7, r8, r9
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	and r8, r19, r14
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.s r19, r16, r2
	lui r9, 523264
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	or r7, r7, r8
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	or r7, r3, r7
	lui r3, 523264
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r7, zero, .LBB0_122
# %bb.121:                              # %vector.body675
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_122:                              # %vector.body675
                                        #   in Loop: Header=BB0_120 Depth=3
	loads.w r7, 4(r15)
	loads.w r8, 4(r17)
	and r7, r7, r26
	and r8, r8, r26
	seteq r14, r7, r5
	seteq r1, r7, zero
	seteq r22, r8, r5
	seteq r20, r8, zero
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r14, r20
	and r1, r1, r22
	lui r20, 523264
	or r1, r8, r1
	or r1, r7, r1
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_124
# %bb.123:                              # %vector.body675
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_124:                              # %vector.body675
                                        #   in Loop: Header=BB0_120 Depth=3
	loads.w r1, 8(r15)
	loads.w r7, 8(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r21, r1, zero
	seteq r14, r7, zero
	seteq r22, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r21, r22
	lui r22, 523264
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_126
# %bb.125:                              # %vector.body675
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 8(r19)
.LBB0_126:                              # %vector.body675
                                        #   in Loop: Header=BB0_120 Depth=3
	loads.w r1, 12(r15)
	loads.w r7, 12(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r17, r1, zero
	seteq r14, r7, zero
	seteq r15, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r17, r15
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r1, zero, .LBB0_119
# %bb.127:                              # %vector.body675
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r19)
	j .LBB0_119
.LBB0_128:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 251 7 is_stmt 1               # parallel-rne.mlir:251:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 287 7                         # parallel-rne.mlir:287:7
	addli r1, zero, 3
	bneq r7, r1, .LBB0_43
.LBB0_129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r11, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -4320(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 287 7                         # parallel-rne.mlir:287:7
	storeli.w r1, -4304(r30)                # 4-byte Folded Spill
	addli r1, zero, 192
	xfence
	zext_int2long r[24:25], r1
	mfence { lm, sm, gm }
	j .LBB0_131
.LBB0_130:                              # %middle.block666
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 224
	.loc	1 295 9 is_stmt 1               # parallel-rne.mlir:295:9
	andi r1, r11, 1
	addli r11, zero, 0
	zext_int2long r[24:25], r2
	beq r1, zero, .LBB0_156
.LBB0_131:                              # %vector.memcheck652
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_134 Depth 3
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	loadli.w r1,  -4304(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_146
# %bb.132:                              # %scalar.ph658.preheader
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_134
.LBB0_133:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	addli r1, r30, -4272
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[7:8]
	.loc	1 318 13 is_stmt 1              # parallel-rne.mlir:318:13
	add.s r7, r4, r9
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	stores.w r15, 0(r7)
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	beq r1, zero, .LBB0_130
.LBB0_134:                              # %scalar.ph658
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	add.ul r[7:8], r[2:3], r[24:25]
	lui r15, 523264
	lui r20, 523264
	slli r9, r7, 2
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	add.s r1, r23, r9
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.s r7, r16, r9
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	loads.w r1, 0(r1)
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	loads.w r22, 0(r7)
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	and r17, r1, r26
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r17, r5, .LBB0_136
# %bb.135:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r22, 0
.LBB0_136:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	add.s r1, r18, r9
	loads.w r1, 0(r1)
	and r19, r1, r26
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r19, zero, .LBB0_144
# %bb.137:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r17, zero, .LBB0_145
.LBB0_138:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	beq r19, r5, .LBB0_140
.LBB0_139:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
.LBB0_140:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r1, r5, r17
	lui r17, 523264
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_142
# %bb.141:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r22, 0
.LBB0_142:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r1, r5, r19
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_133
# %bb.143:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r17, 0
	j .LBB0_133
.LBB0_144:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	addli r20, r22, 0
	lui r22, 523264
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	beq r17, zero, .LBB0_138
.LBB0_145:                              # %scalar.ph658
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r19, r5, .LBB0_139
	j .LBB0_140
.LBB0_146:                              # %vector.body660.preheader
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_148
.LBB0_147:                              # %vector.body660
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 296 11 is_stmt 1              # parallel-rne.mlir:296:11
	addli.d r[27:28], r[27:28], 4
	zext_int2long r[7:8], r12
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	add.s r2, r4, r2
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	seteq.d r1, r[27:28], r[7:8]
	.loc	1 318 13                        # parallel-rne.mlir:318:13
	stores.w r9, 12(r2)
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 296 11                        # parallel-rne.mlir:296:11
	bneq r1, zero, .LBB0_130
.LBB0_148:                              # %vector.body660
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	add.ul r[2:3], r[27:28], r[24:25]
	slli r2, r2, 2
	add.s r15, r18, r2
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	add.s r17, r23, r2
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	loads.w r3, 0(r15)
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	loads.w r7, 0(r17)
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	and r3, r3, r26
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	and r7, r7, r26
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	seteq r8, r3, r5
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	seteq r19, r3, zero
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	seteq r9, r7, zero
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	seteq r14, r7, r5
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	max.u r3, r3, r7
	setlt.u r3, r5, r3
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r7, r8, r9
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	and r8, r19, r14
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	add.s r19, r16, r2
	lui r9, 523264
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	or r7, r7, r8
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	or r7, r3, r7
	lui r3, 523264
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r7, zero, .LBB0_150
# %bb.149:                              # %vector.body660
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_150:                              # %vector.body660
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r7, 4(r15)
	loads.w r8, 4(r17)
	and r7, r7, r26
	and r8, r8, r26
	seteq r14, r7, r5
	seteq r1, r7, zero
	seteq r22, r8, r5
	seteq r20, r8, zero
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r14, r20
	and r1, r1, r22
	lui r20, 523264
	or r1, r8, r1
	or r1, r7, r1
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_152
# %bb.151:                              # %vector.body660
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_152:                              # %vector.body660
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r1, 8(r15)
	loads.w r7, 8(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r21, r1, zero
	seteq r14, r7, zero
	seteq r22, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r21, r22
	lui r22, 523264
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_154
# %bb.153:                              # %vector.body660
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 8(r19)
.LBB0_154:                              # %vector.body660
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r1, 12(r15)
	loads.w r7, 12(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r17, r1, zero
	seteq r14, r7, zero
	seteq r15, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r17, r15
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r1, zero, .LBB0_147
# %bb.155:                              # %vector.body660
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r19)
	j .LBB0_147
.LBB0_156:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 287 7 is_stmt 1               # parallel-rne.mlir:287:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	addli r1, zero, 4
	bneq r7, r1, .LBB0_44
.LBB0_157:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r11, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -4320(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 323 7                         # parallel-rne.mlir:323:7
	storeli.w r1, -4304(r30)                # 4-byte Folded Spill
	addli r1, zero, 256
	xfence
	zext_int2long r[24:25], r1
	mfence { lm, sm, gm }
	j .LBB0_159
.LBB0_158:                              # %middle.block651
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 288
	.loc	1 331 9 is_stmt 1               # parallel-rne.mlir:331:9
	andi r1, r11, 1
	addli r11, zero, 0
	zext_int2long r[24:25], r2
	beq r1, zero, .LBB0_184
.LBB0_159:                              # %vector.memcheck637
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_176 Depth 3
                                        #       Child Loop BB0_162 Depth 3
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	loadli.w r1,  -4304(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_174
# %bb.160:                              # %scalar.ph643.preheader
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_162
.LBB0_161:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	addli r1, r30, -4272
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[7:8]
	.loc	1 354 13 is_stmt 1              # parallel-rne.mlir:354:13
	add.s r7, r4, r9
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r15, 0(r7)
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	beq r1, zero, .LBB0_158
.LBB0_162:                              # %scalar.ph643
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.ul r[7:8], r[2:3], r[24:25]
	lui r15, 523264
	lui r20, 523264
	slli r9, r7, 2
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.s r1, r23, r9
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	add.s r7, r16, r9
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	loads.w r1, 0(r1)
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	loads.w r22, 0(r7)
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	and r17, r1, r26
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r17, r5, .LBB0_164
# %bb.163:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r22, 0
.LBB0_164:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	add.s r1, r18, r9
	loads.w r1, 0(r1)
	and r19, r1, r26
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r19, zero, .LBB0_172
# %bb.165:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r17, zero, .LBB0_173
.LBB0_166:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	beq r19, r5, .LBB0_168
.LBB0_167:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
.LBB0_168:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	setlt.u r1, r5, r17
	lui r17, 523264
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_170
# %bb.169:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r22, 0
.LBB0_170:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	setlt.u r1, r5, r19
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_161
# %bb.171:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r17, 0
	j .LBB0_161
.LBB0_172:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	addli r20, r22, 0
	lui r22, 523264
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r17, zero, .LBB0_166
.LBB0_173:                              # %scalar.ph643
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r19, r5, .LBB0_167
	j .LBB0_168
.LBB0_174:                              # %vector.body645.preheader
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_176
.LBB0_175:                              # %vector.body645
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 332 11 is_stmt 1              # parallel-rne.mlir:332:11
	addli.d r[27:28], r[27:28], 4
	zext_int2long r[7:8], r12
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	add.s r2, r4, r2
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	seteq.d r1, r[27:28], r[7:8]
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r9, 12(r2)
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 332 11                        # parallel-rne.mlir:332:11
	bneq r1, zero, .LBB0_158
.LBB0_176:                              # %vector.body645
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.ul r[2:3], r[27:28], r[24:25]
	slli r2, r2, 2
	add.s r15, r18, r2
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.s r17, r23, r2
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	loads.w r3, 0(r15)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	loads.w r7, 0(r17)
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	and r3, r3, r26
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	and r7, r7, r26
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	seteq r8, r3, r5
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	seteq r19, r3, zero
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	seteq r9, r7, zero
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	seteq r14, r7, r5
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	max.u r3, r3, r7
	setlt.u r3, r5, r3
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r7, r8, r9
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	and r8, r19, r14
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	add.s r19, r16, r2
	lui r9, 523264
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	or r7, r7, r8
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	or r7, r3, r7
	lui r3, 523264
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r7, zero, .LBB0_178
# %bb.177:                              # %vector.body645
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_178:                              # %vector.body645
                                        #   in Loop: Header=BB0_176 Depth=3
	loads.w r7, 4(r15)
	loads.w r8, 4(r17)
	and r7, r7, r26
	and r8, r8, r26
	seteq r14, r7, r5
	seteq r1, r7, zero
	seteq r22, r8, r5
	seteq r20, r8, zero
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r14, r20
	and r1, r1, r22
	lui r20, 523264
	or r1, r8, r1
	or r1, r7, r1
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_180
# %bb.179:                              # %vector.body645
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_180:                              # %vector.body645
                                        #   in Loop: Header=BB0_176 Depth=3
	loads.w r1, 8(r15)
	loads.w r7, 8(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r21, r1, zero
	seteq r14, r7, zero
	seteq r22, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r21, r22
	lui r22, 523264
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_182
# %bb.181:                              # %vector.body645
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 8(r19)
.LBB0_182:                              # %vector.body645
                                        #   in Loop: Header=BB0_176 Depth=3
	loads.w r1, 12(r15)
	loads.w r7, 12(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r17, r1, zero
	seteq r14, r7, zero
	seteq r15, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r17, r15
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_175
# %bb.183:                              # %vector.body645
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r19)
	j .LBB0_175
.LBB0_184:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 323 7 is_stmt 1               # parallel-rne.mlir:323:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	bneq r7, r10, .LBB0_213
.LBB0_185:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r11, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -4320(r30)                # 4-byte Folded Reload
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r10, r1, r2
	addli r1, zero, 320
	zext_int2long r[24:25], r1
	j .LBB0_187
.LBB0_186:                              # %middle.block636
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 352
	.loc	1 367 9 is_stmt 1               # parallel-rne.mlir:367:9
	andi r1, r11, 1
	addli r11, zero, 0
	zext_int2long r[24:25], r2
	beq r1, zero, .LBB0_212
.LBB0_187:                              # %vector.memcheck622
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_190 Depth 3
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	beq r10, zero, .LBB0_202
# %bb.188:                              # %scalar.ph628.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_190
.LBB0_189:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	addli r1, r30, -4272
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[7:8]
	.loc	1 390 13 is_stmt 1              # parallel-rne.mlir:390:13
	add.s r7, r4, r9
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 390 13                        # parallel-rne.mlir:390:13
	stores.w r15, 0(r7)
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	beq r1, zero, .LBB0_186
.LBB0_190:                              # %scalar.ph628
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	add.ul r[7:8], r[2:3], r[24:25]
	lui r15, 523264
	lui r20, 523264
	slli r9, r7, 2
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	add.s r1, r23, r9
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	add.s r7, r16, r9
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	loads.w r1, 0(r1)
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	loads.w r22, 0(r7)
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	and r17, r1, r26
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	beq r17, r5, .LBB0_192
# %bb.191:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r22, 0
.LBB0_192:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	add.s r1, r18, r9
	loads.w r1, 0(r1)
	and r19, r1, r26
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r19, zero, .LBB0_200
# %bb.193:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r17, zero, .LBB0_201
.LBB0_194:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	beq r19, r5, .LBB0_196
.LBB0_195:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
.LBB0_196:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r1, r5, r17
	lui r17, 523264
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_198
# %bb.197:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r22, 0
.LBB0_198:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r1, r5, r19
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_189
# %bb.199:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r17, 0
	j .LBB0_189
.LBB0_200:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	addli r20, r22, 0
	lui r22, 523264
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	beq r17, zero, .LBB0_194
.LBB0_201:                              # %scalar.ph628
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r19, r5, .LBB0_195
	j .LBB0_196
.LBB0_202:                              # %vector.body630.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_204
.LBB0_203:                              # %vector.body630
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 368 11 is_stmt 1              # parallel-rne.mlir:368:11
	addli.d r[27:28], r[27:28], 4
	zext_int2long r[7:8], r12
	.loc	1 390 13                        # parallel-rne.mlir:390:13
	add.s r2, r4, r2
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	seteq.d r1, r[27:28], r[7:8]
	.loc	1 390 13                        # parallel-rne.mlir:390:13
	stores.w r9, 12(r2)
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	bneq r1, zero, .LBB0_186
.LBB0_204:                              # %vector.body630
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	add.ul r[2:3], r[27:28], r[24:25]
	slli r2, r2, 2
	add.s r15, r18, r2
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	add.s r17, r23, r2
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	loads.w r3, 0(r15)
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	loads.w r7, 0(r17)
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	and r3, r3, r26
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	and r7, r7, r26
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	seteq r8, r3, r5
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	seteq r19, r3, zero
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	seteq r9, r7, zero
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	seteq r14, r7, r5
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	max.u r3, r3, r7
	setlt.u r3, r5, r3
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	and r7, r8, r9
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	and r8, r19, r14
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	add.s r19, r16, r2
	lui r9, 523264
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	or r7, r7, r8
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	or r7, r3, r7
	lui r3, 523264
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r7, zero, .LBB0_206
# %bb.205:                              # %vector.body630
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_206:                              # %vector.body630
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r7, 4(r15)
	loads.w r8, 4(r17)
	and r7, r7, r26
	and r8, r8, r26
	seteq r14, r7, r5
	seteq r1, r7, zero
	seteq r22, r8, r5
	seteq r20, r8, zero
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r14, r20
	and r1, r1, r22
	lui r20, 523264
	or r1, r8, r1
	or r1, r7, r1
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_208
# %bb.207:                              # %vector.body630
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_208:                              # %vector.body630
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r1, 8(r15)
	loads.w r7, 8(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r21, r1, zero
	seteq r14, r7, zero
	seteq r22, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r21, r22
	lui r22, 523264
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_210
# %bb.209:                              # %vector.body630
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 8(r19)
.LBB0_210:                              # %vector.body630
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r1, 12(r15)
	loads.w r7, 12(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r17, r1, zero
	seteq r14, r7, zero
	seteq r15, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r17, r15
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	bneq r1, zero, .LBB0_203
# %bb.211:                              # %vector.body630
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r19)
	j .LBB0_203
.LBB0_212:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 359 7 is_stmt 1               # parallel-rne.mlir:359:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
.LBB0_213:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 395 7                         # parallel-rne.mlir:395:7
	addli r1, zero, 6
	lui r10, 524288
	bneq r7, r1, .LBB0_242
# %bb.214:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r11, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -4320(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 395 7                         # parallel-rne.mlir:395:7
	storeli.w r1, -4304(r30)                # 4-byte Folded Spill
	addli r1, zero, 384
	xfence
	zext_int2long r[24:25], r1
	mfence { lm, sm, gm }
	j .LBB0_216
.LBB0_215:                              # %middle.block621
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 416
	.loc	1 403 9 is_stmt 1               # parallel-rne.mlir:403:9
	andi r1, r11, 1
	addli r11, zero, 0
	zext_int2long r[24:25], r2
	beq r1, zero, .LBB0_241
.LBB0_216:                              # %vector.memcheck607
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_233 Depth 3
                                        #       Child Loop BB0_219 Depth 3
	.loc	1 404 11                        # parallel-rne.mlir:404:11
	loadli.w r1,  -4304(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_231
# %bb.217:                              # %scalar.ph613.preheader
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_219
.LBB0_218:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 404 11                        # parallel-rne.mlir:404:11
	addli r1, r30, -4272
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[7:8]
	.loc	1 426 13 is_stmt 1              # parallel-rne.mlir:426:13
	add.s r7, r4, r9
	.loc	1 404 11                        # parallel-rne.mlir:404:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 426 13                        # parallel-rne.mlir:426:13
	stores.w r15, 0(r7)
	.loc	1 404 11                        # parallel-rne.mlir:404:11
	beq r1, zero, .LBB0_215
.LBB0_219:                              # %scalar.ph613
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	add.ul r[7:8], r[2:3], r[24:25]
	lui r15, 523264
	lui r20, 523264
	slli r9, r7, 2
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	add.s r1, r23, r9
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	add.s r7, r16, r9
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	loads.w r1, 0(r1)
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	loads.w r22, 0(r7)
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	and r17, r1, r26
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	beq r17, r5, .LBB0_221
# %bb.220:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r22, 0
.LBB0_221:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	add.s r1, r18, r9
	loads.w r1, 0(r1)
	and r19, r1, r26
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r19, zero, .LBB0_229
# %bb.222:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r17, zero, .LBB0_230
.LBB0_223:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	beq r19, r5, .LBB0_225
.LBB0_224:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
.LBB0_225:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	setlt.u r1, r5, r17
	lui r17, 523264
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r1, zero, .LBB0_227
# %bb.226:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r22, 0
.LBB0_227:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	setlt.u r1, r5, r19
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r1, zero, .LBB0_218
# %bb.228:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r17, 0
	j .LBB0_218
.LBB0_229:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	addli r20, r22, 0
	lui r22, 523264
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	beq r17, zero, .LBB0_223
.LBB0_230:                              # %scalar.ph613
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r19, r5, .LBB0_224
	j .LBB0_225
.LBB0_231:                              # %vector.body615.preheader
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_233
.LBB0_232:                              # %vector.body615
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 404 11 is_stmt 1              # parallel-rne.mlir:404:11
	addli.d r[27:28], r[27:28], 4
	zext_int2long r[7:8], r12
	.loc	1 426 13                        # parallel-rne.mlir:426:13
	add.s r2, r4, r2
	.loc	1 404 11                        # parallel-rne.mlir:404:11
	seteq.d r1, r[27:28], r[7:8]
	.loc	1 426 13                        # parallel-rne.mlir:426:13
	stores.w r9, 12(r2)
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 404 11                        # parallel-rne.mlir:404:11
	bneq r1, zero, .LBB0_215
.LBB0_233:                              # %vector.body615
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	add.ul r[2:3], r[27:28], r[24:25]
	slli r2, r2, 2
	add.s r15, r18, r2
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	add.s r17, r23, r2
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	loads.w r3, 0(r15)
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	loads.w r7, 0(r17)
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	and r3, r3, r26
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	and r7, r7, r26
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	seteq r8, r3, r5
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	seteq r19, r3, zero
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	seteq r9, r7, zero
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	seteq r14, r7, r5
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	max.u r3, r3, r7
	setlt.u r3, r5, r3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	and r7, r8, r9
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	and r8, r19, r14
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	add.s r19, r16, r2
	lui r9, 523264
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	or r7, r7, r8
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	or r7, r3, r7
	lui r3, 523264
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r7, zero, .LBB0_235
# %bb.234:                              # %vector.body615
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_235:                              # %vector.body615
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r7, 4(r15)
	loads.w r8, 4(r17)
	and r7, r7, r26
	and r8, r8, r26
	seteq r14, r7, r5
	seteq r1, r7, zero
	seteq r22, r8, r5
	seteq r20, r8, zero
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r14, r20
	and r1, r1, r22
	lui r20, 523264
	or r1, r8, r1
	or r1, r7, r1
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r1, zero, .LBB0_237
# %bb.236:                              # %vector.body615
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_237:                              # %vector.body615
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r1, 8(r15)
	loads.w r7, 8(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r21, r1, zero
	seteq r14, r7, zero
	seteq r22, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r21, r22
	lui r22, 523264
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r1, zero, .LBB0_239
# %bb.238:                              # %vector.body615
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 8(r19)
.LBB0_239:                              # %vector.body615
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r1, 12(r15)
	loads.w r7, 12(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r17, r1, zero
	seteq r14, r7, zero
	seteq r15, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r17, r15
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r1, zero, .LBB0_232
# %bb.240:                              # %vector.body615
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r19)
	j .LBB0_232
.LBB0_241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 395 7 is_stmt 1               # parallel-rne.mlir:395:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
.LBB0_242:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 431 7                         # parallel-rne.mlir:431:7
	addli r1, zero, 7
	bneq r7, r1, .LBB0_271
# %bb.243:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r11, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -4320(r30)                # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 431 7                         # parallel-rne.mlir:431:7
	storeli.w r1, -4304(r30)                # 4-byte Folded Spill
	addli r1, zero, 448
	xfence
	zext_int2long r[24:25], r1
	mfence { lm, sm, gm }
	j .LBB0_245
.LBB0_244:                              # %middle.block606
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 480
	.loc	1 439 9 is_stmt 1               # parallel-rne.mlir:439:9
	andi r1, r11, 1
	addli r11, zero, 0
	zext_int2long r[24:25], r2
	beq r1, zero, .LBB0_270
.LBB0_245:                              # %vector.memcheck592
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_262 Depth 3
                                        #       Child Loop BB0_248 Depth 3
	.loc	1 440 11                        # parallel-rne.mlir:440:11
	loadli.w r1,  -4304(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_260
# %bb.246:                              # %scalar.ph598.preheader
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_248
.LBB0_247:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 440 11                        # parallel-rne.mlir:440:11
	addli r1, r30, -4272
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[7:8]
	.loc	1 462 13 is_stmt 1              # parallel-rne.mlir:462:13
	add.s r7, r4, r9
	.loc	1 440 11                        # parallel-rne.mlir:440:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 462 13                        # parallel-rne.mlir:462:13
	stores.w r15, 0(r7)
	.loc	1 440 11                        # parallel-rne.mlir:440:11
	beq r1, zero, .LBB0_244
.LBB0_248:                              # %scalar.ph598
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	add.ul r[7:8], r[2:3], r[24:25]
	lui r15, 523264
	lui r20, 523264
	slli r9, r7, 2
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	add.s r1, r23, r9
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	add.s r7, r16, r9
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	loads.w r1, 0(r1)
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	loads.w r22, 0(r7)
	.loc	1 446 19                        # parallel-rne.mlir:446:19
	and r17, r1, r26
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	beq r17, r5, .LBB0_250
# %bb.249:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r22, 0
.LBB0_250:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	add.s r1, r18, r9
	loads.w r1, 0(r1)
	and r19, r1, r26
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r19, zero, .LBB0_258
# %bb.251:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r17, zero, .LBB0_259
.LBB0_252:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	beq r19, r5, .LBB0_254
.LBB0_253:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
.LBB0_254:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	setlt.u r1, r5, r17
	lui r17, 523264
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r1, zero, .LBB0_256
# %bb.255:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r22, 0
.LBB0_256:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	setlt.u r1, r5, r19
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r1, zero, .LBB0_247
# %bb.257:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r17, 0
	j .LBB0_247
.LBB0_258:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	addli r20, r22, 0
	lui r22, 523264
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	beq r17, zero, .LBB0_252
.LBB0_259:                              # %scalar.ph598
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r20, 0
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r19, r5, .LBB0_253
	j .LBB0_254
.LBB0_260:                              # %vector.body600.preheader
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_262
.LBB0_261:                              # %vector.body600
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 440 11 is_stmt 1              # parallel-rne.mlir:440:11
	addli.d r[27:28], r[27:28], 4
	zext_int2long r[7:8], r12
	.loc	1 462 13                        # parallel-rne.mlir:462:13
	add.s r2, r4, r2
	.loc	1 440 11                        # parallel-rne.mlir:440:11
	seteq.d r1, r[27:28], r[7:8]
	.loc	1 462 13                        # parallel-rne.mlir:462:13
	stores.w r9, 12(r2)
	stores.w r22, 8(r2)
	stores.w r20, 4(r2)
	stores.w r3, 0(r2)
	.loc	1 440 11                        # parallel-rne.mlir:440:11
	bneq r1, zero, .LBB0_244
.LBB0_262:                              # %vector.body600
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	add.ul r[2:3], r[27:28], r[24:25]
	slli r2, r2, 2
	add.s r15, r18, r2
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	add.s r17, r23, r2
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	loads.w r3, 0(r15)
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	loads.w r7, 0(r17)
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	and r3, r3, r26
	.loc	1 446 19                        # parallel-rne.mlir:446:19
	and r7, r7, r26
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	seteq r8, r3, r5
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	seteq r19, r3, zero
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	seteq r9, r7, zero
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	seteq r14, r7, r5
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	max.u r3, r3, r7
	setlt.u r3, r5, r3
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	and r7, r8, r9
	.loc	1 454 19                        # parallel-rne.mlir:454:19
	and r8, r19, r14
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	add.s r19, r16, r2
	lui r9, 523264
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	or r7, r7, r8
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	or r7, r3, r7
	lui r3, 523264
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r7, zero, .LBB0_264
# %bb.263:                              # %vector.body600
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_264:                              # %vector.body600
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r7, 4(r15)
	loads.w r8, 4(r17)
	and r7, r7, r26
	and r8, r8, r26
	seteq r14, r7, r5
	seteq r1, r7, zero
	seteq r22, r8, r5
	seteq r20, r8, zero
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r14, r20
	and r1, r1, r22
	lui r20, 523264
	or r1, r8, r1
	or r1, r7, r1
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r1, zero, .LBB0_266
# %bb.265:                              # %vector.body600
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_266:                              # %vector.body600
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r1, 8(r15)
	loads.w r7, 8(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r21, r1, zero
	seteq r14, r7, zero
	seteq r22, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r21, r22
	lui r22, 523264
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r1, zero, .LBB0_268
# %bb.267:                              # %vector.body600
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 8(r19)
.LBB0_268:                              # %vector.body600
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r1, 12(r15)
	loads.w r7, 12(r17)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r17, r1, zero
	seteq r14, r7, zero
	seteq r15, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r14
	and r8, r17, r15
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	bneq r1, zero, .LBB0_261
# %bb.269:                              # %vector.body600
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r19)
	j .LBB0_261
.LBB0_270:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 431 7 is_stmt 1               # parallel-rne.mlir:431:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
.LBB0_271:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	addli r1, zero, 3
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	sync_core
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	bneq r7, r1, .LBB0_273
# %bb.272:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 12
	addli r3, zero, 5
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
	loadli.w r1,  -72(r30)
	mod.s r2, r1, r3
	addli r1, r1, 1
	storeli.w r1, -72(r30)
	loadli.w r1,  -4396(r30)                # 4-byte Folded Reload
	slli r2, r2, 11
	add.s r18, r2, r1
	.loc	1 477 7                         # parallel-rne.mlir:477:7
	addli r1, zero, 31
	xwait r1, 0
	.loc	1 478 7                         # parallel-rne.mlir:478:7
	addli r1, zero, 35
	xwait r1, 0
	j .LBB0_275
.LBB0_273:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 473 13                        # parallel-rne.mlir:473:13
	loadli.w r1,  -72(r30)
	addli r3, zero, 5
	loadli.w r8,  -4396(r30)                # 4-byte Folded Reload
	mod.s r2, r1, r3
	addli r1, r1, 1
	storeli.w r1, -72(r30)
	slli r2, r2, 11
	add.s r18, r2, r8
	.loc	1 474 7                         # parallel-rne.mlir:474:7
	bneq r7, r3, .LBB0_275
# %bb.274:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 12
	lui r8, 260096
	xwait r1, 0
	addli r1, zero, 22
	xwait r1, 0
	addli r1, zero, 2
	xwait r12, 0
	lock zero, r1
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -4416(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r8, r2, zero, 0
	addli r8, zero, 511
	addli r2, zero, 13
	ew_cfg zero, r8, zero, 2
	ew_cfg r17, zero, zero, 3
	ew_cfg r17, r17, r17, 19
	dsmadd r18, r23, r4, 0
	ew_cfg zero, zero, zero, 19
	unlock r1
	xsignal r2, 0
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	lock zero, r1
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -4420(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r17, zero, zero, 3
	ew_cfg r17, r17, zero, 19
	hp_ssmul r18, r18, r18, 0
	ew_cfg zero, zero, zero, 19
	unlock r1
	addli r1, zero, 31
	xsignal r1, 0
.LBB0_275:                              # %.critedge12
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4332(r30)                # 4-byte Folded Reload
	.loc	1 480 7 is_stmt 1               # parallel-rne.mlir:480:7
	xfence
	loadli.w r2,  -4392(r30)                # 4-byte Folded Reload
	.loc	1 481 7                         # parallel-rne.mlir:481:7
	mfence { lm, sm, gm }
	mod.s r1, r1, r3
	slli r1, r1, 11
	add.s r16, r1, r2
	.loc	1 482 7                         # parallel-rne.mlir:482:7
	addli r1, zero, 255
	sub.s r11, r16, r18
	csr_set csr5, r1
	sync_core
	.loc	1 483 7                         # parallel-rne.mlir:483:7
	beq r7, zero, .LBB0_283
# %bb.276:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	beq r7, r17, .LBB0_289
.LBB0_277:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	addli r1, zero, 2
	beq r7, r1, .LBB0_295
.LBB0_278:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	addli r1, zero, 3
	beq r7, r1, .LBB0_301
.LBB0_279:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	addli r1, zero, 4
	beq r7, r1, .LBB0_307
.LBB0_280:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	addli r1, zero, 5
	beq r7, r1, .LBB0_313
.LBB0_281:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	addli r1, zero, 6
	beq r7, r1, .LBB0_319
.LBB0_282:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	addli r1, zero, 7
	beq r7, r1, .LBB0_325
	j .LBB0_331
.LBB0_283:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r28, r11, r12
	.loc	1 483 7 is_stmt 1               # parallel-rne.mlir:483:7
	xfence
	addli r3, zero, 1
	zext_int2long r[19:20], zero
	mfence { lm, sm, gm }
	j .LBB0_285
.LBB0_284:                              # %middle.block591
                                        #   in Loop: Header=BB0_285 Depth=2
	.loc	1 491 9                         # parallel-rne.mlir:491:9
	andi r1, r3, 1
	zext_int2long r[19:20], r12
	addli r3, zero, 0
	beq r1, zero, .LBB0_288
.LBB0_285:                              # %vector.memcheck582
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_287 Depth 3
                                        #       Child Loop BB0_286 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	.loc	1 492 11 is_stmt 1              # parallel-rne.mlir:492:11
	beq r28, zero, .LBB0_287
.LBB0_286:                              # %scalar.ph584
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.ul r[1:2], r[21:22], r[19:20]
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	addli r9, r30, -4272
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	slli r1, r1, 2
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	load.d r[7:8], 0(r9)                    # 8-byte Folded Reload
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.s r2, r18, r1
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	add.s r1, r16, r1
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	setlt.ul r7, r[21:22], r[7:8]
	addli.d r[21:22], r[21:22], 1
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	loads.w r2, 0(r2)
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	stores.w r2, 0(r1)
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	bneq r7, zero, .LBB0_286
	j .LBB0_284
.LBB0_287:                              # %vector.body586
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	addli.d r[21:22], r[21:22], 8
	zext_int2long r[1:2], r12
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	slli r7, r7, 2
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	seteq.d r1, r[21:22], r[1:2]
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.s r8, r18, r7
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	add.s r7, r16, r7
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	loads.w r9, 12(r8)
	loads.w r14, 8(r8)
	loads.w r15, 4(r8)
	loads.w r17, 0(r8)
	loads.w r24, 28(r8)
	loads.w r25, 24(r8)
	loads.w r27, 20(r8)
	loads.w r8, 16(r8)
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	stores.w r9, 12(r7)
	stores.w r14, 8(r7)
	stores.w r15, 4(r7)
	stores.w r17, 0(r7)
	stores.w r24, 28(r7)
	stores.w r25, 24(r7)
	stores.w r27, 20(r7)
	stores.w r8, 16(r7)
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	beq r1, zero, .LBB0_287
	j .LBB0_284
.LBB0_288:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 483 7                         # parallel-rne.mlir:483:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	bneq r7, r17, .LBB0_277
.LBB0_289:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r2, r11, r12
	addli r1, zero, 64
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r1
	j .LBB0_291
.LBB0_290:                              # %middle.block581
                                        #   in Loop: Header=BB0_291 Depth=2
	.loc	1 508 9 is_stmt 1               # parallel-rne.mlir:508:9
	andi r1, r3, 1
	addli r3, zero, 96
	zext_int2long r[19:20], r3
	addli r3, zero, 0
	beq r1, zero, .LBB0_294
.LBB0_291:                              # %vector.memcheck572
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_293 Depth 3
                                        #       Child Loop BB0_292 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	.loc	1 509 11 is_stmt 1              # parallel-rne.mlir:509:11
	beq r2, zero, .LBB0_293
.LBB0_292:                              # %scalar.ph574
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_291 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	addli r14, r30, -4272
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	slli r1, r7, 2
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	load.d r[8:9], 0(r14)                   # 8-byte Folded Reload
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	add.s r7, r18, r1
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	add.s r1, r16, r1
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	setlt.ul r8, r[21:22], r[8:9]
	addli.d r[21:22], r[21:22], 1
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	loads.w r7, 0(r7)
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	stores.w r7, 0(r1)
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	bneq r8, zero, .LBB0_292
	j .LBB0_290
.LBB0_293:                              # %vector.body576
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_291 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	addli.d r[21:22], r[21:22], 8
	zext_int2long r[27:28], r12
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	slli r1, r7, 2
	add.s r7, r18, r1
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	add.s r1, r16, r1
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	loads.w r8, 12(r7)
	loads.w r9, 8(r7)
	loads.w r14, 4(r7)
	loads.w r15, 0(r7)
	loads.w r17, 28(r7)
	loads.w r24, 24(r7)
	loads.w r25, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	stores.w r8, 12(r1)
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	seteq.d r8, r[21:22], r[27:28]
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	stores.w r9, 8(r1)
	stores.w r14, 4(r1)
	stores.w r15, 0(r1)
	stores.w r17, 28(r1)
	stores.w r24, 24(r1)
	stores.w r25, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	beq r8, zero, .LBB0_293
	j .LBB0_290
.LBB0_294:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	addli r1, zero, 2
	bneq r7, r1, .LBB0_278
.LBB0_295:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r2, r11, r12
	addli r1, zero, 128
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r1
	j .LBB0_297
.LBB0_296:                              # %middle.block571
                                        #   in Loop: Header=BB0_297 Depth=2
	.loc	1 525 9 is_stmt 1               # parallel-rne.mlir:525:9
	andi r1, r3, 1
	addli r3, zero, 160
	zext_int2long r[19:20], r3
	addli r3, zero, 0
	beq r1, zero, .LBB0_300
.LBB0_297:                              # %vector.memcheck562
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_299 Depth 3
                                        #       Child Loop BB0_298 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	.loc	1 526 11 is_stmt 1              # parallel-rne.mlir:526:11
	beq r2, zero, .LBB0_299
.LBB0_298:                              # %scalar.ph564
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_297 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	addli r14, r30, -4272
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	slli r1, r7, 2
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	load.d r[8:9], 0(r14)                   # 8-byte Folded Reload
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.s r7, r18, r1
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	add.s r1, r16, r1
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	setlt.ul r8, r[21:22], r[8:9]
	addli.d r[21:22], r[21:22], 1
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	loads.w r7, 0(r7)
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	stores.w r7, 0(r1)
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	bneq r8, zero, .LBB0_298
	j .LBB0_296
.LBB0_299:                              # %vector.body566
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_297 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	addli.d r[21:22], r[21:22], 8
	zext_int2long r[27:28], r12
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	slli r1, r7, 2
	add.s r7, r18, r1
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	add.s r1, r16, r1
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	loads.w r8, 12(r7)
	loads.w r9, 8(r7)
	loads.w r14, 4(r7)
	loads.w r15, 0(r7)
	loads.w r17, 28(r7)
	loads.w r24, 24(r7)
	loads.w r25, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	stores.w r8, 12(r1)
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	seteq.d r8, r[21:22], r[27:28]
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	stores.w r9, 8(r1)
	stores.w r14, 4(r1)
	stores.w r15, 0(r1)
	stores.w r17, 28(r1)
	stores.w r24, 24(r1)
	stores.w r25, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	beq r8, zero, .LBB0_299
	j .LBB0_296
.LBB0_300:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	addli r1, zero, 3
	bneq r7, r1, .LBB0_279
.LBB0_301:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r2, r11, r12
	addli r1, zero, 192
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r1
	j .LBB0_303
.LBB0_302:                              # %middle.block561
                                        #   in Loop: Header=BB0_303 Depth=2
	.loc	1 542 9 is_stmt 1               # parallel-rne.mlir:542:9
	andi r1, r3, 1
	addli r3, zero, 224
	zext_int2long r[19:20], r3
	addli r3, zero, 0
	beq r1, zero, .LBB0_306
.LBB0_303:                              # %vector.memcheck552
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_305 Depth 3
                                        #       Child Loop BB0_304 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	.loc	1 543 11 is_stmt 1              # parallel-rne.mlir:543:11
	beq r2, zero, .LBB0_305
.LBB0_304:                              # %scalar.ph554
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	addli r14, r30, -4272
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	slli r1, r7, 2
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	load.d r[8:9], 0(r14)                   # 8-byte Folded Reload
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	add.s r7, r18, r1
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	add.s r1, r16, r1
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	setlt.ul r8, r[21:22], r[8:9]
	addli.d r[21:22], r[21:22], 1
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	loads.w r7, 0(r7)
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	stores.w r7, 0(r1)
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	bneq r8, zero, .LBB0_304
	j .LBB0_302
.LBB0_305:                              # %vector.body556
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	addli.d r[21:22], r[21:22], 8
	zext_int2long r[27:28], r12
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	slli r1, r7, 2
	add.s r7, r18, r1
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	add.s r1, r16, r1
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	loads.w r8, 12(r7)
	loads.w r9, 8(r7)
	loads.w r14, 4(r7)
	loads.w r15, 0(r7)
	loads.w r17, 28(r7)
	loads.w r24, 24(r7)
	loads.w r25, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	stores.w r8, 12(r1)
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	seteq.d r8, r[21:22], r[27:28]
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	stores.w r9, 8(r1)
	stores.w r14, 4(r1)
	stores.w r15, 0(r1)
	stores.w r17, 28(r1)
	stores.w r24, 24(r1)
	stores.w r25, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	beq r8, zero, .LBB0_305
	j .LBB0_302
.LBB0_306:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	addli r1, zero, 4
	bneq r7, r1, .LBB0_280
.LBB0_307:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r2, r11, r12
	addli r1, zero, 256
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r1
	j .LBB0_309
.LBB0_308:                              # %middle.block551
                                        #   in Loop: Header=BB0_309 Depth=2
	.loc	1 559 9 is_stmt 1               # parallel-rne.mlir:559:9
	andi r1, r3, 1
	addli r3, zero, 288
	zext_int2long r[19:20], r3
	addli r3, zero, 0
	beq r1, zero, .LBB0_312
.LBB0_309:                              # %vector.memcheck542
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_311 Depth 3
                                        #       Child Loop BB0_310 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	.loc	1 560 11 is_stmt 1              # parallel-rne.mlir:560:11
	beq r2, zero, .LBB0_311
.LBB0_310:                              # %scalar.ph544
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_309 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	addli r14, r30, -4272
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	slli r1, r7, 2
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	load.d r[8:9], 0(r14)                   # 8-byte Folded Reload
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	add.s r7, r18, r1
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	add.s r1, r16, r1
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	setlt.ul r8, r[21:22], r[8:9]
	addli.d r[21:22], r[21:22], 1
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	loads.w r7, 0(r7)
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	stores.w r7, 0(r1)
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	bneq r8, zero, .LBB0_310
	j .LBB0_308
.LBB0_311:                              # %vector.body546
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_309 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	addli.d r[21:22], r[21:22], 8
	zext_int2long r[27:28], r12
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	slli r1, r7, 2
	add.s r7, r18, r1
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	add.s r1, r16, r1
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	loads.w r8, 12(r7)
	loads.w r9, 8(r7)
	loads.w r14, 4(r7)
	loads.w r15, 0(r7)
	loads.w r17, 28(r7)
	loads.w r24, 24(r7)
	loads.w r25, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	stores.w r8, 12(r1)
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	seteq.d r8, r[21:22], r[27:28]
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	stores.w r9, 8(r1)
	stores.w r14, 4(r1)
	stores.w r15, 0(r1)
	stores.w r17, 28(r1)
	stores.w r24, 24(r1)
	stores.w r25, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	beq r8, zero, .LBB0_311
	j .LBB0_308
.LBB0_312:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	addli r1, zero, 5
	bneq r7, r1, .LBB0_281
.LBB0_313:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r2, r11, r12
	addli r1, zero, 320
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r1
	j .LBB0_315
.LBB0_314:                              # %middle.block541
                                        #   in Loop: Header=BB0_315 Depth=2
	.loc	1 576 9 is_stmt 1               # parallel-rne.mlir:576:9
	andi r1, r3, 1
	addli r3, zero, 352
	zext_int2long r[19:20], r3
	addli r3, zero, 0
	beq r1, zero, .LBB0_318
.LBB0_315:                              # %vector.memcheck532
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_317 Depth 3
                                        #       Child Loop BB0_316 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	.loc	1 577 11 is_stmt 1              # parallel-rne.mlir:577:11
	beq r2, zero, .LBB0_317
.LBB0_316:                              # %scalar.ph534
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_315 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	addli r14, r30, -4272
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	slli r1, r7, 2
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	load.d r[8:9], 0(r14)                   # 8-byte Folded Reload
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	add.s r7, r18, r1
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	add.s r1, r16, r1
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	setlt.ul r8, r[21:22], r[8:9]
	addli.d r[21:22], r[21:22], 1
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	loads.w r7, 0(r7)
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	stores.w r7, 0(r1)
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	bneq r8, zero, .LBB0_316
	j .LBB0_314
.LBB0_317:                              # %vector.body536
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_315 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	addli.d r[21:22], r[21:22], 8
	zext_int2long r[27:28], r12
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	slli r1, r7, 2
	add.s r7, r18, r1
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	add.s r1, r16, r1
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	loads.w r8, 12(r7)
	loads.w r9, 8(r7)
	loads.w r14, 4(r7)
	loads.w r15, 0(r7)
	loads.w r17, 28(r7)
	loads.w r24, 24(r7)
	loads.w r25, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	stores.w r8, 12(r1)
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	seteq.d r8, r[21:22], r[27:28]
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	stores.w r9, 8(r1)
	stores.w r14, 4(r1)
	stores.w r15, 0(r1)
	stores.w r17, 28(r1)
	stores.w r24, 24(r1)
	stores.w r25, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	beq r8, zero, .LBB0_317
	j .LBB0_314
.LBB0_318:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	addli r1, zero, 6
	bneq r7, r1, .LBB0_282
.LBB0_319:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r2, r11, r12
	addli r1, zero, 384
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r1
	j .LBB0_321
.LBB0_320:                              # %middle.block531
                                        #   in Loop: Header=BB0_321 Depth=2
	.loc	1 593 9 is_stmt 1               # parallel-rne.mlir:593:9
	andi r1, r3, 1
	addli r3, zero, 416
	zext_int2long r[19:20], r3
	addli r3, zero, 0
	beq r1, zero, .LBB0_324
.LBB0_321:                              # %vector.memcheck522
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_323 Depth 3
                                        #       Child Loop BB0_322 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	.loc	1 594 11 is_stmt 1              # parallel-rne.mlir:594:11
	beq r2, zero, .LBB0_323
.LBB0_322:                              # %scalar.ph524
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_321 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	addli r14, r30, -4272
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	slli r1, r7, 2
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	load.d r[8:9], 0(r14)                   # 8-byte Folded Reload
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.s r7, r18, r1
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r1, r16, r1
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	setlt.ul r8, r[21:22], r[8:9]
	addli.d r[21:22], r[21:22], 1
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	loads.w r7, 0(r7)
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	stores.w r7, 0(r1)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	bneq r8, zero, .LBB0_322
	j .LBB0_320
.LBB0_323:                              # %vector.body526
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_321 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	addli.d r[21:22], r[21:22], 8
	zext_int2long r[27:28], r12
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	slli r1, r7, 2
	add.s r7, r18, r1
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r1, r16, r1
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	loads.w r8, 12(r7)
	loads.w r9, 8(r7)
	loads.w r14, 4(r7)
	loads.w r15, 0(r7)
	loads.w r17, 28(r7)
	loads.w r24, 24(r7)
	loads.w r25, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	stores.w r8, 12(r1)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	seteq.d r8, r[21:22], r[27:28]
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	stores.w r9, 8(r1)
	stores.w r14, 4(r1)
	stores.w r15, 0(r1)
	stores.w r17, 28(r1)
	stores.w r24, 24(r1)
	stores.w r25, 20(r1)
	stores.w r7, 16(r1)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	beq r8, zero, .LBB0_323
	j .LBB0_320
.LBB0_324:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	addli r1, zero, 7
	bneq r7, r1, .LBB0_331
.LBB0_325:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r1, r11, r12
	addli r3, zero, 448
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r3
	j .LBB0_327
.LBB0_326:                              # %middle.block521
                                        #   in Loop: Header=BB0_327 Depth=2
	.loc	1 610 9 is_stmt 1               # parallel-rne.mlir:610:9
	andi r3, r2, 1
	addli r2, zero, 480
	zext_int2long r[19:20], r2
	addli r2, zero, 0
	beq r3, zero, .LBB0_330
.LBB0_327:                              # %vector.memcheck512
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_329 Depth 3
                                        #       Child Loop BB0_328 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[21:22], zero
	.loc	1 611 11 is_stmt 1              # parallel-rne.mlir:611:11
	beq r1, zero, .LBB0_329
.LBB0_328:                              # %scalar.ph514
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_327 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	addli r11, r30, -4272
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	slli r3, r7, 2
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	load.d r[8:9], 0(r11)                   # 8-byte Folded Reload
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	add.s r7, r18, r3
	.loc	1 614 13                        # parallel-rne.mlir:614:13
	add.s r3, r16, r3
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	setlt.ul r8, r[21:22], r[8:9]
	addli.d r[21:22], r[21:22], 1
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	loads.w r7, 0(r7)
	.loc	1 614 13                        # parallel-rne.mlir:614:13
	stores.w r7, 0(r3)
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	bneq r8, zero, .LBB0_328
	j .LBB0_326
.LBB0_329:                              # %vector.body516
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_327 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	add.ul r[7:8], r[21:22], r[19:20]
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	addli.d r[21:22], r[21:22], 8
	zext_int2long r[27:28], r12
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	slli r3, r7, 2
	add.s r7, r18, r3
	.loc	1 614 13                        # parallel-rne.mlir:614:13
	add.s r3, r16, r3
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	loads.w r8, 12(r7)
	loads.w r9, 8(r7)
	loads.w r14, 4(r7)
	loads.w r15, 0(r7)
	loads.w r17, 28(r7)
	loads.w r24, 24(r7)
	loads.w r25, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 614 13                        # parallel-rne.mlir:614:13
	stores.w r8, 12(r3)
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	seteq.d r8, r[21:22], r[27:28]
	.loc	1 614 13                        # parallel-rne.mlir:614:13
	stores.w r9, 8(r3)
	stores.w r14, 4(r3)
	stores.w r15, 0(r3)
	stores.w r17, 28(r3)
	stores.w r24, 24(r3)
	stores.w r25, 20(r3)
	stores.w r7, 16(r3)
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	beq r8, zero, .LBB0_329
	j .LBB0_326
.LBB0_330:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
.LBB0_331:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r1, zero, 3
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	sync_core
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	bneq r7, r1, .LBB0_333
# %bb.332:                              # %.critedge14
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 33
	.loc	1 623 7 is_stmt 1               # parallel-rne.mlir:623:7
	addli r2, zero, 13
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	xsignal r12, 0
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	xsignal r1, 0
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	xwait r2, 0
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	xwait r1, 0
.LBB0_333:                              # %.critedge16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	xfence
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	addli r1, zero, 255
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	mfence { lm, sm, gm }
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	csr_set csr5, r1
	sync_core
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	beq r7, zero, .LBB0_341
# %bb.334:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 651 7                         # parallel-rne.mlir:651:7
	beq r7, r17, .LBB0_362
.LBB0_335:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 673 7                         # parallel-rne.mlir:673:7
	addli r1, zero, 2
	beq r7, r1, .LBB0_383
.LBB0_336:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 695 7                         # parallel-rne.mlir:695:7
	addli r1, zero, 3
	beq r7, r1, .LBB0_404
.LBB0_337:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	addli r1, zero, 4
	beq r7, r1, .LBB0_425
.LBB0_338:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 739 7                         # parallel-rne.mlir:739:7
	addli r1, zero, 5
	beq r7, r1, .LBB0_446
.LBB0_339:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	addli r1, zero, 6
	beq r7, r1, .LBB0_467
.LBB0_340:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 783 7                         # parallel-rne.mlir:783:7
	addli r1, zero, 7
	beq r7, r1, .LBB0_488
	j .LBB0_509
.LBB0_341:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	xfence
	zext_int2long r[24:25], zero
	addli r1, zero, 1
	addli r2, r30, -4304
	mfence { lm, sm, gm }
	store.d r[24:25], 0(r2)                 # 8-byte Folded Spill
	j .LBB0_343
.LBB0_342:                              # %middle.block511
                                        #   in Loop: Header=BB0_343 Depth=2
	.loc	1 637 9                         # parallel-rne.mlir:637:9
	andi r2, r1, 1
	addli.d r[24:25], r[19:20], 0
	addli r1, zero, 0
	beq r2, zero, .LBB0_361
.LBB0_343:                              # %vector.ph505
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_345 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4304
	load.d r[27:28], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_345
.LBB0_344:                              # %vector.body506
                                        #   in Loop: Header=BB0_345 Depth=3
	.loc	1 646 13 is_stmt 1              # parallel-rne.mlir:646:13
	add.s r7, r4, r19
	.loc	1 638 11                        # parallel-rne.mlir:638:11
	addli.d r[27:28], r[27:28], 8
	zext_int2long r[19:20], r12
	setneq.d r8, r[27:28], r[19:20]
	.loc	1 646 13                        # parallel-rne.mlir:646:13
	stores.w r22, 12(r7)
	stores.w r21, 8(r7)
	stores.w r9, 4(r7)
	stores.w r2, 0(r7)
	stores.w r15, 28(r7)
	stores.w r18, 24(r7)
	stores.w r17, 20(r7)
	stores.w r3, 16(r7)
	.loc	1 638 11                        # parallel-rne.mlir:638:11
	beq r8, zero, .LBB0_342
.LBB0_345:                              # %vector.body506
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_343 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 639 19                        # parallel-rne.mlir:639:19
	add.ul r[2:3], r[27:28], r[24:25]
	slli r19, r2, 2
	add.s r3, r16, r19
	loads.w r2, 0(r3)
	loads.w r22, 12(r3)
	loads.w r21, 8(r3)
	loads.w r9, 4(r3)
	loads.w r15, 28(r3)
	loads.w r18, 24(r3)
	loads.w r17, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	and r7, r2, r26
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	setlt.u r7, r6, r7
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r7, zero, .LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r10
	or r2, r2, r6
.LBB0_347:                              # %vector.body506
                                        #   in Loop: Header=BB0_345 Depth=3
	and r7, r9, r26
	setlt.u r7, r6, r7
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r7, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r9, r10
	or r9, r7, r6
.LBB0_349:                              # %vector.body506
                                        #   in Loop: Header=BB0_345 Depth=3
	and r7, r21, r26
	setlt.u r7, r6, r7
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r7, zero, .LBB0_351
# %bb.350:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r21, r10
	or r21, r7, r6
.LBB0_351:                              # %vector.body506
                                        #   in Loop: Header=BB0_345 Depth=3
	and r7, r22, r26
	setlt.u r7, r6, r7
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r7, zero, .LBB0_353
# %bb.352:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r22, r10
	or r22, r7, r6
.LBB0_353:                              # %vector.body506
                                        #   in Loop: Header=BB0_345 Depth=3
	and r7, r3, r26
	setlt.u r7, r6, r7
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r7, zero, .LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r10
	or r3, r3, r6
.LBB0_355:                              # %vector.body506
                                        #   in Loop: Header=BB0_345 Depth=3
	and r7, r17, r26
	setlt.u r7, r6, r7
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r7, zero, .LBB0_357
# %bb.356:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r17, r10
	or r17, r7, r6
.LBB0_357:                              # %vector.body506
                                        #   in Loop: Header=BB0_345 Depth=3
	and r7, r18, r26
	setlt.u r7, r6, r7
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r7, zero, .LBB0_359
# %bb.358:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r18, r10
	or r18, r7, r6
.LBB0_359:                              # %vector.body506
                                        #   in Loop: Header=BB0_345 Depth=3
	and r7, r15, r26
	setlt.u r7, r6, r7
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	beq r7, zero, .LBB0_344
# %bb.360:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r15, r10
	or r15, r7, r6
	j .LBB0_344
.LBB0_361:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 629 7 is_stmt 1               # parallel-rne.mlir:629:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 651 7                         # parallel-rne.mlir:651:7
	bneq r7, r17, .LBB0_335
.LBB0_362:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 651 7                         # parallel-rne.mlir:651:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r2
	j .LBB0_364
.LBB0_363:                              # %middle.block501
                                        #   in Loop: Header=BB0_364 Depth=2
	.loc	1 659 9 is_stmt 1               # parallel-rne.mlir:659:9
	andi r2, r1, 1
	addli r1, zero, 96
	zext_int2long r[21:22], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_382
.LBB0_364:                              # %vector.ph495
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_366 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[24:25], zero
	j .LBB0_366
.LBB0_365:                              # %vector.body496
                                        #   in Loop: Header=BB0_366 Depth=3
	.loc	1 668 13 is_stmt 1              # parallel-rne.mlir:668:13
	add.s r7, r4, r19
	.loc	1 660 11                        # parallel-rne.mlir:660:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[19:20], r12
	setneq.d r8, r[24:25], r[19:20]
	.loc	1 668 13                        # parallel-rne.mlir:668:13
	stores.w r28, 12(r7)
	stores.w r27, 8(r7)
	stores.w r9, 4(r7)
	stores.w r2, 0(r7)
	stores.w r18, 28(r7)
	stores.w r17, 24(r7)
	stores.w r15, 20(r7)
	stores.w r3, 16(r7)
	.loc	1 660 11                        # parallel-rne.mlir:660:11
	beq r8, zero, .LBB0_363
.LBB0_366:                              # %vector.body496
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_364 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 661 19                        # parallel-rne.mlir:661:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r19, r2, 2
	add.s r3, r16, r19
	loads.w r2, 0(r3)
	loads.w r28, 12(r3)
	loads.w r27, 8(r3)
	loads.w r9, 4(r3)
	loads.w r18, 28(r3)
	loads.w r17, 24(r3)
	loads.w r15, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	and r7, r2, r26
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	setlt.u r7, r6, r7
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r7, zero, .LBB0_368
# %bb.367:                              #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r10
	or r2, r2, r6
.LBB0_368:                              # %vector.body496
                                        #   in Loop: Header=BB0_366 Depth=3
	and r7, r9, r26
	setlt.u r7, r6, r7
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r7, zero, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r9, r10
	or r9, r7, r6
.LBB0_370:                              # %vector.body496
                                        #   in Loop: Header=BB0_366 Depth=3
	and r7, r27, r26
	setlt.u r7, r6, r7
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r7, zero, .LBB0_372
# %bb.371:                              #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r27, r10
	or r27, r7, r6
.LBB0_372:                              # %vector.body496
                                        #   in Loop: Header=BB0_366 Depth=3
	and r7, r28, r26
	setlt.u r7, r6, r7
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r7, zero, .LBB0_374
# %bb.373:                              #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r28, r10
	or r28, r7, r6
.LBB0_374:                              # %vector.body496
                                        #   in Loop: Header=BB0_366 Depth=3
	and r7, r3, r26
	setlt.u r7, r6, r7
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r7, zero, .LBB0_376
# %bb.375:                              #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r10
	or r3, r3, r6
.LBB0_376:                              # %vector.body496
                                        #   in Loop: Header=BB0_366 Depth=3
	and r7, r15, r26
	setlt.u r7, r6, r7
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r7, zero, .LBB0_378
# %bb.377:                              #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r15, r10
	or r15, r7, r6
.LBB0_378:                              # %vector.body496
                                        #   in Loop: Header=BB0_366 Depth=3
	and r7, r17, r26
	setlt.u r7, r6, r7
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r7, zero, .LBB0_380
# %bb.379:                              #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r17, r10
	or r17, r7, r6
.LBB0_380:                              # %vector.body496
                                        #   in Loop: Header=BB0_366 Depth=3
	and r7, r18, r26
	setlt.u r7, r6, r7
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	beq r7, zero, .LBB0_365
# %bb.381:                              #   in Loop: Header=BB0_366 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r18, r10
	or r18, r7, r6
	j .LBB0_365
.LBB0_382:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 651 7 is_stmt 1               # parallel-rne.mlir:651:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 673 7                         # parallel-rne.mlir:673:7
	addli r1, zero, 2
	bneq r7, r1, .LBB0_336
.LBB0_383:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	.loc	1 673 7                         # parallel-rne.mlir:673:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r2
	j .LBB0_385
.LBB0_384:                              # %middle.block491
                                        #   in Loop: Header=BB0_385 Depth=2
	.loc	1 681 9 is_stmt 1               # parallel-rne.mlir:681:9
	andi r2, r1, 1
	addli r1, zero, 160
	zext_int2long r[21:22], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_403
.LBB0_385:                              # %vector.ph485
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_387 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[24:25], zero
	j .LBB0_387
.LBB0_386:                              # %vector.body486
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 690 13 is_stmt 1              # parallel-rne.mlir:690:13
	add.s r7, r4, r19
	.loc	1 682 11                        # parallel-rne.mlir:682:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[19:20], r12
	setneq.d r8, r[24:25], r[19:20]
	.loc	1 690 13                        # parallel-rne.mlir:690:13
	stores.w r28, 12(r7)
	stores.w r27, 8(r7)
	stores.w r9, 4(r7)
	stores.w r2, 0(r7)
	stores.w r18, 28(r7)
	stores.w r17, 24(r7)
	stores.w r15, 20(r7)
	stores.w r3, 16(r7)
	.loc	1 682 11                        # parallel-rne.mlir:682:11
	beq r8, zero, .LBB0_384
.LBB0_387:                              # %vector.body486
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_385 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r19, r2, 2
	add.s r3, r16, r19
	loads.w r2, 0(r3)
	loads.w r28, 12(r3)
	loads.w r27, 8(r3)
	loads.w r9, 4(r3)
	loads.w r18, 28(r3)
	loads.w r17, 24(r3)
	loads.w r15, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	and r7, r2, r26
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	setlt.u r7, r6, r7
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r7, zero, .LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r10
	or r2, r2, r6
.LBB0_389:                              # %vector.body486
                                        #   in Loop: Header=BB0_387 Depth=3
	and r7, r9, r26
	setlt.u r7, r6, r7
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r7, zero, .LBB0_391
# %bb.390:                              #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r9, r10
	or r9, r7, r6
.LBB0_391:                              # %vector.body486
                                        #   in Loop: Header=BB0_387 Depth=3
	and r7, r27, r26
	setlt.u r7, r6, r7
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r7, zero, .LBB0_393
# %bb.392:                              #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r27, r10
	or r27, r7, r6
.LBB0_393:                              # %vector.body486
                                        #   in Loop: Header=BB0_387 Depth=3
	and r7, r28, r26
	setlt.u r7, r6, r7
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r7, zero, .LBB0_395
# %bb.394:                              #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r28, r10
	or r28, r7, r6
.LBB0_395:                              # %vector.body486
                                        #   in Loop: Header=BB0_387 Depth=3
	and r7, r3, r26
	setlt.u r7, r6, r7
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r7, zero, .LBB0_397
# %bb.396:                              #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r10
	or r3, r3, r6
.LBB0_397:                              # %vector.body486
                                        #   in Loop: Header=BB0_387 Depth=3
	and r7, r15, r26
	setlt.u r7, r6, r7
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r7, zero, .LBB0_399
# %bb.398:                              #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r15, r10
	or r15, r7, r6
.LBB0_399:                              # %vector.body486
                                        #   in Loop: Header=BB0_387 Depth=3
	and r7, r17, r26
	setlt.u r7, r6, r7
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r7, zero, .LBB0_401
# %bb.400:                              #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r17, r10
	or r17, r7, r6
.LBB0_401:                              # %vector.body486
                                        #   in Loop: Header=BB0_387 Depth=3
	and r7, r18, r26
	setlt.u r7, r6, r7
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	beq r7, zero, .LBB0_386
# %bb.402:                              #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r18, r10
	or r18, r7, r6
	j .LBB0_386
.LBB0_403:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 673 7 is_stmt 1               # parallel-rne.mlir:673:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 695 7                         # parallel-rne.mlir:695:7
	addli r1, zero, 3
	bneq r7, r1, .LBB0_337
.LBB0_404:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 192
	.loc	1 695 7                         # parallel-rne.mlir:695:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r2
	j .LBB0_406
.LBB0_405:                              # %middle.block481
                                        #   in Loop: Header=BB0_406 Depth=2
	.loc	1 703 9 is_stmt 1               # parallel-rne.mlir:703:9
	andi r2, r1, 1
	addli r1, zero, 224
	zext_int2long r[21:22], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_424
.LBB0_406:                              # %vector.ph475
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_408 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[24:25], zero
	j .LBB0_408
.LBB0_407:                              # %vector.body476
                                        #   in Loop: Header=BB0_408 Depth=3
	.loc	1 712 13 is_stmt 1              # parallel-rne.mlir:712:13
	add.s r7, r4, r19
	.loc	1 704 11                        # parallel-rne.mlir:704:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[19:20], r12
	setneq.d r8, r[24:25], r[19:20]
	.loc	1 712 13                        # parallel-rne.mlir:712:13
	stores.w r28, 12(r7)
	stores.w r27, 8(r7)
	stores.w r9, 4(r7)
	stores.w r2, 0(r7)
	stores.w r18, 28(r7)
	stores.w r17, 24(r7)
	stores.w r15, 20(r7)
	stores.w r3, 16(r7)
	.loc	1 704 11                        # parallel-rne.mlir:704:11
	beq r8, zero, .LBB0_405
.LBB0_408:                              # %vector.body476
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_406 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r19, r2, 2
	add.s r3, r16, r19
	loads.w r2, 0(r3)
	loads.w r28, 12(r3)
	loads.w r27, 8(r3)
	loads.w r9, 4(r3)
	loads.w r18, 28(r3)
	loads.w r17, 24(r3)
	loads.w r15, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	and r7, r2, r26
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	setlt.u r7, r6, r7
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r7, zero, .LBB0_410
# %bb.409:                              #   in Loop: Header=BB0_408 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r10
	or r2, r2, r6
.LBB0_410:                              # %vector.body476
                                        #   in Loop: Header=BB0_408 Depth=3
	and r7, r9, r26
	setlt.u r7, r6, r7
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r7, zero, .LBB0_412
# %bb.411:                              #   in Loop: Header=BB0_408 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r9, r10
	or r9, r7, r6
.LBB0_412:                              # %vector.body476
                                        #   in Loop: Header=BB0_408 Depth=3
	and r7, r27, r26
	setlt.u r7, r6, r7
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r7, zero, .LBB0_414
# %bb.413:                              #   in Loop: Header=BB0_408 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r27, r10
	or r27, r7, r6
.LBB0_414:                              # %vector.body476
                                        #   in Loop: Header=BB0_408 Depth=3
	and r7, r28, r26
	setlt.u r7, r6, r7
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r7, zero, .LBB0_416
# %bb.415:                              #   in Loop: Header=BB0_408 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r28, r10
	or r28, r7, r6
.LBB0_416:                              # %vector.body476
                                        #   in Loop: Header=BB0_408 Depth=3
	and r7, r3, r26
	setlt.u r7, r6, r7
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r7, zero, .LBB0_418
# %bb.417:                              #   in Loop: Header=BB0_408 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r10
	or r3, r3, r6
.LBB0_418:                              # %vector.body476
                                        #   in Loop: Header=BB0_408 Depth=3
	and r7, r15, r26
	setlt.u r7, r6, r7
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r7, zero, .LBB0_420
# %bb.419:                              #   in Loop: Header=BB0_408 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r15, r10
	or r15, r7, r6
.LBB0_420:                              # %vector.body476
                                        #   in Loop: Header=BB0_408 Depth=3
	and r7, r17, r26
	setlt.u r7, r6, r7
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r7, zero, .LBB0_422
# %bb.421:                              #   in Loop: Header=BB0_408 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r17, r10
	or r17, r7, r6
.LBB0_422:                              # %vector.body476
                                        #   in Loop: Header=BB0_408 Depth=3
	and r7, r18, r26
	setlt.u r7, r6, r7
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	beq r7, zero, .LBB0_407
# %bb.423:                              #   in Loop: Header=BB0_408 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r18, r10
	or r18, r7, r6
	j .LBB0_407
.LBB0_424:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 695 7 is_stmt 1               # parallel-rne.mlir:695:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	addli r1, zero, 4
	bneq r7, r1, .LBB0_338
.LBB0_425:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 717 7                         # parallel-rne.mlir:717:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r2
	j .LBB0_427
.LBB0_426:                              # %middle.block471
                                        #   in Loop: Header=BB0_427 Depth=2
	.loc	1 725 9 is_stmt 1               # parallel-rne.mlir:725:9
	andi r2, r1, 1
	addli r1, zero, 288
	zext_int2long r[21:22], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_445
.LBB0_427:                              # %vector.ph465
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_429 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[24:25], zero
	j .LBB0_429
.LBB0_428:                              # %vector.body466
                                        #   in Loop: Header=BB0_429 Depth=3
	.loc	1 734 13 is_stmt 1              # parallel-rne.mlir:734:13
	add.s r7, r4, r19
	.loc	1 726 11                        # parallel-rne.mlir:726:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[19:20], r12
	setneq.d r8, r[24:25], r[19:20]
	.loc	1 734 13                        # parallel-rne.mlir:734:13
	stores.w r28, 12(r7)
	stores.w r27, 8(r7)
	stores.w r9, 4(r7)
	stores.w r2, 0(r7)
	stores.w r18, 28(r7)
	stores.w r17, 24(r7)
	stores.w r15, 20(r7)
	stores.w r3, 16(r7)
	.loc	1 726 11                        # parallel-rne.mlir:726:11
	beq r8, zero, .LBB0_426
.LBB0_429:                              # %vector.body466
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_427 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r19, r2, 2
	add.s r3, r16, r19
	loads.w r2, 0(r3)
	loads.w r28, 12(r3)
	loads.w r27, 8(r3)
	loads.w r9, 4(r3)
	loads.w r18, 28(r3)
	loads.w r17, 24(r3)
	loads.w r15, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	and r7, r2, r26
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	setlt.u r7, r6, r7
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r7, zero, .LBB0_431
# %bb.430:                              #   in Loop: Header=BB0_429 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r10
	or r2, r2, r6
.LBB0_431:                              # %vector.body466
                                        #   in Loop: Header=BB0_429 Depth=3
	and r7, r9, r26
	setlt.u r7, r6, r7
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r7, zero, .LBB0_433
# %bb.432:                              #   in Loop: Header=BB0_429 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r9, r10
	or r9, r7, r6
.LBB0_433:                              # %vector.body466
                                        #   in Loop: Header=BB0_429 Depth=3
	and r7, r27, r26
	setlt.u r7, r6, r7
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r7, zero, .LBB0_435
# %bb.434:                              #   in Loop: Header=BB0_429 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r27, r10
	or r27, r7, r6
.LBB0_435:                              # %vector.body466
                                        #   in Loop: Header=BB0_429 Depth=3
	and r7, r28, r26
	setlt.u r7, r6, r7
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r7, zero, .LBB0_437
# %bb.436:                              #   in Loop: Header=BB0_429 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r28, r10
	or r28, r7, r6
.LBB0_437:                              # %vector.body466
                                        #   in Loop: Header=BB0_429 Depth=3
	and r7, r3, r26
	setlt.u r7, r6, r7
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r7, zero, .LBB0_439
# %bb.438:                              #   in Loop: Header=BB0_429 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r10
	or r3, r3, r6
.LBB0_439:                              # %vector.body466
                                        #   in Loop: Header=BB0_429 Depth=3
	and r7, r15, r26
	setlt.u r7, r6, r7
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r7, zero, .LBB0_441
# %bb.440:                              #   in Loop: Header=BB0_429 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r15, r10
	or r15, r7, r6
.LBB0_441:                              # %vector.body466
                                        #   in Loop: Header=BB0_429 Depth=3
	and r7, r17, r26
	setlt.u r7, r6, r7
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r7, zero, .LBB0_443
# %bb.442:                              #   in Loop: Header=BB0_429 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r17, r10
	or r17, r7, r6
.LBB0_443:                              # %vector.body466
                                        #   in Loop: Header=BB0_429 Depth=3
	and r7, r18, r26
	setlt.u r7, r6, r7
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	beq r7, zero, .LBB0_428
# %bb.444:                              #   in Loop: Header=BB0_429 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r18, r10
	or r18, r7, r6
	j .LBB0_428
.LBB0_445:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 717 7 is_stmt 1               # parallel-rne.mlir:717:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 739 7                         # parallel-rne.mlir:739:7
	addli r1, zero, 5
	bneq r7, r1, .LBB0_339
.LBB0_446:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 320
	.loc	1 739 7                         # parallel-rne.mlir:739:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r2
	j .LBB0_448
.LBB0_447:                              # %middle.block461
                                        #   in Loop: Header=BB0_448 Depth=2
	.loc	1 747 9 is_stmt 1               # parallel-rne.mlir:747:9
	andi r2, r1, 1
	addli r1, zero, 352
	zext_int2long r[21:22], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_466
.LBB0_448:                              # %vector.ph455
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_450 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[24:25], zero
	j .LBB0_450
.LBB0_449:                              # %vector.body456
                                        #   in Loop: Header=BB0_450 Depth=3
	.loc	1 756 13 is_stmt 1              # parallel-rne.mlir:756:13
	add.s r7, r4, r19
	.loc	1 748 11                        # parallel-rne.mlir:748:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[19:20], r12
	setneq.d r8, r[24:25], r[19:20]
	.loc	1 756 13                        # parallel-rne.mlir:756:13
	stores.w r28, 12(r7)
	stores.w r27, 8(r7)
	stores.w r9, 4(r7)
	stores.w r2, 0(r7)
	stores.w r18, 28(r7)
	stores.w r17, 24(r7)
	stores.w r15, 20(r7)
	stores.w r3, 16(r7)
	.loc	1 748 11                        # parallel-rne.mlir:748:11
	beq r8, zero, .LBB0_447
.LBB0_450:                              # %vector.body456
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_448 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 749 19                        # parallel-rne.mlir:749:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r19, r2, 2
	add.s r3, r16, r19
	loads.w r2, 0(r3)
	loads.w r28, 12(r3)
	loads.w r27, 8(r3)
	loads.w r9, 4(r3)
	loads.w r18, 28(r3)
	loads.w r17, 24(r3)
	loads.w r15, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	and r7, r2, r26
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	setlt.u r7, r6, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r7, zero, .LBB0_452
# %bb.451:                              #   in Loop: Header=BB0_450 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r10
	or r2, r2, r6
.LBB0_452:                              # %vector.body456
                                        #   in Loop: Header=BB0_450 Depth=3
	and r7, r9, r26
	setlt.u r7, r6, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r7, zero, .LBB0_454
# %bb.453:                              #   in Loop: Header=BB0_450 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r9, r10
	or r9, r7, r6
.LBB0_454:                              # %vector.body456
                                        #   in Loop: Header=BB0_450 Depth=3
	and r7, r27, r26
	setlt.u r7, r6, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r7, zero, .LBB0_456
# %bb.455:                              #   in Loop: Header=BB0_450 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r27, r10
	or r27, r7, r6
.LBB0_456:                              # %vector.body456
                                        #   in Loop: Header=BB0_450 Depth=3
	and r7, r28, r26
	setlt.u r7, r6, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r7, zero, .LBB0_458
# %bb.457:                              #   in Loop: Header=BB0_450 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r28, r10
	or r28, r7, r6
.LBB0_458:                              # %vector.body456
                                        #   in Loop: Header=BB0_450 Depth=3
	and r7, r3, r26
	setlt.u r7, r6, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r7, zero, .LBB0_460
# %bb.459:                              #   in Loop: Header=BB0_450 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r10
	or r3, r3, r6
.LBB0_460:                              # %vector.body456
                                        #   in Loop: Header=BB0_450 Depth=3
	and r7, r15, r26
	setlt.u r7, r6, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r7, zero, .LBB0_462
# %bb.461:                              #   in Loop: Header=BB0_450 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r15, r10
	or r15, r7, r6
.LBB0_462:                              # %vector.body456
                                        #   in Loop: Header=BB0_450 Depth=3
	and r7, r17, r26
	setlt.u r7, r6, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r7, zero, .LBB0_464
# %bb.463:                              #   in Loop: Header=BB0_450 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r17, r10
	or r17, r7, r6
.LBB0_464:                              # %vector.body456
                                        #   in Loop: Header=BB0_450 Depth=3
	and r7, r18, r26
	setlt.u r7, r6, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r7, zero, .LBB0_449
# %bb.465:                              #   in Loop: Header=BB0_450 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r18, r10
	or r18, r7, r6
	j .LBB0_449
.LBB0_466:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 739 7 is_stmt 1               # parallel-rne.mlir:739:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	addli r1, zero, 6
	bneq r7, r1, .LBB0_340
.LBB0_467:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 384
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r2
	j .LBB0_469
.LBB0_468:                              # %middle.block451
                                        #   in Loop: Header=BB0_469 Depth=2
	.loc	1 769 9 is_stmt 1               # parallel-rne.mlir:769:9
	andi r2, r1, 1
	addli r1, zero, 416
	zext_int2long r[21:22], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_487
.LBB0_469:                              # %vector.ph445
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_471 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[24:25], zero
	j .LBB0_471
.LBB0_470:                              # %vector.body446
                                        #   in Loop: Header=BB0_471 Depth=3
	.loc	1 778 13 is_stmt 1              # parallel-rne.mlir:778:13
	add.s r7, r4, r19
	.loc	1 770 11                        # parallel-rne.mlir:770:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[19:20], r12
	setneq.d r8, r[24:25], r[19:20]
	.loc	1 778 13                        # parallel-rne.mlir:778:13
	stores.w r28, 12(r7)
	stores.w r27, 8(r7)
	stores.w r9, 4(r7)
	stores.w r2, 0(r7)
	stores.w r18, 28(r7)
	stores.w r17, 24(r7)
	stores.w r15, 20(r7)
	stores.w r3, 16(r7)
	.loc	1 770 11                        # parallel-rne.mlir:770:11
	beq r8, zero, .LBB0_468
.LBB0_471:                              # %vector.body446
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_469 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 771 19                        # parallel-rne.mlir:771:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r19, r2, 2
	add.s r3, r16, r19
	loads.w r2, 0(r3)
	loads.w r28, 12(r3)
	loads.w r27, 8(r3)
	loads.w r9, 4(r3)
	loads.w r18, 28(r3)
	loads.w r17, 24(r3)
	loads.w r15, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	and r7, r2, r26
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	setlt.u r7, r6, r7
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r7, zero, .LBB0_473
# %bb.472:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r10
	or r2, r2, r6
.LBB0_473:                              # %vector.body446
                                        #   in Loop: Header=BB0_471 Depth=3
	and r7, r9, r26
	setlt.u r7, r6, r7
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r7, zero, .LBB0_475
# %bb.474:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r9, r10
	or r9, r7, r6
.LBB0_475:                              # %vector.body446
                                        #   in Loop: Header=BB0_471 Depth=3
	and r7, r27, r26
	setlt.u r7, r6, r7
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r7, zero, .LBB0_477
# %bb.476:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r27, r10
	or r27, r7, r6
.LBB0_477:                              # %vector.body446
                                        #   in Loop: Header=BB0_471 Depth=3
	and r7, r28, r26
	setlt.u r7, r6, r7
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r7, zero, .LBB0_479
# %bb.478:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r28, r10
	or r28, r7, r6
.LBB0_479:                              # %vector.body446
                                        #   in Loop: Header=BB0_471 Depth=3
	and r7, r3, r26
	setlt.u r7, r6, r7
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r7, zero, .LBB0_481
# %bb.480:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r10
	or r3, r3, r6
.LBB0_481:                              # %vector.body446
                                        #   in Loop: Header=BB0_471 Depth=3
	and r7, r15, r26
	setlt.u r7, r6, r7
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r7, zero, .LBB0_483
# %bb.482:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r15, r10
	or r15, r7, r6
.LBB0_483:                              # %vector.body446
                                        #   in Loop: Header=BB0_471 Depth=3
	and r7, r17, r26
	setlt.u r7, r6, r7
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r7, zero, .LBB0_485
# %bb.484:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r17, r10
	or r17, r7, r6
.LBB0_485:                              # %vector.body446
                                        #   in Loop: Header=BB0_471 Depth=3
	and r7, r18, r26
	setlt.u r7, r6, r7
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	beq r7, zero, .LBB0_470
# %bb.486:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r18, r10
	or r18, r7, r6
	j .LBB0_470
.LBB0_487:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 761 7 is_stmt 1               # parallel-rne.mlir:761:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 783 7                         # parallel-rne.mlir:783:7
	addli r1, zero, 7
	bneq r7, r1, .LBB0_509
.LBB0_488:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 448
	.loc	1 783 7                         # parallel-rne.mlir:783:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r2
	j .LBB0_490
.LBB0_489:                              # %middle.block441
                                        #   in Loop: Header=BB0_490 Depth=2
	.loc	1 791 9 is_stmt 1               # parallel-rne.mlir:791:9
	andi r2, r1, 1
	addli r1, zero, 480
	zext_int2long r[21:22], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_508
.LBB0_490:                              # %vector.ph435
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_492 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[24:25], zero
	j .LBB0_492
.LBB0_491:                              # %vector.body436
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 800 13 is_stmt 1              # parallel-rne.mlir:800:13
	add.s r7, r4, r19
	.loc	1 792 11                        # parallel-rne.mlir:792:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[19:20], r12
	setneq.d r8, r[24:25], r[19:20]
	.loc	1 800 13                        # parallel-rne.mlir:800:13
	stores.w r28, 12(r7)
	stores.w r27, 8(r7)
	stores.w r9, 4(r7)
	stores.w r2, 0(r7)
	stores.w r18, 28(r7)
	stores.w r17, 24(r7)
	stores.w r15, 20(r7)
	stores.w r3, 16(r7)
	.loc	1 792 11                        # parallel-rne.mlir:792:11
	beq r8, zero, .LBB0_489
.LBB0_492:                              # %vector.body436
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_490 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r19, r2, 2
	add.s r3, r16, r19
	loads.w r2, 0(r3)
	loads.w r28, 12(r3)
	loads.w r27, 8(r3)
	loads.w r9, 4(r3)
	loads.w r18, 28(r3)
	loads.w r17, 24(r3)
	loads.w r15, 20(r3)
	loads.w r3, 16(r3)
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	and r7, r2, r26
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	setlt.u r7, r6, r7
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r7, zero, .LBB0_494
# %bb.493:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r10
	or r2, r2, r6
.LBB0_494:                              # %vector.body436
                                        #   in Loop: Header=BB0_492 Depth=3
	and r7, r9, r26
	setlt.u r7, r6, r7
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r7, zero, .LBB0_496
# %bb.495:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r9, r10
	or r9, r7, r6
.LBB0_496:                              # %vector.body436
                                        #   in Loop: Header=BB0_492 Depth=3
	and r7, r27, r26
	setlt.u r7, r6, r7
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r7, zero, .LBB0_498
# %bb.497:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r27, r10
	or r27, r7, r6
.LBB0_498:                              # %vector.body436
                                        #   in Loop: Header=BB0_492 Depth=3
	and r7, r28, r26
	setlt.u r7, r6, r7
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r7, zero, .LBB0_500
# %bb.499:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r28, r10
	or r28, r7, r6
.LBB0_500:                              # %vector.body436
                                        #   in Loop: Header=BB0_492 Depth=3
	and r7, r3, r26
	setlt.u r7, r6, r7
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r7, zero, .LBB0_502
# %bb.501:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r10
	or r3, r3, r6
.LBB0_502:                              # %vector.body436
                                        #   in Loop: Header=BB0_492 Depth=3
	and r7, r15, r26
	setlt.u r7, r6, r7
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r7, zero, .LBB0_504
# %bb.503:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r15, r10
	or r15, r7, r6
.LBB0_504:                              # %vector.body436
                                        #   in Loop: Header=BB0_492 Depth=3
	and r7, r17, r26
	setlt.u r7, r6, r7
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r7, zero, .LBB0_506
# %bb.505:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r17, r10
	or r17, r7, r6
.LBB0_506:                              # %vector.body436
                                        #   in Loop: Header=BB0_492 Depth=3
	and r7, r18, r26
	setlt.u r7, r6, r7
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	beq r7, zero, .LBB0_491
# %bb.507:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r18, r10
	or r18, r7, r6
	j .LBB0_491
.LBB0_508:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 783 7 is_stmt 1               # parallel-rne.mlir:783:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
.LBB0_509:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	addli r1, zero, 3
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	sync_core
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	bneq r7, r1, .LBB0_511
# %bb.510:                              # %.critedge20
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	addli r3, zero, 34
	lui r10, 1024
	xsignal r1, 0
	.loc	1 807 7                         # parallel-rne.mlir:807:7
	xsignal r3, 0
	.loc	1 810 13                        # parallel-rne.mlir:810:13
	loadli.w r1,  -48(r30)
	addli r2, r1, 1
	storeli.w r2, -48(r30)
	.loc	1 812 7                         # parallel-rne.mlir:812:7
	addli r2, zero, 15
	xwait r2, 0
	.loc	1 814 7                         # parallel-rne.mlir:814:7
	addli r2, zero, 38
	.loc	1 813 7                         # parallel-rne.mlir:813:7
	xwait r3, 0
	.loc	1 814 7                         # parallel-rne.mlir:814:7
	xwait r2, 0
	j .LBB0_514
.LBB0_511:                              # %.critedge18
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 808 7                         # parallel-rne.mlir:808:7
	addli r1, zero, 5
	lui r10, 1024
	bneq r7, r1, .LBB0_513
# %bb.512:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	addli r2, zero, 2
	lui r3, 268284
	xwait r1, 0
	lock zero, r2
	addli r1, zero, 511
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 3
	ew_cfg r17, zero, zero, 3
	ew_cfg r17, r17, zero, 19
	ew_cfg r1, zero, zero, 10
	loadli.w r1,  -4412(r30)                # 4-byte Folded Reload
	ew_cfg r2, r17, r1, 11
	addli r1, zero, 4
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r1, r3, 14
	addli r1, zero, 15
	ew_cfg zero, zero, zero, 15
	sslut r4, r4, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r1, 0
.LBB0_513:                              # %.thread86
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 810 13                        # parallel-rne.mlir:810:13
	loadli.w r1,  -48(r30)
	addli r2, r1, 1
	storeli.w r2, -48(r30)
.LBB0_514:                              # %.critedge21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	.loc	1 816 7                         # parallel-rne.mlir:816:7
	xfence
	.loc	1 817 7                         # parallel-rne.mlir:817:7
	mfence { lm, sm, gm }
	.loc	1 810 13                        # parallel-rne.mlir:810:13
	mod.s r1, r1, r2
	loadli.w r2,  -4400(r30)                # 4-byte Folded Reload
	slli r1, r1, 11
	add.s r18, r1, r2
	.loc	1 818 7                         # parallel-rne.mlir:818:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	beq r7, zero, .LBB0_522
# %bb.515:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 845 7                         # parallel-rne.mlir:845:7
	beq r7, r17, .LBB0_558
.LBB0_516:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	addli r1, zero, 2
	beq r7, r1, .LBB0_594
.LBB0_517:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 897 7                         # parallel-rne.mlir:897:7
	addli r1, zero, 3
	beq r7, r1, .LBB0_630
.LBB0_518:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	addli r1, zero, 4
	beq r7, r1, .LBB0_666
.LBB0_519:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 949 7                         # parallel-rne.mlir:949:7
	addli r1, zero, 5
	beq r7, r1, .LBB0_702
.LBB0_520:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 975 7                         # parallel-rne.mlir:975:7
	addli r1, zero, 6
	beq r7, r1, .LBB0_738
.LBB0_521:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	addli r1, zero, 7
	beq r7, r1, .LBB0_774
	j .LBB0_810
.LBB0_522:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 819 7                         # parallel-rne.mlir:819:7
	xfence
	addli r14, zero, 1
	zext_int2long r[21:22], zero
	mfence { lm, sm, gm }
	j .LBB0_524
.LBB0_523:                              # %middle.block431
                                        #   in Loop: Header=BB0_524 Depth=2
	.loc	1 827 9                         # parallel-rne.mlir:827:9
	andi r1, r14, 1
	zext_int2long r[21:22], r12
	addli r14, zero, 0
	beq r1, zero, .LBB0_557
.LBB0_524:                              # %vector.memcheck418
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_534 Depth 3
                                        #       Child Loop BB0_527 Depth 3
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	bneq r18, r16, .LBB0_531
# %bb.525:                              # %scalar.ph422.preheader
                                        #   in Loop: Header=BB0_524 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_527
.LBB0_526:                              # %scalar.ph422
                                        #   in Loop: Header=BB0_527 Depth=3
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	addli r11, r30, -4272
	.loc	1 840 13 is_stmt 1              # parallel-rne.mlir:840:13
	add.s r3, r18, r3
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	load.d r[7:8], 0(r11)                   # 8-byte Folded Reload
	.loc	1 840 13                        # parallel-rne.mlir:840:13
	stores.w r9, 0(r3)
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_523
.LBB0_527:                              # %scalar.ph422
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_524 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.ul r[7:8], r[1:2], r[21:22]
	slli r3, r7, 2
	add.s r7, r16, r3
	loads.w r17, 0(r7)
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.s r7, r4, r3
	loads.w r15, 0(r7)
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	and r7, r17, r13
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r7, zero, .LBB0_529
# %bb.528:                              # %scalar.ph422
                                        #   in Loop: Header=BB0_527 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r15, 0
	and r7, r17, r5
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	beq r7, r5, .LBB0_526
	j .LBB0_530
.LBB0_529:                              #   in Loop: Header=BB0_527 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r17, r10
	and r7, r17, r5
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	beq r7, r5, .LBB0_526
.LBB0_530:                              # %scalar.ph422
                                        #   in Loop: Header=BB0_527 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_526
.LBB0_531:                              # %vector.body424.preheader
                                        #   in Loop: Header=BB0_524 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_534
.LBB0_532:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	loads.w r2, 28(r17)
.LBB0_533:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 828 11 is_stmt 1              # parallel-rne.mlir:828:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[10:11], r12
	.loc	1 840 13                        # parallel-rne.mlir:840:13
	add.s r7, r18, r27
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	seteq.d r8, r[24:25], r[10:11]
	lui r10, 1024
	.loc	1 840 13                        # parallel-rne.mlir:840:13
	stores.w r15, 12(r7)
	stores.w r9, 8(r7)
	stores.w r3, 4(r7)
	stores.w r28, 0(r7)
	stores.w r2, 28(r7)
	stores.w r1, 24(r7)
	stores.w r20, 20(r7)
	stores.w r19, 16(r7)
	.loc	1 828 11                        # parallel-rne.mlir:828:11
	bneq r8, zero, .LBB0_523
.LBB0_534:                              # %vector.body424
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_524 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.ul r[1:2], r[24:25], r[21:22]
	slli r27, r1, 2
	add.s r2, r16, r27
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	add.s r17, r4, r27
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	loads.w r1, 0(r2)
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	and r3, r1, r5
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	and r7, r1, r13
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	seteq r3, r3, r5
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	setneq r7, r7, zero
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	and r3, r3, r7
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r3, zero, .LBB0_536
# %bb.535:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r17)
	j .LBB0_537
.LBB0_536:                              #   in Loop: Header=BB0_534 Depth=3
	or r28, r1, r10
.LBB0_537:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	loads.w r1, 4(r2)
	and r3, r1, r5
	and r7, r1, r13
	seteq r3, r3, r5
	setneq r7, r7, zero
	and r3, r3, r7
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r3, zero, .LBB0_539
# %bb.538:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r17)
	j .LBB0_540
.LBB0_539:                              #   in Loop: Header=BB0_534 Depth=3
	or r3, r1, r10
.LBB0_540:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	loads.w r1, 8(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r7, zero, .LBB0_542
# %bb.541:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r17)
	j .LBB0_543
.LBB0_542:                              #   in Loop: Header=BB0_534 Depth=3
	or r9, r1, r10
.LBB0_543:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	loads.w r1, 12(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r7, zero, .LBB0_545
# %bb.544:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r17)
	j .LBB0_546
.LBB0_545:                              #   in Loop: Header=BB0_534 Depth=3
	or r15, r1, r10
.LBB0_546:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	loads.w r1, 16(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r7, zero, .LBB0_548
# %bb.547:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r17)
	j .LBB0_549
.LBB0_548:                              #   in Loop: Header=BB0_534 Depth=3
	or r19, r1, r10
.LBB0_549:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	loads.w r1, 20(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r7, zero, .LBB0_551
# %bb.550:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r17)
	j .LBB0_552
.LBB0_551:                              #   in Loop: Header=BB0_534 Depth=3
	or r20, r1, r10
.LBB0_552:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	loads.w r1, 24(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r7, zero, .LBB0_554
# %bb.553:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 24(r17)
	j .LBB0_555
.LBB0_554:                              #   in Loop: Header=BB0_534 Depth=3
	or r1, r1, r10
.LBB0_555:                              # %vector.body424
                                        #   in Loop: Header=BB0_534 Depth=3
	loads.w r2, 28(r2)
	and r7, r2, r5
	and r8, r2, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	beq r7, zero, .LBB0_532
# %bb.556:                              #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r2, r10
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	j .LBB0_533
.LBB0_557:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 819 7 is_stmt 1               # parallel-rne.mlir:819:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 845 7                         # parallel-rne.mlir:845:7
	bneq r7, r17, .LBB0_516
.LBB0_558:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 64
	.loc	1 845 7                         # parallel-rne.mlir:845:7
	xfence
	addli r14, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r1
	j .LBB0_560
.LBB0_559:                              # %middle.block417
                                        #   in Loop: Header=BB0_560 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 853 9 is_stmt 1               # parallel-rne.mlir:853:9
	andi r1, r14, 1
	addli r14, zero, 0
	zext_int2long r[21:22], r2
	beq r1, zero, .LBB0_593
.LBB0_560:                              # %vector.memcheck404
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_570 Depth 3
                                        #       Child Loop BB0_563 Depth 3
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	bneq r18, r16, .LBB0_567
# %bb.561:                              # %scalar.ph408.preheader
                                        #   in Loop: Header=BB0_560 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_563
.LBB0_562:                              # %scalar.ph408
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	addli r11, r30, -4272
	.loc	1 866 13 is_stmt 1              # parallel-rne.mlir:866:13
	add.s r3, r18, r3
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	load.d r[7:8], 0(r11)                   # 8-byte Folded Reload
	.loc	1 866 13                        # parallel-rne.mlir:866:13
	stores.w r9, 0(r3)
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_559
.LBB0_563:                              # %scalar.ph408
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_560 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	add.ul r[7:8], r[1:2], r[21:22]
	slli r3, r7, 2
	add.s r7, r16, r3
	loads.w r17, 0(r7)
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	add.s r7, r4, r3
	loads.w r15, 0(r7)
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	and r7, r17, r13
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r7, zero, .LBB0_565
# %bb.564:                              # %scalar.ph408
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r15, 0
	and r7, r17, r5
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	beq r7, r5, .LBB0_562
	j .LBB0_566
.LBB0_565:                              #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r17, r10
	and r7, r17, r5
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	beq r7, r5, .LBB0_562
.LBB0_566:                              # %scalar.ph408
                                        #   in Loop: Header=BB0_563 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_562
.LBB0_567:                              # %vector.body410.preheader
                                        #   in Loop: Header=BB0_560 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_570
.LBB0_568:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	loads.w r2, 28(r17)
.LBB0_569:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 854 11 is_stmt 1              # parallel-rne.mlir:854:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[10:11], r12
	.loc	1 866 13                        # parallel-rne.mlir:866:13
	add.s r7, r18, r27
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	seteq.d r8, r[24:25], r[10:11]
	lui r10, 1024
	.loc	1 866 13                        # parallel-rne.mlir:866:13
	stores.w r15, 12(r7)
	stores.w r9, 8(r7)
	stores.w r3, 4(r7)
	stores.w r28, 0(r7)
	stores.w r2, 28(r7)
	stores.w r1, 24(r7)
	stores.w r20, 20(r7)
	stores.w r19, 16(r7)
	.loc	1 854 11                        # parallel-rne.mlir:854:11
	bneq r8, zero, .LBB0_559
.LBB0_570:                              # %vector.body410
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_560 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	add.ul r[1:2], r[24:25], r[21:22]
	slli r27, r1, 2
	add.s r2, r16, r27
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	add.s r17, r4, r27
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	loads.w r1, 0(r2)
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	and r3, r1, r5
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	and r7, r1, r13
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	seteq r3, r3, r5
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	setneq r7, r7, zero
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	and r3, r3, r7
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r3, zero, .LBB0_572
# %bb.571:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r17)
	j .LBB0_573
.LBB0_572:                              #   in Loop: Header=BB0_570 Depth=3
	or r28, r1, r10
.LBB0_573:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	loads.w r1, 4(r2)
	and r3, r1, r5
	and r7, r1, r13
	seteq r3, r3, r5
	setneq r7, r7, zero
	and r3, r3, r7
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r3, zero, .LBB0_575
# %bb.574:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r17)
	j .LBB0_576
.LBB0_575:                              #   in Loop: Header=BB0_570 Depth=3
	or r3, r1, r10
.LBB0_576:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	loads.w r1, 8(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r7, zero, .LBB0_578
# %bb.577:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r17)
	j .LBB0_579
.LBB0_578:                              #   in Loop: Header=BB0_570 Depth=3
	or r9, r1, r10
.LBB0_579:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	loads.w r1, 12(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r7, zero, .LBB0_581
# %bb.580:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r17)
	j .LBB0_582
.LBB0_581:                              #   in Loop: Header=BB0_570 Depth=3
	or r15, r1, r10
.LBB0_582:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	loads.w r1, 16(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r7, zero, .LBB0_584
# %bb.583:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r17)
	j .LBB0_585
.LBB0_584:                              #   in Loop: Header=BB0_570 Depth=3
	or r19, r1, r10
.LBB0_585:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	loads.w r1, 20(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r7, zero, .LBB0_587
# %bb.586:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r17)
	j .LBB0_588
.LBB0_587:                              #   in Loop: Header=BB0_570 Depth=3
	or r20, r1, r10
.LBB0_588:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	loads.w r1, 24(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	bneq r7, zero, .LBB0_590
# %bb.589:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 24(r17)
	j .LBB0_591
.LBB0_590:                              #   in Loop: Header=BB0_570 Depth=3
	or r1, r1, r10
.LBB0_591:                              # %vector.body410
                                        #   in Loop: Header=BB0_570 Depth=3
	loads.w r2, 28(r2)
	and r7, r2, r5
	and r8, r2, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	beq r7, zero, .LBB0_568
# %bb.592:                              #   in Loop: Header=BB0_570 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r2, r10
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	j .LBB0_569
.LBB0_593:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 845 7 is_stmt 1               # parallel-rne.mlir:845:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	addli r1, zero, 2
	bneq r7, r1, .LBB0_517
.LBB0_594:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 128
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	xfence
	addli r14, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r1
	j .LBB0_596
.LBB0_595:                              # %middle.block403
                                        #   in Loop: Header=BB0_596 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 160
	.loc	1 879 9 is_stmt 1               # parallel-rne.mlir:879:9
	andi r1, r14, 1
	addli r14, zero, 0
	zext_int2long r[21:22], r2
	beq r1, zero, .LBB0_629
.LBB0_596:                              # %vector.memcheck390
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_606 Depth 3
                                        #       Child Loop BB0_599 Depth 3
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	bneq r18, r16, .LBB0_603
# %bb.597:                              # %scalar.ph394.preheader
                                        #   in Loop: Header=BB0_596 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_599
.LBB0_598:                              # %scalar.ph394
                                        #   in Loop: Header=BB0_599 Depth=3
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	addli r11, r30, -4272
	.loc	1 892 13 is_stmt 1              # parallel-rne.mlir:892:13
	add.s r3, r18, r3
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	load.d r[7:8], 0(r11)                   # 8-byte Folded Reload
	.loc	1 892 13                        # parallel-rne.mlir:892:13
	stores.w r9, 0(r3)
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_595
.LBB0_599:                              # %scalar.ph394
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_596 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	add.ul r[7:8], r[1:2], r[21:22]
	slli r3, r7, 2
	add.s r7, r16, r3
	loads.w r17, 0(r7)
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	add.s r7, r4, r3
	loads.w r15, 0(r7)
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	and r7, r17, r13
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r7, zero, .LBB0_601
# %bb.600:                              # %scalar.ph394
                                        #   in Loop: Header=BB0_599 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r15, 0
	and r7, r17, r5
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	beq r7, r5, .LBB0_598
	j .LBB0_602
.LBB0_601:                              #   in Loop: Header=BB0_599 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r17, r10
	and r7, r17, r5
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	beq r7, r5, .LBB0_598
.LBB0_602:                              # %scalar.ph394
                                        #   in Loop: Header=BB0_599 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_598
.LBB0_603:                              # %vector.body396.preheader
                                        #   in Loop: Header=BB0_596 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_606
.LBB0_604:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	loads.w r2, 28(r17)
.LBB0_605:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 880 11 is_stmt 1              # parallel-rne.mlir:880:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[10:11], r12
	.loc	1 892 13                        # parallel-rne.mlir:892:13
	add.s r7, r18, r27
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	seteq.d r8, r[24:25], r[10:11]
	lui r10, 1024
	.loc	1 892 13                        # parallel-rne.mlir:892:13
	stores.w r15, 12(r7)
	stores.w r9, 8(r7)
	stores.w r3, 4(r7)
	stores.w r28, 0(r7)
	stores.w r2, 28(r7)
	stores.w r1, 24(r7)
	stores.w r20, 20(r7)
	stores.w r19, 16(r7)
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	bneq r8, zero, .LBB0_595
.LBB0_606:                              # %vector.body396
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_596 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	add.ul r[1:2], r[24:25], r[21:22]
	slli r27, r1, 2
	add.s r2, r16, r27
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	add.s r17, r4, r27
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	loads.w r1, 0(r2)
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	and r3, r1, r5
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	and r7, r1, r13
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	seteq r3, r3, r5
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	setneq r7, r7, zero
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	and r3, r3, r7
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r3, zero, .LBB0_608
# %bb.607:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r17)
	j .LBB0_609
.LBB0_608:                              #   in Loop: Header=BB0_606 Depth=3
	or r28, r1, r10
.LBB0_609:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	loads.w r1, 4(r2)
	and r3, r1, r5
	and r7, r1, r13
	seteq r3, r3, r5
	setneq r7, r7, zero
	and r3, r3, r7
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r3, zero, .LBB0_611
# %bb.610:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r17)
	j .LBB0_612
.LBB0_611:                              #   in Loop: Header=BB0_606 Depth=3
	or r3, r1, r10
.LBB0_612:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	loads.w r1, 8(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r7, zero, .LBB0_614
# %bb.613:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r17)
	j .LBB0_615
.LBB0_614:                              #   in Loop: Header=BB0_606 Depth=3
	or r9, r1, r10
.LBB0_615:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	loads.w r1, 12(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r7, zero, .LBB0_617
# %bb.616:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r17)
	j .LBB0_618
.LBB0_617:                              #   in Loop: Header=BB0_606 Depth=3
	or r15, r1, r10
.LBB0_618:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	loads.w r1, 16(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r7, zero, .LBB0_620
# %bb.619:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r17)
	j .LBB0_621
.LBB0_620:                              #   in Loop: Header=BB0_606 Depth=3
	or r19, r1, r10
.LBB0_621:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	loads.w r1, 20(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r7, zero, .LBB0_623
# %bb.622:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r17)
	j .LBB0_624
.LBB0_623:                              #   in Loop: Header=BB0_606 Depth=3
	or r20, r1, r10
.LBB0_624:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	loads.w r1, 24(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	bneq r7, zero, .LBB0_626
# %bb.625:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 24(r17)
	j .LBB0_627
.LBB0_626:                              #   in Loop: Header=BB0_606 Depth=3
	or r1, r1, r10
.LBB0_627:                              # %vector.body396
                                        #   in Loop: Header=BB0_606 Depth=3
	loads.w r2, 28(r2)
	and r7, r2, r5
	and r8, r2, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	beq r7, zero, .LBB0_604
# %bb.628:                              #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r2, r10
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	j .LBB0_605
.LBB0_629:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 871 7 is_stmt 1               # parallel-rne.mlir:871:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 897 7                         # parallel-rne.mlir:897:7
	addli r1, zero, 3
	bneq r7, r1, .LBB0_518
.LBB0_630:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 192
	.loc	1 897 7                         # parallel-rne.mlir:897:7
	xfence
	addli r14, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r1
	j .LBB0_632
.LBB0_631:                              # %middle.block389
                                        #   in Loop: Header=BB0_632 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 224
	.loc	1 905 9 is_stmt 1               # parallel-rne.mlir:905:9
	andi r1, r14, 1
	addli r14, zero, 0
	zext_int2long r[21:22], r2
	beq r1, zero, .LBB0_665
.LBB0_632:                              # %vector.memcheck376
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_642 Depth 3
                                        #       Child Loop BB0_635 Depth 3
	.loc	1 906 11                        # parallel-rne.mlir:906:11
	bneq r18, r16, .LBB0_639
# %bb.633:                              # %scalar.ph380.preheader
                                        #   in Loop: Header=BB0_632 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_635
.LBB0_634:                              # %scalar.ph380
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 906 11                        # parallel-rne.mlir:906:11
	addli r11, r30, -4272
	.loc	1 918 13 is_stmt 1              # parallel-rne.mlir:918:13
	add.s r3, r18, r3
	.loc	1 906 11                        # parallel-rne.mlir:906:11
	load.d r[7:8], 0(r11)                   # 8-byte Folded Reload
	.loc	1 918 13                        # parallel-rne.mlir:918:13
	stores.w r9, 0(r3)
	.loc	1 906 11                        # parallel-rne.mlir:906:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_631
.LBB0_635:                              # %scalar.ph380
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_632 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	add.ul r[7:8], r[1:2], r[21:22]
	slli r3, r7, 2
	add.s r7, r16, r3
	loads.w r17, 0(r7)
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	add.s r7, r4, r3
	loads.w r15, 0(r7)
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	and r7, r17, r13
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r7, zero, .LBB0_637
# %bb.636:                              # %scalar.ph380
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r15, 0
	and r7, r17, r5
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	beq r7, r5, .LBB0_634
	j .LBB0_638
.LBB0_637:                              #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r17, r10
	and r7, r17, r5
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	beq r7, r5, .LBB0_634
.LBB0_638:                              # %scalar.ph380
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_634
.LBB0_639:                              # %vector.body382.preheader
                                        #   in Loop: Header=BB0_632 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_642
.LBB0_640:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	loads.w r2, 28(r17)
.LBB0_641:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	.loc	1 906 11 is_stmt 1              # parallel-rne.mlir:906:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[10:11], r12
	.loc	1 918 13                        # parallel-rne.mlir:918:13
	add.s r7, r18, r27
	.loc	1 906 11                        # parallel-rne.mlir:906:11
	seteq.d r8, r[24:25], r[10:11]
	lui r10, 1024
	.loc	1 918 13                        # parallel-rne.mlir:918:13
	stores.w r15, 12(r7)
	stores.w r9, 8(r7)
	stores.w r3, 4(r7)
	stores.w r28, 0(r7)
	stores.w r2, 28(r7)
	stores.w r1, 24(r7)
	stores.w r20, 20(r7)
	stores.w r19, 16(r7)
	.loc	1 906 11                        # parallel-rne.mlir:906:11
	bneq r8, zero, .LBB0_631
.LBB0_642:                              # %vector.body382
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_632 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	add.ul r[1:2], r[24:25], r[21:22]
	slli r27, r1, 2
	add.s r2, r16, r27
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	add.s r17, r4, r27
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	loads.w r1, 0(r2)
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	and r3, r1, r5
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	and r7, r1, r13
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	seteq r3, r3, r5
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	setneq r7, r7, zero
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	and r3, r3, r7
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r3, zero, .LBB0_644
# %bb.643:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r17)
	j .LBB0_645
.LBB0_644:                              #   in Loop: Header=BB0_642 Depth=3
	or r28, r1, r10
.LBB0_645:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	loads.w r1, 4(r2)
	and r3, r1, r5
	and r7, r1, r13
	seteq r3, r3, r5
	setneq r7, r7, zero
	and r3, r3, r7
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r3, zero, .LBB0_647
# %bb.646:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r17)
	j .LBB0_648
.LBB0_647:                              #   in Loop: Header=BB0_642 Depth=3
	or r3, r1, r10
.LBB0_648:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	loads.w r1, 8(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r7, zero, .LBB0_650
# %bb.649:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r17)
	j .LBB0_651
.LBB0_650:                              #   in Loop: Header=BB0_642 Depth=3
	or r9, r1, r10
.LBB0_651:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	loads.w r1, 12(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r7, zero, .LBB0_653
# %bb.652:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r17)
	j .LBB0_654
.LBB0_653:                              #   in Loop: Header=BB0_642 Depth=3
	or r15, r1, r10
.LBB0_654:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	loads.w r1, 16(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r7, zero, .LBB0_656
# %bb.655:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r17)
	j .LBB0_657
.LBB0_656:                              #   in Loop: Header=BB0_642 Depth=3
	or r19, r1, r10
.LBB0_657:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	loads.w r1, 20(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r7, zero, .LBB0_659
# %bb.658:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r17)
	j .LBB0_660
.LBB0_659:                              #   in Loop: Header=BB0_642 Depth=3
	or r20, r1, r10
.LBB0_660:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	loads.w r1, 24(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r7, zero, .LBB0_662
# %bb.661:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 24(r17)
	j .LBB0_663
.LBB0_662:                              #   in Loop: Header=BB0_642 Depth=3
	or r1, r1, r10
.LBB0_663:                              # %vector.body382
                                        #   in Loop: Header=BB0_642 Depth=3
	loads.w r2, 28(r2)
	and r7, r2, r5
	and r8, r2, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	beq r7, zero, .LBB0_640
# %bb.664:                              #   in Loop: Header=BB0_642 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r2, r10
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	j .LBB0_641
.LBB0_665:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 897 7 is_stmt 1               # parallel-rne.mlir:897:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	addli r1, zero, 4
	bneq r7, r1, .LBB0_519
.LBB0_666:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	xfence
	addli r14, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r1
	j .LBB0_668
.LBB0_667:                              # %middle.block375
                                        #   in Loop: Header=BB0_668 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 288
	.loc	1 931 9 is_stmt 1               # parallel-rne.mlir:931:9
	andi r1, r14, 1
	addli r14, zero, 0
	zext_int2long r[21:22], r2
	beq r1, zero, .LBB0_701
.LBB0_668:                              # %vector.memcheck362
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_678 Depth 3
                                        #       Child Loop BB0_671 Depth 3
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	bneq r18, r16, .LBB0_675
# %bb.669:                              # %scalar.ph366.preheader
                                        #   in Loop: Header=BB0_668 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_671
.LBB0_670:                              # %scalar.ph366
                                        #   in Loop: Header=BB0_671 Depth=3
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	addli r11, r30, -4272
	.loc	1 944 13 is_stmt 1              # parallel-rne.mlir:944:13
	add.s r3, r18, r3
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	load.d r[7:8], 0(r11)                   # 8-byte Folded Reload
	.loc	1 944 13                        # parallel-rne.mlir:944:13
	stores.w r9, 0(r3)
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_667
.LBB0_671:                              # %scalar.ph366
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_668 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	add.ul r[7:8], r[1:2], r[21:22]
	slli r3, r7, 2
	add.s r7, r16, r3
	loads.w r17, 0(r7)
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	add.s r7, r4, r3
	loads.w r15, 0(r7)
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	and r7, r17, r13
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r7, zero, .LBB0_673
# %bb.672:                              # %scalar.ph366
                                        #   in Loop: Header=BB0_671 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r15, 0
	and r7, r17, r5
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	beq r7, r5, .LBB0_670
	j .LBB0_674
.LBB0_673:                              #   in Loop: Header=BB0_671 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r17, r10
	and r7, r17, r5
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	beq r7, r5, .LBB0_670
.LBB0_674:                              # %scalar.ph366
                                        #   in Loop: Header=BB0_671 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_670
.LBB0_675:                              # %vector.body368.preheader
                                        #   in Loop: Header=BB0_668 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_678
.LBB0_676:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	loads.w r2, 28(r17)
.LBB0_677:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 932 11 is_stmt 1              # parallel-rne.mlir:932:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[10:11], r12
	.loc	1 944 13                        # parallel-rne.mlir:944:13
	add.s r7, r18, r27
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	seteq.d r8, r[24:25], r[10:11]
	lui r10, 1024
	.loc	1 944 13                        # parallel-rne.mlir:944:13
	stores.w r15, 12(r7)
	stores.w r9, 8(r7)
	stores.w r3, 4(r7)
	stores.w r28, 0(r7)
	stores.w r2, 28(r7)
	stores.w r1, 24(r7)
	stores.w r20, 20(r7)
	stores.w r19, 16(r7)
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	bneq r8, zero, .LBB0_667
.LBB0_678:                              # %vector.body368
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_668 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	add.ul r[1:2], r[24:25], r[21:22]
	slli r27, r1, 2
	add.s r2, r16, r27
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	add.s r17, r4, r27
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	loads.w r1, 0(r2)
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	and r3, r1, r5
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	and r7, r1, r13
	.loc	1 938 19                        # parallel-rne.mlir:938:19
	seteq r3, r3, r5
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	setneq r7, r7, zero
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	and r3, r3, r7
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r3, zero, .LBB0_680
# %bb.679:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r17)
	j .LBB0_681
.LBB0_680:                              #   in Loop: Header=BB0_678 Depth=3
	or r28, r1, r10
.LBB0_681:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	loads.w r1, 4(r2)
	and r3, r1, r5
	and r7, r1, r13
	seteq r3, r3, r5
	setneq r7, r7, zero
	and r3, r3, r7
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r3, zero, .LBB0_683
# %bb.682:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r17)
	j .LBB0_684
.LBB0_683:                              #   in Loop: Header=BB0_678 Depth=3
	or r3, r1, r10
.LBB0_684:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	loads.w r1, 8(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r7, zero, .LBB0_686
# %bb.685:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r17)
	j .LBB0_687
.LBB0_686:                              #   in Loop: Header=BB0_678 Depth=3
	or r9, r1, r10
.LBB0_687:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	loads.w r1, 12(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r7, zero, .LBB0_689
# %bb.688:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r17)
	j .LBB0_690
.LBB0_689:                              #   in Loop: Header=BB0_678 Depth=3
	or r15, r1, r10
.LBB0_690:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	loads.w r1, 16(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r7, zero, .LBB0_692
# %bb.691:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r17)
	j .LBB0_693
.LBB0_692:                              #   in Loop: Header=BB0_678 Depth=3
	or r19, r1, r10
.LBB0_693:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	loads.w r1, 20(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r7, zero, .LBB0_695
# %bb.694:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r17)
	j .LBB0_696
.LBB0_695:                              #   in Loop: Header=BB0_678 Depth=3
	or r20, r1, r10
.LBB0_696:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	loads.w r1, 24(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	bneq r7, zero, .LBB0_698
# %bb.697:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 24(r17)
	j .LBB0_699
.LBB0_698:                              #   in Loop: Header=BB0_678 Depth=3
	or r1, r1, r10
.LBB0_699:                              # %vector.body368
                                        #   in Loop: Header=BB0_678 Depth=3
	loads.w r2, 28(r2)
	and r7, r2, r5
	and r8, r2, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	beq r7, zero, .LBB0_676
# %bb.700:                              #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r2, r10
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	j .LBB0_677
.LBB0_701:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 923 7 is_stmt 1               # parallel-rne.mlir:923:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 949 7                         # parallel-rne.mlir:949:7
	addli r1, zero, 5
	bneq r7, r1, .LBB0_520
.LBB0_702:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 320
	.loc	1 949 7                         # parallel-rne.mlir:949:7
	xfence
	addli r14, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r1
	j .LBB0_704
.LBB0_703:                              # %middle.block361
                                        #   in Loop: Header=BB0_704 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 352
	.loc	1 957 9 is_stmt 1               # parallel-rne.mlir:957:9
	andi r1, r14, 1
	addli r14, zero, 0
	zext_int2long r[21:22], r2
	beq r1, zero, .LBB0_737
.LBB0_704:                              # %vector.memcheck348
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_714 Depth 3
                                        #       Child Loop BB0_707 Depth 3
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	bneq r18, r16, .LBB0_711
# %bb.705:                              # %scalar.ph352.preheader
                                        #   in Loop: Header=BB0_704 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_707
.LBB0_706:                              # %scalar.ph352
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	addli r11, r30, -4272
	.loc	1 970 13 is_stmt 1              # parallel-rne.mlir:970:13
	add.s r3, r18, r3
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	load.d r[7:8], 0(r11)                   # 8-byte Folded Reload
	.loc	1 970 13                        # parallel-rne.mlir:970:13
	stores.w r9, 0(r3)
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_703
.LBB0_707:                              # %scalar.ph352
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_704 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	add.ul r[7:8], r[1:2], r[21:22]
	slli r3, r7, 2
	add.s r7, r16, r3
	loads.w r17, 0(r7)
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	add.s r7, r4, r3
	loads.w r15, 0(r7)
	.loc	1 965 19                        # parallel-rne.mlir:965:19
	and r7, r17, r13
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r7, zero, .LBB0_709
# %bb.708:                              # %scalar.ph352
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r15, 0
	and r7, r17, r5
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	beq r7, r5, .LBB0_706
	j .LBB0_710
.LBB0_709:                              #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r17, r10
	and r7, r17, r5
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	beq r7, r5, .LBB0_706
.LBB0_710:                              # %scalar.ph352
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_706
.LBB0_711:                              # %vector.body354.preheader
                                        #   in Loop: Header=BB0_704 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_714
.LBB0_712:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	loads.w r2, 28(r17)
.LBB0_713:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	.loc	1 958 11 is_stmt 1              # parallel-rne.mlir:958:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[10:11], r12
	.loc	1 970 13                        # parallel-rne.mlir:970:13
	add.s r7, r18, r27
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	seteq.d r8, r[24:25], r[10:11]
	lui r10, 1024
	.loc	1 970 13                        # parallel-rne.mlir:970:13
	stores.w r15, 12(r7)
	stores.w r9, 8(r7)
	stores.w r3, 4(r7)
	stores.w r28, 0(r7)
	stores.w r2, 28(r7)
	stores.w r1, 24(r7)
	stores.w r20, 20(r7)
	stores.w r19, 16(r7)
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	bneq r8, zero, .LBB0_703
.LBB0_714:                              # %vector.body354
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_704 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	add.ul r[1:2], r[24:25], r[21:22]
	slli r27, r1, 2
	add.s r2, r16, r27
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	add.s r17, r4, r27
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	loads.w r1, 0(r2)
	.loc	1 963 19                        # parallel-rne.mlir:963:19
	and r3, r1, r5
	.loc	1 965 19                        # parallel-rne.mlir:965:19
	and r7, r1, r13
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	seteq r3, r3, r5
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	setneq r7, r7, zero
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	and r3, r3, r7
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r3, zero, .LBB0_716
# %bb.715:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r17)
	j .LBB0_717
.LBB0_716:                              #   in Loop: Header=BB0_714 Depth=3
	or r28, r1, r10
.LBB0_717:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	loads.w r1, 4(r2)
	and r3, r1, r5
	and r7, r1, r13
	seteq r3, r3, r5
	setneq r7, r7, zero
	and r3, r3, r7
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r3, zero, .LBB0_719
# %bb.718:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r17)
	j .LBB0_720
.LBB0_719:                              #   in Loop: Header=BB0_714 Depth=3
	or r3, r1, r10
.LBB0_720:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	loads.w r1, 8(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r7, zero, .LBB0_722
# %bb.721:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r17)
	j .LBB0_723
.LBB0_722:                              #   in Loop: Header=BB0_714 Depth=3
	or r9, r1, r10
.LBB0_723:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	loads.w r1, 12(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r7, zero, .LBB0_725
# %bb.724:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r17)
	j .LBB0_726
.LBB0_725:                              #   in Loop: Header=BB0_714 Depth=3
	or r15, r1, r10
.LBB0_726:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	loads.w r1, 16(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r7, zero, .LBB0_728
# %bb.727:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r17)
	j .LBB0_729
.LBB0_728:                              #   in Loop: Header=BB0_714 Depth=3
	or r19, r1, r10
.LBB0_729:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	loads.w r1, 20(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r7, zero, .LBB0_731
# %bb.730:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r17)
	j .LBB0_732
.LBB0_731:                              #   in Loop: Header=BB0_714 Depth=3
	or r20, r1, r10
.LBB0_732:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	loads.w r1, 24(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	bneq r7, zero, .LBB0_734
# %bb.733:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 24(r17)
	j .LBB0_735
.LBB0_734:                              #   in Loop: Header=BB0_714 Depth=3
	or r1, r1, r10
.LBB0_735:                              # %vector.body354
                                        #   in Loop: Header=BB0_714 Depth=3
	loads.w r2, 28(r2)
	and r7, r2, r5
	and r8, r2, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	beq r7, zero, .LBB0_712
# %bb.736:                              #   in Loop: Header=BB0_714 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r2, r10
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	j .LBB0_713
.LBB0_737:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 949 7 is_stmt 1               # parallel-rne.mlir:949:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 975 7                         # parallel-rne.mlir:975:7
	addli r1, zero, 6
	bneq r7, r1, .LBB0_521
.LBB0_738:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 384
	.loc	1 975 7                         # parallel-rne.mlir:975:7
	xfence
	addli r14, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r1
	j .LBB0_740
.LBB0_739:                              # %middle.block347
                                        #   in Loop: Header=BB0_740 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 416
	.loc	1 983 9 is_stmt 1               # parallel-rne.mlir:983:9
	andi r1, r14, 1
	addli r14, zero, 0
	zext_int2long r[21:22], r2
	beq r1, zero, .LBB0_773
.LBB0_740:                              # %vector.memcheck334
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_750 Depth 3
                                        #       Child Loop BB0_743 Depth 3
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	bneq r18, r16, .LBB0_747
# %bb.741:                              # %scalar.ph338.preheader
                                        #   in Loop: Header=BB0_740 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_743
.LBB0_742:                              # %scalar.ph338
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	addli r11, r30, -4272
	.loc	1 996 13 is_stmt 1              # parallel-rne.mlir:996:13
	add.s r3, r18, r3
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	load.d r[7:8], 0(r11)                   # 8-byte Folded Reload
	.loc	1 996 13                        # parallel-rne.mlir:996:13
	stores.w r9, 0(r3)
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_739
.LBB0_743:                              # %scalar.ph338
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_740 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	add.ul r[7:8], r[1:2], r[21:22]
	slli r3, r7, 2
	add.s r7, r16, r3
	loads.w r17, 0(r7)
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	add.s r7, r4, r3
	loads.w r15, 0(r7)
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	and r7, r17, r13
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r7, zero, .LBB0_745
# %bb.744:                              # %scalar.ph338
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r15, 0
	and r7, r17, r5
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	beq r7, r5, .LBB0_742
	j .LBB0_746
.LBB0_745:                              #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r17, r10
	and r7, r17, r5
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	beq r7, r5, .LBB0_742
.LBB0_746:                              # %scalar.ph338
                                        #   in Loop: Header=BB0_743 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_742
.LBB0_747:                              # %vector.body340.preheader
                                        #   in Loop: Header=BB0_740 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_750
.LBB0_748:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r2, 28(r17)
.LBB0_749:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 984 11 is_stmt 1              # parallel-rne.mlir:984:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[10:11], r12
	.loc	1 996 13                        # parallel-rne.mlir:996:13
	add.s r7, r18, r27
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	seteq.d r8, r[24:25], r[10:11]
	lui r10, 1024
	.loc	1 996 13                        # parallel-rne.mlir:996:13
	stores.w r15, 12(r7)
	stores.w r9, 8(r7)
	stores.w r3, 4(r7)
	stores.w r28, 0(r7)
	stores.w r2, 28(r7)
	stores.w r1, 24(r7)
	stores.w r20, 20(r7)
	stores.w r19, 16(r7)
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	bneq r8, zero, .LBB0_739
.LBB0_750:                              # %vector.body340
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_740 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	add.ul r[1:2], r[24:25], r[21:22]
	slli r27, r1, 2
	add.s r2, r16, r27
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	add.s r17, r4, r27
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	loads.w r1, 0(r2)
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	and r3, r1, r5
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	and r7, r1, r13
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	seteq r3, r3, r5
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	setneq r7, r7, zero
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	and r3, r3, r7
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r3, zero, .LBB0_752
# %bb.751:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r17)
	j .LBB0_753
.LBB0_752:                              #   in Loop: Header=BB0_750 Depth=3
	or r28, r1, r10
.LBB0_753:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r1, 4(r2)
	and r3, r1, r5
	and r7, r1, r13
	seteq r3, r3, r5
	setneq r7, r7, zero
	and r3, r3, r7
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r3, zero, .LBB0_755
# %bb.754:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r17)
	j .LBB0_756
.LBB0_755:                              #   in Loop: Header=BB0_750 Depth=3
	or r3, r1, r10
.LBB0_756:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r1, 8(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r7, zero, .LBB0_758
# %bb.757:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r17)
	j .LBB0_759
.LBB0_758:                              #   in Loop: Header=BB0_750 Depth=3
	or r9, r1, r10
.LBB0_759:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r1, 12(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r7, zero, .LBB0_761
# %bb.760:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r17)
	j .LBB0_762
.LBB0_761:                              #   in Loop: Header=BB0_750 Depth=3
	or r15, r1, r10
.LBB0_762:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r1, 16(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r7, zero, .LBB0_764
# %bb.763:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r17)
	j .LBB0_765
.LBB0_764:                              #   in Loop: Header=BB0_750 Depth=3
	or r19, r1, r10
.LBB0_765:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r1, 20(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r7, zero, .LBB0_767
# %bb.766:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r17)
	j .LBB0_768
.LBB0_767:                              #   in Loop: Header=BB0_750 Depth=3
	or r20, r1, r10
.LBB0_768:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r1, 24(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	bneq r7, zero, .LBB0_770
# %bb.769:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 24(r17)
	j .LBB0_771
.LBB0_770:                              #   in Loop: Header=BB0_750 Depth=3
	or r1, r1, r10
.LBB0_771:                              # %vector.body340
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r2, 28(r2)
	and r7, r2, r5
	and r8, r2, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	beq r7, zero, .LBB0_748
# %bb.772:                              #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r2, r10
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	j .LBB0_749
.LBB0_773:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 975 7 is_stmt 1               # parallel-rne.mlir:975:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	addli r1, zero, 7
	bneq r7, r1, .LBB0_810
.LBB0_774:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 448
	.loc	1 1001 7                        # parallel-rne.mlir:1001:7
	xfence
	addli r14, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[21:22], r1
	j .LBB0_776
.LBB0_775:                              # %middle.block333
                                        #   in Loop: Header=BB0_776 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 480
	.loc	1 1009 9 is_stmt 1              # parallel-rne.mlir:1009:9
	andi r1, r14, 1
	addli r14, zero, 0
	zext_int2long r[21:22], r2
	beq r1, zero, .LBB0_809
.LBB0_776:                              # %vector.memcheck320
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_786 Depth 3
                                        #       Child Loop BB0_779 Depth 3
	.loc	1 1010 11                       # parallel-rne.mlir:1010:11
	bneq r18, r16, .LBB0_783
# %bb.777:                              # %scalar.ph324.preheader
                                        #   in Loop: Header=BB0_776 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_779
.LBB0_778:                              # %scalar.ph324
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 1010 11                       # parallel-rne.mlir:1010:11
	addli r11, r30, -4272
	.loc	1 1022 13 is_stmt 1             # parallel-rne.mlir:1022:13
	add.s r3, r18, r3
	.loc	1 1010 11                       # parallel-rne.mlir:1010:11
	load.d r[7:8], 0(r11)                   # 8-byte Folded Reload
	.loc	1 1022 13                       # parallel-rne.mlir:1022:13
	stores.w r9, 0(r3)
	.loc	1 1010 11                       # parallel-rne.mlir:1010:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_775
.LBB0_779:                              # %scalar.ph324
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_776 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1011 19                       # parallel-rne.mlir:1011:19
	add.ul r[7:8], r[1:2], r[21:22]
	slli r3, r7, 2
	add.s r7, r16, r3
	loads.w r17, 0(r7)
	.loc	1 1012 19                       # parallel-rne.mlir:1012:19
	add.s r7, r4, r3
	loads.w r15, 0(r7)
	.loc	1 1017 19                       # parallel-rne.mlir:1017:19
	and r7, r17, r13
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r7, zero, .LBB0_781
# %bb.780:                              # %scalar.ph324
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r15, 0
	and r7, r17, r5
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	beq r7, r5, .LBB0_778
	j .LBB0_782
.LBB0_781:                              #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r9, r17, r10
	and r7, r17, r5
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	beq r7, r5, .LBB0_778
.LBB0_782:                              # %scalar.ph324
                                        #   in Loop: Header=BB0_779 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_778
.LBB0_783:                              # %vector.body326.preheader
                                        #   in Loop: Header=BB0_776 Depth=2
	zext_int2long r[24:25], zero
	j .LBB0_786
.LBB0_784:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r2, 28(r17)
.LBB0_785:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 1010 11 is_stmt 1             # parallel-rne.mlir:1010:11
	addli.d r[24:25], r[24:25], 8
	zext_int2long r[10:11], r12
	.loc	1 1022 13                       # parallel-rne.mlir:1022:13
	add.s r7, r18, r27
	.loc	1 1010 11                       # parallel-rne.mlir:1010:11
	seteq.d r8, r[24:25], r[10:11]
	lui r10, 1024
	.loc	1 1022 13                       # parallel-rne.mlir:1022:13
	stores.w r15, 12(r7)
	stores.w r9, 8(r7)
	stores.w r3, 4(r7)
	stores.w r28, 0(r7)
	stores.w r2, 28(r7)
	stores.w r1, 24(r7)
	stores.w r20, 20(r7)
	stores.w r19, 16(r7)
	.loc	1 1010 11                       # parallel-rne.mlir:1010:11
	bneq r8, zero, .LBB0_775
.LBB0_786:                              # %vector.body326
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_776 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1011 19                       # parallel-rne.mlir:1011:19
	add.ul r[1:2], r[24:25], r[21:22]
	slli r27, r1, 2
	add.s r2, r16, r27
	.loc	1 1012 19                       # parallel-rne.mlir:1012:19
	add.s r17, r4, r27
	.loc	1 1011 19                       # parallel-rne.mlir:1011:19
	loads.w r1, 0(r2)
	.loc	1 1015 19                       # parallel-rne.mlir:1015:19
	and r3, r1, r5
	.loc	1 1017 19                       # parallel-rne.mlir:1017:19
	and r7, r1, r13
	.loc	1 1016 19                       # parallel-rne.mlir:1016:19
	seteq r3, r3, r5
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	setneq r7, r7, zero
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	and r3, r3, r7
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r3, zero, .LBB0_788
# %bb.787:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r17)
	j .LBB0_789
.LBB0_788:                              #   in Loop: Header=BB0_786 Depth=3
	or r28, r1, r10
.LBB0_789:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r1, 4(r2)
	and r3, r1, r5
	and r7, r1, r13
	seteq r3, r3, r5
	setneq r7, r7, zero
	and r3, r3, r7
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r3, zero, .LBB0_791
# %bb.790:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r17)
	j .LBB0_792
.LBB0_791:                              #   in Loop: Header=BB0_786 Depth=3
	or r3, r1, r10
.LBB0_792:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r1, 8(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r7, zero, .LBB0_794
# %bb.793:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r17)
	j .LBB0_795
.LBB0_794:                              #   in Loop: Header=BB0_786 Depth=3
	or r9, r1, r10
.LBB0_795:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r1, 12(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r7, zero, .LBB0_797
# %bb.796:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r17)
	j .LBB0_798
.LBB0_797:                              #   in Loop: Header=BB0_786 Depth=3
	or r15, r1, r10
.LBB0_798:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r1, 16(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r7, zero, .LBB0_800
# %bb.799:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 16(r17)
	j .LBB0_801
.LBB0_800:                              #   in Loop: Header=BB0_786 Depth=3
	or r19, r1, r10
.LBB0_801:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r1, 20(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r7, zero, .LBB0_803
# %bb.802:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r17)
	j .LBB0_804
.LBB0_803:                              #   in Loop: Header=BB0_786 Depth=3
	or r20, r1, r10
.LBB0_804:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r1, 24(r2)
	and r7, r1, r5
	and r8, r1, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	bneq r7, zero, .LBB0_806
# %bb.805:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 24(r17)
	j .LBB0_807
.LBB0_806:                              #   in Loop: Header=BB0_786 Depth=3
	or r1, r1, r10
.LBB0_807:                              # %vector.body326
                                        #   in Loop: Header=BB0_786 Depth=3
	loads.w r2, 28(r2)
	and r7, r2, r5
	and r8, r2, r13
	seteq r7, r7, r5
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	beq r7, zero, .LBB0_784
# %bb.808:                              #   in Loop: Header=BB0_786 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r2, r10
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	j .LBB0_785
.LBB0_809:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1001 7 is_stmt 1              # parallel-rne.mlir:1001:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
.LBB0_810:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	addli r1, zero, 3
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	sync_core
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	bneq r7, r1, .LBB0_812
# %bb.811:                              # %.critedge26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 16
	.loc	1 1029 7 is_stmt 1              # parallel-rne.mlir:1029:7
	addli r1, zero, 35
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	addli r2, zero, 5
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	xsignal r3, 0
	.loc	1 1029 7                        # parallel-rne.mlir:1029:7
	xsignal r1, 0
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	addli r1, zero, 36
	xsignal r1, 0
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	loadli.w r1,  -24(r30)
	mod.s r2, r1, r2
	addli r1, r1, 1
	storeli.w r1, -24(r30)
	.loc	1 1036 7                        # parallel-rne.mlir:1036:7
	xwait r3, 0
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	slli r1, r2, 11
	.loc	1 1037 7                        # parallel-rne.mlir:1037:7
	addli r2, zero, 25
	xwait r2, 0
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	loadli.w r2,  -4404(r30)                # 4-byte Folded Reload
	add.s r16, r1, r2
	.loc	1 1038 7                        # parallel-rne.mlir:1038:7
	addli r1, zero, 37
	xwait r1, 0
	.loc	1 1039 7                        # parallel-rne.mlir:1039:7
	addli r1, zero, 39
	xwait r1, 0
	j .LBB0_815
.LBB0_812:                              # %.critedge24
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 5
	.loc	1 1031 7 is_stmt 1              # parallel-rne.mlir:1031:7
	bneq r7, r3, .LBB0_814
# %bb.813:                              # %.thread90
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 36
	addli r8, zero, 2
	addli r9, zero, 511
	xwait r1, 0
	lock zero, r8
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, r1, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r17, zero, zero, 3
	ew_cfg r17, r17, zero, 19
	dsmadd r18, r18, r18, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	loadli.w r1,  -24(r30)
	addli r2, r1, 1
	mod.s r1, r1, r3
	storeli.w r2, -24(r30)
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	addli r2, zero, 24
	xwait r2, 0
	addli r2, zero, 40
	xwait r2, 0
	lock zero, r8
	lui r2, 258048
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	slli r1, r1, 11
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	loadli.w r2,  -4404(r30)                # 4-byte Folded Reload
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	ew_cfg zero, r9, zero, 2
	ew_cfg r17, zero, zero, 3
	ew_cfg r17, r17, r17, 19
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	add.s r16, r1, r2
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	addli r1, zero, 23
	dsmul r16, r23, r18, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	xsignal r1, 0
	addli r1, zero, 37
	xsignal r1, 0
	addli r1, zero, 39
	xsignal r1, 0
	.loc	1 1036 7                        # parallel-rne.mlir:1036:7
	j .LBB0_815
.LBB0_814:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1033 13                       # parallel-rne.mlir:1033:13
	loadli.w r1,  -24(r30)
	mod.s r2, r1, r3
	loadli.w r3,  -4404(r30)                # 4-byte Folded Reload
	addli r1, r1, 1
	storeli.w r1, -24(r30)
	slli r2, r2, 11
	add.s r16, r2, r3
.LBB0_815:                              # %.critedge28
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	addli r1, zero, 255
	.loc	1 1041 7                        # parallel-rne.mlir:1041:7
	xfence
	.loc	1 1042 7                        # parallel-rne.mlir:1042:7
	mfence { lm, sm, gm }
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	csr_set csr5, r1
	sub.s r1, r4, r25
	storeli.w r1, -4312(r30)                # 4-byte Folded Spill
	sub.s r1, r4, r16
	storeli.w r1, -4316(r30)                # 4-byte Folded Spill
	sync_core
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	beq r7, zero, .LBB0_822
# %bb.816:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1080 7                        # parallel-rne.mlir:1080:7
	beq r7, r17, .LBB0_850
.LBB0_817:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	addli r1, zero, 2
	beq r7, r1, .LBB0_878
.LBB0_818:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1152 7                        # parallel-rne.mlir:1152:7
	addli r1, zero, 3
	beq r7, r1, .LBB0_906
.LBB0_819:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1188 7                        # parallel-rne.mlir:1188:7
	addli r1, zero, 4
	beq r7, r1, .LBB0_934
.LBB0_820:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1224 7                        # parallel-rne.mlir:1224:7
	addli r1, zero, 5
	beq r7, r1, .LBB0_962
.LBB0_821:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 6
	.loc	1 1260 7 is_stmt 1              # parallel-rne.mlir:1260:7
	beq r7, r1, .LBB0_990
	j .LBB0_1018
.LBB0_822:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	.loc	1 1044 7 is_stmt 1              # parallel-rne.mlir:1044:7
	xfence
	addli r22, zero, 1
	zext_int2long r[23:24], zero
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r21, r1, r2
	j .LBB0_824
.LBB0_823:                              # %middle.block319
                                        #   in Loop: Header=BB0_824 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, r30, -4280
	.loc	1 1052 9 is_stmt 1              # parallel-rne.mlir:1052:9
	andi r1, r22, 1
	addli r22, zero, 0
	load.d r[23:24], 0(r2)                  # 8-byte Folded Reload
	beq r1, zero, .LBB0_849
.LBB0_824:                              # %vector.memcheck305
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_841 Depth 3
                                        #       Child Loop BB0_827 Depth 3
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	beq r21, zero, .LBB0_839
# %bb.825:                              # %scalar.ph311.preheader
                                        #   in Loop: Header=BB0_824 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_827
.LBB0_826:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	addli r10, r30, -4272
	.loc	1 1075 13 is_stmt 1             # parallel-rne.mlir:1075:13
	add.s r3, r4, r3
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1075 13                       # parallel-rne.mlir:1075:13
	stores.w r9, 0(r3)
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_823
.LBB0_827:                              # %scalar.ph311
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_824 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.ul r[7:8], r[1:2], r[23:24]
	lui r9, 523264
	lui r19, 523264
	slli r3, r7, 2
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.s r7, r18, r3
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r8, r16, r3
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	loads.w r7, 0(r7)
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	loads.w r20, 0(r8)
	.loc	1 1059 19                       # parallel-rne.mlir:1059:19
	and r15, r7, r26
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	beq r15, r5, .LBB0_829
# %bb.828:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_829:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	add.s r7, r25, r3
	loads.w r7, 0(r7)
	and r17, r7, r26
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r17, zero, .LBB0_837
# %bb.830:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r15, zero, .LBB0_838
.LBB0_831:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	beq r17, r5, .LBB0_833
.LBB0_832:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_833:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	setlt.u r7, r5, r15
	lui r15, 523264
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r7, zero, .LBB0_835
# %bb.834:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_835:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	setlt.u r7, r5, r17
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r7, zero, .LBB0_826
# %bb.836:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_826
.LBB0_837:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	beq r15, zero, .LBB0_831
.LBB0_838:                              # %scalar.ph311
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r17, r5, .LBB0_832
	j .LBB0_833
.LBB0_839:                              # %vector.body313.preheader
                                        #   in Loop: Header=BB0_824 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_841
.LBB0_840:                              # %vector.body313
                                        #   in Loop: Header=BB0_841 Depth=3
	.loc	1 1053 11 is_stmt 1             # parallel-rne.mlir:1053:11
	addli r9, r30, -4280
	addli.d r[27:28], r[27:28], 4
	.loc	1 1075 13                       # parallel-rne.mlir:1075:13
	add.s r1, r4, r1
	addli r12, zero, 32
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	load.d r[7:8], 0(r9)                    # 8-byte Folded Reload
	.loc	1 1075 13                       # parallel-rne.mlir:1075:13
	stores.w r3, 12(r1)
	stores.w r20, 8(r1)
	stores.w r19, 4(r1)
	stores.w r2, 0(r1)
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	seteq.d r7, r[27:28], r[7:8]
	bneq r7, zero, .LBB0_823
.LBB0_841:                              # %vector.body313
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_824 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r1, r1, 2
	add.s r9, r25, r1
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.s r15, r18, r1
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r17, r16, r1
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	loads.w r2, 0(r9)
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	loads.w r3, 0(r15)
	.loc	1 1061 19                       # parallel-rne.mlir:1061:19
	and r2, r2, r26
	.loc	1 1059 19                       # parallel-rne.mlir:1059:19
	and r3, r3, r26
	.loc	1 1062 19                       # parallel-rne.mlir:1062:19
	seteq r7, r2, r5
	.loc	1 1066 19                       # parallel-rne.mlir:1066:19
	seteq r11, r2, zero
	.loc	1 1063 19                       # parallel-rne.mlir:1063:19
	seteq r8, r3, zero
	.loc	1 1065 19                       # parallel-rne.mlir:1065:19
	seteq r10, r3, r5
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	max.u r2, r2, r3
	setlt.u r2, r5, r2
	.loc	1 1064 19                       # parallel-rne.mlir:1064:19
	and r3, r7, r8
	.loc	1 1067 19                       # parallel-rne.mlir:1067:19
	and r7, r11, r10
	.loc	1 1068 19                       # parallel-rne.mlir:1068:19
	or r3, r3, r7
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	or r7, r2, r3
	lui r3, 523264
	lui r2, 523264
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r7, zero, .LBB0_843
# %bb.842:                              # %vector.body313
                                        #   in Loop: Header=BB0_841 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r17)
.LBB0_843:                              # %vector.body313
                                        #   in Loop: Header=BB0_841 Depth=3
	loads.w r7, 4(r9)
	loads.w r8, 4(r15)
	lui r19, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r7, zero, .LBB0_845
# %bb.844:                              # %vector.body313
                                        #   in Loop: Header=BB0_841 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r17)
.LBB0_845:                              # %vector.body313
                                        #   in Loop: Header=BB0_841 Depth=3
	loads.w r7, 8(r9)
	loads.w r8, 8(r15)
	lui r20, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r7, zero, .LBB0_847
# %bb.846:                              # %vector.body313
                                        #   in Loop: Header=BB0_841 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 8(r17)
.LBB0_847:                              # %vector.body313
                                        #   in Loop: Header=BB0_841 Depth=3
	loads.w r7, 12(r9)
	loads.w r8, 12(r15)
	and r7, r7, r26
	and r8, r8, r26
	seteq r9, r7, r5
	seteq r12, r7, zero
	seteq r10, r8, zero
	seteq r11, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r9, r10
	and r9, r12, r11
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	bneq r7, zero, .LBB0_840
# %bb.848:                              # %vector.body313
                                        #   in Loop: Header=BB0_841 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 12(r17)
	j .LBB0_840
.LBB0_849:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	mfence { sm }
	.loc	1 1080 7                        # parallel-rne.mlir:1080:7
	bneq r7, r17, .LBB0_817
.LBB0_850:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	.loc	1 1080 7                        # parallel-rne.mlir:1080:7
	xfence
	addli r24, zero, 1
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r21, r1, r2
	addli r1, zero, 64
	zext_int2long r[22:23], r1
	j .LBB0_852
.LBB0_851:                              # %middle.block304
                                        #   in Loop: Header=BB0_852 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, r30, -4296
	.loc	1 1088 9 is_stmt 1              # parallel-rne.mlir:1088:9
	andi r1, r24, 1
	addli r24, zero, 0
	load.d r[22:23], 0(r2)                  # 8-byte Folded Reload
	beq r1, zero, .LBB0_877
.LBB0_852:                              # %vector.memcheck290
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_869 Depth 3
                                        #       Child Loop BB0_855 Depth 3
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	beq r21, zero, .LBB0_867
# %bb.853:                              # %scalar.ph296.preheader
                                        #   in Loop: Header=BB0_852 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_855
.LBB0_854:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	addli r10, r30, -4272
	.loc	1 1111 13 is_stmt 1             # parallel-rne.mlir:1111:13
	add.s r3, r4, r3
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	stores.w r9, 0(r3)
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_851
.LBB0_855:                              # %scalar.ph296
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_852 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.ul r[7:8], r[1:2], r[22:23]
	lui r9, 523264
	lui r19, 523264
	slli r3, r7, 2
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.s r7, r18, r3
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.s r8, r16, r3
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	loads.w r7, 0(r7)
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	loads.w r20, 0(r8)
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	and r15, r7, r26
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	beq r15, r5, .LBB0_857
# %bb.856:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_857:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	add.s r7, r25, r3
	loads.w r7, 0(r7)
	and r17, r7, r26
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r17, zero, .LBB0_865
# %bb.858:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r15, zero, .LBB0_866
.LBB0_859:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	beq r17, r5, .LBB0_861
.LBB0_860:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_861:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	setlt.u r7, r5, r15
	lui r15, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r7, zero, .LBB0_863
# %bb.862:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_863:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	setlt.u r7, r5, r17
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r7, zero, .LBB0_854
# %bb.864:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_854
.LBB0_865:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	beq r15, zero, .LBB0_859
.LBB0_866:                              # %scalar.ph296
                                        #   in Loop: Header=BB0_855 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r17, r5, .LBB0_860
	j .LBB0_861
.LBB0_867:                              # %vector.body298.preheader
                                        #   in Loop: Header=BB0_852 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_869
.LBB0_868:                              # %vector.body298
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 1089 11 is_stmt 1             # parallel-rne.mlir:1089:11
	addli r9, r30, -4280
	addli.d r[27:28], r[27:28], 4
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	add.s r1, r4, r1
	addli r12, zero, 32
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	load.d r[7:8], 0(r9)                    # 8-byte Folded Reload
	.loc	1 1111 13                       # parallel-rne.mlir:1111:13
	stores.w r3, 12(r1)
	stores.w r20, 8(r1)
	stores.w r19, 4(r1)
	stores.w r2, 0(r1)
	.loc	1 1089 11                       # parallel-rne.mlir:1089:11
	seteq.d r7, r[27:28], r[7:8]
	bneq r7, zero, .LBB0_851
.LBB0_869:                              # %vector.body298
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_852 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.ul r[1:2], r[27:28], r[22:23]
	slli r1, r1, 2
	add.s r9, r25, r1
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.s r15, r18, r1
	.loc	1 1092 19                       # parallel-rne.mlir:1092:19
	add.s r17, r16, r1
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	loads.w r2, 0(r9)
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	loads.w r3, 0(r15)
	.loc	1 1097 19                       # parallel-rne.mlir:1097:19
	and r2, r2, r26
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	and r3, r3, r26
	.loc	1 1098 19                       # parallel-rne.mlir:1098:19
	seteq r7, r2, r5
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	seteq r11, r2, zero
	.loc	1 1099 19                       # parallel-rne.mlir:1099:19
	seteq r8, r3, zero
	.loc	1 1101 19                       # parallel-rne.mlir:1101:19
	seteq r10, r3, r5
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	max.u r2, r2, r3
	setlt.u r2, r5, r2
	.loc	1 1100 19                       # parallel-rne.mlir:1100:19
	and r3, r7, r8
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	and r7, r11, r10
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	or r3, r3, r7
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	or r7, r2, r3
	lui r3, 523264
	lui r2, 523264
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r7, zero, .LBB0_871
# %bb.870:                              # %vector.body298
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r17)
.LBB0_871:                              # %vector.body298
                                        #   in Loop: Header=BB0_869 Depth=3
	loads.w r7, 4(r9)
	loads.w r8, 4(r15)
	lui r19, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r7, zero, .LBB0_873
# %bb.872:                              # %vector.body298
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r17)
.LBB0_873:                              # %vector.body298
                                        #   in Loop: Header=BB0_869 Depth=3
	loads.w r7, 8(r9)
	loads.w r8, 8(r15)
	lui r20, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r7, zero, .LBB0_875
# %bb.874:                              # %vector.body298
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 8(r17)
.LBB0_875:                              # %vector.body298
                                        #   in Loop: Header=BB0_869 Depth=3
	loads.w r7, 12(r9)
	loads.w r8, 12(r15)
	and r7, r7, r26
	and r8, r8, r26
	seteq r9, r7, r5
	seteq r12, r7, zero
	seteq r10, r8, zero
	seteq r11, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r9, r10
	and r9, r12, r11
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	bneq r7, zero, .LBB0_868
# %bb.876:                              # %vector.body298
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 12(r17)
	j .LBB0_868
.LBB0_877:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	.loc	1 1080 7                        # parallel-rne.mlir:1080:7
	mfence { sm }
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	addli r1, zero, 2
	bneq r7, r1, .LBB0_818
.LBB0_878:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r24, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -4296(r30)                # 4-byte Folded Spill
	addli r1, zero, 128
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	xfence
	zext_int2long r[27:28], r1
	addli r1, zero, 160
	mfence { lm, sm, gm }
	zext_int2long r[22:23], r1
	j .LBB0_880
.LBB0_879:                              # %middle.block289
                                        #   in Loop: Header=BB0_880 Depth=2
	.loc	1 1124 9 is_stmt 1              # parallel-rne.mlir:1124:9
	andi r1, r24, 1
	addli.d r[27:28], r[22:23], 0
	addli r24, zero, 0
	beq r1, zero, .LBB0_905
.LBB0_880:                              # %vector.memcheck275
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_897 Depth 3
                                        #       Child Loop BB0_883 Depth 3
	.loc	1 1125 11                       # parallel-rne.mlir:1125:11
	loadli.w r1,  -4296(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_895
# %bb.881:                              # %scalar.ph281.preheader
                                        #   in Loop: Header=BB0_880 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_883
.LBB0_882:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 1125 11                       # parallel-rne.mlir:1125:11
	addli r10, r30, -4272
	.loc	1 1147 13 is_stmt 1             # parallel-rne.mlir:1147:13
	add.s r3, r4, r3
	.loc	1 1125 11                       # parallel-rne.mlir:1125:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1147 13                       # parallel-rne.mlir:1147:13
	stores.w r9, 0(r3)
	.loc	1 1125 11                       # parallel-rne.mlir:1125:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_879
.LBB0_883:                              # %scalar.ph281
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_880 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.ul r[7:8], r[1:2], r[27:28]
	lui r9, 523264
	lui r19, 523264
	slli r3, r7, 2
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.s r7, r18, r3
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	add.s r8, r16, r3
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	loads.w r7, 0(r7)
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	loads.w r20, 0(r8)
	.loc	1 1131 19                       # parallel-rne.mlir:1131:19
	and r15, r7, r26
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	beq r15, r5, .LBB0_885
# %bb.884:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_885:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	add.s r7, r25, r3
	loads.w r7, 0(r7)
	and r17, r7, r26
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r17, zero, .LBB0_893
# %bb.886:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r15, zero, .LBB0_894
.LBB0_887:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	beq r17, r5, .LBB0_889
.LBB0_888:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_889:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	setlt.u r7, r5, r15
	lui r15, 523264
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r7, zero, .LBB0_891
# %bb.890:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_891:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	setlt.u r7, r5, r17
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r7, zero, .LBB0_882
# %bb.892:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_882
.LBB0_893:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	beq r15, zero, .LBB0_887
.LBB0_894:                              # %scalar.ph281
                                        #   in Loop: Header=BB0_883 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r17, r5, .LBB0_888
	j .LBB0_889
.LBB0_895:                              # %vector.body283.preheader
                                        #   in Loop: Header=BB0_880 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_897
.LBB0_896:                              # %vector.body283
                                        #   in Loop: Header=BB0_897 Depth=3
	.loc	1 1125 11 is_stmt 1             # parallel-rne.mlir:1125:11
	addli r10, r30, -4280
	addli.d r[1:2], r[1:2], 4
	.loc	1 1147 13                       # parallel-rne.mlir:1147:13
	add.s r3, r4, r3
	addli r12, zero, 32
	.loc	1 1125 11                       # parallel-rne.mlir:1125:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1147 13                       # parallel-rne.mlir:1147:13
	stores.w r25, 4(r3)
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	stores.w r15, 12(r3)
	stores.w r21, 8(r3)
	stores.w r9, 0(r3)
	.loc	1 1125 11                       # parallel-rne.mlir:1125:11
	seteq.d r7, r[1:2], r[7:8]
	bneq r7, zero, .LBB0_879
.LBB0_897:                              # %vector.body283
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_880 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.ul r[7:8], r[1:2], r[27:28]
	lui r15, 523264
	slli r3, r7, 2
	add.s r17, r25, r3
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.s r19, r18, r3
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	add.s r20, r16, r3
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	loads.w r7, 0(r17)
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	loads.w r8, 0(r19)
	.loc	1 1133 19                       # parallel-rne.mlir:1133:19
	and r7, r7, r26
	.loc	1 1131 19                       # parallel-rne.mlir:1131:19
	and r8, r8, r26
	.loc	1 1134 19                       # parallel-rne.mlir:1134:19
	seteq r9, r7, r5
	.loc	1 1138 19                       # parallel-rne.mlir:1138:19
	seteq r12, r7, zero
	.loc	1 1135 19                       # parallel-rne.mlir:1135:19
	seteq r10, r8, zero
	.loc	1 1137 19                       # parallel-rne.mlir:1137:19
	seteq r11, r8, r5
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	and r8, r9, r10
	.loc	1 1139 19                       # parallel-rne.mlir:1139:19
	and r9, r12, r11
	.loc	1 1140 19                       # parallel-rne.mlir:1140:19
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	or r7, r7, r8
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r7, zero, .LBB0_899
# %bb.898:                              # %vector.body283
                                        #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r20)
.LBB0_899:                              # %vector.body283
                                        #   in Loop: Header=BB0_897 Depth=3
	loads.w r7, 4(r17)
	loads.w r8, 4(r19)
	lui r25, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r7, zero, .LBB0_901
# %bb.900:                              # %vector.body283
                                        #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r20)
.LBB0_901:                              # %vector.body283
                                        #   in Loop: Header=BB0_897 Depth=3
	loads.w r7, 8(r17)
	loads.w r8, 8(r19)
	lui r21, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r7, zero, .LBB0_903
# %bb.902:                              # %vector.body283
                                        #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r20)
.LBB0_903:                              # %vector.body283
                                        #   in Loop: Header=BB0_897 Depth=3
	loads.w r7, 12(r17)
	loads.w r8, 12(r19)
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	bneq r7, zero, .LBB0_896
# %bb.904:                              # %vector.body283
                                        #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r20)
	j .LBB0_896
.LBB0_905:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	mfence { sm }
	.loc	1 1152 7                        # parallel-rne.mlir:1152:7
	addli r1, zero, 3
	bneq r7, r1, .LBB0_819
.LBB0_906:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r24, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -4296(r30)                # 4-byte Folded Spill
	addli r1, zero, 192
	.loc	1 1152 7                        # parallel-rne.mlir:1152:7
	xfence
	zext_int2long r[27:28], r1
	addli r1, zero, 224
	mfence { lm, sm, gm }
	zext_int2long r[22:23], r1
	j .LBB0_908
.LBB0_907:                              # %middle.block274
                                        #   in Loop: Header=BB0_908 Depth=2
	.loc	1 1160 9 is_stmt 1              # parallel-rne.mlir:1160:9
	andi r1, r24, 1
	addli.d r[27:28], r[22:23], 0
	addli r24, zero, 0
	beq r1, zero, .LBB0_933
.LBB0_908:                              # %vector.memcheck260
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_925 Depth 3
                                        #       Child Loop BB0_911 Depth 3
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	loadli.w r1,  -4296(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_923
# %bb.909:                              # %scalar.ph266.preheader
                                        #   in Loop: Header=BB0_908 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_911
.LBB0_910:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	addli r10, r30, -4272
	.loc	1 1183 13 is_stmt 1             # parallel-rne.mlir:1183:13
	add.s r3, r4, r3
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1183 13                       # parallel-rne.mlir:1183:13
	stores.w r9, 0(r3)
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_907
.LBB0_911:                              # %scalar.ph266
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_908 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.ul r[7:8], r[1:2], r[27:28]
	lui r9, 523264
	lui r19, 523264
	slli r3, r7, 2
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	add.s r7, r18, r3
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	add.s r8, r16, r3
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	loads.w r7, 0(r7)
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	loads.w r20, 0(r8)
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	and r15, r7, r26
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	beq r15, r5, .LBB0_913
# %bb.912:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_913:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	add.s r7, r25, r3
	loads.w r7, 0(r7)
	and r17, r7, r26
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r17, zero, .LBB0_921
# %bb.914:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r15, zero, .LBB0_922
.LBB0_915:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	beq r17, r5, .LBB0_917
.LBB0_916:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_917:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	setlt.u r7, r5, r15
	lui r15, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r7, zero, .LBB0_919
# %bb.918:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_919:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	setlt.u r7, r5, r17
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r7, zero, .LBB0_910
# %bb.920:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_910
.LBB0_921:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	beq r15, zero, .LBB0_915
.LBB0_922:                              # %scalar.ph266
                                        #   in Loop: Header=BB0_911 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r17, r5, .LBB0_916
	j .LBB0_917
.LBB0_923:                              # %vector.body268.preheader
                                        #   in Loop: Header=BB0_908 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_925
.LBB0_924:                              # %vector.body268
                                        #   in Loop: Header=BB0_925 Depth=3
	.loc	1 1161 11 is_stmt 1             # parallel-rne.mlir:1161:11
	addli r10, r30, -4280
	addli.d r[1:2], r[1:2], 4
	.loc	1 1183 13                       # parallel-rne.mlir:1183:13
	add.s r3, r4, r3
	addli r12, zero, 32
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1183 13                       # parallel-rne.mlir:1183:13
	stores.w r25, 4(r3)
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	stores.w r15, 12(r3)
	stores.w r21, 8(r3)
	stores.w r9, 0(r3)
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	seteq.d r7, r[1:2], r[7:8]
	bneq r7, zero, .LBB0_907
.LBB0_925:                              # %vector.body268
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_908 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.ul r[7:8], r[1:2], r[27:28]
	lui r15, 523264
	slli r3, r7, 2
	add.s r17, r25, r3
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	add.s r19, r18, r3
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	add.s r20, r16, r3
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	loads.w r7, 0(r17)
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	loads.w r8, 0(r19)
	.loc	1 1169 19                       # parallel-rne.mlir:1169:19
	and r7, r7, r26
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	and r8, r8, r26
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	seteq r9, r7, r5
	.loc	1 1174 19                       # parallel-rne.mlir:1174:19
	seteq r12, r7, zero
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	seteq r10, r8, zero
	.loc	1 1173 19                       # parallel-rne.mlir:1173:19
	seteq r11, r8, r5
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	.loc	1 1172 19                       # parallel-rne.mlir:1172:19
	and r8, r9, r10
	.loc	1 1175 19                       # parallel-rne.mlir:1175:19
	and r9, r12, r11
	.loc	1 1176 19                       # parallel-rne.mlir:1176:19
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	or r7, r7, r8
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r7, zero, .LBB0_927
# %bb.926:                              # %vector.body268
                                        #   in Loop: Header=BB0_925 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r20)
.LBB0_927:                              # %vector.body268
                                        #   in Loop: Header=BB0_925 Depth=3
	loads.w r7, 4(r17)
	loads.w r8, 4(r19)
	lui r25, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r7, zero, .LBB0_929
# %bb.928:                              # %vector.body268
                                        #   in Loop: Header=BB0_925 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r20)
.LBB0_929:                              # %vector.body268
                                        #   in Loop: Header=BB0_925 Depth=3
	loads.w r7, 8(r17)
	loads.w r8, 8(r19)
	lui r21, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r7, zero, .LBB0_931
# %bb.930:                              # %vector.body268
                                        #   in Loop: Header=BB0_925 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r20)
.LBB0_931:                              # %vector.body268
                                        #   in Loop: Header=BB0_925 Depth=3
	loads.w r7, 12(r17)
	loads.w r8, 12(r19)
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	bneq r7, zero, .LBB0_924
# %bb.932:                              # %vector.body268
                                        #   in Loop: Header=BB0_925 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r20)
	j .LBB0_924
.LBB0_933:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	.loc	1 1152 7                        # parallel-rne.mlir:1152:7
	mfence { sm }
	.loc	1 1188 7                        # parallel-rne.mlir:1188:7
	addli r1, zero, 4
	bneq r7, r1, .LBB0_820
.LBB0_934:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r24, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -4296(r30)                # 4-byte Folded Spill
	addli r1, zero, 256
	.loc	1 1188 7                        # parallel-rne.mlir:1188:7
	xfence
	zext_int2long r[27:28], r1
	addli r1, zero, 288
	mfence { lm, sm, gm }
	zext_int2long r[22:23], r1
	j .LBB0_936
.LBB0_935:                              # %middle.block259
                                        #   in Loop: Header=BB0_936 Depth=2
	.loc	1 1196 9 is_stmt 1              # parallel-rne.mlir:1196:9
	andi r1, r24, 1
	addli.d r[27:28], r[22:23], 0
	addli r24, zero, 0
	beq r1, zero, .LBB0_961
.LBB0_936:                              # %vector.memcheck245
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_953 Depth 3
                                        #       Child Loop BB0_939 Depth 3
	.loc	1 1197 11                       # parallel-rne.mlir:1197:11
	loadli.w r1,  -4296(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_951
# %bb.937:                              # %scalar.ph251.preheader
                                        #   in Loop: Header=BB0_936 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_939
.LBB0_938:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	.loc	1 1197 11                       # parallel-rne.mlir:1197:11
	addli r10, r30, -4272
	.loc	1 1219 13 is_stmt 1             # parallel-rne.mlir:1219:13
	add.s r3, r4, r3
	.loc	1 1197 11                       # parallel-rne.mlir:1197:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1219 13                       # parallel-rne.mlir:1219:13
	stores.w r9, 0(r3)
	.loc	1 1197 11                       # parallel-rne.mlir:1197:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_935
.LBB0_939:                              # %scalar.ph251
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_936 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	add.ul r[7:8], r[1:2], r[27:28]
	lui r9, 523264
	lui r19, 523264
	slli r3, r7, 2
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	add.s r7, r18, r3
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	add.s r8, r16, r3
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	loads.w r7, 0(r7)
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	loads.w r20, 0(r8)
	.loc	1 1203 19                       # parallel-rne.mlir:1203:19
	and r15, r7, r26
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	beq r15, r5, .LBB0_941
# %bb.940:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_941:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	add.s r7, r25, r3
	loads.w r7, 0(r7)
	and r17, r7, r26
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r17, zero, .LBB0_949
# %bb.942:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r15, zero, .LBB0_950
.LBB0_943:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	beq r17, r5, .LBB0_945
.LBB0_944:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_945:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	setlt.u r7, r5, r15
	lui r15, 523264
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r7, zero, .LBB0_947
# %bb.946:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_947:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	setlt.u r7, r5, r17
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r7, zero, .LBB0_938
# %bb.948:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_938
.LBB0_949:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	beq r15, zero, .LBB0_943
.LBB0_950:                              # %scalar.ph251
                                        #   in Loop: Header=BB0_939 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r17, r5, .LBB0_944
	j .LBB0_945
.LBB0_951:                              # %vector.body253.preheader
                                        #   in Loop: Header=BB0_936 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_953
.LBB0_952:                              # %vector.body253
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 1197 11 is_stmt 1             # parallel-rne.mlir:1197:11
	addli r10, r30, -4280
	addli.d r[1:2], r[1:2], 4
	.loc	1 1219 13                       # parallel-rne.mlir:1219:13
	add.s r3, r4, r3
	addli r12, zero, 32
	.loc	1 1197 11                       # parallel-rne.mlir:1197:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1219 13                       # parallel-rne.mlir:1219:13
	stores.w r25, 4(r3)
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	stores.w r15, 12(r3)
	stores.w r21, 8(r3)
	stores.w r9, 0(r3)
	.loc	1 1197 11                       # parallel-rne.mlir:1197:11
	seteq.d r7, r[1:2], r[7:8]
	bneq r7, zero, .LBB0_935
.LBB0_953:                              # %vector.body253
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_936 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	add.ul r[7:8], r[1:2], r[27:28]
	lui r15, 523264
	slli r3, r7, 2
	add.s r17, r25, r3
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	add.s r19, r18, r3
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	add.s r20, r16, r3
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	loads.w r7, 0(r17)
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	loads.w r8, 0(r19)
	.loc	1 1205 19                       # parallel-rne.mlir:1205:19
	and r7, r7, r26
	.loc	1 1203 19                       # parallel-rne.mlir:1203:19
	and r8, r8, r26
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	seteq r9, r7, r5
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	seteq r12, r7, zero
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	seteq r10, r8, zero
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	seteq r11, r8, r5
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	and r8, r9, r10
	.loc	1 1211 19                       # parallel-rne.mlir:1211:19
	and r9, r12, r11
	.loc	1 1212 19                       # parallel-rne.mlir:1212:19
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	or r7, r7, r8
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r7, zero, .LBB0_955
# %bb.954:                              # %vector.body253
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r20)
.LBB0_955:                              # %vector.body253
                                        #   in Loop: Header=BB0_953 Depth=3
	loads.w r7, 4(r17)
	loads.w r8, 4(r19)
	lui r25, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r7, zero, .LBB0_957
# %bb.956:                              # %vector.body253
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r20)
.LBB0_957:                              # %vector.body253
                                        #   in Loop: Header=BB0_953 Depth=3
	loads.w r7, 8(r17)
	loads.w r8, 8(r19)
	lui r21, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r7, zero, .LBB0_959
# %bb.958:                              # %vector.body253
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r20)
.LBB0_959:                              # %vector.body253
                                        #   in Loop: Header=BB0_953 Depth=3
	loads.w r7, 12(r17)
	loads.w r8, 12(r19)
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	bneq r7, zero, .LBB0_952
# %bb.960:                              # %vector.body253
                                        #   in Loop: Header=BB0_953 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r20)
	j .LBB0_952
.LBB0_961:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	.loc	1 1188 7                        # parallel-rne.mlir:1188:7
	mfence { sm }
	.loc	1 1224 7                        # parallel-rne.mlir:1224:7
	addli r1, zero, 5
	bneq r7, r1, .LBB0_821
.LBB0_962:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r24, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -4296(r30)                # 4-byte Folded Spill
	addli r1, zero, 320
	.loc	1 1224 7                        # parallel-rne.mlir:1224:7
	xfence
	zext_int2long r[27:28], r1
	addli r1, zero, 352
	mfence { lm, sm, gm }
	zext_int2long r[22:23], r1
	j .LBB0_964
.LBB0_963:                              # %middle.block244
                                        #   in Loop: Header=BB0_964 Depth=2
	.loc	1 1232 9 is_stmt 1              # parallel-rne.mlir:1232:9
	andi r1, r24, 1
	addli.d r[27:28], r[22:23], 0
	addli r24, zero, 0
	beq r1, zero, .LBB0_989
.LBB0_964:                              # %vector.memcheck230
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_981 Depth 3
                                        #       Child Loop BB0_967 Depth 3
	.loc	1 1233 11                       # parallel-rne.mlir:1233:11
	loadli.w r1,  -4296(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_979
# %bb.965:                              # %scalar.ph236.preheader
                                        #   in Loop: Header=BB0_964 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_967
.LBB0_966:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 1233 11                       # parallel-rne.mlir:1233:11
	addli r10, r30, -4272
	.loc	1 1255 13 is_stmt 1             # parallel-rne.mlir:1255:13
	add.s r3, r4, r3
	.loc	1 1233 11                       # parallel-rne.mlir:1233:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1255 13                       # parallel-rne.mlir:1255:13
	stores.w r9, 0(r3)
	.loc	1 1233 11                       # parallel-rne.mlir:1233:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_963
.LBB0_967:                              # %scalar.ph236
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_964 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	add.ul r[7:8], r[1:2], r[27:28]
	lui r9, 523264
	lui r19, 523264
	slli r3, r7, 2
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	add.s r7, r18, r3
	.loc	1 1236 19                       # parallel-rne.mlir:1236:19
	add.s r8, r16, r3
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	loads.w r7, 0(r7)
	.loc	1 1236 19                       # parallel-rne.mlir:1236:19
	loads.w r20, 0(r8)
	.loc	1 1239 19                       # parallel-rne.mlir:1239:19
	and r15, r7, r26
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	beq r15, r5, .LBB0_969
# %bb.968:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_969:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	add.s r7, r25, r3
	loads.w r7, 0(r7)
	and r17, r7, r26
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r17, zero, .LBB0_977
# %bb.970:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r15, zero, .LBB0_978
.LBB0_971:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	beq r17, r5, .LBB0_973
.LBB0_972:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_973:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	setlt.u r7, r5, r15
	lui r15, 523264
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r7, zero, .LBB0_975
# %bb.974:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_975:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	setlt.u r7, r5, r17
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r7, zero, .LBB0_966
# %bb.976:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_966
.LBB0_977:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	beq r15, zero, .LBB0_971
.LBB0_978:                              # %scalar.ph236
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r17, r5, .LBB0_972
	j .LBB0_973
.LBB0_979:                              # %vector.body238.preheader
                                        #   in Loop: Header=BB0_964 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_981
.LBB0_980:                              # %vector.body238
                                        #   in Loop: Header=BB0_981 Depth=3
	.loc	1 1233 11 is_stmt 1             # parallel-rne.mlir:1233:11
	addli r10, r30, -4280
	addli.d r[1:2], r[1:2], 4
	.loc	1 1255 13                       # parallel-rne.mlir:1255:13
	add.s r3, r4, r3
	addli r12, zero, 32
	.loc	1 1233 11                       # parallel-rne.mlir:1233:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1255 13                       # parallel-rne.mlir:1255:13
	stores.w r25, 4(r3)
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	stores.w r15, 12(r3)
	stores.w r21, 8(r3)
	stores.w r9, 0(r3)
	.loc	1 1233 11                       # parallel-rne.mlir:1233:11
	seteq.d r7, r[1:2], r[7:8]
	bneq r7, zero, .LBB0_963
.LBB0_981:                              # %vector.body238
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_964 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	add.ul r[7:8], r[1:2], r[27:28]
	lui r15, 523264
	slli r3, r7, 2
	add.s r17, r25, r3
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	add.s r19, r18, r3
	.loc	1 1236 19                       # parallel-rne.mlir:1236:19
	add.s r20, r16, r3
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	loads.w r7, 0(r17)
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	loads.w r8, 0(r19)
	.loc	1 1241 19                       # parallel-rne.mlir:1241:19
	and r7, r7, r26
	.loc	1 1239 19                       # parallel-rne.mlir:1239:19
	and r8, r8, r26
	.loc	1 1242 19                       # parallel-rne.mlir:1242:19
	seteq r9, r7, r5
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	seteq r12, r7, zero
	.loc	1 1243 19                       # parallel-rne.mlir:1243:19
	seteq r10, r8, zero
	.loc	1 1245 19                       # parallel-rne.mlir:1245:19
	seteq r11, r8, r5
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	.loc	1 1244 19                       # parallel-rne.mlir:1244:19
	and r8, r9, r10
	.loc	1 1247 19                       # parallel-rne.mlir:1247:19
	and r9, r12, r11
	.loc	1 1248 19                       # parallel-rne.mlir:1248:19
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	or r7, r7, r8
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r7, zero, .LBB0_983
# %bb.982:                              # %vector.body238
                                        #   in Loop: Header=BB0_981 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r20)
.LBB0_983:                              # %vector.body238
                                        #   in Loop: Header=BB0_981 Depth=3
	loads.w r7, 4(r17)
	loads.w r8, 4(r19)
	lui r25, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r7, zero, .LBB0_985
# %bb.984:                              # %vector.body238
                                        #   in Loop: Header=BB0_981 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r20)
.LBB0_985:                              # %vector.body238
                                        #   in Loop: Header=BB0_981 Depth=3
	loads.w r7, 8(r17)
	loads.w r8, 8(r19)
	lui r21, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r7, zero, .LBB0_987
# %bb.986:                              # %vector.body238
                                        #   in Loop: Header=BB0_981 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r20)
.LBB0_987:                              # %vector.body238
                                        #   in Loop: Header=BB0_981 Depth=3
	loads.w r7, 12(r17)
	loads.w r8, 12(r19)
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	bneq r7, zero, .LBB0_980
# %bb.988:                              # %vector.body238
                                        #   in Loop: Header=BB0_981 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r20)
	j .LBB0_980
.LBB0_989:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	.loc	1 1224 7                        # parallel-rne.mlir:1224:7
	mfence { sm }
	addli r1, zero, 6
	.loc	1 1260 7                        # parallel-rne.mlir:1260:7
	bneq r7, r1, .LBB0_1018
.LBB0_990:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r24, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -4296(r30)                # 4-byte Folded Spill
	addli r1, zero, 384
	.loc	1 1260 7                        # parallel-rne.mlir:1260:7
	xfence
	zext_int2long r[27:28], r1
	addli r1, zero, 416
	mfence { lm, sm, gm }
	zext_int2long r[22:23], r1
	j .LBB0_992
.LBB0_991:                              # %middle.block229
                                        #   in Loop: Header=BB0_992 Depth=2
	.loc	1 1268 9 is_stmt 1              # parallel-rne.mlir:1268:9
	andi r1, r24, 1
	addli.d r[27:28], r[22:23], 0
	addli r24, zero, 0
	beq r1, zero, .LBB0_1017
.LBB0_992:                              # %vector.memcheck215
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1009 Depth 3
                                        #       Child Loop BB0_995 Depth 3
	.loc	1 1269 11                       # parallel-rne.mlir:1269:11
	loadli.w r1,  -4296(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_1007
# %bb.993:                              # %scalar.ph221.preheader
                                        #   in Loop: Header=BB0_992 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_995
.LBB0_994:                              # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	.loc	1 1269 11                       # parallel-rne.mlir:1269:11
	addli r10, r30, -4272
	.loc	1 1291 13 is_stmt 1             # parallel-rne.mlir:1291:13
	add.s r3, r4, r3
	.loc	1 1269 11                       # parallel-rne.mlir:1269:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1291 13                       # parallel-rne.mlir:1291:13
	stores.w r9, 0(r3)
	.loc	1 1269 11                       # parallel-rne.mlir:1269:11
	setlt.ul r7, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r7, zero, .LBB0_991
.LBB0_995:                              # %scalar.ph221
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_992 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	add.ul r[7:8], r[1:2], r[27:28]
	lui r9, 523264
	lui r19, 523264
	slli r3, r7, 2
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	add.s r7, r18, r3
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	add.s r8, r16, r3
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	loads.w r7, 0(r7)
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	loads.w r20, 0(r8)
	.loc	1 1275 19                       # parallel-rne.mlir:1275:19
	and r15, r7, r26
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	beq r15, r5, .LBB0_997
# %bb.996:                              # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_997:                              # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	add.s r7, r25, r3
	loads.w r7, 0(r7)
	and r17, r7, r26
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r17, zero, .LBB0_1005
# %bb.998:                              # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r15, zero, .LBB0_1006
.LBB0_999:                              # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	beq r17, r5, .LBB0_1001
.LBB0_1000:                             # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_1001:                             # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	setlt.u r7, r5, r15
	lui r15, 523264
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r7, zero, .LBB0_1003
# %bb.1002:                             # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r20, 0
.LBB0_1003:                             # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	setlt.u r7, r5, r17
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r7, zero, .LBB0_994
# %bb.1004:                             # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_994
.LBB0_1005:                             # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	beq r15, zero, .LBB0_999
.LBB0_1006:                             # %scalar.ph221
                                        #   in Loop: Header=BB0_995 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r17, r5, .LBB0_1000
	j .LBB0_1001
.LBB0_1007:                             # %vector.body223.preheader
                                        #   in Loop: Header=BB0_992 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_1009
.LBB0_1008:                             # %vector.body223
                                        #   in Loop: Header=BB0_1009 Depth=3
	.loc	1 1269 11 is_stmt 1             # parallel-rne.mlir:1269:11
	addli r10, r30, -4280
	addli.d r[1:2], r[1:2], 4
	.loc	1 1291 13                       # parallel-rne.mlir:1291:13
	add.s r3, r4, r3
	addli r12, zero, 32
	.loc	1 1269 11                       # parallel-rne.mlir:1269:11
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	.loc	1 1291 13                       # parallel-rne.mlir:1291:13
	stores.w r25, 4(r3)
	loadli.w r25,  -4284(r30)               # 4-byte Folded Reload
	stores.w r15, 12(r3)
	stores.w r21, 8(r3)
	stores.w r9, 0(r3)
	.loc	1 1269 11                       # parallel-rne.mlir:1269:11
	seteq.d r7, r[1:2], r[7:8]
	bneq r7, zero, .LBB0_991
.LBB0_1009:                             # %vector.body223
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_992 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	add.ul r[7:8], r[1:2], r[27:28]
	lui r15, 523264
	slli r3, r7, 2
	add.s r17, r25, r3
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	add.s r19, r18, r3
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	add.s r20, r16, r3
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	loads.w r7, 0(r17)
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	loads.w r8, 0(r19)
	.loc	1 1277 19                       # parallel-rne.mlir:1277:19
	and r7, r7, r26
	.loc	1 1275 19                       # parallel-rne.mlir:1275:19
	and r8, r8, r26
	.loc	1 1278 19                       # parallel-rne.mlir:1278:19
	seteq r9, r7, r5
	.loc	1 1282 19                       # parallel-rne.mlir:1282:19
	seteq r12, r7, zero
	.loc	1 1279 19                       # parallel-rne.mlir:1279:19
	seteq r10, r8, zero
	.loc	1 1281 19                       # parallel-rne.mlir:1281:19
	seteq r11, r8, r5
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	.loc	1 1280 19                       # parallel-rne.mlir:1280:19
	and r8, r9, r10
	.loc	1 1283 19                       # parallel-rne.mlir:1283:19
	and r9, r12, r11
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	or r7, r7, r8
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r7, zero, .LBB0_1011
# %bb.1010:                             # %vector.body223
                                        #   in Loop: Header=BB0_1009 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r20)
.LBB0_1011:                             # %vector.body223
                                        #   in Loop: Header=BB0_1009 Depth=3
	loads.w r7, 4(r17)
	loads.w r8, 4(r19)
	lui r25, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r7, zero, .LBB0_1013
# %bb.1012:                             # %vector.body223
                                        #   in Loop: Header=BB0_1009 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 4(r20)
.LBB0_1013:                             # %vector.body223
                                        #   in Loop: Header=BB0_1009 Depth=3
	loads.w r7, 8(r17)
	loads.w r8, 8(r19)
	lui r21, 523264
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r7, zero, .LBB0_1015
# %bb.1014:                             # %vector.body223
                                        #   in Loop: Header=BB0_1009 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 8(r20)
.LBB0_1015:                             # %vector.body223
                                        #   in Loop: Header=BB0_1009 Depth=3
	loads.w r7, 12(r17)
	loads.w r8, 12(r19)
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	bneq r7, zero, .LBB0_1008
# %bb.1016:                             # %vector.body223
                                        #   in Loop: Header=BB0_1009 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r20)
	j .LBB0_1008
.LBB0_1017:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	.loc	1 1260 7                        # parallel-rne.mlir:1260:7
	mfence { sm }
.LBB0_1018:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 1296 7 is_stmt 1              # parallel-rne.mlir:1296:7
	addli r3, r30, -4304
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, zero, 7
	bneq r7, r1, .LBB0_1047
# %bb.1019:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4312(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4316(r30)                # 4-byte Folded Reload
	addli r21, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -4296(r30)                # 4-byte Folded Spill
	addli r1, zero, 448
	.loc	1 1296 7                        # parallel-rne.mlir:1296:7
	xfence
	zext_int2long r[27:28], r1
	addli r1, zero, 480
	mfence { lm, sm, gm }
	zext_int2long r[24:25], r1
	j .LBB0_1021
.LBB0_1020:                             # %middle.block
                                        #   in Loop: Header=BB0_1021 Depth=2
	.loc	1 1304 9 is_stmt 1              # parallel-rne.mlir:1304:9
	andi r1, r21, 1
	addli.d r[27:28], r[24:25], 0
	addli r21, zero, 0
	beq r1, zero, .LBB0_1046
.LBB0_1021:                             # %vector.memcheck
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1038 Depth 3
                                        #       Child Loop BB0_1024 Depth 3
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	loadli.w r1,  -4296(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_1036
# %bb.1022:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1021 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_1024
.LBB0_1023:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	addli r1, r30, -4272
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[7:8]
	.loc	1 1327 13 is_stmt 1             # parallel-rne.mlir:1327:13
	add.s r7, r4, r9
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1327 13                       # parallel-rne.mlir:1327:13
	stores.w r15, 0(r7)
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	beq r1, zero, .LBB0_1020
.LBB0_1024:                             # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1021 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.ul r[7:8], r[2:3], r[27:28]
	lui r15, 523264
	lui r19, 523264
	slli r9, r7, 2
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	add.s r1, r18, r9
	.loc	1 1308 19                       # parallel-rne.mlir:1308:19
	add.s r7, r16, r9
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	loads.w r1, 0(r1)
	.loc	1 1308 19                       # parallel-rne.mlir:1308:19
	loads.w r20, 0(r7)
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	and r1, r1, r26
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	beq r1, r5, .LBB0_1026
# %bb.1025:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_1026:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	loadli.w r7,  -4284(r30)                # 4-byte Folded Reload
	add.s r7, r7, r9
	loads.w r7, 0(r7)
	and r17, r7, r26
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r17, zero, .LBB0_1034
# %bb.1027:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r1, zero, .LBB0_1035
.LBB0_1028:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	beq r17, r5, .LBB0_1030
.LBB0_1029:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_1030:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	setlt.u r7, r5, r1
	lui r1, 523264
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r7, zero, .LBB0_1032
# %bb.1031:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r20, 0
.LBB0_1032:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	setlt.u r7, r5, r17
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r7, zero, .LBB0_1023
# %bb.1033:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r1, 0
	j .LBB0_1023
.LBB0_1034:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	beq r1, zero, .LBB0_1028
.LBB0_1035:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1024 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r17, r5, .LBB0_1029
	j .LBB0_1030
.LBB0_1036:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1021 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r30, -4304
	load.d r[22:23], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_1038
.LBB0_1037:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	.loc	1 1305 11 is_stmt 1             # parallel-rne.mlir:1305:11
	addli r2, r30, -4280
	addli.d r[22:23], r[22:23], 4
	addli r12, zero, 32
	load.d r[7:8], 0(r2)                    # 8-byte Folded Reload
	seteq.d r2, r[22:23], r[7:8]
	.loc	1 1327 13                       # parallel-rne.mlir:1327:13
	add.s r7, r4, r17
	stores.w r15, 12(r7)
	stores.w r1, 8(r7)
	stores.w r3, 4(r7)
	stores.w r9, 0(r7)
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	bneq r2, zero, .LBB0_1020
.LBB0_1038:                             # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1021 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.ul r[1:2], r[22:23], r[27:28]
	lui r15, 523264
	slli r17, r1, 2
	loadli.w r1,  -4284(r30)                # 4-byte Folded Reload
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	add.s r20, r18, r17
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.s r19, r1, r17
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	loads.w r2, 0(r20)
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	loads.w r1, 0(r19)
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	and r2, r2, r26
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	and r1, r1, r26
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	seteq r7, r2, zero
	.loc	1 1317 19                       # parallel-rne.mlir:1317:19
	seteq r8, r2, r5
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	seteq r3, r1, r5
	.loc	1 1318 19                       # parallel-rne.mlir:1318:19
	seteq r9, r1, zero
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	max.u r1, r1, r2
	setlt.u r1, r5, r1
	.loc	1 1316 19                       # parallel-rne.mlir:1316:19
	and r2, r3, r7
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	and r3, r9, r8
	lui r9, 523264
	.loc	1 1320 19                       # parallel-rne.mlir:1320:19
	or r3, r2, r3
	.loc	1 1308 19                       # parallel-rne.mlir:1308:19
	add.s r2, r16, r17
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	or r1, r1, r3
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r1, zero, .LBB0_1040
# %bb.1039:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r2)
.LBB0_1040:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	loads.w r1, 4(r19)
	loads.w r3, 4(r20)
	and r1, r1, r26
	and r3, r3, r26
	seteq r7, r1, r5
	seteq r11, r1, zero
	seteq r8, r3, zero
	seteq r10, r3, r5
	max.u r1, r1, r3
	setlt.u r1, r5, r1
	and r3, r7, r8
	and r7, r11, r10
	or r3, r3, r7
	or r1, r1, r3
	lui r3, 523264
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r1, zero, .LBB0_1042
# %bb.1041:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 4(r2)
.LBB0_1042:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	loads.w r1, 8(r19)
	loads.w r7, 8(r20)
	and r1, r1, r26
	and r7, r7, r26
	seteq r8, r1, r5
	seteq r12, r1, zero
	seteq r10, r7, zero
	seteq r11, r7, r5
	max.u r1, r1, r7
	setlt.u r1, r5, r1
	and r7, r8, r10
	and r8, r12, r11
	or r7, r7, r8
	or r7, r1, r7
	lui r1, 523264
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r7, zero, .LBB0_1044
# %bb.1043:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 8(r2)
.LBB0_1044:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	loads.w r7, 12(r19)
	loads.w r8, 12(r20)
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r5
	seteq r14, r7, zero
	seteq r11, r8, zero
	seteq r12, r8, r5
	max.u r7, r7, r8
	setlt.u r7, r5, r7
	and r8, r10, r11
	and r10, r14, r12
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	bneq r7, zero, .LBB0_1037
# %bb.1045:                             # %vector.body
                                        #   in Loop: Header=BB0_1038 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r2)
	j .LBB0_1037
.LBB0_1046:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r7
	addli r17, zero, 1
	.loc	1 1296 7                        # parallel-rne.mlir:1296:7
	mfence { sm }
.LBB0_1047:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1332 7                        # parallel-rne.mlir:1332:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1333 7                        # parallel-rne.mlir:1333:7
	addli r1, zero, 3
	.loc	1 1332 7                        # parallel-rne.mlir:1332:7
	sync_core
	.loc	1 1333 7                        # parallel-rne.mlir:1333:7
	beq r7, r1, .LBB0_5
# %bb.1048:                             # %.critedge32
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, r30, -4328
	addli r16, zero, 5
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
	.loc	1 1344 7 is_stmt 1              # parallel-rne.mlir:1344:7
	bneq r7, zero, .LBB0_6
# %bb.1049:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4356(r30)                # 4-byte Folded Reload
	addli r3, r30, -4304
	.loc	1 1344 7                        # parallel-rne.mlir:1344:7
	addli r11, r30, -4352
	load.d r[18:19], 24(r30)
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	load.d r[9:10], 0(r11)                  # 8-byte Folded Reload
	addli r3, zero, 12
	sext_int2long r[1:2], r1
	min.sl r[7:8], r[1:2], r[7:8]
	sll.d r[9:10], r[9:10], r3
	addli r3, r30, -4344
	addli.d r[7:8], r[7:8], 16
	load.d r[11:12], 0(r3)                  # 8-byte Folded Reload
	addli r3, zero, 16
	add.ul r[9:10], r[18:19], r[9:10]
	max.sl r[7:8], r[7:8], r[1:2]
	sll.d r[11:12], r[11:12], r17
	sub.sl r[1:2], r[7:8], r[1:2]
	zext_int2long r[7:8], r3
	addli r3, zero, 17
	add.ul r[9:10], r[9:10], r[11:12]
	addli r12, zero, 32
	xwait r3, 0
	lock zero, r16
	addli r3, r30, -4368
	.loc	1 1340 13 is_stmt 1             # parallel-rne.mlir:1340:13
	min.sl r[1:2], r[1:2], r[7:8]
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r7
	.loc	1 1344 7                        # parallel-rne.mlir:1344:7
	dma_cfg r17, zero, zero, 0
	dma_cfg zero, r17, zero, 1
	load.d r[18:19], 0(r3)                  # 8-byte Folded Reload
	dma_cfg r10, zero, zero, 2
	slli r3, r18, 2
	dma_cfg r9, r4, r3, 3
	addli r3, zero, 128
	addli r4, zero, 256
	dma_cfg r4, r3, r1, 4
	addli r1, zero, 18
	dma_run zero
	unlock r16
	xsignal r1, 0
	j .LBB0_6
.LBB0_1050:                             # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	addli r2, r25, 1
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r3, r24, 1
	loadli.w r1,  -4272(r30)                # 4-byte Folded Reload
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	storeli.w r14, -2228(r30)
	.loc	1 127 15                        # parallel-rne.mlir:127:15
	storeli.w r12, -1204(r30)
	addli r10, zero, 4
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	storeli.w r2, -4240(r30)
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	storeli.w r3, -3216(r30)
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	j .LBB0_30
.LBB0_1051:                             # %._crit_edge
	.loc	1 1346 5                        # parallel-rne.mlir:1346:5
	xsignal zero, 0
	bneq r7, zero, .LBB0_1053
# %bb.1052:
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
.LBB0_1053:
	.loc	1 1347 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1347:5
	addli sp, sp, 4424
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
	.long	4488                            # 0x1188
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-voz9lfqi" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
