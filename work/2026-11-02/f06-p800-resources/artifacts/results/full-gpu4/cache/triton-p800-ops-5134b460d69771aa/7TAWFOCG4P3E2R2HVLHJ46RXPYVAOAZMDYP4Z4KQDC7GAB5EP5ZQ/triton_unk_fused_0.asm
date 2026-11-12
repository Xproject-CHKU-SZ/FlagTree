	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-lc6e2s6_" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4320
	addli r1, zero, 1
.Ltmp0:
	.loc	1 37 5 prologue_end             # parallel-rne.mlir:37:5
	core_id r2
	core_id r13
	addli r30, sp, 4256
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 37 5                          # parallel-rne.mlir:37:5
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
	.loc	1 37 5                          # parallel-rne.mlir:37:5
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
	addli r2, zero, 17
	ds_cfg r3, zero, 14
	shuffle_batch r6, zero, r3, 4
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
	sync_group
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 22
	addli r2, zero, 20
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 24
	addli r2, zero, 25
	xsignal r1, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 39 10 is_stmt 1               # parallel-rne.mlir:39:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -1024(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -2048(r30)
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r1
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r4, r1, r4
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	addli r2, r2, -1
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 50 11                         # parallel-rne.mlir:50:11
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
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -3040(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
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
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	storeli.w r3, -96(r30)
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	storeli.w r3, -48(r30)
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	storeli.w r3, -24(r30)
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -2044(r30)
	storeli.w r3, -2040(r30)
	storeli.w r3, -2036(r30)
	storeli.w r3, -2032(r30)
	storeli.w r3, -2028(r30)
	storeli.w r3, -2024(r30)
	storeli.w r3, -2020(r30)
	storeli.w r3, -2016(r30)
	storeli.w r3, -2012(r30)
	storeli.w r3, -2008(r30)
	storeli.w r3, -2004(r30)
	storeli.w r3, -2000(r30)
	storeli.w r3, -1996(r30)
	storeli.w r3, -1992(r30)
	storeli.w r3, -1988(r30)
	storeli.w r3, -1984(r30)
	storeli.w r3, -1980(r30)
	storeli.w r3, -1976(r30)
	storeli.w r3, -1972(r30)
	storeli.w r3, -1968(r30)
	storeli.w r3, -1964(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -3024(r30)
	storeli.w r3, -2056(r30)
	storeli.w r3, -2060(r30)
	storeli.w r3, -2064(r30)
	storeli.w r3, -2068(r30)
	storeli.w r3, -2072(r30)
	storeli.w r3, -2076(r30)
	storeli.w r3, -2080(r30)
	storeli.w r3, -2084(r30)
	storeli.w r3, -2088(r30)
	storeli.w r3, -2092(r30)
	storeli.w r3, -2096(r30)
	storeli.w r3, -2100(r30)
	storeli.w r3, -2104(r30)
	storeli.w r3, -2108(r30)
	storeli.w r3, -2112(r30)
	storeli.w r3, -2116(r30)
	storeli.w r3, -2120(r30)
	storeli.w r3, -2124(r30)
	storeli.w r3, -2128(r30)
	storeli.w r3, -2132(r30)
	storeli.w r3, -2136(r30)
	storeli.w r3, -2140(r30)
	storeli.w r3, -2144(r30)
	storeli.w r3, -2148(r30)
	storeli.w r3, -2152(r30)
	storeli.w r3, -2156(r30)
	storeli.w r3, -2160(r30)
	storeli.w r3, -2164(r30)
	storeli.w r3, -2168(r30)
	storeli.w r3, -2172(r30)
	storeli.w r3, -2176(r30)
	storeli.w r3, -2180(r30)
	storeli.w r3, -2184(r30)
	storeli.w r3, -2188(r30)
	storeli.w r3, -2192(r30)
	storeli.w r3, -2196(r30)
	storeli.w r3, -2200(r30)
	storeli.w r3, -2204(r30)
	storeli.w r3, -2208(r30)
	storeli.w r3, -2212(r30)
	storeli.w r3, -2216(r30)
	storeli.w r3, -2220(r30)
	storeli.w r3, -2224(r30)
	storeli.w r3, -2228(r30)
	storeli.w r3, -2232(r30)
	storeli.w r3, -2236(r30)
	storeli.w r3, -2240(r30)
	storeli.w r3, -2244(r30)
	storeli.w r3, -2248(r30)
	storeli.w r3, -2252(r30)
	storeli.w r3, -2256(r30)
	storeli.w r3, -2260(r30)
	storeli.w r3, -2264(r30)
	storeli.w r3, -2268(r30)
	storeli.w r3, -2272(r30)
	storeli.w r3, -2276(r30)
	storeli.w r3, -2280(r30)
	storeli.w r3, -2284(r30)
	storeli.w r3, -2288(r30)
	storeli.w r3, -2292(r30)
	storeli.w r3, -2296(r30)
	storeli.w r3, -2300(r30)
	storeli.w r3, -2304(r30)
	storeli.w r3, -2308(r30)
	storeli.w r3, -2312(r30)
	storeli.w r3, -2316(r30)
	storeli.w r3, -2320(r30)
	storeli.w r3, -2324(r30)
	storeli.w r3, -2328(r30)
	storeli.w r3, -2332(r30)
	storeli.w r3, -2336(r30)
	storeli.w r3, -2340(r30)
	storeli.w r3, -2344(r30)
	storeli.w r3, -2348(r30)
	storeli.w r3, -2352(r30)
	storeli.w r3, -2356(r30)
	storeli.w r3, -2360(r30)
	storeli.w r3, -2364(r30)
	storeli.w r3, -2368(r30)
	storeli.w r3, -2372(r30)
	storeli.w r3, -2376(r30)
	storeli.w r3, -2380(r30)
	storeli.w r3, -2384(r30)
	storeli.w r3, -2388(r30)
	storeli.w r3, -2392(r30)
	storeli.w r3, -2396(r30)
	storeli.w r3, -2400(r30)
	storeli.w r3, -2404(r30)
	storeli.w r3, -2408(r30)
	storeli.w r3, -2412(r30)
	storeli.w r3, -2416(r30)
	storeli.w r3, -2420(r30)
	storeli.w r3, -2424(r30)
	storeli.w r3, -2428(r30)
	storeli.w r3, -2432(r30)
	storeli.w r3, -2436(r30)
	storeli.w r3, -2440(r30)
	storeli.w r3, -2444(r30)
	storeli.w r3, -2448(r30)
	storeli.w r3, -2452(r30)
	storeli.w r3, -2456(r30)
	storeli.w r3, -2460(r30)
	storeli.w r3, -2464(r30)
	storeli.w r3, -2468(r30)
	storeli.w r3, -2472(r30)
	storeli.w r3, -2476(r30)
	storeli.w r3, -2480(r30)
	storeli.w r3, -2484(r30)
	storeli.w r3, -2488(r30)
	storeli.w r3, -2492(r30)
	storeli.w r3, -2496(r30)
	storeli.w r3, -2500(r30)
	storeli.w r3, -2504(r30)
	storeli.w r3, -2508(r30)
	storeli.w r3, -2512(r30)
	storeli.w r3, -2516(r30)
	storeli.w r3, -2520(r30)
	storeli.w r3, -2524(r30)
	storeli.w r3, -2528(r30)
	storeli.w r3, -2532(r30)
	storeli.w r3, -2536(r30)
	storeli.w r3, -2540(r30)
	storeli.w r3, -2544(r30)
	storeli.w r3, -2548(r30)
	storeli.w r3, -2552(r30)
	storeli.w r3, -2556(r30)
	storeli.w r3, -2560(r30)
	storeli.w r3, -2564(r30)
	storeli.w r3, -2568(r30)
	storeli.w r3, -2572(r30)
	storeli.w r3, -2576(r30)
	storeli.w r3, -2580(r30)
	storeli.w r3, -2584(r30)
	storeli.w r3, -2588(r30)
	storeli.w r3, -2592(r30)
	storeli.w r3, -2596(r30)
	storeli.w r3, -2600(r30)
	storeli.w r3, -2604(r30)
	storeli.w r3, -2608(r30)
	storeli.w r3, -2612(r30)
	storeli.w r3, -2616(r30)
	storeli.w r3, -2620(r30)
	storeli.w r3, -2624(r30)
	storeli.w r3, -2628(r30)
	storeli.w r3, -2632(r30)
	storeli.w r3, -2636(r30)
	storeli.w r3, -2640(r30)
	storeli.w r3, -2644(r30)
	storeli.w r3, -2648(r30)
	storeli.w r3, -2652(r30)
	storeli.w r3, -2656(r30)
	storeli.w r3, -2660(r30)
	storeli.w r3, -2664(r30)
	storeli.w r3, -2668(r30)
	storeli.w r3, -2672(r30)
	storeli.w r3, -2676(r30)
	storeli.w r3, -2680(r30)
	storeli.w r3, -2684(r30)
	storeli.w r3, -2688(r30)
	storeli.w r3, -2692(r30)
	storeli.w r3, -2696(r30)
	storeli.w r3, -2700(r30)
	storeli.w r3, -2704(r30)
	storeli.w r3, -2708(r30)
	storeli.w r3, -2712(r30)
	storeli.w r3, -2716(r30)
	storeli.w r3, -2720(r30)
	storeli.w r3, -2724(r30)
	storeli.w r3, -2728(r30)
	storeli.w r3, -2732(r30)
	storeli.w r3, -2736(r30)
	storeli.w r3, -2740(r30)
	storeli.w r3, -2744(r30)
	storeli.w r3, -2748(r30)
	storeli.w r3, -2752(r30)
	storeli.w r3, -2756(r30)
	storeli.w r3, -2760(r30)
	storeli.w r3, -2764(r30)
	storeli.w r3, -2768(r30)
	storeli.w r3, -2772(r30)
	storeli.w r3, -2776(r30)
	storeli.w r3, -2780(r30)
	storeli.w r3, -2784(r30)
	storeli.w r3, -2788(r30)
	storeli.w r3, -2792(r30)
	storeli.w r3, -2796(r30)
	storeli.w r3, -2800(r30)
	storeli.w r3, -2804(r30)
	storeli.w r3, -2808(r30)
	storeli.w r3, -2812(r30)
	storeli.w r3, -2816(r30)
	storeli.w r3, -2820(r30)
	storeli.w r3, -2824(r30)
	storeli.w r3, -2828(r30)
	storeli.w r3, -2832(r30)
	storeli.w r3, -2836(r30)
	storeli.w r3, -2840(r30)
	storeli.w r3, -2844(r30)
	storeli.w r3, -2848(r30)
	storeli.w r3, -2852(r30)
	storeli.w r3, -2856(r30)
	storeli.w r3, -2860(r30)
	storeli.w r3, -2864(r30)
	storeli.w r3, -2868(r30)
	storeli.w r3, -2872(r30)
	storeli.w r3, -2876(r30)
	storeli.w r3, -2880(r30)
	storeli.w r3, -2884(r30)
	storeli.w r3, -2888(r30)
	storeli.w r3, -2892(r30)
	storeli.w r3, -2896(r30)
	storeli.w r3, -2900(r30)
	storeli.w r3, -2904(r30)
	storeli.w r3, -2908(r30)
	storeli.w r3, -2912(r30)
	storeli.w r3, -2916(r30)
	storeli.w r3, -2920(r30)
	storeli.w r3, -2924(r30)
	storeli.w r3, -2928(r30)
	storeli.w r3, -2932(r30)
	storeli.w r3, -2936(r30)
	storeli.w r3, -2940(r30)
	storeli.w r3, -2944(r30)
	storeli.w r3, -2948(r30)
	storeli.w r3, -2952(r30)
	storeli.w r3, -2956(r30)
	storeli.w r3, -2960(r30)
	storeli.w r3, -2964(r30)
	storeli.w r3, -2968(r30)
	storeli.w r3, -2972(r30)
	storeli.w r3, -2976(r30)
	storeli.w r3, -2980(r30)
	storeli.w r3, -2984(r30)
	storeli.w r3, -2988(r30)
	storeli.w r3, -2992(r30)
	storeli.w r3, -2996(r30)
	storeli.w r3, -3000(r30)
	storeli.w r3, -3004(r30)
	storeli.w r3, -3008(r30)
	storeli.w r3, -3012(r30)
	storeli.w r3, -3016(r30)
	storeli.w r3, -3020(r30)
	storeli.w r3, -3028(r30)
	storeli.w r3, -3032(r30)
	storeli.w r3, -3036(r30)
	storeli.w r3, -3044(r30)
	storeli.w r3, -3048(r30)
	storeli.w r3, -3052(r30)
	storeli.w r3, -3056(r30)
	storeli.w r3, -3060(r30)
	storeli.w r3, -3064(r30)
	storeli.w r3, -3068(r30)
	storeli.w zero, -3072(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -1028(r30)
	storeli.w r3, -1032(r30)
	storeli.w r3, -1036(r30)
	storeli.w r3, -1040(r30)
	storeli.w r3, -1044(r30)
	storeli.w r3, -1048(r30)
	storeli.w r3, -1052(r30)
	storeli.w r3, -1056(r30)
	storeli.w r3, -1060(r30)
	storeli.w r3, -1064(r30)
	storeli.w r3, -1068(r30)
	storeli.w r3, -1072(r30)
	storeli.w r3, -1076(r30)
	storeli.w r3, -1080(r30)
	storeli.w r3, -1084(r30)
	storeli.w r3, -1088(r30)
	storeli.w r3, -1092(r30)
	storeli.w r3, -1096(r30)
	storeli.w r3, -1100(r30)
	storeli.w r3, -1104(r30)
	storeli.w r3, -1108(r30)
	storeli.w r3, -1112(r30)
	storeli.w r3, -1116(r30)
	storeli.w r3, -1120(r30)
	storeli.w r3, -1124(r30)
	storeli.w r3, -1128(r30)
	storeli.w r3, -1132(r30)
	storeli.w r3, -1136(r30)
	storeli.w r3, -1140(r30)
	storeli.w r3, -1144(r30)
	storeli.w r3, -1148(r30)
	storeli.w r3, -1152(r30)
	storeli.w r3, -1156(r30)
	storeli.w r3, -1160(r30)
	storeli.w r3, -1164(r30)
	storeli.w r3, -1168(r30)
	storeli.w r3, -1172(r30)
	storeli.w r3, -1176(r30)
	storeli.w r3, -1180(r30)
	storeli.w r3, -1184(r30)
	storeli.w r3, -1188(r30)
	storeli.w r3, -1192(r30)
	storeli.w r3, -1196(r30)
	storeli.w r3, -1200(r30)
	storeli.w r3, -1204(r30)
	storeli.w r3, -1208(r30)
	storeli.w r3, -1212(r30)
	storeli.w r3, -1216(r30)
	storeli.w r3, -1220(r30)
	storeli.w r3, -1224(r30)
	storeli.w r3, -1228(r30)
	storeli.w r3, -1232(r30)
	storeli.w r3, -1236(r30)
	storeli.w r3, -1240(r30)
	storeli.w r3, -1244(r30)
	storeli.w r3, -1248(r30)
	storeli.w r3, -1252(r30)
	storeli.w r3, -1256(r30)
	storeli.w r3, -1260(r30)
	storeli.w r3, -1264(r30)
	storeli.w r3, -1268(r30)
	storeli.w r3, -1272(r30)
	storeli.w r3, -1276(r30)
	storeli.w r3, -1280(r30)
	storeli.w r3, -1284(r30)
	storeli.w r3, -1288(r30)
	storeli.w r3, -1292(r30)
	storeli.w r3, -1296(r30)
	storeli.w r3, -1300(r30)
	storeli.w r3, -1304(r30)
	storeli.w r3, -1308(r30)
	storeli.w r3, -1312(r30)
	storeli.w r3, -1316(r30)
	storeli.w r3, -1320(r30)
	storeli.w r3, -1324(r30)
	storeli.w r3, -1328(r30)
	storeli.w r3, -1332(r30)
	storeli.w r3, -1336(r30)
	storeli.w r3, -1340(r30)
	storeli.w r3, -1344(r30)
	storeli.w r3, -1348(r30)
	storeli.w r3, -1352(r30)
	storeli.w r3, -1356(r30)
	storeli.w r3, -1360(r30)
	storeli.w r3, -1364(r30)
	storeli.w r3, -1368(r30)
	storeli.w r3, -1372(r30)
	storeli.w r3, -1376(r30)
	storeli.w r3, -1380(r30)
	storeli.w r3, -1384(r30)
	storeli.w r3, -1388(r30)
	storeli.w r3, -1392(r30)
	storeli.w r3, -1396(r30)
	storeli.w r3, -1400(r30)
	storeli.w r3, -1404(r30)
	storeli.w r3, -1408(r30)
	storeli.w r3, -1412(r30)
	storeli.w r3, -1416(r30)
	storeli.w r3, -1420(r30)
	storeli.w r3, -1424(r30)
	storeli.w r3, -1428(r30)
	storeli.w r3, -1432(r30)
	storeli.w r3, -1436(r30)
	storeli.w r3, -1440(r30)
	storeli.w r3, -1444(r30)
	storeli.w r3, -1448(r30)
	storeli.w r3, -1452(r30)
	storeli.w r3, -1456(r30)
	storeli.w r3, -1460(r30)
	storeli.w r3, -1464(r30)
	storeli.w r3, -1468(r30)
	storeli.w r3, -1472(r30)
	storeli.w r3, -1476(r30)
	storeli.w r3, -1480(r30)
	storeli.w r3, -1484(r30)
	storeli.w r3, -1488(r30)
	storeli.w r3, -1492(r30)
	storeli.w r3, -1496(r30)
	storeli.w r3, -1500(r30)
	storeli.w r3, -1504(r30)
	storeli.w r3, -1508(r30)
	storeli.w r3, -1512(r30)
	storeli.w r3, -1516(r30)
	storeli.w r3, -1520(r30)
	storeli.w r3, -1524(r30)
	storeli.w r3, -1528(r30)
	storeli.w r3, -1532(r30)
	storeli.w r3, -1536(r30)
	storeli.w r3, -1540(r30)
	storeli.w r3, -1544(r30)
	storeli.w r3, -1548(r30)
	storeli.w r3, -1552(r30)
	storeli.w r3, -1556(r30)
	storeli.w r3, -1560(r30)
	storeli.w r3, -1564(r30)
	storeli.w r3, -1568(r30)
	storeli.w r3, -1572(r30)
	storeli.w r3, -1576(r30)
	storeli.w r3, -1580(r30)
	storeli.w r3, -1584(r30)
	storeli.w r3, -1588(r30)
	storeli.w r3, -1592(r30)
	storeli.w r3, -1596(r30)
	storeli.w r3, -1600(r30)
	storeli.w r3, -1604(r30)
	storeli.w r3, -1608(r30)
	storeli.w r3, -1612(r30)
	storeli.w r3, -1616(r30)
	storeli.w r3, -1620(r30)
	storeli.w r3, -1624(r30)
	storeli.w r3, -1628(r30)
	storeli.w r3, -1632(r30)
	storeli.w r3, -1636(r30)
	storeli.w r3, -1640(r30)
	storeli.w r3, -1644(r30)
	storeli.w r3, -1648(r30)
	storeli.w r3, -1652(r30)
	storeli.w r3, -1656(r30)
	storeli.w r3, -1660(r30)
	storeli.w r3, -1664(r30)
	storeli.w r3, -1668(r30)
	storeli.w r3, -1672(r30)
	storeli.w r3, -1676(r30)
	storeli.w r3, -1680(r30)
	storeli.w r3, -1684(r30)
	storeli.w r3, -1688(r30)
	storeli.w r3, -1692(r30)
	storeli.w r3, -1696(r30)
	storeli.w r3, -1700(r30)
	storeli.w r3, -1704(r30)
	storeli.w r3, -1708(r30)
	storeli.w r3, -1712(r30)
	storeli.w r3, -1716(r30)
	storeli.w r3, -1720(r30)
	storeli.w r3, -1724(r30)
	storeli.w r3, -1728(r30)
	storeli.w r3, -1732(r30)
	storeli.w r3, -1736(r30)
	storeli.w r3, -1740(r30)
	storeli.w r3, -1744(r30)
	storeli.w r3, -1748(r30)
	storeli.w r3, -1752(r30)
	storeli.w r3, -1756(r30)
	storeli.w r3, -1760(r30)
	storeli.w r3, -1764(r30)
	storeli.w r3, -1768(r30)
	storeli.w r3, -1772(r30)
	storeli.w r3, -1776(r30)
	storeli.w r3, -1780(r30)
	storeli.w r3, -1784(r30)
	storeli.w r3, -1788(r30)
	storeli.w r3, -1792(r30)
	storeli.w r3, -1796(r30)
	storeli.w r3, -1800(r30)
	storeli.w r3, -1804(r30)
	storeli.w r3, -1808(r30)
	storeli.w r3, -1812(r30)
	storeli.w r3, -1816(r30)
	storeli.w r3, -1820(r30)
	storeli.w r3, -1824(r30)
	storeli.w r3, -1828(r30)
	storeli.w r3, -1832(r30)
	storeli.w r3, -1836(r30)
	storeli.w r3, -1840(r30)
	storeli.w r3, -1844(r30)
	storeli.w r3, -1848(r30)
	storeli.w r3, -1852(r30)
	storeli.w r3, -1856(r30)
	storeli.w r3, -1860(r30)
	storeli.w r3, -1864(r30)
	storeli.w r3, -1868(r30)
	storeli.w r3, -1872(r30)
	storeli.w r3, -1876(r30)
	storeli.w r3, -1880(r30)
	storeli.w r3, -1884(r30)
	storeli.w r3, -1888(r30)
	storeli.w r3, -1892(r30)
	storeli.w r3, -1896(r30)
	storeli.w r3, -1900(r30)
	storeli.w r3, -1904(r30)
	storeli.w r3, -1908(r30)
	storeli.w r3, -1912(r30)
	storeli.w r3, -1916(r30)
	storeli.w r3, -1920(r30)
	storeli.w r3, -1924(r30)
	storeli.w r3, -1928(r30)
	storeli.w r3, -1932(r30)
	storeli.w r3, -1936(r30)
	storeli.w r3, -1940(r30)
	storeli.w r3, -1944(r30)
	storeli.w r3, -1948(r30)
	storeli.w r3, -1952(r30)
	storeli.w r3, -1956(r30)
	storeli.w r3, -1960(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -2052(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -4096(r30)
	storeli.w r3, -4092(r30)
	storeli.w r3, -4088(r30)
	storeli.w r3, -4084(r30)
	storeli.w r3, -4080(r30)
	storeli.w r3, -4076(r30)
	storeli.w r3, -4072(r30)
	storeli.w r3, -4068(r30)
	storeli.w r3, -4064(r30)
	storeli.w r3, -4060(r30)
	storeli.w r3, -4056(r30)
	storeli.w r3, -4052(r30)
	storeli.w r3, -4048(r30)
	storeli.w r3, -4044(r30)
	storeli.w r3, -4040(r30)
	storeli.w r3, -4036(r30)
	storeli.w r3, -4032(r30)
	storeli.w r3, -4028(r30)
	storeli.w r3, -4024(r30)
	storeli.w r3, -4020(r30)
	storeli.w r3, -4016(r30)
	storeli.w r3, -4012(r30)
	storeli.w r3, -4008(r30)
	storeli.w r3, -4004(r30)
	storeli.w r3, -4000(r30)
	storeli.w r3, -3996(r30)
	storeli.w r3, -3992(r30)
	storeli.w r3, -3988(r30)
	storeli.w r3, -3984(r30)
	storeli.w r3, -3980(r30)
	storeli.w r3, -3976(r30)
	storeli.w r3, -3972(r30)
	storeli.w r3, -3968(r30)
	storeli.w r3, -3964(r30)
	storeli.w r3, -3960(r30)
	storeli.w r3, -3956(r30)
	storeli.w r3, -3952(r30)
	storeli.w r3, -3948(r30)
	storeli.w r3, -3944(r30)
	storeli.w r3, -3940(r30)
	storeli.w r3, -3936(r30)
	storeli.w r3, -3932(r30)
	storeli.w r3, -3928(r30)
	storeli.w r3, -3924(r30)
	storeli.w r3, -3920(r30)
	storeli.w r3, -3916(r30)
	storeli.w r3, -3912(r30)
	storeli.w r3, -3908(r30)
	storeli.w r3, -3904(r30)
	storeli.w r3, -3900(r30)
	storeli.w r3, -3896(r30)
	storeli.w r3, -3892(r30)
	storeli.w r3, -3888(r30)
	storeli.w r3, -3884(r30)
	storeli.w r3, -3880(r30)
	storeli.w r3, -3876(r30)
	storeli.w r3, -3872(r30)
	storeli.w r3, -3868(r30)
	storeli.w r3, -3864(r30)
	storeli.w r3, -3860(r30)
	storeli.w r3, -3856(r30)
	storeli.w r3, -3852(r30)
	storeli.w r3, -3848(r30)
	storeli.w r3, -3844(r30)
	storeli.w r3, -3840(r30)
	storeli.w r3, -3836(r30)
	storeli.w r3, -3832(r30)
	storeli.w r3, -3828(r30)
	storeli.w r3, -3824(r30)
	storeli.w r3, -3820(r30)
	storeli.w r3, -3816(r30)
	storeli.w r3, -3812(r30)
	storeli.w r3, -3808(r30)
	storeli.w r3, -3804(r30)
	storeli.w r3, -3800(r30)
	storeli.w r3, -3796(r30)
	storeli.w r3, -3792(r30)
	storeli.w r3, -3788(r30)
	storeli.w r3, -3784(r30)
	storeli.w r3, -3780(r30)
	storeli.w r3, -3776(r30)
	storeli.w r3, -3772(r30)
	storeli.w r3, -3768(r30)
	storeli.w r3, -3764(r30)
	storeli.w r3, -3760(r30)
	storeli.w r3, -3756(r30)
	storeli.w r3, -3752(r30)
	storeli.w r3, -3748(r30)
	storeli.w r3, -3744(r30)
	storeli.w r3, -3740(r30)
	storeli.w r3, -3736(r30)
	storeli.w r3, -3732(r30)
	storeli.w r3, -3728(r30)
	storeli.w r3, -3724(r30)
	storeli.w r3, -3720(r30)
	storeli.w r3, -3716(r30)
	storeli.w r3, -3712(r30)
	storeli.w r3, -3708(r30)
	storeli.w r3, -3704(r30)
	storeli.w r3, -3700(r30)
	storeli.w r3, -3696(r30)
	storeli.w r3, -3692(r30)
	storeli.w r3, -3688(r30)
	storeli.w r3, -3684(r30)
	storeli.w r3, -3680(r30)
	storeli.w r3, -3676(r30)
	storeli.w r3, -3672(r30)
	storeli.w r3, -3668(r30)
	storeli.w r3, -3664(r30)
	storeli.w r3, -3660(r30)
	storeli.w r3, -3656(r30)
	storeli.w r3, -3652(r30)
	storeli.w r3, -3648(r30)
	storeli.w r3, -3644(r30)
	storeli.w r3, -3640(r30)
	storeli.w r3, -3636(r30)
	storeli.w r3, -3632(r30)
	storeli.w r3, -3628(r30)
	storeli.w r3, -3624(r30)
	storeli.w r3, -3620(r30)
	storeli.w r3, -3616(r30)
	storeli.w r3, -3612(r30)
	storeli.w r3, -3608(r30)
	storeli.w r3, -3604(r30)
	storeli.w r3, -3600(r30)
	storeli.w r3, -3596(r30)
	storeli.w r3, -3592(r30)
	storeli.w r3, -3588(r30)
	storeli.w r3, -3584(r30)
	storeli.w r3, -3580(r30)
	storeli.w r3, -3576(r30)
	storeli.w r3, -3572(r30)
	storeli.w r3, -3568(r30)
	storeli.w r3, -3564(r30)
	storeli.w r3, -3560(r30)
	storeli.w r3, -3556(r30)
	storeli.w r3, -3552(r30)
	storeli.w r3, -3548(r30)
	storeli.w r3, -3544(r30)
	storeli.w r3, -3540(r30)
	storeli.w r3, -3536(r30)
	storeli.w r3, -3532(r30)
	storeli.w r3, -3528(r30)
	storeli.w r3, -3524(r30)
	storeli.w r3, -3520(r30)
	storeli.w r3, -3516(r30)
	storeli.w r3, -3512(r30)
	storeli.w r3, -3508(r30)
	storeli.w r3, -3504(r30)
	storeli.w r3, -3500(r30)
	storeli.w r3, -3496(r30)
	storeli.w r3, -3492(r30)
	storeli.w r3, -3488(r30)
	storeli.w r3, -3484(r30)
	storeli.w r3, -3480(r30)
	storeli.w r3, -3476(r30)
	storeli.w r3, -3472(r30)
	storeli.w r3, -3468(r30)
	storeli.w r3, -3464(r30)
	storeli.w r3, -3460(r30)
	storeli.w r3, -3456(r30)
	storeli.w r3, -3452(r30)
	storeli.w r3, -3448(r30)
	storeli.w r3, -3444(r30)
	storeli.w r3, -3440(r30)
	storeli.w r3, -3436(r30)
	storeli.w r3, -3432(r30)
	storeli.w r3, -3428(r30)
	storeli.w r3, -3424(r30)
	storeli.w r3, -3420(r30)
	storeli.w r3, -3416(r30)
	storeli.w r3, -3412(r30)
	storeli.w r3, -3408(r30)
	storeli.w r3, -3404(r30)
	storeli.w r3, -3400(r30)
	storeli.w r3, -3396(r30)
	storeli.w r3, -3392(r30)
	storeli.w r3, -3388(r30)
	storeli.w r3, -3384(r30)
	storeli.w r3, -3380(r30)
	storeli.w r3, -3376(r30)
	storeli.w r3, -3372(r30)
	storeli.w r3, -3368(r30)
	storeli.w r3, -3364(r30)
	storeli.w r3, -3360(r30)
	storeli.w r3, -3356(r30)
	storeli.w r3, -3352(r30)
	storeli.w r3, -3348(r30)
	storeli.w r3, -3344(r30)
	storeli.w r3, -3340(r30)
	storeli.w r3, -3336(r30)
	storeli.w r3, -3332(r30)
	storeli.w r3, -3328(r30)
	storeli.w r3, -3324(r30)
	storeli.w r3, -3320(r30)
	storeli.w r3, -3316(r30)
	storeli.w r3, -3312(r30)
	storeli.w r3, -3308(r30)
	storeli.w r3, -3304(r30)
	storeli.w r3, -3300(r30)
	storeli.w r3, -3296(r30)
	storeli.w r3, -3292(r30)
	storeli.w r3, -3288(r30)
	storeli.w r3, -3284(r30)
	storeli.w r3, -3280(r30)
	storeli.w r3, -3276(r30)
	storeli.w r3, -3272(r30)
	storeli.w r3, -3268(r30)
	storeli.w r3, -3264(r30)
	storeli.w r3, -3260(r30)
	storeli.w r3, -3256(r30)
	storeli.w r3, -3252(r30)
	storeli.w r3, -3248(r30)
	storeli.w r3, -3244(r30)
	storeli.w r3, -3240(r30)
	storeli.w r3, -3236(r30)
	storeli.w r3, -3232(r30)
	storeli.w r3, -3228(r30)
	storeli.w r3, -3224(r30)
	storeli.w r3, -3220(r30)
	storeli.w r3, -3216(r30)
	storeli.w r3, -3212(r30)
	storeli.w r3, -3208(r30)
	storeli.w r3, -3204(r30)
	storeli.w r3, -3200(r30)
	storeli.w r3, -3196(r30)
	storeli.w r3, -3192(r30)
	storeli.w r3, -3188(r30)
	storeli.w r3, -3184(r30)
	storeli.w r3, -3180(r30)
	storeli.w r3, -3176(r30)
	storeli.w r3, -3172(r30)
	storeli.w r3, -3168(r30)
	storeli.w r3, -3164(r30)
	storeli.w r3, -3160(r30)
	storeli.w r3, -3156(r30)
	storeli.w r3, -3152(r30)
	storeli.w r3, -3148(r30)
	storeli.w r3, -3144(r30)
	storeli.w r3, -3140(r30)
	storeli.w r3, -3136(r30)
	storeli.w r3, -3132(r30)
	storeli.w r3, -3128(r30)
	storeli.w r3, -3124(r30)
	storeli.w r3, -3120(r30)
	storeli.w r3, -3116(r30)
	storeli.w r3, -3112(r30)
	storeli.w r3, -3108(r30)
	storeli.w r3, -3104(r30)
	storeli.w r3, -3100(r30)
	storeli.w r3, -3096(r30)
	storeli.w r3, -3092(r30)
	storeli.w r3, -3088(r30)
	storeli.w r3, -3084(r30)
	storeli.w r3, -3080(r30)
	storeli.w r3, -3076(r30)
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	mul.s r1, r2, r6
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	fmac.s r2, r2, r6
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	min.s r2, r2, r4
	.loc	1 54 5                          # parallel-rne.mlir:54:5
	ble.s r2, r1, .LBB0_659
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 48 11 is_stmt 1               # parallel-rne.mlir:48:11
	addli r4, r30, -4240
	lui r5, 1024
	lui r14, 522240
	lui r15, 1048560
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[1:2], r1
	addli r3, r30, -4200
	lui r4, 216
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r2, zero, 2047
	addli r3, r30, -4248
	lui r1, 1048572
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	lui r2, 522239
	lui r1, 524287
	ori r3, r2, 4095
	lui r2, 384
	ori r28, r1, 4095
	lui r1, 7
	ori r26, r2, 2176
	ori r2, r4, 2893
	lui r4, 385
	ori r1, r1, 4095
	storeli.w r2, -4252(r30)                # 4-byte Folded Spill
	lui r2, 1046527
	ori r18, r4, 2176
	ori r2, r2, 4095
	storeli.w r18, -4188(r30)               # 4-byte Folded Spill
	storeli.w r2, -4256(r30)                # 4-byte Folded Spill
	lui r2, 383
	ori r8, r2, 2176
	j .LBB0_8
.LBB0_5:                                # %.critedge19.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 854 7                         # parallel-rne.mlir:854:7
	addli r2, zero, 16
	xsignal r2, 0
	.loc	1 855 7                         # parallel-rne.mlir:855:7
	addli r2, zero, 24
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -4200
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	.loc	1 54 5 is_stmt 1                # parallel-rne.mlir:54:5
	addli r2, r30, -4240
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4200
	addli.d r[9:10], r[9:10], 1
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	setlt.sl r2, r[9:10], r[6:7]
	beq r2, zero, .LBB0_659
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_67 Depth 2
                                        #       Child Loop BB0_69 Depth 3
                                        #     Child Loop BB0_92 Depth 2
                                        #       Child Loop BB0_94 Depth 3
                                        #     Child Loop BB0_117 Depth 2
                                        #       Child Loop BB0_119 Depth 3
                                        #     Child Loop BB0_142 Depth 2
                                        #       Child Loop BB0_144 Depth 3
                                        #     Child Loop BB0_167 Depth 2
                                        #       Child Loop BB0_169 Depth 3
                                        #     Child Loop BB0_192 Depth 2
                                        #       Child Loop BB0_194 Depth 3
                                        #     Child Loop BB0_217 Depth 2
                                        #       Child Loop BB0_219 Depth 3
                                        #     Child Loop BB0_246 Depth 2
                                        #     Child Loop BB0_258 Depth 2
                                        #       Child Loop BB0_260 Depth 3
                                        #     Child Loop BB0_282 Depth 2
                                        #       Child Loop BB0_284 Depth 3
                                        #     Child Loop BB0_306 Depth 2
                                        #       Child Loop BB0_308 Depth 3
                                        #     Child Loop BB0_330 Depth 2
                                        #       Child Loop BB0_332 Depth 3
                                        #     Child Loop BB0_354 Depth 2
                                        #       Child Loop BB0_356 Depth 3
                                        #     Child Loop BB0_378 Depth 2
                                        #       Child Loop BB0_380 Depth 3
                                        #     Child Loop BB0_402 Depth 2
                                        #       Child Loop BB0_404 Depth 3
                                        #     Child Loop BB0_426 Depth 2
                                        #       Child Loop BB0_428 Depth 3
                                        #     Child Loop BB0_452 Depth 2
                                        #     Child Loop BB0_454 Depth 2
                                        #     Child Loop BB0_466 Depth 2
                                        #       Child Loop BB0_468 Depth 3
                                        #     Child Loop BB0_490 Depth 2
                                        #       Child Loop BB0_492 Depth 3
                                        #     Child Loop BB0_514 Depth 2
                                        #       Child Loop BB0_516 Depth 3
                                        #     Child Loop BB0_538 Depth 2
                                        #       Child Loop BB0_540 Depth 3
                                        #     Child Loop BB0_562 Depth 2
                                        #       Child Loop BB0_564 Depth 3
                                        #     Child Loop BB0_586 Depth 2
                                        #       Child Loop BB0_588 Depth 3
                                        #     Child Loop BB0_610 Depth 2
                                        #       Child Loop BB0_612 Depth 3
                                        #     Child Loop BB0_634 Depth 2
                                        #       Child Loop BB0_636 Depth 3
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r2, zero, 4
	bneq r13, r2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 17
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, r30, -4200
	loadli.w r2,  48(r30)
	addli r7, zero, 4
	addli r6, zero, 0
	load.d r[9:10], 0(r4)                   # 8-byte Folded Reload
	loadli.w r4,  44(r30)
	div.s r2, r9, r2
	addli r9, zero, 8
	div.s r2, r2, r4
	addli r4, zero, 256
	div.s r4, r2, r4
	slli r10, r4, 3
	slli r4, r4, 8
	sub.s r7, r7, r10
	sub.s r4, r2, r4
	min.s r7, r7, r9
	mod.s r2, r2, r7
	div.s r4, r4, r7
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	loadli.w r7,  -4096(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	storeli.w r7, -4104(r30)                # 4-byte Folded Spill
	loadli.w r7,  -3072(r30)
	add.s r2, r10, r2
	storeli.w r7, -4112(r30)                # 4-byte Folded Spill
	slli r7, r4, 5
	zext_int2long r[10:11], r4
	slli r4, r2, 5
	storeli.w r7, -4184(r30)                # 4-byte Folded Spill
	zext_int2long r[12:13], r2
	addli r7, r30, -4224
	addli r2, zero, 4
	storeli.w r4, -4228(r30)                # 4-byte Folded Spill
	addli r4, zero, 5
	store.d r[12:13], 0(r7)                 # 8-byte Folded Spill
	sll.d r[10:11], r[10:11], r4
	addli r4, zero, 12
	sll.d r[12:13], r[12:13], r4
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r4, zero, 1
	sll.d r[16:17], r[10:11], r4
	addli r4, r30, -4248
	load.d r[10:11], 0(r4)                  # 8-byte Folded Reload
	addli r4, r30, -4120
	and.d r[9:10], r[12:13], r[10:11]
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	load.d r[9:10], 8(r30)
	addli r4, r30, -4208
	store.d r[16:17], 0(r4)                 # 8-byte Folded Spill
	addli r4, r30, -4128
	add.ul r[9:10], r[9:10], r[16:17]
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	addli r10, zero, 0
	addli r9, zero, 96
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 256
	addli r11, zero, 1
	addli r24, zero, 64
	addli r9, zero, 128
	addli r16, zero, 16
	addli r7, zero, 5
	addli r17, zero, 15
	ori r4, r4, 64
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	add.s r2, r2, r4
	addli r4, zero, 4
	lock zero, r4
	addli r4, zero, 2048
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r23, zero, 2
	dma_cfg r2, r22, r24, 3
	addli r2, zero, 4
	addli r22, zero, 6
	dma_cfg r9, r24, r11, 4
	dma_cfg r9, r4, r16, 5
	addli r4, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 3
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 21
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 22
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 23
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 24
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 25
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 26
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 27
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r24, 3
	dma_cfg r9, zero, r11, 4
	dma_cfg r9, zero, r16, 5
	addli r9, zero, 96
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r22, 0
.LBB0_12:                               # %.thread57
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r10, r10, 1
	addli r4, zero, 8
	beq r10, r4, .LBB0_35
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 123 15                        # parallel-rne.mlir:123:15
	addli r6, r6, 1
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	zext_int2long r[22:23], r10
	addli r4, r30, -4120
	addli r7, zero, 4
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	sll.d r[16:17], r[22:23], r2
	addli r2, zero, 16383
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	add.ul r[24:25], r[16:17], r[12:13]
	zext_int2long r[16:17], r2
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	setlt.ul r2, r[16:17], r[24:25]
	load.d r[17:18], 0(r4)                  # 8-byte Folded Reload
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	bneq r2, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[17:18], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	loadli.w r2,  -4104(r30)                # 4-byte Folded Reload
	loadli.w r4,  -4112(r30)                # 4-byte Folded Reload
	addli r11, zero, 255
	zext_int2long r[19:20], r9
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r27, zero, 2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r16, r4, r6
	add.s r2, r2, r6
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	mod.s r4, r2, r11
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r21, r16, r11
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r2, r2, 1
	addli r11, r30, -4160
	store.d r[19:20], 0(r11)                # 8-byte Folded Spill
	storeli.w r2, -4096(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r2, r16, 1
	storeli.w r2, -3072(r30)
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r11, r4, 11
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r4, r21, 12
	addli r21, r4, 4096
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	beq r2, r27, .LBB0_21
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r27
	addli r2, zero, 1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r27, r2, .LBB0_24
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 128
	sub.sl r[17:18], r[24:25], r[17:18]
	addli r11, r30, -4160
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	sll.d r[24:25], r[24:25], r2
	zext_int2long r[22:23], r9
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	load.d r[19:20], 0(r11)                 # 8-byte Folded Reload
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r11, zero, 254
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[17:18], r[17:18], r[22:23]
	min.sl r[22:23], r[17:18], r[19:20]
	sub.sl r[17:18], r[22:23], r[17:18]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	load.d r[22:23], 0(r30)
	addli r2, r17, 32
	addli r18, zero, 3
	add.ul r[22:23], r[22:23], r[24:25]
	addli r24, zero, 1
	xwait r18, 0
	blt.s r11, r16, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r16, zero, 2
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 7
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 18
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 19
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 20
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 21
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 22
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 23
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 24
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 25
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 26
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 27
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 28
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 29
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 30
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 31
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 64
	dma_cfg r24, r24, zero, 0
	dma_cfg r24, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r7, 3
	addli r7, zero, 32
	dma_cfg r9, zero, r24, 4
	dma_cfg r9, zero, r7, 5
	dma_cfg zero, zero, r7, 8
	dma_run zero
	dma_cfg zero, zero, r24, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 4
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r4, r4, 4160
	addli r25, zero, 64
	addli r17, zero, 32
	addli r11, zero, 5
	addli r16, zero, 2
	lock zero, r7
	dma_cfg r24, r24, zero, 0
	dma_cfg zero, r23, zero, 2
	dma_cfg r4, r22, r25, 3
	addli r4, zero, 256
	dma_cfg r9, r25, r24, 4
	dma_cfg r9, r4, r2, 5
	addli r4, zero, 6
	dma_cfg zero, zero, r17, 8
	dma_run zero
	dma_cfg zero, zero, r24, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 7
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 21
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 22
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 23
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 24
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 25
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 26
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 27
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	dma_cfg r24, r24, zero, 0
	dma_cfg r24, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r25, 3
	dma_cfg r9, zero, r24, 4
	dma_cfg r9, zero, r2, 5
	addli r9, zero, 96
	dma_cfg zero, zero, r17, 8
	dma_run zero
	dma_cfg zero, zero, r24, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r16, 0
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	j .LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 2
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	addli r2, zero, 5
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r27
	addli r18, zero, 7
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	xwait r4, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r4, zero, 0
	addli r4, zero, 16
	ds_cfg r2, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 3
	shuffle_batch r11, r21, r4, 1
	unlock zero
	xsignal r2, 0
	xsignal r7, 0
.LBB0_22:                               # %.thread54
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r2,  -2048(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r4,  -1024(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, r2, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r4, r4, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r2, -2048(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r4, -1024(r30)
.LBB0_23:                               # %.thread57
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli r2, zero, 4
	j .LBB0_12
.LBB0_24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 113 15 is_stmt 1              # parallel-rne.mlir:113:15
	loadli.w r2,  -2048(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r16,  -1024(r30)
	addli r17, zero, 255
	lui r18, 256
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r4, r2, r17
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r17, r16, r17
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, r2, 1
	storeli.w r2, -2048(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r2, r17, 11
	addli r17, r16, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r4, r4, 11
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	add.s r21, r2, r18
	addli r18, zero, 7
	storeli.w r17, -1024(r30)
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	beq r27, r18, .LBB0_28
# %bb.25:                               #   in Loop: Header=BB0_14 Depth=2
	addli r17, zero, 6
	bneq r27, r17, .LBB0_29
# %bb.26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r4, r30, -4128
	addli r9, zero, 15
	load.d r[19:20], 0(r4)                  # 8-byte Folded Reload
	sll.d r[17:18], r[22:23], r9
	addli r4, zero, 254
	add.ul r[22:23], r[19:20], r[17:18]
	addli r18, zero, 7
	xwait r18, 0
	blt.s r4, r16, .LBB0_11
# %bb.27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r16, zero, 1
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r4, zero, 2
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 3
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 21
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 22
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 23
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 24
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 25
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 26
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 27
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 64
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r4, 3
	addli r4, zero, 128
	dma_cfg r4, zero, r16, 4
	dma_cfg r4, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_11
.LBB0_28:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	addli r2, zero, 6
	addli r7, zero, 16
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 32
	ds_cfg r2, zero, 1
	ds_cfg r7, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 8
	shuffle_coa r4, r21, r7, 2
	unlock zero
	xsignal r18, 0
	xsignal r2, 0
	j .LBB0_23
.LBB0_29:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	addli r7, zero, 4
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	bneq r2, r7, .LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 8
	xwait r7, 0
	addli r7, zero, 32
	addli r16, zero, 16
	xwait r2, 0
	addli r2, zero, 1
	lock zero, r2
	mm_cfg r7, r16, r7, 0
	mm_cfg r2, r2, r2, 2
	addli r2, zero, 4
	beq r6, zero, .LBB0_33
# %bb.31:                               # %.preheader87
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc zero, r11, r4, 8
	j .LBB0_34
.LBB0_32:                               # %.thread57.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r10, r10, 1
	addli r2, zero, 4
	addli r4, zero, 8
	bneq r10, r4, .LBB0_13
	j .LBB0_37
.LBB0_33:                               # %.preheader86
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	mm zero, r11, r4, 8
.LBB0_34:                               # %.thread57.thread120
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r4, zero, 1
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r10, r10, 1
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	unlock r4
	addli r4, zero, 5
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r4, zero, 8
	bneq r10, r4, .LBB0_13
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	bneq r27, r2, .LBB0_37
.LBB0_36:                               # %.thread122
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_37:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	addli r4, zero, 3
	bneq r2, r4, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	xwait r4, 0
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	addli r4, zero, 20
	xwait r4, 0
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 32
	.loc	1 146 7 is_stmt 1               # parallel-rne.mlir:146:7
	xfence
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r4
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r4, zero, 255
	csr_set csr5, r4
	addli r4, zero, 3
	zext_int2long r[9:10], r4
	addli r4, r30, -4168
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	addli r9, zero, 15
	sync_core
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	bneq r2, zero, .LBB0_64
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[9:10], zero
	addli r2, r30, -4112
	mfence { lm, sm, gm }
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	j .LBB0_42
.LBB0_41:                               # %middle.block263
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 156 9                         # parallel-rne.mlir:156:9
	addli r2, r30, -4168
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4104
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_63
.LBB0_42:                               # %.preheader85
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4104
	sll.d r[17:18], r[9:10], r2
	addli r2, r30, -4112
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	load.d r[19:20], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_44
.LBB0_43:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 157 11 is_stmt 1              # parallel-rne.mlir:157:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	add.s r2, r2, r8
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	setneq.d r10, r[19:20], r[6:7]
	.loc	1 172 13                        # parallel-rne.mlir:172:13
	stores.w r4, 12(r2)
	stores.w r23, 8(r2)
	stores.w r25, 4(r2)
	stores.w r9, 0(r2)
	.loc	1 157 11                        # parallel-rne.mlir:157:11
	beq r10, zero, .LBB0_41
.LBB0_44:                               # %vector.body259
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.ul r[9:10], r[19:20], r[17:18]
	slli r2, r9, 2
	loads.w r21, 12(r2)
	loads.w r16, 0(r2)
	loads.w r27, 4(r2)
	loads.w r24, 8(r2)
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	and r22, r21, r28
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	setlt.u r4, r14, r22
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r4, zero, .LBB0_46
# %bb.45:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r21, 0
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_44 Depth=3
	or r4, r21, r5
.LBB0_47:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	and r11, r24, r28
	setlt.u r9, r14, r11
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r9, zero, .LBB0_49
# %bb.48:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_44 Depth=3
	or r23, r24, r5
.LBB0_50:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	and r10, r27, r28
	setlt.u r9, r14, r10
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r9, zero, .LBB0_52
# %bb.51:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r27, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_44 Depth=3
	or r25, r27, r5
.LBB0_53:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	and r12, r16, r28
	setlt.u r9, r14, r12
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	bneq r9, zero, .LBB0_55
# %bb.54:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r16, 0
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r12, r3, r12
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r12, zero, .LBB0_56
	j .LBB0_57
.LBB0_55:                               #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r16, r5
	.loc	1 169 19 is_stmt 1              # parallel-rne.mlir:169:19
	setlt.u r12, r3, r12
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r12, zero, .LBB0_57
.LBB0_56:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r16, 16
	andi r9, r9, 1
	add.s r9, r16, r9
	add.s r9, r9, r1
	and r9, r9, r15
.LBB0_57:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	setlt.u r10, r3, r10
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r10, zero, .LBB0_60
# %bb.58:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r11
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	beq r10, zero, .LBB0_61
.LBB0_59:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r22
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r10, zero, .LBB0_43
	j .LBB0_62
.LBB0_60:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r27, 16
	andi r10, r10, 1
	add.s r10, r27, r10
	add.s r10, r10, r1
	and r25, r10, r15
	setlt.u r10, r3, r11
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r10, zero, .LBB0_59
.LBB0_61:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r24, 16
	andi r10, r10, 1
	add.s r10, r24, r10
	add.s r10, r10, r1
	and r23, r10, r15
	setlt.u r10, r3, r22
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	bneq r10, zero, .LBB0_43
.LBB0_62:                               # %vector.body259
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r1
	and r4, r4, r15
	j .LBB0_43
.LBB0_63:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	addli r18, zero, 7
	addli r9, zero, 15
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	mfence { sm }
.LBB0_64:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[10:11], r18
	.loc	1 177 7 is_stmt 1               # parallel-rne.mlir:177:7
	addli r4, r30, -4104
	store.d r[10:11], 0(r4)                 # 8-byte Folded Spill
	addli r4, zero, 1
	bneq r2, r4, .LBB0_89
# %bb.65:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_67
.LBB0_66:                               # %middle.block257
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 184 9 is_stmt 1               # parallel-rne.mlir:184:9
	addli r2, r30, -4104
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4112
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_88
.LBB0_67:                               # %.preheader84
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_69 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4112
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_69
.LBB0_68:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 185 11 is_stmt 1              # parallel-rne.mlir:185:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 200 13                        # parallel-rne.mlir:200:13
	add.s r2, r2, r8
	.loc	1 185 11                        # parallel-rne.mlir:185:11
	setneq.d r9, r[17:18], r[6:7]
	.loc	1 200 13                        # parallel-rne.mlir:200:13
	stores.w r4, 12(r2)
	stores.w r21, 8(r2)
	stores.w r23, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 185 11                        # parallel-rne.mlir:185:11
	beq r9, zero, .LBB0_66
.LBB0_69:                               # %vector.body253
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	add.ul r[9:10], r[17:18], r[12:13]
	slli r2, r9, 2
	loads.w r19, 12(r2)
	loads.w r25, 0(r2)
	loads.w r24, 4(r2)
	loads.w r22, 8(r2)
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	and r20, r19, r28
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	setlt.u r4, r14, r20
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r4, zero, .LBB0_71
# %bb.70:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r19, 0
	j .LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_69 Depth=3
	or r4, r19, r5
.LBB0_72:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	and r11, r22, r28
	setlt.u r9, r14, r11
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r9, zero, .LBB0_74
# %bb.73:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_69 Depth=3
	or r21, r22, r5
.LBB0_75:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	and r27, r24, r28
	setlt.u r9, r14, r27
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r9, zero, .LBB0_77
# %bb.76:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_69 Depth=3
	or r23, r24, r5
.LBB0_78:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	and r9, r25, r28
	setlt.u r10, r14, r9
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r10, zero, .LBB0_80
# %bb.79:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r9, r3, r9
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	beq r9, zero, .LBB0_81
	j .LBB0_82
.LBB0_80:                               #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 197 19 is_stmt 1              # parallel-rne.mlir:197:19
	setlt.u r9, r3, r9
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r9, zero, .LBB0_82
.LBB0_81:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r1
	and r16, r9, r15
.LBB0_82:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r9, r3, r27
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	beq r9, zero, .LBB0_85
# %bb.83:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	beq r9, zero, .LBB0_86
.LBB0_84:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r20
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r9, zero, .LBB0_68
	j .LBB0_87
.LBB0_85:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r1
	and r23, r9, r15
	setlt.u r9, r3, r11
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r9, zero, .LBB0_84
.LBB0_86:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r21, r9, r15
	setlt.u r9, r3, r20
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	bneq r9, zero, .LBB0_68
.LBB0_87:                               # %vector.body253
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r4, r4, r15
	j .LBB0_68
.LBB0_88:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	addli r18, zero, 7
	addli r9, zero, 15
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	mfence { sm }
.LBB0_89:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 11
	zext_int2long r[10:11], r4
	.loc	1 205 7 is_stmt 1               # parallel-rne.mlir:205:7
	addli r4, r30, -4112
	store.d r[10:11], 0(r4)                 # 8-byte Folded Spill
	addli r4, zero, 2
	bneq r2, r4, .LBB0_114
# %bb.90:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 205 7                         # parallel-rne.mlir:205:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_92
.LBB0_91:                               # %middle.block251
                                        #   in Loop: Header=BB0_92 Depth=2
	.loc	1 212 9 is_stmt 1               # parallel-rne.mlir:212:9
	addli r2, r30, -4112
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_113
.LBB0_92:                               # %.preheader83
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_94 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4120
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_94
.LBB0_93:                               # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	.loc	1 213 11 is_stmt 1              # parallel-rne.mlir:213:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 228 13                        # parallel-rne.mlir:228:13
	add.s r2, r2, r8
	.loc	1 213 11                        # parallel-rne.mlir:213:11
	setneq.d r9, r[17:18], r[6:7]
	.loc	1 228 13                        # parallel-rne.mlir:228:13
	stores.w r4, 12(r2)
	stores.w r21, 8(r2)
	stores.w r23, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 213 11                        # parallel-rne.mlir:213:11
	beq r9, zero, .LBB0_91
.LBB0_94:                               # %vector.body247
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	add.ul r[9:10], r[17:18], r[12:13]
	slli r2, r9, 2
	loads.w r19, 12(r2)
	loads.w r25, 0(r2)
	loads.w r24, 4(r2)
	loads.w r22, 8(r2)
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	and r20, r19, r28
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	setlt.u r4, r14, r20
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r4, zero, .LBB0_96
# %bb.95:                               # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r19, 0
	j .LBB0_97
.LBB0_96:                               #   in Loop: Header=BB0_94 Depth=3
	or r4, r19, r5
.LBB0_97:                               # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	and r11, r22, r28
	setlt.u r9, r14, r11
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r9, zero, .LBB0_99
# %bb.98:                               # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_94 Depth=3
	or r21, r22, r5
.LBB0_100:                              # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	and r27, r24, r28
	setlt.u r9, r14, r27
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r9, zero, .LBB0_102
# %bb.101:                              # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_103
.LBB0_102:                              #   in Loop: Header=BB0_94 Depth=3
	or r23, r24, r5
.LBB0_103:                              # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	and r9, r25, r28
	setlt.u r10, r14, r9
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r10, zero, .LBB0_105
# %bb.104:                              # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 225 19 is_stmt 1              # parallel-rne.mlir:225:19
	setlt.u r9, r3, r9
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	beq r9, zero, .LBB0_106
	j .LBB0_107
.LBB0_105:                              #   in Loop: Header=BB0_94 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 225 19 is_stmt 1              # parallel-rne.mlir:225:19
	setlt.u r9, r3, r9
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r9, zero, .LBB0_107
.LBB0_106:                              # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r1
	and r16, r9, r15
.LBB0_107:                              # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	setlt.u r9, r3, r27
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	beq r9, zero, .LBB0_110
# %bb.108:                              # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	beq r9, zero, .LBB0_111
.LBB0_109:                              # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r20
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r9, zero, .LBB0_93
	j .LBB0_112
.LBB0_110:                              # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r1
	and r23, r9, r15
	setlt.u r9, r3, r11
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r9, zero, .LBB0_109
.LBB0_111:                              # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r21, r9, r15
	setlt.u r9, r3, r20
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r9, zero, .LBB0_93
.LBB0_112:                              # %vector.body247
                                        #   in Loop: Header=BB0_94 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r4, r4, r15
	j .LBB0_93
.LBB0_113:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	addli r18, zero, 7
	addli r9, zero, 15
	.loc	1 205 7                         # parallel-rne.mlir:205:7
	mfence { sm }
.LBB0_114:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[9:10], r9
	.loc	1 233 7 is_stmt 1               # parallel-rne.mlir:233:7
	addli r4, r30, -4120
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	addli r4, zero, 3
	bneq r2, r4, .LBB0_139
# %bb.115:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 233 7                         # parallel-rne.mlir:233:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_117
.LBB0_116:                              # %middle.block245
                                        #   in Loop: Header=BB0_117 Depth=2
	.loc	1 240 9 is_stmt 1               # parallel-rne.mlir:240:9
	addli r2, r30, -4120
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4128
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_138
.LBB0_117:                              # %.preheader82
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_119 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4128
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_119
.LBB0_118:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 241 11 is_stmt 1              # parallel-rne.mlir:241:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 256 13                        # parallel-rne.mlir:256:13
	add.s r2, r2, r8
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	setneq.d r9, r[17:18], r[6:7]
	.loc	1 256 13                        # parallel-rne.mlir:256:13
	stores.w r4, 12(r2)
	stores.w r21, 8(r2)
	stores.w r23, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	beq r9, zero, .LBB0_116
.LBB0_119:                              # %vector.body241
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_117 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.ul r[9:10], r[17:18], r[12:13]
	slli r2, r9, 2
	loads.w r19, 12(r2)
	loads.w r25, 0(r2)
	loads.w r24, 4(r2)
	loads.w r22, 8(r2)
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	and r20, r19, r28
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	setlt.u r4, r14, r20
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r4, zero, .LBB0_121
# %bb.120:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r19, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_119 Depth=3
	or r4, r19, r5
.LBB0_122:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	and r11, r22, r28
	setlt.u r9, r14, r11
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r9, zero, .LBB0_124
# %bb.123:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_125
.LBB0_124:                              #   in Loop: Header=BB0_119 Depth=3
	or r21, r22, r5
.LBB0_125:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	and r27, r24, r28
	setlt.u r9, r14, r27
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r9, zero, .LBB0_127
# %bb.126:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_119 Depth=3
	or r23, r24, r5
.LBB0_128:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	and r9, r25, r28
	setlt.u r10, r14, r9
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r10, zero, .LBB0_130
# %bb.129:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 253 19 is_stmt 1              # parallel-rne.mlir:253:19
	setlt.u r9, r3, r9
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	beq r9, zero, .LBB0_131
	j .LBB0_132
.LBB0_130:                              #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 253 19 is_stmt 1              # parallel-rne.mlir:253:19
	setlt.u r9, r3, r9
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r9, zero, .LBB0_132
.LBB0_131:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r1
	and r16, r9, r15
.LBB0_132:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	setlt.u r9, r3, r27
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	beq r9, zero, .LBB0_135
# %bb.133:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	beq r9, zero, .LBB0_136
.LBB0_134:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r20
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r9, zero, .LBB0_118
	j .LBB0_137
.LBB0_135:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r1
	and r23, r9, r15
	setlt.u r9, r3, r11
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r9, zero, .LBB0_134
.LBB0_136:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r21, r9, r15
	setlt.u r9, r3, r20
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r9, zero, .LBB0_118
.LBB0_137:                              # %vector.body241
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r4, r4, r15
	j .LBB0_118
.LBB0_138:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	addli r18, zero, 7
	.loc	1 233 7                         # parallel-rne.mlir:233:7
	mfence { sm }
.LBB0_139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 19
	zext_int2long r[9:10], r4
	.loc	1 261 7 is_stmt 1               # parallel-rne.mlir:261:7
	addli r4, r30, -4128
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	addli r4, zero, 4
	bneq r2, r4, .LBB0_164
# %bb.140:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 261 7                         # parallel-rne.mlir:261:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_142
.LBB0_141:                              # %middle.block239
                                        #   in Loop: Header=BB0_142 Depth=2
	.loc	1 268 9 is_stmt 1               # parallel-rne.mlir:268:9
	addli r2, r30, -4128
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4136
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_163
.LBB0_142:                              # %.preheader81
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_144 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4136
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_144
.LBB0_143:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 269 11 is_stmt 1              # parallel-rne.mlir:269:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 284 13                        # parallel-rne.mlir:284:13
	add.s r2, r2, r8
	.loc	1 269 11                        # parallel-rne.mlir:269:11
	setneq.d r9, r[17:18], r[6:7]
	.loc	1 284 13                        # parallel-rne.mlir:284:13
	stores.w r4, 12(r2)
	stores.w r21, 8(r2)
	stores.w r23, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 269 11                        # parallel-rne.mlir:269:11
	beq r9, zero, .LBB0_141
.LBB0_144:                              # %vector.body235
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	add.ul r[9:10], r[17:18], r[12:13]
	slli r2, r9, 2
	loads.w r19, 12(r2)
	loads.w r25, 0(r2)
	loads.w r24, 4(r2)
	loads.w r22, 8(r2)
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	and r20, r19, r28
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	setlt.u r4, r14, r20
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r4, zero, .LBB0_146
# %bb.145:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r19, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	or r4, r19, r5
.LBB0_147:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	and r11, r22, r28
	setlt.u r9, r14, r11
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r9, zero, .LBB0_149
# %bb.148:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_144 Depth=3
	or r21, r22, r5
.LBB0_150:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	and r27, r24, r28
	setlt.u r9, r14, r27
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r9, zero, .LBB0_152
# %bb.151:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_144 Depth=3
	or r23, r24, r5
.LBB0_153:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	and r9, r25, r28
	setlt.u r10, r14, r9
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r10, zero, .LBB0_155
# %bb.154:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 281 19 is_stmt 1              # parallel-rne.mlir:281:19
	setlt.u r9, r3, r9
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	beq r9, zero, .LBB0_156
	j .LBB0_157
.LBB0_155:                              #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 281 19 is_stmt 1              # parallel-rne.mlir:281:19
	setlt.u r9, r3, r9
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r9, zero, .LBB0_157
.LBB0_156:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r1
	and r16, r9, r15
.LBB0_157:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	setlt.u r9, r3, r27
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	beq r9, zero, .LBB0_160
# %bb.158:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	beq r9, zero, .LBB0_161
.LBB0_159:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r20
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r9, zero, .LBB0_143
	j .LBB0_162
.LBB0_160:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r1
	and r23, r9, r15
	setlt.u r9, r3, r11
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r9, zero, .LBB0_159
.LBB0_161:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r21, r9, r15
	setlt.u r9, r3, r20
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	bneq r9, zero, .LBB0_143
.LBB0_162:                              # %vector.body235
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r1
	and r4, r4, r15
	j .LBB0_143
.LBB0_163:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	addli r18, zero, 7
	.loc	1 261 7                         # parallel-rne.mlir:261:7
	mfence { sm }
.LBB0_164:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 23
	zext_int2long r[9:10], r4
	.loc	1 289 7 is_stmt 1               # parallel-rne.mlir:289:7
	addli r4, r30, -4136
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	addli r4, zero, 5
	bneq r2, r4, .LBB0_189
# %bb.165:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 289 7                         # parallel-rne.mlir:289:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_167
.LBB0_166:                              # %middle.block233
                                        #   in Loop: Header=BB0_167 Depth=2
	.loc	1 296 9 is_stmt 1               # parallel-rne.mlir:296:9
	addli r2, r30, -4136
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4144
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_188
.LBB0_167:                              # %.preheader80
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_169 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4144
	zext_int2long r[21:22], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_169
.LBB0_168:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 297 11 is_stmt 1              # parallel-rne.mlir:297:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 312 13                        # parallel-rne.mlir:312:13
	add.s r2, r2, r8
	.loc	1 297 11                        # parallel-rne.mlir:297:11
	setneq.d r9, r[21:22], r[6:7]
	.loc	1 312 13                        # parallel-rne.mlir:312:13
	stores.w r4, 12(r2)
	stores.w r19, 8(r2)
	stores.w r23, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 297 11                        # parallel-rne.mlir:297:11
	beq r9, zero, .LBB0_166
.LBB0_169:                              # %vector.body229
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_167 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	add.ul r[9:10], r[21:22], r[12:13]
	slli r2, r9, 2
	loads.w r9, 12(r2)
	loads.w r25, 0(r2)
	loads.w r24, 4(r2)
	loads.w r20, 8(r2)
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	and r10, r9, r28
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	setlt.u r4, r14, r10
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_171
# %bb.170:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r9, 0
	j .LBB0_172
.LBB0_171:                              #   in Loop: Header=BB0_169 Depth=3
	or r4, r9, r5
.LBB0_172:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	and r11, r20, r28
	setlt.u r16, r14, r11
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r16, zero, .LBB0_174
# %bb.173:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_169 Depth=3
	or r19, r20, r5
.LBB0_175:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	and r27, r24, r28
	setlt.u r16, r14, r27
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r16, zero, .LBB0_177
# %bb.176:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_169 Depth=3
	or r23, r24, r5
.LBB0_178:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r16, zero, .LBB0_180
# %bb.179:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 309 19 is_stmt 1              # parallel-rne.mlir:309:19
	setlt.u r17, r3, r17
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	beq r17, zero, .LBB0_181
	j .LBB0_182
.LBB0_180:                              #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 309 19 is_stmt 1              # parallel-rne.mlir:309:19
	setlt.u r17, r3, r17
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r17, zero, .LBB0_182
.LBB0_181:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_182:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	setlt.u r17, r3, r27
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	beq r17, zero, .LBB0_185
# %bb.183:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	beq r11, zero, .LBB0_186
.LBB0_184:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r10, zero, .LBB0_168
	j .LBB0_187
.LBB0_185:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r24, 16
	andi r17, r17, 1
	add.s r17, r24, r17
	add.s r17, r17, r1
	and r23, r17, r15
	setlt.u r11, r3, r11
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r11, zero, .LBB0_184
.LBB0_186:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r20, 16
	andi r11, r11, 1
	add.s r11, r20, r11
	add.s r11, r11, r1
	and r19, r11, r15
	setlt.u r10, r3, r10
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r10, zero, .LBB0_168
.LBB0_187:                              # %vector.body229
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r1
	and r4, r4, r15
	j .LBB0_168
.LBB0_188:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 289 7                         # parallel-rne.mlir:289:7
	mfence { sm }
.LBB0_189:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 27
	zext_int2long r[9:10], r4
	.loc	1 317 7 is_stmt 1               # parallel-rne.mlir:317:7
	addli r4, r30, -4144
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	addli r4, zero, 6
	bneq r2, r4, .LBB0_214
# %bb.190:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 317 7                         # parallel-rne.mlir:317:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_192
.LBB0_191:                              # %middle.block227
                                        #   in Loop: Header=BB0_192 Depth=2
	.loc	1 324 9 is_stmt 1               # parallel-rne.mlir:324:9
	addli r2, r30, -4144
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4152
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_213
.LBB0_192:                              # %.preheader79
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_194 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4152
	zext_int2long r[21:22], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_194
.LBB0_193:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 325 11 is_stmt 1              # parallel-rne.mlir:325:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 340 13                        # parallel-rne.mlir:340:13
	add.s r2, r2, r8
	.loc	1 325 11                        # parallel-rne.mlir:325:11
	setneq.d r9, r[21:22], r[6:7]
	.loc	1 340 13                        # parallel-rne.mlir:340:13
	stores.w r4, 12(r2)
	stores.w r19, 8(r2)
	stores.w r23, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 325 11                        # parallel-rne.mlir:325:11
	beq r9, zero, .LBB0_191
.LBB0_194:                              # %vector.body223
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	add.ul r[9:10], r[21:22], r[12:13]
	slli r2, r9, 2
	loads.w r9, 12(r2)
	loads.w r25, 0(r2)
	loads.w r24, 4(r2)
	loads.w r20, 8(r2)
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	and r10, r9, r28
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	setlt.u r4, r14, r10
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_196
# %bb.195:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r9, 0
	j .LBB0_197
.LBB0_196:                              #   in Loop: Header=BB0_194 Depth=3
	or r4, r9, r5
.LBB0_197:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	and r11, r20, r28
	setlt.u r16, r14, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r16, zero, .LBB0_199
# %bb.198:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_194 Depth=3
	or r19, r20, r5
.LBB0_200:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	and r27, r24, r28
	setlt.u r16, r14, r27
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r16, zero, .LBB0_202
# %bb.201:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_203
.LBB0_202:                              #   in Loop: Header=BB0_194 Depth=3
	or r23, r24, r5
.LBB0_203:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r16, zero, .LBB0_205
# %bb.204:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 337 19 is_stmt 1              # parallel-rne.mlir:337:19
	setlt.u r17, r3, r17
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	beq r17, zero, .LBB0_206
	j .LBB0_207
.LBB0_205:                              #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 337 19 is_stmt 1              # parallel-rne.mlir:337:19
	setlt.u r17, r3, r17
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r17, zero, .LBB0_207
.LBB0_206:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_207:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	setlt.u r17, r3, r27
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	beq r17, zero, .LBB0_210
# %bb.208:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	beq r11, zero, .LBB0_211
.LBB0_209:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r10, zero, .LBB0_193
	j .LBB0_212
.LBB0_210:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r24, 16
	andi r17, r17, 1
	add.s r17, r24, r17
	add.s r17, r17, r1
	and r23, r17, r15
	setlt.u r11, r3, r11
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r11, zero, .LBB0_209
.LBB0_211:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r20, 16
	andi r11, r11, 1
	add.s r11, r20, r11
	add.s r11, r11, r1
	and r19, r11, r15
	setlt.u r10, r3, r10
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	bneq r10, zero, .LBB0_193
.LBB0_212:                              # %vector.body223
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r1
	and r4, r4, r15
	j .LBB0_193
.LBB0_213:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 317 7                         # parallel-rne.mlir:317:7
	mfence { sm }
.LBB0_214:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 31
	zext_int2long r[9:10], r4
	.loc	1 345 7 is_stmt 1               # parallel-rne.mlir:345:7
	addli r4, r30, -4152
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	bneq r2, r18, .LBB0_239
# %bb.215:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 345 7                         # parallel-rne.mlir:345:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_217
.LBB0_216:                              # %middle.block221
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 352 9 is_stmt 1               # parallel-rne.mlir:352:9
	addli r2, r30, -4152
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4176
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_238
.LBB0_217:                              # %.preheader78
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_219 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4176
	zext_int2long r[19:20], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_219
.LBB0_218:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 353 11 is_stmt 1              # parallel-rne.mlir:353:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	add.s r2, r2, r8
	.loc	1 353 11                        # parallel-rne.mlir:353:11
	setneq.d r9, r[19:20], r[6:7]
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	stores.w r4, 12(r2)
	stores.w r23, 8(r2)
	stores.w r25, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 353 11                        # parallel-rne.mlir:353:11
	beq r9, zero, .LBB0_216
.LBB0_219:                              # %vector.body217
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	add.ul r[9:10], r[19:20], r[12:13]
	slli r2, r9, 2
	loads.w r9, 12(r2)
	loads.w r22, 0(r2)
	loads.w r21, 4(r2)
	loads.w r24, 8(r2)
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	and r10, r9, r28
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	setlt.u r4, r14, r10
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r4, zero, .LBB0_221
# %bb.220:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r9, 0
	j .LBB0_222
.LBB0_221:                              #   in Loop: Header=BB0_219 Depth=3
	or r4, r9, r5
.LBB0_222:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	and r11, r24, r28
	setlt.u r16, r14, r11
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r16, zero, .LBB0_224
# %bb.223:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_225
.LBB0_224:                              #   in Loop: Header=BB0_219 Depth=3
	or r23, r24, r5
.LBB0_225:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	and r27, r21, r28
	setlt.u r16, r14, r27
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r16, zero, .LBB0_227
# %bb.226:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r21, 0
	j .LBB0_228
.LBB0_227:                              #   in Loop: Header=BB0_219 Depth=3
	or r25, r21, r5
.LBB0_228:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	and r17, r22, r28
	setlt.u r16, r14, r17
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	bneq r16, zero, .LBB0_230
# %bb.229:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r22, 0
	.loc	1 365 19 is_stmt 1              # parallel-rne.mlir:365:19
	setlt.u r17, r3, r17
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	beq r17, zero, .LBB0_231
	j .LBB0_232
.LBB0_230:                              #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r22, r5
	.loc	1 365 19 is_stmt 1              # parallel-rne.mlir:365:19
	setlt.u r17, r3, r17
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r17, zero, .LBB0_232
.LBB0_231:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r22, 16
	andi r16, r16, 1
	add.s r16, r22, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_232:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	setlt.u r17, r3, r27
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	beq r17, zero, .LBB0_235
# %bb.233:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	beq r11, zero, .LBB0_236
.LBB0_234:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r10, zero, .LBB0_218
	j .LBB0_237
.LBB0_235:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r21, 16
	andi r17, r17, 1
	add.s r17, r21, r17
	add.s r17, r17, r1
	and r25, r17, r15
	setlt.u r11, r3, r11
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r11, zero, .LBB0_234
.LBB0_236:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r10, zero, .LBB0_218
.LBB0_237:                              # %vector.body217
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r1
	and r4, r4, r15
	j .LBB0_218
.LBB0_238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 345 7                         # parallel-rne.mlir:345:7
	mfence { sm }
.LBB0_239:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -4184(r30)                # 4-byte Folded Reload
	zext_int2long r[9:10], r4
	addli r4, zero, 992
	zext_int2long r[11:12], r4
	.loc	1 373 7 is_stmt 1               # parallel-rne.mlir:373:7
	addli r4, r30, -4216
	min.ul r[11:12], r[9:10], r[11:12]
	addli.d r[11:12], r[11:12], 32
	max.ul r[11:12], r[11:12], r[9:10]
	sub.sl r[9:10], r[11:12], r[9:10]
	min.ul r[9:10], r[9:10], r[6:7]
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	addli r4, zero, 255
	csr_set csr5, r4
	addli r4, zero, 3
	sync_core
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	bneq r2, r4, .LBB0_242
# %bb.240:                              # %.thread59.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 11
	.loc	1 375 7 is_stmt 1               # parallel-rne.mlir:375:7
	addli r9, zero, 18
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	xsignal r4, 0
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	xsignal r9, 0
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	xwait r4, 0
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	addli r4, zero, 19
	xwait r4, 0
.LBB0_241:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r18,  -4188(r30)               # 4-byte Folded Reload
	addli r9, zero, 15
	addli r13, zero, 4096
	.loc	1 378 7 is_stmt 1               # parallel-rne.mlir:378:7
	j .LBB0_248
.LBB0_242:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r9, 383
	addli r19, zero, 1
	ori r17, r9, 2048
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	bneq r2, r19, .LBB0_244
# %bb.243:                              # %.thread59.thread62
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -4208
	addli r21, zero, 22
	addli r16, zero, 5
	addli r13, zero, 4
	addli r23, zero, 10
	addli r27, zero, 11
	addli r25, zero, 15
	addli r24, zero, 20
	addli r20, zero, 64
	load.d r[9:10], 16(r30)
	lui r22, 383
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	xwait r21, 0
	lock zero, r16
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	add.ul r[11:12], r[9:10], r[11:12]
	dma_cfg zero, zero, r4, 10
	addli r4, r30, -4216
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 21
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 23
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r21, 10
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
	addli r2, zero, 128
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r17, zero, r20, 3
	dma_cfg r2, zero, r19, 4
	dma_cfg r2, zero, r19, 5
	ori r2, r22, 2112
	addli r22, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
	lock zero, r13
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r12, zero, 2
	load.d r[9:10], 0(r4)                   # 8-byte Folded Reload
	dma_cfg r2, r11, r20, 3
	addli r11, zero, 128
	addli r4, r9, 31
	srli r2, r4, 5
	slli r4, r9, 1
	addli r9, zero, 2
	dma_cfg r11, r20, r2, 4
	andi r4, r4, 62
	dma_cfg r11, r20, r19, 5
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	lock zero, r16
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 4096
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 7
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 12
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 13
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 16
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 18
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 19
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 23
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r21, 10
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
	addli r9, zero, 15
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r17, zero, r20, 3
	dma_cfg r11, zero, r2, 4
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	dma_cfg r11, zero, r19, 5
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
	xsignal r18, 0
	loadli.w r18,  -4188(r30)               # 4-byte Folded Reload
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	j .LBB0_248
.LBB0_244:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 5
	bneq r2, r4, .LBB0_241
# %bb.245:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 18
	addli r2, zero, 0
	addli r9, zero, 15
	addli r13, zero, 4096
	xwait r4, 0
	addli r4, zero, 21
	xwait r4, 0
	addli r4, zero, 2
	lock zero, r4
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 31
	ew_cfg zero, r4, zero, 2
	addli r4, zero, 1
	ew_cfg r4, zero, zero, 3
	loadli.w r18,  -4188(r30)               # 4-byte Folded Reload
.LBB0_246:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r2, r8
	addli r2, r2, 128
	dsmadd r4, r4, r17, 0
	bneq r2, r13, .LBB0_246
# %bb.247:                              # %.thread59
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 19
	xsignal r2, 0
	addli r2, zero, 22
	xsignal r2, 0
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
.LBB0_248:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	xfence
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r4, zero, 255
	.loc	1 384 7                         # parallel-rne.mlir:384:7
	mfence { lm, sm, gm }
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	csr_set csr5, r4
	sync_core
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	beq r2, zero, .LBB0_256
# %bb.249:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 414 7                         # parallel-rne.mlir:414:7
	addli r4, zero, 1
	beq r2, r4, .LBB0_280
.LBB0_250:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	addli r4, zero, 2
	beq r2, r4, .LBB0_304
.LBB0_251:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	addli r4, zero, 3
	beq r2, r4, .LBB0_328
.LBB0_252:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	addli r4, zero, 4
	beq r2, r4, .LBB0_352
.LBB0_253:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 526 7                         # parallel-rne.mlir:526:7
	addli r4, zero, 5
	beq r2, r4, .LBB0_376
.LBB0_254:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r4, zero, 6
	beq r2, r4, .LBB0_400
.LBB0_255:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 582 7                         # parallel-rne.mlir:582:7
	addli r4, zero, 7
	beq r2, r4, .LBB0_424
	j .LBB0_448
.LBB0_256:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	xfence
	zext_int2long r[9:10], zero
	addli r2, r30, -4184
	mfence { lm, sm, gm }
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	j .LBB0_258
.LBB0_257:                              # %middle.block215
                                        #   in Loop: Header=BB0_258 Depth=2
	.loc	1 393 9                         # parallel-rne.mlir:393:9
	addli r2, r30, -4168
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4176
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_279
.LBB0_258:                              # %.preheader77
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_260 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4176
	sll.d r[19:20], r[9:10], r2
	addli r2, r30, -4184
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_260
.LBB0_259:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 394 11 is_stmt 1              # parallel-rne.mlir:394:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 409 13                        # parallel-rne.mlir:409:13
	stores.w r23, 12(r2)
	stores.w r24, 8(r2)
	stores.w r21, 4(r2)
	stores.w r9, 0(r2)
	.loc	1 394 11                        # parallel-rne.mlir:394:11
	setneq.d r4, r[12:13], r[6:7]
	beq r4, zero, .LBB0_257
.LBB0_260:                              # %vector.body211
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_258 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	add.ul r[9:10], r[12:13], r[19:20]
	slli r2, r9, 2
	add.s r9, r2, r8
	loads.w r4, 12(r9)
	loads.w r16, 0(r9)
	loads.w r22, 4(r9)
	loads.w r25, 8(r9)
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	and r27, r4, r28
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	setlt.u r9, r14, r27
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	bneq r9, zero, .LBB0_262
# %bb.261:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r4, 0
	j .LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_260 Depth=3
	or r23, r4, r5
.LBB0_263:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	and r11, r25, r28
	setlt.u r9, r14, r11
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	bneq r9, zero, .LBB0_265
# %bb.264:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r25, 0
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_260 Depth=3
	or r24, r25, r5
.LBB0_266:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	and r10, r22, r28
	setlt.u r9, r14, r10
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	bneq r9, zero, .LBB0_268
# %bb.267:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_260 Depth=3
	or r21, r22, r5
.LBB0_269:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	and r17, r16, r28
	setlt.u r9, r14, r17
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	bneq r9, zero, .LBB0_271
# %bb.270:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r16, 0
	.loc	1 406 19 is_stmt 1              # parallel-rne.mlir:406:19
	setlt.u r17, r3, r17
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	beq r17, zero, .LBB0_272
	j .LBB0_273
.LBB0_271:                              #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r16, r5
	.loc	1 406 19 is_stmt 1              # parallel-rne.mlir:406:19
	setlt.u r17, r3, r17
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r17, zero, .LBB0_273
.LBB0_272:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r16, 16
	andi r9, r9, 1
	add.s r9, r16, r9
	add.s r9, r9, r1
	and r9, r9, r15
.LBB0_273:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	setlt.u r10, r3, r10
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	beq r10, zero, .LBB0_276
# %bb.274:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r11
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	beq r10, zero, .LBB0_277
.LBB0_275:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r27
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r10, zero, .LBB0_259
	j .LBB0_278
.LBB0_276:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r22, 16
	andi r10, r10, 1
	add.s r10, r22, r10
	add.s r10, r10, r1
	and r21, r10, r15
	setlt.u r10, r3, r11
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r10, zero, .LBB0_275
.LBB0_277:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r25, 16
	andi r10, r10, 1
	add.s r10, r25, r10
	add.s r10, r10, r1
	and r24, r10, r15
	setlt.u r10, r3, r27
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r10, zero, .LBB0_259
.LBB0_278:                              # %vector.body211
                                        #   in Loop: Header=BB0_260 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r4, 16
	andi r10, r10, 1
	add.s r4, r4, r10
	add.s r4, r4, r1
	and r23, r4, r15
	j .LBB0_259
.LBB0_279:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 386 7 is_stmt 1               # parallel-rne.mlir:386:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	addli r9, zero, 15
	addli r13, zero, 4096
	loadli.w r18,  -4188(r30)               # 4-byte Folded Reload
	.loc	1 414 7                         # parallel-rne.mlir:414:7
	addli r4, zero, 1
	bneq r2, r4, .LBB0_250
.LBB0_280:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 414 7                         # parallel-rne.mlir:414:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_282
.LBB0_281:                              # %middle.block209
                                        #   in Loop: Header=BB0_282 Depth=2
	.loc	1 421 9 is_stmt 1               # parallel-rne.mlir:421:9
	addli r2, r30, -4104
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4176
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_303
.LBB0_282:                              # %.preheader76
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_284 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4176
	zext_int2long r[19:20], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_284
.LBB0_283:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 422 11 is_stmt 1              # parallel-rne.mlir:422:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 437 13                        # parallel-rne.mlir:437:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 422 11                        # parallel-rne.mlir:422:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_281
.LBB0_284:                              # %vector.body205
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	add.ul r[9:10], r[19:20], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r8
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	and r10, r4, r28
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	setlt.u r9, r14, r10
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r9, zero, .LBB0_286
# %bb.285:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_287
.LBB0_286:                              #   in Loop: Header=BB0_284 Depth=3
	or r9, r4, r5
.LBB0_287:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	and r11, r24, r28
	setlt.u r16, r14, r11
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r16, zero, .LBB0_289
# %bb.288:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_290
.LBB0_289:                              #   in Loop: Header=BB0_284 Depth=3
	or r23, r24, r5
.LBB0_290:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	and r27, r22, r28
	setlt.u r16, r14, r27
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r16, zero, .LBB0_292
# %bb.291:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_293
.LBB0_292:                              #   in Loop: Header=BB0_284 Depth=3
	or r21, r22, r5
.LBB0_293:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r16, zero, .LBB0_295
# %bb.294:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 434 19 is_stmt 1              # parallel-rne.mlir:434:19
	setlt.u r17, r3, r17
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	beq r17, zero, .LBB0_296
	j .LBB0_297
.LBB0_295:                              #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 434 19 is_stmt 1              # parallel-rne.mlir:434:19
	setlt.u r17, r3, r17
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r17, zero, .LBB0_297
.LBB0_296:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_297:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	setlt.u r17, r3, r27
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	beq r17, zero, .LBB0_300
# %bb.298:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	beq r11, zero, .LBB0_301
.LBB0_299:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r10, zero, .LBB0_283
	j .LBB0_302
.LBB0_300:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r22, 16
	andi r17, r17, 1
	add.s r17, r22, r17
	add.s r17, r17, r1
	and r21, r17, r15
	setlt.u r11, r3, r11
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r11, zero, .LBB0_299
.LBB0_301:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	bneq r10, zero, .LBB0_283
.LBB0_302:                              # %vector.body205
                                        #   in Loop: Header=BB0_284 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_283
.LBB0_303:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 414 7 is_stmt 1               # parallel-rne.mlir:414:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	addli r9, zero, 15
	addli r13, zero, 4096
	loadli.w r18,  -4188(r30)               # 4-byte Folded Reload
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	addli r4, zero, 2
	bneq r2, r4, .LBB0_251
.LBB0_304:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_306
.LBB0_305:                              # %middle.block203
                                        #   in Loop: Header=BB0_306 Depth=2
	.loc	1 449 9 is_stmt 1               # parallel-rne.mlir:449:9
	addli r2, r30, -4112
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4176
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_327
.LBB0_306:                              # %.preheader75
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_308 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4176
	zext_int2long r[19:20], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_308
.LBB0_307:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 450 11 is_stmt 1              # parallel-rne.mlir:450:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 465 13                        # parallel-rne.mlir:465:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 450 11                        # parallel-rne.mlir:450:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_305
.LBB0_308:                              # %vector.body199
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	add.ul r[9:10], r[19:20], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r8
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	and r10, r4, r28
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	setlt.u r9, r14, r10
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	bneq r9, zero, .LBB0_310
# %bb.309:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_311
.LBB0_310:                              #   in Loop: Header=BB0_308 Depth=3
	or r9, r4, r5
.LBB0_311:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	and r11, r24, r28
	setlt.u r16, r14, r11
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	bneq r16, zero, .LBB0_313
# %bb.312:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_308 Depth=3
	or r23, r24, r5
.LBB0_314:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	and r27, r22, r28
	setlt.u r16, r14, r27
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	bneq r16, zero, .LBB0_316
# %bb.315:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_317
.LBB0_316:                              #   in Loop: Header=BB0_308 Depth=3
	or r21, r22, r5
.LBB0_317:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	bneq r16, zero, .LBB0_319
# %bb.318:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 462 19 is_stmt 1              # parallel-rne.mlir:462:19
	setlt.u r17, r3, r17
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	beq r17, zero, .LBB0_320
	j .LBB0_321
.LBB0_319:                              #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 462 19 is_stmt 1              # parallel-rne.mlir:462:19
	setlt.u r17, r3, r17
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r17, zero, .LBB0_321
.LBB0_320:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_321:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	setlt.u r17, r3, r27
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	beq r17, zero, .LBB0_324
# %bb.322:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	beq r11, zero, .LBB0_325
.LBB0_323:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r10, zero, .LBB0_307
	j .LBB0_326
.LBB0_324:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r22, 16
	andi r17, r17, 1
	add.s r17, r22, r17
	add.s r17, r17, r1
	and r21, r17, r15
	setlt.u r11, r3, r11
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r11, zero, .LBB0_323
.LBB0_325:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 463 19                        # parallel-rne.mlir:463:19
	bneq r10, zero, .LBB0_307
.LBB0_326:                              # %vector.body199
                                        #   in Loop: Header=BB0_308 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_307
.LBB0_327:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 442 7 is_stmt 1               # parallel-rne.mlir:442:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	addli r9, zero, 15
	addli r13, zero, 4096
	loadli.w r18,  -4188(r30)               # 4-byte Folded Reload
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	addli r4, zero, 3
	bneq r2, r4, .LBB0_252
.LBB0_328:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_330
.LBB0_329:                              # %middle.block197
                                        #   in Loop: Header=BB0_330 Depth=2
	.loc	1 477 9 is_stmt 1               # parallel-rne.mlir:477:9
	addli r2, r30, -4120
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4176
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_351
.LBB0_330:                              # %.preheader74
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_332 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4176
	zext_int2long r[19:20], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_332
.LBB0_331:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 478 11 is_stmt 1              # parallel-rne.mlir:478:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 493 13                        # parallel-rne.mlir:493:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 478 11                        # parallel-rne.mlir:478:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_329
.LBB0_332:                              # %vector.body193
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_330 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	add.ul r[9:10], r[19:20], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r8
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	and r10, r4, r28
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	setlt.u r9, r14, r10
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r9, zero, .LBB0_334
# %bb.333:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_335
.LBB0_334:                              #   in Loop: Header=BB0_332 Depth=3
	or r9, r4, r5
.LBB0_335:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	and r11, r24, r28
	setlt.u r16, r14, r11
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r16, zero, .LBB0_337
# %bb.336:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_338
.LBB0_337:                              #   in Loop: Header=BB0_332 Depth=3
	or r23, r24, r5
.LBB0_338:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	and r27, r22, r28
	setlt.u r16, r14, r27
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r16, zero, .LBB0_340
# %bb.339:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_341
.LBB0_340:                              #   in Loop: Header=BB0_332 Depth=3
	or r21, r22, r5
.LBB0_341:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	bneq r16, zero, .LBB0_343
# %bb.342:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 490 19 is_stmt 1              # parallel-rne.mlir:490:19
	setlt.u r17, r3, r17
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	beq r17, zero, .LBB0_344
	j .LBB0_345
.LBB0_343:                              #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 490 19 is_stmt 1              # parallel-rne.mlir:490:19
	setlt.u r17, r3, r17
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r17, zero, .LBB0_345
.LBB0_344:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_345:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	setlt.u r17, r3, r27
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	beq r17, zero, .LBB0_348
# %bb.346:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	beq r11, zero, .LBB0_349
.LBB0_347:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r10, zero, .LBB0_331
	j .LBB0_350
.LBB0_348:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r22, 16
	andi r17, r17, 1
	add.s r17, r22, r17
	add.s r17, r17, r1
	and r21, r17, r15
	setlt.u r11, r3, r11
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r11, zero, .LBB0_347
.LBB0_349:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	bneq r10, zero, .LBB0_331
.LBB0_350:                              # %vector.body193
                                        #   in Loop: Header=BB0_332 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_331
.LBB0_351:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 470 7 is_stmt 1               # parallel-rne.mlir:470:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	addli r9, zero, 15
	addli r13, zero, 4096
	loadli.w r18,  -4188(r30)               # 4-byte Folded Reload
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	addli r4, zero, 4
	bneq r2, r4, .LBB0_253
.LBB0_352:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_354
.LBB0_353:                              # %middle.block191
                                        #   in Loop: Header=BB0_354 Depth=2
	.loc	1 505 9 is_stmt 1               # parallel-rne.mlir:505:9
	addli r2, r30, -4128
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4176
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_375
.LBB0_354:                              # %.preheader73
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_356 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4176
	zext_int2long r[19:20], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_356
.LBB0_355:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 506 11 is_stmt 1              # parallel-rne.mlir:506:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 521 13                        # parallel-rne.mlir:521:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 506 11                        # parallel-rne.mlir:506:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_353
.LBB0_356:                              # %vector.body187
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_354 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	add.ul r[9:10], r[19:20], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r8
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 509 19                        # parallel-rne.mlir:509:19
	and r10, r4, r28
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	setlt.u r9, r14, r10
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	bneq r9, zero, .LBB0_358
# %bb.357:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_359
.LBB0_358:                              #   in Loop: Header=BB0_356 Depth=3
	or r9, r4, r5
.LBB0_359:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	and r11, r24, r28
	setlt.u r16, r14, r11
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	bneq r16, zero, .LBB0_361
# %bb.360:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_362
.LBB0_361:                              #   in Loop: Header=BB0_356 Depth=3
	or r23, r24, r5
.LBB0_362:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	and r27, r22, r28
	setlt.u r16, r14, r27
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	bneq r16, zero, .LBB0_364
# %bb.363:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_365
.LBB0_364:                              #   in Loop: Header=BB0_356 Depth=3
	or r21, r22, r5
.LBB0_365:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	bneq r16, zero, .LBB0_367
# %bb.366:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 518 19 is_stmt 1              # parallel-rne.mlir:518:19
	setlt.u r17, r3, r17
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	beq r17, zero, .LBB0_368
	j .LBB0_369
.LBB0_367:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 518 19 is_stmt 1              # parallel-rne.mlir:518:19
	setlt.u r17, r3, r17
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r17, zero, .LBB0_369
.LBB0_368:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_369:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	setlt.u r17, r3, r27
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	beq r17, zero, .LBB0_372
# %bb.370:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	beq r11, zero, .LBB0_373
.LBB0_371:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r10, zero, .LBB0_355
	j .LBB0_374
.LBB0_372:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r22, 16
	andi r17, r17, 1
	add.s r17, r22, r17
	add.s r17, r17, r1
	and r21, r17, r15
	setlt.u r11, r3, r11
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r11, zero, .LBB0_371
.LBB0_373:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 519 19                        # parallel-rne.mlir:519:19
	bneq r10, zero, .LBB0_355
.LBB0_374:                              # %vector.body187
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_355
.LBB0_375:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 498 7 is_stmt 1               # parallel-rne.mlir:498:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	addli r9, zero, 15
	addli r13, zero, 4096
	loadli.w r18,  -4188(r30)               # 4-byte Folded Reload
	.loc	1 526 7                         # parallel-rne.mlir:526:7
	addli r4, zero, 5
	bneq r2, r4, .LBB0_254
.LBB0_376:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 526 7                         # parallel-rne.mlir:526:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_378
.LBB0_377:                              # %middle.block185
                                        #   in Loop: Header=BB0_378 Depth=2
	.loc	1 533 9 is_stmt 1               # parallel-rne.mlir:533:9
	addli r2, r30, -4136
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4176
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_399
.LBB0_378:                              # %.preheader72
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_380 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4176
	zext_int2long r[19:20], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_380
.LBB0_379:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 534 11 is_stmt 1              # parallel-rne.mlir:534:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 534 11                        # parallel-rne.mlir:534:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_377
.LBB0_380:                              # %vector.body181
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_378 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	add.ul r[9:10], r[19:20], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r8
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 537 19                        # parallel-rne.mlir:537:19
	and r10, r4, r28
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	setlt.u r9, r14, r10
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r9, zero, .LBB0_382
# %bb.381:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_383
.LBB0_382:                              #   in Loop: Header=BB0_380 Depth=3
	or r9, r4, r5
.LBB0_383:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	and r11, r24, r28
	setlt.u r16, r14, r11
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r16, zero, .LBB0_385
# %bb.384:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_380 Depth=3
	or r23, r24, r5
.LBB0_386:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	and r27, r22, r28
	setlt.u r16, r14, r27
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r16, zero, .LBB0_388
# %bb.387:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_389
.LBB0_388:                              #   in Loop: Header=BB0_380 Depth=3
	or r21, r22, r5
.LBB0_389:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	bneq r16, zero, .LBB0_391
# %bb.390:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 546 19 is_stmt 1              # parallel-rne.mlir:546:19
	setlt.u r17, r3, r17
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	beq r17, zero, .LBB0_392
	j .LBB0_393
.LBB0_391:                              #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 546 19 is_stmt 1              # parallel-rne.mlir:546:19
	setlt.u r17, r3, r17
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r17, zero, .LBB0_393
.LBB0_392:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_393:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	setlt.u r17, r3, r27
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	beq r17, zero, .LBB0_396
# %bb.394:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	beq r11, zero, .LBB0_397
.LBB0_395:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r10, zero, .LBB0_379
	j .LBB0_398
.LBB0_396:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r22, 16
	andi r17, r17, 1
	add.s r17, r22, r17
	add.s r17, r17, r1
	and r21, r17, r15
	setlt.u r11, r3, r11
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r11, zero, .LBB0_395
.LBB0_397:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	bneq r10, zero, .LBB0_379
.LBB0_398:                              # %vector.body181
                                        #   in Loop: Header=BB0_380 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_379
.LBB0_399:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 526 7 is_stmt 1               # parallel-rne.mlir:526:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	addli r9, zero, 15
	addli r13, zero, 4096
	loadli.w r18,  -4188(r30)               # 4-byte Folded Reload
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r4, zero, 6
	bneq r2, r4, .LBB0_255
.LBB0_400:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_402
.LBB0_401:                              # %middle.block179
                                        #   in Loop: Header=BB0_402 Depth=2
	.loc	1 561 9 is_stmt 1               # parallel-rne.mlir:561:9
	addli r2, r30, -4144
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4176
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_423
.LBB0_402:                              # %.preheader71
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_404 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4176
	zext_int2long r[19:20], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_404
.LBB0_403:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 562 11 is_stmt 1              # parallel-rne.mlir:562:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 577 13                        # parallel-rne.mlir:577:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 562 11                        # parallel-rne.mlir:562:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_401
.LBB0_404:                              # %vector.body175
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_402 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	add.ul r[9:10], r[19:20], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r8
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	and r10, r4, r28
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	setlt.u r9, r14, r10
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r9, zero, .LBB0_406
# %bb.405:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_404 Depth=3
	or r9, r4, r5
.LBB0_407:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	and r11, r24, r28
	setlt.u r16, r14, r11
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r16, zero, .LBB0_409
# %bb.408:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_404 Depth=3
	or r23, r24, r5
.LBB0_410:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	and r27, r22, r28
	setlt.u r16, r14, r27
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r16, zero, .LBB0_412
# %bb.411:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_413
.LBB0_412:                              #   in Loop: Header=BB0_404 Depth=3
	or r21, r22, r5
.LBB0_413:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r16, zero, .LBB0_415
# %bb.414:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 574 19 is_stmt 1              # parallel-rne.mlir:574:19
	setlt.u r17, r3, r17
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	beq r17, zero, .LBB0_416
	j .LBB0_417
.LBB0_415:                              #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 574 19 is_stmt 1              # parallel-rne.mlir:574:19
	setlt.u r17, r3, r17
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r17, zero, .LBB0_417
.LBB0_416:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_417:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	setlt.u r17, r3, r27
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	beq r17, zero, .LBB0_420
# %bb.418:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	beq r11, zero, .LBB0_421
.LBB0_419:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r10, zero, .LBB0_403
	j .LBB0_422
.LBB0_420:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r22, 16
	andi r17, r17, 1
	add.s r17, r22, r17
	add.s r17, r17, r1
	and r21, r17, r15
	setlt.u r11, r3, r11
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r11, zero, .LBB0_419
.LBB0_421:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r10, zero, .LBB0_403
.LBB0_422:                              # %vector.body175
                                        #   in Loop: Header=BB0_404 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_403
.LBB0_423:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7 is_stmt 1               # parallel-rne.mlir:554:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	addli r9, zero, 15
	addli r13, zero, 4096
	loadli.w r18,  -4188(r30)               # 4-byte Folded Reload
	.loc	1 582 7                         # parallel-rne.mlir:582:7
	addli r4, zero, 7
	bneq r2, r4, .LBB0_448
.LBB0_424:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 582 7                         # parallel-rne.mlir:582:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_426
.LBB0_425:                              # %middle.block173
                                        #   in Loop: Header=BB0_426 Depth=2
	.loc	1 589 9 is_stmt 1               # parallel-rne.mlir:589:9
	addli r2, r30, -4152
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4176
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_447
.LBB0_426:                              # %.preheader70
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_428 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4176
	zext_int2long r[19:20], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_428
.LBB0_427:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 590 11 is_stmt 1              # parallel-rne.mlir:590:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 605 13                        # parallel-rne.mlir:605:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 590 11                        # parallel-rne.mlir:590:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_425
.LBB0_428:                              # %vector.body169
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_426 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	add.ul r[9:10], r[19:20], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r8
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	and r10, r4, r28
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	setlt.u r9, r14, r10
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	bneq r9, zero, .LBB0_430
# %bb.429:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_431
.LBB0_430:                              #   in Loop: Header=BB0_428 Depth=3
	or r9, r4, r5
.LBB0_431:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	and r11, r24, r28
	setlt.u r16, r14, r11
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	bneq r16, zero, .LBB0_433
# %bb.432:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_434
.LBB0_433:                              #   in Loop: Header=BB0_428 Depth=3
	or r23, r24, r5
.LBB0_434:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	and r27, r22, r28
	setlt.u r16, r14, r27
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	bneq r16, zero, .LBB0_436
# %bb.435:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_437
.LBB0_436:                              #   in Loop: Header=BB0_428 Depth=3
	or r21, r22, r5
.LBB0_437:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	bneq r16, zero, .LBB0_439
# %bb.438:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 602 19 is_stmt 1              # parallel-rne.mlir:602:19
	setlt.u r17, r3, r17
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	beq r17, zero, .LBB0_440
	j .LBB0_441
.LBB0_439:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 602 19 is_stmt 1              # parallel-rne.mlir:602:19
	setlt.u r17, r3, r17
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r17, zero, .LBB0_441
.LBB0_440:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_441:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	setlt.u r17, r3, r27
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	beq r17, zero, .LBB0_444
# %bb.442:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	beq r11, zero, .LBB0_445
.LBB0_443:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r10, zero, .LBB0_427
	j .LBB0_446
.LBB0_444:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r22, 16
	andi r17, r17, 1
	add.s r17, r22, r17
	add.s r17, r17, r1
	and r21, r17, r15
	setlt.u r11, r3, r11
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r11, zero, .LBB0_443
.LBB0_445:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	bneq r10, zero, .LBB0_427
.LBB0_446:                              # %vector.body169
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_427
.LBB0_447:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 582 7 is_stmt 1               # parallel-rne.mlir:582:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	addli r9, zero, 15
	addli r13, zero, 4096
	loadli.w r18,  -4188(r30)               # 4-byte Folded Reload
.LBB0_448:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	addli r4, zero, 255
	csr_set csr5, r4
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	addli r4, zero, 3
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	sync_core
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	bneq r2, r4, .LBB0_450
# %bb.449:                              # %.critedge15.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 14
	xsignal r4, 0
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	addli r4, zero, 12
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	xsignal r9, 0
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	xsignal r4, 0
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	addli r4, zero, 20
	xsignal r4, 0
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	addli r4, zero, 13
	xwait r4, 0
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	addli r4, zero, 23
	xwait r4, 0
	j .LBB0_456
.LBB0_450:                              # %.critedge10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	addli r4, zero, 5
	bneq r2, r4, .LBB0_456
# %bb.451:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 12
	addli r9, zero, 2
	addli r10, zero, 1
	lui r11, 266232
	lui r12, 790528
	addli r2, zero, 0
	xwait r4, 0
	addli r4, zero, 24
	xwait r4, 0
	lock zero, r9
	addli r4, zero, 1023
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r4, zero, 2
	addli r4, zero, 13
	ew_cfg r10, zero, zero, 3
	ew_cfg r10, r10, zero, 19
	ew_cfg r4, zero, zero, 10
	loadli.w r4,  -4252(r30)                # 4-byte Folded Reload
	ew_cfg r9, r10, r4, 11
	addli r4, zero, 3
	ew_cfg zero, zero, r4, 13
	addli r4, zero, 4
	ew_cfg r12, r4, r11, 14
	lui r4, 260096
	ew_cfg zero, r4, zero, 15
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	addli r4, zero, 14
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	sslut r26, zero, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r9
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	xwait r4, 0
	addli r4, zero, 25
	xwait r4, 0
	lock zero, r9
	addli r4, zero, 31
	addli r9, zero, 1
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r4, zero, 2
	ew_cfg r10, zero, zero, 3
	loadli.w r4,  -4256(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r4, zero, zero, 0
.LBB0_452:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r2, r18
	dscmpnsel r4, r2, r2, 0
	addli r2, r2, 128
	bneq r2, r13, .LBB0_452
# %bb.453:                              # %.critedge12
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 2
	addli r2, zero, 0
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	unlock r4
	.loc	1 619 7 is_stmt 1               # parallel-rne.mlir:619:7
	lock zero, r4
	addli r4, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r4, zero, 2
	ew_cfg r9, zero, zero, 3
	ewcoeff_cfg r3, zero, zero, 0
.LBB0_454:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r2, r18
	addli r2, r2, 128
	dscmpnsel r4, r4, r4, 4
	bneq r2, r13, .LBB0_454
# %bb.455:                              # %.critedge15
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 2
	addli r2, zero, 15
	lui r10, 260096
	addli r9, zero, 1023
	.loc	1 620 7 is_stmt 1               # parallel-rne.mlir:620:7
	addli r11, zero, 25
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	unlock r4
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	xwait r2, 0
	lock zero, r4
	lui r2, 784384
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r10, r2, zero, 0
	addli r2, zero, 1
	ew_cfg zero, r9, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, r2, 19
	dsmadd zero, zero, r18, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r11, 0
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r10, r10, zero, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, r2, 19
	addli r2, zero, 13
	dsmadd r26, r26, zero, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r2, 0
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
.LBB0_456:                              # %.critedge17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	xfence
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	addli r4, zero, 255
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	mfence { lm, sm, gm }
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	csr_set csr5, r4
	sync_core
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	beq r2, zero, .LBB0_464
# %bb.457:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 657 7                         # parallel-rne.mlir:657:7
	addli r4, zero, 1
	beq r2, r4, .LBB0_488
.LBB0_458:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 685 7                         # parallel-rne.mlir:685:7
	addli r4, zero, 2
	beq r2, r4, .LBB0_512
.LBB0_459:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 713 7                         # parallel-rne.mlir:713:7
	addli r4, zero, 3
	beq r2, r4, .LBB0_536
.LBB0_460:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 741 7                         # parallel-rne.mlir:741:7
	addli r4, zero, 4
	beq r2, r4, .LBB0_560
.LBB0_461:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 769 7                         # parallel-rne.mlir:769:7
	addli r4, zero, 5
	beq r2, r4, .LBB0_584
.LBB0_462:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 797 7                         # parallel-rne.mlir:797:7
	addli r4, zero, 6
	beq r2, r4, .LBB0_608
.LBB0_463:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 825 7                         # parallel-rne.mlir:825:7
	addli r4, zero, 7
	beq r2, r4, .LBB0_632
	j .LBB0_656
.LBB0_464:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	xfence
	zext_int2long r[9:10], zero
	addli r2, r30, -4184
	mfence { lm, sm, gm }
	store.d r[9:10], 0(r2)                  # 8-byte Folded Spill
	j .LBB0_466
.LBB0_465:                              # %middle.block167
                                        #   in Loop: Header=BB0_466 Depth=2
	.loc	1 636 9                         # parallel-rne.mlir:636:9
	addli r2, r30, -4168
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4176
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_487
.LBB0_466:                              # %.preheader69
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_468 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4176
	sll.d r[19:20], r[9:10], r2
	addli r2, r30, -4184
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	j .LBB0_468
.LBB0_467:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 637 11 is_stmt 1              # parallel-rne.mlir:637:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 652 13                        # parallel-rne.mlir:652:13
	stores.w r23, 12(r2)
	stores.w r24, 8(r2)
	stores.w r21, 4(r2)
	stores.w r17, 0(r2)
	.loc	1 637 11                        # parallel-rne.mlir:637:11
	setneq.d r4, r[9:10], r[6:7]
	beq r4, zero, .LBB0_465
.LBB0_468:                              # %vector.body163
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_466 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 638 19                        # parallel-rne.mlir:638:19
	add.ul r[11:12], r[9:10], r[19:20]
	slli r2, r11, 2
	add.s r11, r2, r26
	loads.w r4, 12(r11)
	loads.w r16, 0(r11)
	loads.w r22, 4(r11)
	loads.w r25, 8(r11)
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	and r27, r4, r28
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	setlt.u r11, r14, r27
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	bneq r11, zero, .LBB0_470
# %bb.469:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r4, 0
	j .LBB0_471
.LBB0_470:                              #   in Loop: Header=BB0_468 Depth=3
	or r23, r4, r5
.LBB0_471:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	and r11, r25, r28
	setlt.u r12, r14, r11
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	bneq r12, zero, .LBB0_473
# %bb.472:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r25, 0
	j .LBB0_474
.LBB0_473:                              #   in Loop: Header=BB0_468 Depth=3
	or r24, r25, r5
.LBB0_474:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	and r18, r22, r28
	setlt.u r12, r14, r18
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	bneq r12, zero, .LBB0_476
# %bb.475:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_477
.LBB0_476:                              #   in Loop: Header=BB0_468 Depth=3
	or r21, r22, r5
.LBB0_477:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	and r12, r16, r28
	setlt.u r13, r14, r12
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	bneq r13, zero, .LBB0_479
# %bb.478:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
	.loc	1 649 19 is_stmt 1              # parallel-rne.mlir:649:19
	setlt.u r12, r3, r12
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	beq r12, zero, .LBB0_480
	j .LBB0_481
.LBB0_479:                              #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r17, r16, r5
	.loc	1 649 19 is_stmt 1              # parallel-rne.mlir:649:19
	setlt.u r12, r3, r12
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	bneq r12, zero, .LBB0_481
.LBB0_480:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r16, 16
	andi r12, r12, 1
	add.s r12, r16, r12
	add.s r12, r12, r1
	and r17, r12, r15
.LBB0_481:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	setlt.u r12, r3, r18
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	beq r12, zero, .LBB0_484
# %bb.482:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	beq r11, zero, .LBB0_485
.LBB0_483:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r27
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	bneq r11, zero, .LBB0_467
	j .LBB0_486
.LBB0_484:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r22, 16
	andi r12, r12, 1
	add.s r12, r22, r12
	add.s r12, r12, r1
	and r21, r12, r15
	setlt.u r11, r3, r11
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	bneq r11, zero, .LBB0_483
.LBB0_485:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r25, 16
	andi r11, r11, 1
	add.s r11, r25, r11
	add.s r11, r11, r1
	and r24, r11, r15
	setlt.u r11, r3, r27
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	bneq r11, zero, .LBB0_467
.LBB0_486:                              # %vector.body163
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r4, 16
	andi r11, r11, 1
	add.s r4, r4, r11
	add.s r4, r4, r1
	and r23, r4, r15
	j .LBB0_467
.LBB0_487:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	mfence { sm }
	.loc	1 657 7                         # parallel-rne.mlir:657:7
	addli r4, zero, 1
	bneq r2, r4, .LBB0_458
.LBB0_488:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 657 7                         # parallel-rne.mlir:657:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_490
.LBB0_489:                              # %middle.block161
                                        #   in Loop: Header=BB0_490 Depth=2
	.loc	1 664 9 is_stmt 1               # parallel-rne.mlir:664:9
	addli r2, r30, -4104
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4168
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_511
.LBB0_490:                              # %.preheader68
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_492 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4168
	zext_int2long r[19:20], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_492
.LBB0_491:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 665 11 is_stmt 1              # parallel-rne.mlir:665:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 680 13                        # parallel-rne.mlir:680:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 665 11                        # parallel-rne.mlir:665:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_489
.LBB0_492:                              # %vector.body157
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_490 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	add.ul r[9:10], r[19:20], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r26
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	and r10, r4, r28
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	setlt.u r9, r14, r10
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	bneq r9, zero, .LBB0_494
# %bb.493:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_495
.LBB0_494:                              #   in Loop: Header=BB0_492 Depth=3
	or r9, r4, r5
.LBB0_495:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	and r11, r24, r28
	setlt.u r16, r14, r11
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	bneq r16, zero, .LBB0_497
# %bb.496:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_498
.LBB0_497:                              #   in Loop: Header=BB0_492 Depth=3
	or r23, r24, r5
.LBB0_498:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	and r27, r22, r28
	setlt.u r16, r14, r27
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	bneq r16, zero, .LBB0_500
# %bb.499:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_501
.LBB0_500:                              #   in Loop: Header=BB0_492 Depth=3
	or r21, r22, r5
.LBB0_501:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	bneq r16, zero, .LBB0_503
# %bb.502:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 677 19 is_stmt 1              # parallel-rne.mlir:677:19
	setlt.u r17, r3, r17
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	beq r17, zero, .LBB0_504
	j .LBB0_505
.LBB0_503:                              #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 677 19 is_stmt 1              # parallel-rne.mlir:677:19
	setlt.u r17, r3, r17
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	bneq r17, zero, .LBB0_505
.LBB0_504:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_505:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	setlt.u r17, r3, r27
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	beq r17, zero, .LBB0_508
# %bb.506:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	beq r11, zero, .LBB0_509
.LBB0_507:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	bneq r10, zero, .LBB0_491
	j .LBB0_510
.LBB0_508:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r22, 16
	andi r17, r17, 1
	add.s r17, r22, r17
	add.s r17, r17, r1
	and r21, r17, r15
	setlt.u r11, r3, r11
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	bneq r11, zero, .LBB0_507
.LBB0_509:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	bneq r10, zero, .LBB0_491
.LBB0_510:                              # %vector.body157
                                        #   in Loop: Header=BB0_492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_491
.LBB0_511:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 657 7                         # parallel-rne.mlir:657:7
	mfence { sm }
	.loc	1 685 7                         # parallel-rne.mlir:685:7
	addli r4, zero, 2
	bneq r2, r4, .LBB0_459
.LBB0_512:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 685 7                         # parallel-rne.mlir:685:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_514
.LBB0_513:                              # %middle.block155
                                        #   in Loop: Header=BB0_514 Depth=2
	.loc	1 692 9 is_stmt 1               # parallel-rne.mlir:692:9
	addli r2, r30, -4112
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4104
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_535
.LBB0_514:                              # %.preheader67
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_516 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4104
	zext_int2long r[19:20], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_516
.LBB0_515:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 693 11 is_stmt 1              # parallel-rne.mlir:693:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 708 13                        # parallel-rne.mlir:708:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 693 11                        # parallel-rne.mlir:693:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_513
.LBB0_516:                              # %vector.body151
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_514 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	add.ul r[9:10], r[19:20], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r26
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	and r10, r4, r28
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	setlt.u r9, r14, r10
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	bneq r9, zero, .LBB0_518
# %bb.517:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_519
.LBB0_518:                              #   in Loop: Header=BB0_516 Depth=3
	or r9, r4, r5
.LBB0_519:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	and r11, r24, r28
	setlt.u r16, r14, r11
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	bneq r16, zero, .LBB0_521
# %bb.520:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_522
.LBB0_521:                              #   in Loop: Header=BB0_516 Depth=3
	or r23, r24, r5
.LBB0_522:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	and r27, r22, r28
	setlt.u r16, r14, r27
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	bneq r16, zero, .LBB0_524
# %bb.523:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_525
.LBB0_524:                              #   in Loop: Header=BB0_516 Depth=3
	or r21, r22, r5
.LBB0_525:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	bneq r16, zero, .LBB0_527
# %bb.526:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 705 19 is_stmt 1              # parallel-rne.mlir:705:19
	setlt.u r17, r3, r17
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	beq r17, zero, .LBB0_528
	j .LBB0_529
.LBB0_527:                              #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 705 19 is_stmt 1              # parallel-rne.mlir:705:19
	setlt.u r17, r3, r17
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	bneq r17, zero, .LBB0_529
.LBB0_528:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_529:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	setlt.u r17, r3, r27
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	beq r17, zero, .LBB0_532
# %bb.530:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	beq r11, zero, .LBB0_533
.LBB0_531:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	bneq r10, zero, .LBB0_515
	j .LBB0_534
.LBB0_532:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r22, 16
	andi r17, r17, 1
	add.s r17, r22, r17
	add.s r17, r17, r1
	and r21, r17, r15
	setlt.u r11, r3, r11
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	bneq r11, zero, .LBB0_531
.LBB0_533:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	bneq r10, zero, .LBB0_515
.LBB0_534:                              # %vector.body151
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_515
.LBB0_535:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 685 7                         # parallel-rne.mlir:685:7
	mfence { sm }
	.loc	1 713 7                         # parallel-rne.mlir:713:7
	addli r4, zero, 3
	bneq r2, r4, .LBB0_460
.LBB0_536:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 713 7                         # parallel-rne.mlir:713:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_538
.LBB0_537:                              # %middle.block149
                                        #   in Loop: Header=BB0_538 Depth=2
	.loc	1 720 9 is_stmt 1               # parallel-rne.mlir:720:9
	addli r2, r30, -4120
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4104
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_559
.LBB0_538:                              # %.preheader66
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_540 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4104
	zext_int2long r[19:20], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_540
.LBB0_539:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	.loc	1 721 11 is_stmt 1              # parallel-rne.mlir:721:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 736 13                        # parallel-rne.mlir:736:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 721 11                        # parallel-rne.mlir:721:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_537
.LBB0_540:                              # %vector.body145
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_538 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 722 19                        # parallel-rne.mlir:722:19
	add.ul r[9:10], r[19:20], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r26
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 724 19                        # parallel-rne.mlir:724:19
	and r10, r4, r28
	.loc	1 726 19                        # parallel-rne.mlir:726:19
	setlt.u r9, r14, r10
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r9, zero, .LBB0_542
# %bb.541:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_543
.LBB0_542:                              #   in Loop: Header=BB0_540 Depth=3
	or r9, r4, r5
.LBB0_543:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	and r11, r24, r28
	setlt.u r16, r14, r11
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r16, zero, .LBB0_545
# %bb.544:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_546
.LBB0_545:                              #   in Loop: Header=BB0_540 Depth=3
	or r23, r24, r5
.LBB0_546:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	and r27, r22, r28
	setlt.u r16, r14, r27
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r16, zero, .LBB0_548
# %bb.547:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_549
.LBB0_548:                              #   in Loop: Header=BB0_540 Depth=3
	or r21, r22, r5
.LBB0_549:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	and r17, r25, r28
	setlt.u r16, r14, r17
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r16, zero, .LBB0_551
# %bb.550:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 733 19 is_stmt 1              # parallel-rne.mlir:733:19
	setlt.u r17, r3, r17
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	beq r17, zero, .LBB0_552
	j .LBB0_553
.LBB0_551:                              #   in Loop: Header=BB0_540 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 733 19 is_stmt 1              # parallel-rne.mlir:733:19
	setlt.u r17, r3, r17
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	bneq r17, zero, .LBB0_553
.LBB0_552:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r25, 16
	andi r16, r16, 1
	add.s r16, r25, r16
	add.s r16, r16, r1
	and r16, r16, r15
.LBB0_553:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	setlt.u r17, r3, r27
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	beq r17, zero, .LBB0_556
# %bb.554:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	beq r11, zero, .LBB0_557
.LBB0_555:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	bneq r10, zero, .LBB0_539
	j .LBB0_558
.LBB0_556:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r17, r22, 16
	andi r17, r17, 1
	add.s r17, r22, r17
	add.s r17, r17, r1
	and r21, r17, r15
	setlt.u r11, r3, r11
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	bneq r11, zero, .LBB0_555
.LBB0_557:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	bneq r10, zero, .LBB0_539
.LBB0_558:                              # %vector.body145
                                        #   in Loop: Header=BB0_540 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_539
.LBB0_559:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 713 7                         # parallel-rne.mlir:713:7
	mfence { sm }
	.loc	1 741 7                         # parallel-rne.mlir:741:7
	addli r4, zero, 4
	bneq r2, r4, .LBB0_461
.LBB0_560:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 741 7                         # parallel-rne.mlir:741:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_562
.LBB0_561:                              # %middle.block143
                                        #   in Loop: Header=BB0_562 Depth=2
	.loc	1 748 9 is_stmt 1               # parallel-rne.mlir:748:9
	addli r2, r30, -4128
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4104
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_583
.LBB0_562:                              # %.preheader65
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_564 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4104
	zext_int2long r[19:20], zero
	sll.d r[17:18], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_564
.LBB0_563:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 749 11 is_stmt 1              # parallel-rne.mlir:749:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 764 13                        # parallel-rne.mlir:764:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 749 11                        # parallel-rne.mlir:749:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_561
.LBB0_564:                              # %vector.body139
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_562 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	add.ul r[9:10], r[19:20], r[17:18]
	slli r2, r9, 2
	add.s r9, r2, r26
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	and r10, r4, r28
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	setlt.u r9, r14, r10
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	bneq r9, zero, .LBB0_566
# %bb.565:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_567
.LBB0_566:                              #   in Loop: Header=BB0_564 Depth=3
	or r9, r4, r5
.LBB0_567:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	and r11, r24, r28
	setlt.u r12, r14, r11
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	bneq r12, zero, .LBB0_569
# %bb.568:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_570
.LBB0_569:                              #   in Loop: Header=BB0_564 Depth=3
	or r23, r24, r5
.LBB0_570:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	and r27, r22, r28
	setlt.u r12, r14, r27
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	bneq r12, zero, .LBB0_572
# %bb.571:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_573
.LBB0_572:                              #   in Loop: Header=BB0_564 Depth=3
	or r21, r22, r5
.LBB0_573:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	and r12, r25, r28
	setlt.u r13, r14, r12
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	bneq r13, zero, .LBB0_575
# %bb.574:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 761 19 is_stmt 1              # parallel-rne.mlir:761:19
	setlt.u r12, r3, r12
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r12, zero, .LBB0_576
	j .LBB0_577
.LBB0_575:                              #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 761 19 is_stmt 1              # parallel-rne.mlir:761:19
	setlt.u r12, r3, r12
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	bneq r12, zero, .LBB0_577
.LBB0_576:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r25, 16
	andi r12, r12, 1
	add.s r12, r25, r12
	add.s r12, r12, r1
	and r16, r12, r15
.LBB0_577:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	setlt.u r12, r3, r27
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r12, zero, .LBB0_580
# %bb.578:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r11, zero, .LBB0_581
.LBB0_579:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	bneq r10, zero, .LBB0_563
	j .LBB0_582
.LBB0_580:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r22, 16
	andi r12, r12, 1
	add.s r12, r22, r12
	add.s r12, r12, r1
	and r21, r12, r15
	setlt.u r11, r3, r11
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	bneq r11, zero, .LBB0_579
.LBB0_581:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	bneq r10, zero, .LBB0_563
.LBB0_582:                              # %vector.body139
                                        #   in Loop: Header=BB0_564 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_563
.LBB0_583:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 741 7                         # parallel-rne.mlir:741:7
	mfence { sm }
	.loc	1 769 7                         # parallel-rne.mlir:769:7
	addli r4, zero, 5
	bneq r2, r4, .LBB0_462
.LBB0_584:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 769 7                         # parallel-rne.mlir:769:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_586
.LBB0_585:                              # %middle.block137
                                        #   in Loop: Header=BB0_586 Depth=2
	.loc	1 776 9 is_stmt 1               # parallel-rne.mlir:776:9
	addli r2, r30, -4136
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4104
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_607
.LBB0_586:                              # %.preheader64
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_588 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4104
	zext_int2long r[19:20], zero
	sll.d r[17:18], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_588
.LBB0_587:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 777 11 is_stmt 1              # parallel-rne.mlir:777:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 792 13                        # parallel-rne.mlir:792:13
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 777 11                        # parallel-rne.mlir:777:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_585
.LBB0_588:                              # %vector.body133
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_586 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 778 19                        # parallel-rne.mlir:778:19
	add.ul r[9:10], r[19:20], r[17:18]
	slli r2, r9, 2
	add.s r9, r2, r26
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	and r10, r4, r28
	.loc	1 782 19                        # parallel-rne.mlir:782:19
	setlt.u r9, r14, r10
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	bneq r9, zero, .LBB0_590
# %bb.589:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r4, 0
	j .LBB0_591
.LBB0_590:                              #   in Loop: Header=BB0_588 Depth=3
	or r9, r4, r5
.LBB0_591:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	and r11, r24, r28
	setlt.u r12, r14, r11
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	bneq r12, zero, .LBB0_593
# %bb.592:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_594
.LBB0_593:                              #   in Loop: Header=BB0_588 Depth=3
	or r23, r24, r5
.LBB0_594:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	and r27, r22, r28
	setlt.u r12, r14, r27
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	bneq r12, zero, .LBB0_596
# %bb.595:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_597
.LBB0_596:                              #   in Loop: Header=BB0_588 Depth=3
	or r21, r22, r5
.LBB0_597:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	and r12, r25, r28
	setlt.u r13, r14, r12
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	bneq r13, zero, .LBB0_599
# %bb.598:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 789 19 is_stmt 1              # parallel-rne.mlir:789:19
	setlt.u r12, r3, r12
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	beq r12, zero, .LBB0_600
	j .LBB0_601
.LBB0_599:                              #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 789 19 is_stmt 1              # parallel-rne.mlir:789:19
	setlt.u r12, r3, r12
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	bneq r12, zero, .LBB0_601
.LBB0_600:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r25, 16
	andi r12, r12, 1
	add.s r12, r25, r12
	add.s r12, r12, r1
	and r16, r12, r15
.LBB0_601:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	setlt.u r12, r3, r27
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	beq r12, zero, .LBB0_604
# %bb.602:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	beq r11, zero, .LBB0_605
.LBB0_603:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r3, r10
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	bneq r10, zero, .LBB0_587
	j .LBB0_606
.LBB0_604:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r22, 16
	andi r12, r12, 1
	add.s r12, r22, r12
	add.s r12, r12, r1
	and r21, r12, r15
	setlt.u r11, r3, r11
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	bneq r11, zero, .LBB0_603
.LBB0_605:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r24, 16
	andi r11, r11, 1
	add.s r11, r24, r11
	add.s r11, r11, r1
	and r23, r11, r15
	setlt.u r10, r3, r10
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	bneq r10, zero, .LBB0_587
.LBB0_606:                              # %vector.body133
                                        #   in Loop: Header=BB0_588 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r9, r4, r15
	j .LBB0_587
.LBB0_607:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 769 7                         # parallel-rne.mlir:769:7
	mfence { sm }
	.loc	1 797 7                         # parallel-rne.mlir:797:7
	addli r4, zero, 6
	bneq r2, r4, .LBB0_463
.LBB0_608:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 797 7                         # parallel-rne.mlir:797:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_610
.LBB0_609:                              # %middle.block131
                                        #   in Loop: Header=BB0_610 Depth=2
	.loc	1 804 9 is_stmt 1               # parallel-rne.mlir:804:9
	addli r2, r30, -4144
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4104
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_631
.LBB0_610:                              # %.preheader63
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_612 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4104
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_612
.LBB0_611:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 805 11 is_stmt 1              # parallel-rne.mlir:805:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 820 13                        # parallel-rne.mlir:820:13
	stores.w r19, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 805 11                        # parallel-rne.mlir:805:11
	setneq.d r4, r[17:18], r[6:7]
	beq r4, zero, .LBB0_609
.LBB0_612:                              # %vector.body127
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_610 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	add.ul r[9:10], r[17:18], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r26
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	and r20, r4, r28
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	setlt.u r9, r14, r20
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	bneq r9, zero, .LBB0_614
# %bb.613:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_615
.LBB0_614:                              #   in Loop: Header=BB0_612 Depth=3
	or r19, r4, r5
.LBB0_615:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	and r11, r24, r28
	setlt.u r9, r14, r11
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	bneq r9, zero, .LBB0_617
# %bb.616:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_618
.LBB0_617:                              #   in Loop: Header=BB0_612 Depth=3
	or r23, r24, r5
.LBB0_618:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	and r27, r22, r28
	setlt.u r9, r14, r27
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	bneq r9, zero, .LBB0_620
# %bb.619:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_621
.LBB0_620:                              #   in Loop: Header=BB0_612 Depth=3
	or r21, r22, r5
.LBB0_621:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	and r9, r25, r28
	setlt.u r10, r14, r9
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	bneq r10, zero, .LBB0_623
# %bb.622:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 817 19 is_stmt 1              # parallel-rne.mlir:817:19
	setlt.u r9, r3, r9
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	beq r9, zero, .LBB0_624
	j .LBB0_625
.LBB0_623:                              #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 817 19 is_stmt 1              # parallel-rne.mlir:817:19
	setlt.u r9, r3, r9
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	bneq r9, zero, .LBB0_625
.LBB0_624:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r1
	and r16, r9, r15
.LBB0_625:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	setlt.u r9, r3, r27
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	beq r9, zero, .LBB0_628
# %bb.626:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	beq r9, zero, .LBB0_629
.LBB0_627:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r20
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	bneq r9, zero, .LBB0_611
	j .LBB0_630
.LBB0_628:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r21, r9, r15
	setlt.u r9, r3, r11
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	bneq r9, zero, .LBB0_627
.LBB0_629:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r1
	and r23, r9, r15
	setlt.u r9, r3, r20
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	bneq r9, zero, .LBB0_611
.LBB0_630:                              # %vector.body127
                                        #   in Loop: Header=BB0_612 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r19, r4, r15
	j .LBB0_611
.LBB0_631:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 797 7                         # parallel-rne.mlir:797:7
	mfence { sm }
	.loc	1 825 7                         # parallel-rne.mlir:825:7
	addli r4, zero, 7
	bneq r2, r4, .LBB0_656
.LBB0_632:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 825 7                         # parallel-rne.mlir:825:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r2
	j .LBB0_634
.LBB0_633:                              # %middle.block
                                        #   in Loop: Header=BB0_634 Depth=2
	.loc	1 832 9 is_stmt 1               # parallel-rne.mlir:832:9
	addli r2, r30, -4152
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4104
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[9:10]
	addli.d r[9:10], r[11:12], 1
	beq r2, zero, .LBB0_655
.LBB0_634:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_636 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r4, r30, -4104
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[9:10], r2
	store.d r[9:10], 0(r4)                  # 8-byte Folded Spill
	j .LBB0_636
.LBB0_635:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 833 11 is_stmt 1              # parallel-rne.mlir:833:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 848 13                        # parallel-rne.mlir:848:13
	stores.w r19, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 833 11                        # parallel-rne.mlir:833:11
	setneq.d r4, r[17:18], r[6:7]
	beq r4, zero, .LBB0_633
.LBB0_636:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_634 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	add.ul r[9:10], r[17:18], r[12:13]
	slli r2, r9, 2
	add.s r9, r2, r26
	loads.w r4, 12(r9)
	loads.w r25, 0(r9)
	loads.w r22, 4(r9)
	loads.w r24, 8(r9)
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	and r20, r4, r28
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	setlt.u r9, r14, r20
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r9, zero, .LBB0_638
# %bb.637:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_639
.LBB0_638:                              #   in Loop: Header=BB0_636 Depth=3
	or r19, r4, r5
.LBB0_639:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	and r11, r24, r28
	setlt.u r9, r14, r11
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r9, zero, .LBB0_641
# %bb.640:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r24, 0
	j .LBB0_642
.LBB0_641:                              #   in Loop: Header=BB0_636 Depth=3
	or r23, r24, r5
.LBB0_642:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	and r27, r22, r28
	setlt.u r9, r14, r27
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r9, zero, .LBB0_644
# %bb.643:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	j .LBB0_645
.LBB0_644:                              #   in Loop: Header=BB0_636 Depth=3
	or r21, r22, r5
.LBB0_645:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	and r9, r25, r28
	setlt.u r10, r14, r9
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	bneq r10, zero, .LBB0_647
# %bb.646:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r25, 0
	.loc	1 845 19 is_stmt 1              # parallel-rne.mlir:845:19
	setlt.u r9, r3, r9
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	beq r9, zero, .LBB0_648
	j .LBB0_649
.LBB0_647:                              #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r25, r5
	.loc	1 845 19 is_stmt 1              # parallel-rne.mlir:845:19
	setlt.u r9, r3, r9
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	bneq r9, zero, .LBB0_649
.LBB0_648:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r25, 16
	andi r9, r9, 1
	add.s r9, r25, r9
	add.s r9, r9, r1
	and r16, r9, r15
.LBB0_649:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	setlt.u r9, r3, r27
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	beq r9, zero, .LBB0_652
# %bb.650:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	beq r9, zero, .LBB0_653
.LBB0_651:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r20
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	bneq r9, zero, .LBB0_635
	j .LBB0_654
.LBB0_652:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r22, 16
	andi r9, r9, 1
	add.s r9, r22, r9
	add.s r9, r9, r1
	and r21, r9, r15
	setlt.u r9, r3, r11
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	bneq r9, zero, .LBB0_651
.LBB0_653:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r1
	and r23, r9, r15
	setlt.u r9, r3, r20
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	bneq r9, zero, .LBB0_635
.LBB0_654:                              # %vector.body
                                        #   in Loop: Header=BB0_636 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r4, 16
	andi r9, r9, 1
	add.s r4, r4, r9
	add.s r4, r4, r1
	and r19, r4, r15
	j .LBB0_635
.LBB0_655:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 825 7                         # parallel-rne.mlir:825:7
	mfence { sm }
.LBB0_656:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 853 7                         # parallel-rne.mlir:853:7
	addli r4, zero, 255
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r13
	.loc	1 853 7                         # parallel-rne.mlir:853:7
	csr_set csr5, r4
	addli r4, zero, 3
	sync_core
	.loc	1 854 7                         # parallel-rne.mlir:854:7
	beq r2, r4, .LBB0_5
# %bb.657:                              # %.critedge19
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 863 7                         # parallel-rne.mlir:863:7
	bneq r2, zero, .LBB0_7
# %bb.658:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, r30, -4224
	loadli.w r2,  -4228(r30)                # 4-byte Folded Reload
	load.d r[19:20], 24(r30)
	load.d r[11:12], 0(r4)                  # 8-byte Folded Reload
	addli r4, r30, -4160
	sext_int2long r[9:10], r2
	addli r2, zero, 16
	load.d r[16:17], 0(r4)                  # 8-byte Folded Reload
	sll.d r[11:12], r[11:12], r2
	xwait r2, 0
	addli r2, r30, -4208
	min.sl r[16:17], r[9:10], r[16:17]
	add.ul r[11:12], r[19:20], r[11:12]
	load.d r[19:20], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -4216
	addli.d r[16:17], r[16:17], 32
	add.ul r[11:12], r[11:12], r[19:20]
	addli r19, zero, 64
	max.sl r[16:17], r[16:17], r[9:10]
	sub.sl r[9:10], r[16:17], r[9:10]
	addli r16, zero, 5
	addli r17, zero, 1
	lock zero, r16
	.loc	1 859 13                        # parallel-rne.mlir:859:13
	min.sl r[6:7], r[9:10], r[6:7]
	addli r9, zero, 128
	.loc	1 863 7                         # parallel-rne.mlir:863:7
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r17, zero, 1
	dma_cfg r12, zero, zero, 2
	dma_cfg r11, r19, r19, 3
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	addli r2, r11, 31
	slli r4, r11, 1
	srli r2, r2, 5
	dma_cfg r19, r9, r2, 4
	andi r2, r4, 62
	addli r4, zero, 2048
	dma_cfg r4, r9, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	addli r2, zero, 17
	dma_cfg zero, zero, zero, 8
	unlock r16
	j .LBB0_6
.LBB0_659:                              # %._crit_edge
	.loc	1 865 5                         # parallel-rne.mlir:865:5
	xsignal zero, 0
	bneq r13, zero, .LBB0_661
# %bb.660:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 865 5                         # parallel-rne.mlir:865:5
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
.LBB0_661:
	.loc	1 866 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:866:5
	addli sp, sp, 4256
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
	.long	4320                            # 0x10e0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-lc6e2s6_" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
