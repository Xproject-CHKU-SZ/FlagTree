	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-k6l0ynw0" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 36 5 prologue_end             # parallel-rne.mlir:36:5
	core_id r9
	addli r30, sp, 3088
	xsignal_mode_cfg r1
	beq r9, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 36 5                          # parallel-rne.mlir:36:5
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
	.loc	1 36 5                          # parallel-rne.mlir:36:5
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
	addli r1, zero, 5
	sync_group
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	addli r1, zero, 22
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 24
	addli r2, zero, 25
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
	.loc	1 38 10 is_stmt 1               # parallel-rne.mlir:38:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -20(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -40(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -60(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -80(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -684(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -1328(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -1936(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -2960(r30)
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r1
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r3, r1, r3
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	addli r2, r2, -1
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	storeli.w r4, -24(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	storeli.w r4, -48(r30)
	storeli.w r4, -44(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r4, -76(r30)
	storeli.w r4, -72(r30)
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
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
	.loc	1 54 11                         # parallel-rne.mlir:54:11
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
	.loc	1 55 11                         # parallel-rne.mlir:55:11
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
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r4, -688(r30)
	storeli.w r4, -692(r30)
	storeli.w r4, -696(r30)
	storeli.w r4, -700(r30)
	storeli.w r4, -704(r30)
	storeli.w r4, -708(r30)
	storeli.w r4, -712(r30)
	storeli.w r4, -716(r30)
	storeli.w r4, -720(r30)
	storeli.w r4, -724(r30)
	storeli.w r4, -728(r30)
	storeli.w r4, -732(r30)
	storeli.w r4, -736(r30)
	storeli.w r4, -740(r30)
	storeli.w r4, -744(r30)
	storeli.w r4, -748(r30)
	storeli.w r4, -752(r30)
	storeli.w r4, -756(r30)
	storeli.w r4, -760(r30)
	storeli.w r4, -764(r30)
	storeli.w r4, -768(r30)
	storeli.w r4, -772(r30)
	storeli.w r4, -776(r30)
	storeli.w r4, -780(r30)
	storeli.w r4, -784(r30)
	storeli.w r4, -788(r30)
	storeli.w r4, -792(r30)
	storeli.w r4, -796(r30)
	storeli.w r4, -800(r30)
	storeli.w r4, -804(r30)
	storeli.w r4, -808(r30)
	storeli.w r4, -812(r30)
	storeli.w r4, -816(r30)
	storeli.w r4, -820(r30)
	storeli.w r4, -824(r30)
	storeli.w r4, -828(r30)
	storeli.w r4, -832(r30)
	storeli.w r4, -836(r30)
	storeli.w r4, -840(r30)
	storeli.w r4, -844(r30)
	storeli.w r4, -848(r30)
	storeli.w r4, -852(r30)
	storeli.w r4, -856(r30)
	storeli.w r4, -860(r30)
	storeli.w r4, -864(r30)
	storeli.w r4, -868(r30)
	storeli.w r4, -872(r30)
	storeli.w r4, -876(r30)
	storeli.w r4, -880(r30)
	storeli.w r4, -884(r30)
	storeli.w r4, -888(r30)
	storeli.w r4, -892(r30)
	storeli.w r4, -896(r30)
	storeli.w r4, -900(r30)
	storeli.w r4, -904(r30)
	storeli.w r4, -908(r30)
	storeli.w r4, -912(r30)
	storeli.w r4, -916(r30)
	storeli.w r4, -920(r30)
	storeli.w r4, -924(r30)
	storeli.w r4, -928(r30)
	storeli.w r4, -932(r30)
	storeli.w r4, -936(r30)
	storeli.w r4, -940(r30)
	storeli.w r4, -944(r30)
	storeli.w r4, -948(r30)
	storeli.w r4, -952(r30)
	storeli.w r4, -956(r30)
	storeli.w r4, -960(r30)
	storeli.w r4, -964(r30)
	storeli.w r4, -968(r30)
	storeli.w r4, -972(r30)
	storeli.w r4, -976(r30)
	storeli.w r4, -980(r30)
	storeli.w r4, -984(r30)
	storeli.w r4, -988(r30)
	storeli.w r4, -992(r30)
	storeli.w r4, -996(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r4, -1332(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r4, -2956(r30)
	storeli.w r4, -2952(r30)
	storeli.w r4, -2948(r30)
	storeli.w r4, -2944(r30)
	storeli.w r4, -2940(r30)
	storeli.w r4, -2936(r30)
	storeli.w r4, -2932(r30)
	storeli.w r4, -2928(r30)
	storeli.w r4, -2924(r30)
	storeli.w r4, -2920(r30)
	storeli.w r4, -2916(r30)
	storeli.w r4, -2912(r30)
	storeli.w r4, -2908(r30)
	storeli.w r4, -2904(r30)
	storeli.w r4, -2900(r30)
	storeli.w r4, -2896(r30)
	storeli.w r4, -2892(r30)
	storeli.w r4, -2888(r30)
	storeli.w r4, -2884(r30)
	storeli.w r4, -2880(r30)
	storeli.w r4, -2876(r30)
	storeli.w r4, -2872(r30)
	storeli.w r4, -2868(r30)
	storeli.w r4, -2864(r30)
	storeli.w r4, -2860(r30)
	storeli.w r4, -2856(r30)
	storeli.w r4, -2852(r30)
	storeli.w r4, -2848(r30)
	storeli.w r4, -2844(r30)
	storeli.w r4, -2840(r30)
	storeli.w r4, -2836(r30)
	storeli.w r4, -2832(r30)
	storeli.w r4, -2828(r30)
	storeli.w r4, -2824(r30)
	storeli.w r4, -2820(r30)
	storeli.w r4, -2816(r30)
	storeli.w r4, -2812(r30)
	storeli.w r4, -2808(r30)
	storeli.w r4, -2804(r30)
	storeli.w r4, -2800(r30)
	storeli.w r4, -2796(r30)
	storeli.w r4, -2792(r30)
	storeli.w r4, -2788(r30)
	storeli.w r4, -2784(r30)
	storeli.w r4, -2780(r30)
	storeli.w r4, -2776(r30)
	storeli.w r4, -2772(r30)
	storeli.w r4, -2768(r30)
	storeli.w r4, -2764(r30)
	storeli.w r4, -2760(r30)
	storeli.w r4, -2756(r30)
	storeli.w r4, -2752(r30)
	storeli.w r4, -2748(r30)
	storeli.w r4, -2744(r30)
	storeli.w r4, -2740(r30)
	storeli.w r4, -2736(r30)
	storeli.w r4, -2732(r30)
	storeli.w r4, -2728(r30)
	storeli.w r4, -2724(r30)
	storeli.w r4, -2720(r30)
	storeli.w r4, -2716(r30)
	storeli.w r4, -2712(r30)
	storeli.w r4, -2708(r30)
	storeli.w r4, -2704(r30)
	storeli.w r4, -2700(r30)
	storeli.w r4, -2696(r30)
	storeli.w r4, -2692(r30)
	storeli.w r4, -2688(r30)
	storeli.w r4, -2684(r30)
	storeli.w r4, -2680(r30)
	storeli.w r4, -2676(r30)
	storeli.w r4, -2672(r30)
	storeli.w r4, -2668(r30)
	storeli.w r4, -2664(r30)
	storeli.w r4, -2660(r30)
	storeli.w r4, -2656(r30)
	storeli.w r4, -2652(r30)
	storeli.w r4, -2648(r30)
	storeli.w r4, -2644(r30)
	storeli.w r4, -2640(r30)
	storeli.w r4, -2636(r30)
	storeli.w r4, -2632(r30)
	storeli.w r4, -2628(r30)
	storeli.w r4, -2624(r30)
	storeli.w r4, -2620(r30)
	storeli.w r4, -2616(r30)
	storeli.w r4, -2612(r30)
	storeli.w r4, -2608(r30)
	storeli.w r4, -2604(r30)
	storeli.w r4, -2600(r30)
	storeli.w r4, -2596(r30)
	storeli.w r4, -2592(r30)
	storeli.w r4, -2588(r30)
	storeli.w r4, -2584(r30)
	storeli.w r4, -2580(r30)
	storeli.w r4, -2576(r30)
	storeli.w r4, -2572(r30)
	storeli.w r4, -2568(r30)
	storeli.w r4, -2564(r30)
	storeli.w r4, -2560(r30)
	storeli.w r4, -2556(r30)
	storeli.w r4, -2552(r30)
	storeli.w r4, -2548(r30)
	storeli.w r4, -2544(r30)
	storeli.w r4, -2540(r30)
	storeli.w r4, -2536(r30)
	storeli.w r4, -2532(r30)
	storeli.w r4, -2528(r30)
	storeli.w r4, -2524(r30)
	storeli.w r4, -2520(r30)
	storeli.w r4, -2516(r30)
	storeli.w r4, -2512(r30)
	storeli.w r4, -2508(r30)
	storeli.w r4, -2504(r30)
	storeli.w r4, -2500(r30)
	storeli.w r4, -2496(r30)
	storeli.w r4, -2492(r30)
	storeli.w r4, -2488(r30)
	storeli.w r4, -2484(r30)
	storeli.w r4, -2480(r30)
	storeli.w r4, -2476(r30)
	storeli.w r4, -2472(r30)
	storeli.w r4, -2468(r30)
	storeli.w r4, -2464(r30)
	storeli.w r4, -2460(r30)
	storeli.w r4, -2456(r30)
	storeli.w r4, -2452(r30)
	storeli.w r4, -2448(r30)
	storeli.w r4, -2444(r30)
	storeli.w r4, -2440(r30)
	storeli.w r4, -2436(r30)
	storeli.w r4, -2432(r30)
	storeli.w r4, -2428(r30)
	storeli.w r4, -2424(r30)
	storeli.w r4, -2420(r30)
	storeli.w r4, -2416(r30)
	storeli.w r4, -2412(r30)
	storeli.w r4, -2408(r30)
	storeli.w r4, -2404(r30)
	storeli.w r4, -2400(r30)
	storeli.w r4, -2396(r30)
	storeli.w r4, -2392(r30)
	storeli.w r4, -2388(r30)
	storeli.w r4, -2384(r30)
	storeli.w r4, -2380(r30)
	storeli.w r4, -2376(r30)
	storeli.w r4, -2372(r30)
	storeli.w r4, -2368(r30)
	storeli.w r4, -2364(r30)
	storeli.w r4, -2360(r30)
	storeli.w r4, -2356(r30)
	storeli.w r4, -2352(r30)
	storeli.w r4, -2348(r30)
	storeli.w r4, -2344(r30)
	storeli.w r4, -2340(r30)
	storeli.w r4, -2336(r30)
	storeli.w r4, -2332(r30)
	storeli.w r4, -2328(r30)
	storeli.w r4, -2324(r30)
	storeli.w r4, -2320(r30)
	storeli.w r4, -2316(r30)
	storeli.w r4, -2312(r30)
	storeli.w r4, -2308(r30)
	storeli.w r4, -2304(r30)
	storeli.w r4, -2300(r30)
	storeli.w r4, -2296(r30)
	storeli.w r4, -2292(r30)
	storeli.w r4, -2288(r30)
	storeli.w r4, -2284(r30)
	storeli.w r4, -2280(r30)
	storeli.w r4, -2276(r30)
	storeli.w r4, -2272(r30)
	storeli.w r4, -2268(r30)
	storeli.w r4, -2264(r30)
	storeli.w r4, -2260(r30)
	storeli.w r4, -2256(r30)
	storeli.w r4, -2252(r30)
	storeli.w r4, -2248(r30)
	storeli.w r4, -2244(r30)
	storeli.w r4, -2240(r30)
	storeli.w r4, -2236(r30)
	storeli.w r4, -2232(r30)
	storeli.w r4, -2228(r30)
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
	storeli.w r4, -2152(r30)
	storeli.w r4, -2148(r30)
	storeli.w r4, -2144(r30)
	storeli.w r4, -2140(r30)
	storeli.w r4, -2136(r30)
	storeli.w r4, -2132(r30)
	storeli.w r4, -2128(r30)
	storeli.w r4, -2124(r30)
	storeli.w r4, -2120(r30)
	storeli.w r4, -2116(r30)
	storeli.w r4, -2112(r30)
	storeli.w r4, -2108(r30)
	storeli.w r4, -2104(r30)
	storeli.w r4, -2100(r30)
	storeli.w r4, -2096(r30)
	storeli.w r4, -2092(r30)
	storeli.w r4, -2088(r30)
	storeli.w r4, -2084(r30)
	storeli.w r4, -2080(r30)
	storeli.w r4, -2076(r30)
	storeli.w r4, -2072(r30)
	storeli.w r4, -2068(r30)
	storeli.w r4, -2064(r30)
	storeli.w r4, -2060(r30)
	storeli.w r4, -2056(r30)
	storeli.w r4, -2052(r30)
	storeli.w r4, -2048(r30)
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
	storeli.w r4, -1960(r30)
	storeli.w r4, -1956(r30)
	storeli.w r4, -1952(r30)
	storeli.w r4, -1948(r30)
	storeli.w r4, -1944(r30)
	storeli.w r4, -1940(r30)
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	mul.s r1, r2, r6
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	fmac.s r2, r2, r6
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	min.s r3, r2, r3
	.loc	1 58 5                          # parallel-rne.mlir:58:5
	ble.s r3, r1, .LBB0_713
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 47 11 is_stmt 1               # parallel-rne.mlir:47:11
	addli r4, r30, -3072
	sext_int2long r[13:14], r1
	lui r1, 524287
	addli r15, zero, 1
	addli r17, zero, 6
	addli r23, zero, 64
	lui r27, 1024
	lui r28, 522240
	addli r10, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r2, 522239
	lui r4, 216
	ori r26, r1, 4095
	lui r1, 7
	ori r3, r2, 4095
	lui r2, 383
	ori r1, r1, 4095
	ori r2, r2, 3072
	storeli.w r2, -3076(r30)                # 4-byte Folded Spill
	ori r2, r4, 2893
	lui r4, 1046527
	storeli.w r2, -3080(r30)                # 4-byte Folded Spill
	lui r2, 387
	ori r2, r2, 3072
	storeli.w r2, -3084(r30)                # 4-byte Folded Spill
	ori r2, r4, 4095
	lui r4, 1048560
	storeli.w r2, -3088(r30)                # 4-byte Folded Spill
	lui r2, 79
	ori r2, r2, 2048
	storeli.w r2, -2996(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge18.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 887 7                         # parallel-rne.mlir:887:7
	addli r2, zero, 16
	addli r15, zero, 1
	addli r17, zero, 6
	xsignal r2, 0
	.loc	1 888 7                         # parallel-rne.mlir:888:7
	addli r2, zero, 24
	xsignal r2, 0
	addli r2, r30, -3024
	load.d r[13:14], 0(r2)                  # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 58 5                          # parallel-rne.mlir:58:5
	addli r2, r30, -3072
	addli.d r[13:14], r[13:14], 1
	loadli.w r10,  -3028(r30)               # 4-byte Folded Reload
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	setlt.sl r2, r[13:14], r[5:6]
	beq r2, zero, .LBB0_713
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_45 Depth 2
                                        #       Child Loop BB0_47 Depth 3
                                        #     Child Loop BB0_69 Depth 2
                                        #       Child Loop BB0_71 Depth 3
                                        #     Child Loop BB0_93 Depth 2
                                        #       Child Loop BB0_95 Depth 3
                                        #     Child Loop BB0_117 Depth 2
                                        #       Child Loop BB0_119 Depth 3
                                        #     Child Loop BB0_141 Depth 2
                                        #       Child Loop BB0_143 Depth 3
                                        #     Child Loop BB0_165 Depth 2
                                        #       Child Loop BB0_167 Depth 3
                                        #     Child Loop BB0_189 Depth 2
                                        #       Child Loop BB0_191 Depth 3
                                        #     Child Loop BB0_213 Depth 2
                                        #       Child Loop BB0_215 Depth 3
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
                                        #     Child Loop BB0_449 Depth 2
                                        #     Child Loop BB0_451 Depth 2
                                        #     Child Loop BB0_463 Depth 2
                                        #       Child Loop BB0_472 Depth 3
                                        #       Child Loop BB0_466 Depth 3
                                        #     Child Loop BB0_494 Depth 2
                                        #       Child Loop BB0_503 Depth 3
                                        #       Child Loop BB0_497 Depth 3
                                        #     Child Loop BB0_525 Depth 2
                                        #       Child Loop BB0_534 Depth 3
                                        #       Child Loop BB0_528 Depth 3
                                        #     Child Loop BB0_556 Depth 2
                                        #       Child Loop BB0_565 Depth 3
                                        #       Child Loop BB0_559 Depth 3
                                        #     Child Loop BB0_587 Depth 2
                                        #       Child Loop BB0_596 Depth 3
                                        #       Child Loop BB0_590 Depth 3
                                        #     Child Loop BB0_618 Depth 2
                                        #       Child Loop BB0_627 Depth 3
                                        #       Child Loop BB0_621 Depth 3
                                        #     Child Loop BB0_649 Depth 2
                                        #       Child Loop BB0_658 Depth 3
                                        #       Child Loop BB0_652 Depth 3
                                        #     Child Loop BB0_681 Depth 2
                                        #       Child Loop BB0_690 Depth 3
                                        #       Child Loop BB0_684 Depth 3
	.loc	1 83 7                          # parallel-rne.mlir:83:7
	addli r2, zero, 4
	bneq r9, r2, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 17
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  48(r30)
	addli r5, r30, -3024
	addli r6, zero, 4
	addli r7, zero, 0
	store.d r[13:14], 0(r5)                 # 8-byte Folded Spill
	loadli.w r5,  44(r30)
	mod.s r8, r10, r6
	addli r10, r10, 1
	div.s r2, r13, r2
	.loc	1 101 15 is_stmt 1              # parallel-rne.mlir:101:15
	loadli.w r13,  -2960(r30)
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	loadli.w r14,  -1936(r30)
	storeli.w r10, -3028(r30)               # 4-byte Folded Spill
	addli r10, zero, 8
	slli r16, r8, 12
	div.s r2, r2, r5
	addli r5, zero, 16
	div.s r5, r2, r5
	slli r9, r5, 3
	slli r5, r5, 4
	sub.s r6, r15, r9
	sub.s r5, r2, r5
	min.s r6, r6, r10
	div.s r5, r5, r6
	mod.s r2, r2, r6
	addli r6, zero, 1
	slli r8, r5, 6
	add.s r2, r9, r2
	storeli.w r8, -2976(r30)                # 4-byte Folded Spill
	zext_int2long r[8:9], r5
	slli r5, r2, 4
	zext_int2long r[10:11], r2
	addli r2, r30, -3040
	sll.d r[8:9], r[8:9], r17
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	load.d r[17:18], 8(r30)
	storeli.w r5, -3060(r30)                # 4-byte Folded Spill
	addli r5, r30, -3056
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r6
	addli r2, zero, 11
	store.d r[10:11], 0(r5)                 # 8-byte Folded Spill
	add.ul r[24:25], r[17:18], r[8:9]
	load.d r[8:9], 0(r30)
	sll.d r[10:11], r[10:11], r2
	add.ul r[10:11], r[8:9], r[10:11]
	addli r8, zero, 0
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r5, 4
	addli r15, zero, 4
	addli r18, zero, 128
	addli r17, zero, 5
	ori r5, r5, 64
	.loc	1 107 9 is_stmt 1               # parallel-rne.mlir:107:9
	lock zero, r15
	add.s r2, r2, r5
	addli r5, zero, 1
	dma_cfg r5, r5, zero, 0
	dma_cfg zero, r9, zero, 2
	dma_cfg r2, r8, r23, 3
	addli r2, zero, 16
	addli r9, zero, 2
	addli r8, zero, 7
	dma_cfg r18, r23, r5, 4
	dma_cfg r18, r18, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
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
	dma_cfg zero, zero, r2, 10
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
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r23, 3
	dma_cfg r18, zero, r5, 4
	dma_cfg r18, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r9, 0
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r9
.LBB0_11:                               # %.thread54
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	loadli.w r2,  -1328(r30)
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	loadli.w r5,  -684(r30)
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	addli r2, r2, 1
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	addli r5, r5, 1
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	storeli.w r2, -1328(r30)
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	storeli.w r5, -684(r30)
.LBB0_12:                               # %.thread57
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	andi r2, r6, 1
	beq r2, zero, .LBB0_31
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	addli r7, r7, 1
	addli r8, zero, 1
	addli r6, zero, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	add.s r15, r14, r7
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	addli r9, zero, 151
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	add.s r2, r13, r7
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	addli r5, zero, 255
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	lui r12, 4
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	addli r17, zero, 2
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	mod.s r9, r15, r9
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	mod.s r5, r2, r5
	addli r2, r2, 1
	storeli.w r2, -2960(r30)
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	slli r2, r9, 11
	addli r9, r15, 1
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	slli r5, r5, 11
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	storeli.w r9, -1936(r30)
	add.s r12, r2, r12
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	beq r9, r17, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[17:18], r8
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r8
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	addli r9, zero, 1
	bneq r8, r9, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 6
	addli r20, zero, 3
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	addli r5, zero, 150
	sll.d r[8:9], r[17:18], r19
	xwait r20, 0
	add.ul r[8:9], r[10:11], r[8:9]
	blt.s r5, r15, .LBB0_10
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r18, zero, 5
	addli r15, zero, 1
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	addli r5, zero, 2
	addli r17, zero, 17
	lock zero, r18
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 4
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 7
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 11
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 16
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 18
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 19
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 20
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 21
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 22
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 23
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 24
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 25
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 26
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 27
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 28
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 29
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 30
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 31
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 128
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r23, 3
	dma_cfg r17, zero, r15, 4
	dma_cfg r17, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	j .LBB0_10
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r2, zero, 2
	.loc	1 108 9 is_stmt 1               # parallel-rne.mlir:108:9
	addli r8, zero, 5
	xwait r2, 0
	xwait r8, 0
	lock zero, zero
	addli r8, zero, 32
	ds_cfg r2, zero, 0
	addli r2, zero, 16
	ds_cfg r8, zero, 1
	ds_cfg r8, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 3
	shuffle_batch r5, r12, r8, 1
	unlock zero
	xsignal r2, 0
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	loadli.w r15,  -684(r30)
	addli r9, zero, 150
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	loadli.w r2,  -1328(r30)
	addli r8, zero, 160
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	loadli.w r12,  -2996(r30)               # 4-byte Folded Reload
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	addli r19, zero, 7
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	mod.s r9, r15, r9
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	mod.s r8, r2, r8
	addli r2, r2, 1
	storeli.w r2, -1328(r30)
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	slli r2, r9, 13
	addli r9, r15, 1
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	slli r8, r8, 13
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	storeli.w r9, -684(r30)
	add.s r12, r2, r12
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	beq r9, r19, .LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	addli r19, zero, 6
	bneq r9, r19, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r22, zero, 13
	addli r21, zero, 7
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	addli r5, zero, 149
	sll.d r[8:9], r[17:18], r22
	xwait r21, 0
	add.ul r[8:9], r[24:25], r[8:9]
	blt.s r5, r15, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r18, zero, 5
	addli r15, zero, 1
	addli r17, zero, 2
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	addli r5, zero, 3
	lock zero, r18
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 4
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 6
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 11
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 16
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 18
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 19
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 20
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 21
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 22
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 24
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 25
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 26
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 27
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 28
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 29
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 30
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 31
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 128
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r23, 3
	dma_cfg r5, zero, r17, 4
	addli r5, zero, 32
	addli r17, zero, 256
	dma_cfg r17, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r5, 79
	addli r15, zero, 4
	addli r19, zero, 128
	addli r18, zero, 32
	addli r20, zero, 256
	addli r17, zero, 5
	ori r5, r5, 2112
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	lock zero, r15
	add.s r2, r2, r5
	addli r5, zero, 1
	dma_cfg r5, r5, zero, 0
	dma_cfg zero, r9, zero, 2
	dma_cfg r2, r8, r23, 3
	addli r9, zero, 2
	addli r2, zero, 3
	addli r8, zero, 6
	dma_cfg r19, r23, r9, 4
	dma_cfg r20, r20, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
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
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r23, 3
	dma_cfg r19, zero, r9, 4
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	dma_cfg r20, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r8, 0
	.loc	1 125 9                         # parallel-rne.mlir:125:9
	j .LBB0_12
.LBB0_24:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 6
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 32
	ds_cfg r23, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r8, r12, r2, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_12
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 4
	.loc	1 127 9 is_stmt 1               # parallel-rne.mlir:127:9
	bneq r9, r2, .LBB0_28
# %bb.26:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r2, 0
	addli r2, zero, 8
	addli r12, zero, 1
	addli r15, zero, 32
	xwait r2, 0
	addli r2, zero, 16
	lock zero, r12
	mm_cfg r23, r15, r2, 0
	addli r2, zero, 2
	mm_cfg r2, r2, r12, 2
	beq r7, zero, .LBB0_29
# %bb.27:                               # %.preheader86
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r16, r5, r8, 8
	j .LBB0_30
.LBB0_28:                               # %.thread57.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	andi r2, r6, 1
	bneq r2, zero, .LBB0_13
	j .LBB0_33
.LBB0_29:                               # %.preheader85
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 127 9                         # parallel-rne.mlir:127:9
	mm r16, r5, r8, 8
.LBB0_30:                               # %.thread57.thread116
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 1
	addli r5, zero, 5
	unlock r2
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	andi r2, r6, 1
	.loc	1 127 9                         # parallel-rne.mlir:127:9
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r5, 0
	bneq r2, zero, .LBB0_13
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	addli r2, zero, 4
	bneq r9, r2, .LBB0_33
.LBB0_32:                               # %.thread117
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_33:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	loadli.w r25,  -80(r30)
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	loadli.w r2,  -60(r30)
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	addli r5, r25, 1
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	addli r6, r2, 1
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	storeli.w r5, -80(r30)
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r5, zero, 3
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	storeli.w r6, -60(r30)
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	bneq r9, r5, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 10
	xwait r5, 0
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	addli r5, zero, 20
	xwait r5, 0
.LBB0_35:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 4
	.loc	1 153 7 is_stmt 1               # parallel-rne.mlir:153:7
	xfence
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	mfence { lm, sm, gm }
	mod.s r2, r2, r5
	lui r5, 379
	ori r5, r5, 3072
	slli r2, r2, 12
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r24, r2, r5
	.loc	1 155 7 is_stmt 1               # parallel-rne.mlir:155:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	beq r9, zero, .LBB0_43
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 185 7                         # parallel-rne.mlir:185:7
	addli r2, zero, 1
	beq r9, r2, .LBB0_67
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 214 7                         # parallel-rne.mlir:214:7
	addli r2, zero, 2
	beq r9, r2, .LBB0_91
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 243 7                         # parallel-rne.mlir:243:7
	addli r2, zero, 3
	beq r9, r2, .LBB0_115
.LBB0_39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 272 7                         # parallel-rne.mlir:272:7
	addli r2, zero, 4
	beq r9, r2, .LBB0_139
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	addli r2, zero, 5
	beq r9, r2, .LBB0_163
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 330 7                         # parallel-rne.mlir:330:7
	addli r2, zero, 6
	beq r9, r2, .LBB0_187
.LBB0_42:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	addli r2, zero, 7
	beq r9, r2, .LBB0_211
	j .LBB0_235
.LBB0_43:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w r25, -2980(r30)               # 4-byte Folded Spill
	zext_int2long r[11:12], zero
	addli r10, zero, 1
	addli r2, r30, -2968
	.loc	1 156 7 is_stmt 1               # parallel-rne.mlir:156:7
	xfence
	mfence { lm, sm, gm }
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	j .LBB0_45
.LBB0_44:                               # %middle.block330
                                        #   in Loop: Header=BB0_45 Depth=2
	.loc	1 164 9                         # parallel-rne.mlir:164:9
	andi r2, r10, 1
	addli.d r[11:12], r[13:14], 0
	addli r10, zero, 0
	beq r2, zero, .LBB0_66
.LBB0_45:                               # %vector.ph325
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_47 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -2968
	load.d r[17:18], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_47
.LBB0_46:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 165 11 is_stmt 1              # parallel-rne.mlir:165:11
	addli.d r[17:18], r[17:18], 4
	zext_int2long r[13:14], r23
	.loc	1 180 13                        # parallel-rne.mlir:180:13
	add.s r7, r24, r8
	.loc	1 165 11                        # parallel-rne.mlir:165:11
	setneq.d r6, r[17:18], r[13:14]
	.loc	1 180 13                        # parallel-rne.mlir:180:13
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r19, 4(r7)
	stores.w r21, 0(r7)
	.loc	1 165 11                        # parallel-rne.mlir:165:11
	beq r6, zero, .LBB0_44
.LBB0_47:                               # %vector.body326
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	add.ul r[5:6], r[17:18], r[11:12]
	slli r8, r5, 2
	add.s r2, r16, r8
	loads.w r9, 12(r2)
	loads.w r25, 0(r2)
	loads.w r20, 4(r2)
	loads.w r15, 8(r2)
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	and r14, r9, r26
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	setlt.u r2, r28, r14
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r2, zero, .LBB0_49
# %bb.48:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	or r2, r9, r27
.LBB0_50:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	and r22, r15, r26
	setlt.u r5, r28, r22
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r5, zero, .LBB0_52
# %bb.51:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_47 Depth=3
	or r5, r15, r27
.LBB0_53:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	and r13, r20, r26
	setlt.u r6, r28, r13
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r6, zero, .LBB0_55
# %bb.54:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_47 Depth=3
	or r19, r20, r27
.LBB0_56:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	and r6, r25, r26
	setlt.u r7, r28, r6
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	bneq r7, zero, .LBB0_58
# %bb.57:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r25, 0
	.loc	1 177 19 is_stmt 1              # parallel-rne.mlir:177:19
	setlt.u r6, r3, r6
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	beq r6, zero, .LBB0_59
	j .LBB0_60
.LBB0_58:                               #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r25, r27
	.loc	1 177 19 is_stmt 1              # parallel-rne.mlir:177:19
	setlt.u r6, r3, r6
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r6, zero, .LBB0_60
.LBB0_59:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r1
	and r21, r6, r4
.LBB0_60:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r6, r3, r13
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	beq r6, zero, .LBB0_63
# %bb.61:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r22
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	beq r6, zero, .LBB0_64
.LBB0_62:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r14
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r6, zero, .LBB0_46
	j .LBB0_65
.LBB0_63:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r20, 16
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r1
	and r19, r6, r4
	setlt.u r6, r3, r22
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r6, zero, .LBB0_62
.LBB0_64:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r15, 16
	andi r5, r5, 1
	add.s r5, r15, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r6, r3, r14
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r6, zero, .LBB0_46
.LBB0_65:                               # %vector.body326
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_46
.LBB0_66:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 156 7 is_stmt 1               # parallel-rne.mlir:156:7
	mfence { sm }
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r9
	loadli.w r25,  -2980(r30)               # 4-byte Folded Reload
	.loc	1 185 7                         # parallel-rne.mlir:185:7
	addli r2, zero, 1
	bneq r9, r2, .LBB0_37
.LBB0_67:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	.loc	1 185 7                         # parallel-rne.mlir:185:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_69
.LBB0_68:                               # %middle.block321
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 192
	.loc	1 193 9 is_stmt 1               # parallel-rne.mlir:193:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[10:11], r5
	beq r2, zero, .LBB0_90
.LBB0_69:                               # %vector.ph316
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_71 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[17:18], zero
	j .LBB0_71
.LBB0_70:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 194 11 is_stmt 1              # parallel-rne.mlir:194:11
	addli.d r[17:18], r[17:18], 4
	zext_int2long r[8:9], r23
	.loc	1 209 13                        # parallel-rne.mlir:209:13
	add.s r7, r24, r7
	.loc	1 194 11                        # parallel-rne.mlir:194:11
	setneq.d r8, r[17:18], r[8:9]
	.loc	1 209 13                        # parallel-rne.mlir:209:13
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r14, 4(r7)
	stores.w r19, 0(r7)
	.loc	1 194 11                        # parallel-rne.mlir:194:11
	beq r8, zero, .LBB0_68
.LBB0_71:                               # %vector.body317
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	add.ul r[7:8], r[17:18], r[10:11]
	slli r7, r7, 2
	add.s r2, r16, r7
	loads.w r8, 12(r2)
	loads.w r21, 0(r2)
	loads.w r15, 4(r2)
	loads.w r12, 8(r2)
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	and r9, r8, r26
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	setlt.u r2, r28, r9
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r2, zero, .LBB0_73
# %bb.72:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_71 Depth=3
	or r2, r8, r27
.LBB0_74:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	and r20, r12, r26
	setlt.u r5, r28, r20
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r5, zero, .LBB0_76
# %bb.75:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_71 Depth=3
	or r5, r12, r27
.LBB0_77:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	and r13, r15, r26
	setlt.u r14, r28, r13
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r14, zero, .LBB0_79
# %bb.78:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_71 Depth=3
	or r14, r15, r27
.LBB0_80:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	and r22, r21, r26
	setlt.u r19, r28, r22
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	bneq r19, zero, .LBB0_82
# %bb.81:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 206 19 is_stmt 1              # parallel-rne.mlir:206:19
	setlt.u r22, r3, r22
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	beq r22, zero, .LBB0_83
	j .LBB0_84
.LBB0_82:                               #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r27
	.loc	1 206 19 is_stmt 1              # parallel-rne.mlir:206:19
	setlt.u r22, r3, r22
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r22, zero, .LBB0_84
.LBB0_83:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r21, 16
	andi r19, r19, 1
	add.s r19, r21, r19
	add.s r19, r19, r1
	and r19, r19, r4
.LBB0_84:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	setlt.u r13, r3, r13
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	beq r13, zero, .LBB0_87
# %bb.85:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r3, r20
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	beq r13, zero, .LBB0_88
.LBB0_86:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r9
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r9, zero, .LBB0_70
	j .LBB0_89
.LBB0_87:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r15, 16
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r1
	and r14, r13, r4
	setlt.u r13, r3, r20
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r13, zero, .LBB0_86
.LBB0_88:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r9, r3, r9
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r9, zero, .LBB0_70
.LBB0_89:                               # %vector.body317
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_70
.LBB0_90:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 185 7                         # parallel-rne.mlir:185:7
	mfence { sm }
	.loc	1 214 7                         # parallel-rne.mlir:214:7
	addli r2, zero, 2
	bneq r9, r2, .LBB0_38
.LBB0_91:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 214 7                         # parallel-rne.mlir:214:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_93
.LBB0_92:                               # %middle.block312
                                        #   in Loop: Header=BB0_93 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 320
	.loc	1 222 9 is_stmt 1               # parallel-rne.mlir:222:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[10:11], r5
	beq r2, zero, .LBB0_114
.LBB0_93:                               # %vector.ph307
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_95 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[17:18], zero
	j .LBB0_95
.LBB0_94:                               # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 223 11 is_stmt 1              # parallel-rne.mlir:223:11
	addli.d r[17:18], r[17:18], 4
	zext_int2long r[8:9], r23
	.loc	1 238 13                        # parallel-rne.mlir:238:13
	add.s r7, r24, r7
	.loc	1 223 11                        # parallel-rne.mlir:223:11
	setneq.d r8, r[17:18], r[8:9]
	.loc	1 238 13                        # parallel-rne.mlir:238:13
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r14, 4(r7)
	stores.w r19, 0(r7)
	.loc	1 223 11                        # parallel-rne.mlir:223:11
	beq r8, zero, .LBB0_92
.LBB0_95:                               # %vector.body308
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	add.ul r[7:8], r[17:18], r[10:11]
	slli r7, r7, 2
	add.s r2, r16, r7
	loads.w r8, 12(r2)
	loads.w r21, 0(r2)
	loads.w r15, 4(r2)
	loads.w r12, 8(r2)
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	and r9, r8, r26
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	setlt.u r2, r28, r9
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r2, zero, .LBB0_97
# %bb.96:                               # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_98
.LBB0_97:                               #   in Loop: Header=BB0_95 Depth=3
	or r2, r8, r27
.LBB0_98:                               # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	and r20, r12, r26
	setlt.u r5, r28, r20
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r5, zero, .LBB0_100
# %bb.99:                               # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_101
.LBB0_100:                              #   in Loop: Header=BB0_95 Depth=3
	or r5, r12, r27
.LBB0_101:                              # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	and r13, r15, r26
	setlt.u r14, r28, r13
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r14, zero, .LBB0_103
# %bb.102:                              # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_95 Depth=3
	or r14, r15, r27
.LBB0_104:                              # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	and r22, r21, r26
	setlt.u r19, r28, r22
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	bneq r19, zero, .LBB0_106
# %bb.105:                              # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 235 19 is_stmt 1              # parallel-rne.mlir:235:19
	setlt.u r22, r3, r22
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	beq r22, zero, .LBB0_107
	j .LBB0_108
.LBB0_106:                              #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r27
	.loc	1 235 19 is_stmt 1              # parallel-rne.mlir:235:19
	setlt.u r22, r3, r22
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	bneq r22, zero, .LBB0_108
.LBB0_107:                              # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r21, 16
	andi r19, r19, 1
	add.s r19, r21, r19
	add.s r19, r19, r1
	and r19, r19, r4
.LBB0_108:                              # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	setlt.u r13, r3, r13
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	beq r13, zero, .LBB0_111
# %bb.109:                              # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r3, r20
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	beq r13, zero, .LBB0_112
.LBB0_110:                              # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r9
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	bneq r9, zero, .LBB0_94
	j .LBB0_113
.LBB0_111:                              # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r15, 16
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r1
	and r14, r13, r4
	setlt.u r13, r3, r20
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	bneq r13, zero, .LBB0_110
.LBB0_112:                              # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r9, r3, r9
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	bneq r9, zero, .LBB0_94
.LBB0_113:                              # %vector.body308
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_94
.LBB0_114:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 214 7                         # parallel-rne.mlir:214:7
	mfence { sm }
	.loc	1 243 7                         # parallel-rne.mlir:243:7
	addli r2, zero, 3
	bneq r9, r2, .LBB0_39
.LBB0_115:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 384
	.loc	1 243 7                         # parallel-rne.mlir:243:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_117
.LBB0_116:                              # %middle.block303
                                        #   in Loop: Header=BB0_117 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 448
	.loc	1 251 9 is_stmt 1               # parallel-rne.mlir:251:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[10:11], r5
	beq r2, zero, .LBB0_138
.LBB0_117:                              # %vector.ph298
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_119 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[17:18], zero
	j .LBB0_119
.LBB0_118:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 252 11 is_stmt 1              # parallel-rne.mlir:252:11
	addli.d r[17:18], r[17:18], 4
	zext_int2long r[8:9], r23
	.loc	1 267 13                        # parallel-rne.mlir:267:13
	add.s r7, r24, r7
	.loc	1 252 11                        # parallel-rne.mlir:252:11
	setneq.d r8, r[17:18], r[8:9]
	.loc	1 267 13                        # parallel-rne.mlir:267:13
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r14, 4(r7)
	stores.w r19, 0(r7)
	.loc	1 252 11                        # parallel-rne.mlir:252:11
	beq r8, zero, .LBB0_116
.LBB0_119:                              # %vector.body299
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_117 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	add.ul r[7:8], r[17:18], r[10:11]
	slli r7, r7, 2
	add.s r2, r16, r7
	loads.w r8, 12(r2)
	loads.w r21, 0(r2)
	loads.w r15, 4(r2)
	loads.w r12, 8(r2)
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	and r9, r8, r26
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	setlt.u r2, r28, r9
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r2, zero, .LBB0_121
# %bb.120:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_119 Depth=3
	or r2, r8, r27
.LBB0_122:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	and r20, r12, r26
	setlt.u r5, r28, r20
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r5, zero, .LBB0_124
# %bb.123:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_125
.LBB0_124:                              #   in Loop: Header=BB0_119 Depth=3
	or r5, r12, r27
.LBB0_125:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	and r13, r15, r26
	setlt.u r14, r28, r13
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r14, zero, .LBB0_127
# %bb.126:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_119 Depth=3
	or r14, r15, r27
.LBB0_128:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	and r22, r21, r26
	setlt.u r19, r28, r22
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	bneq r19, zero, .LBB0_130
# %bb.129:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 264 19 is_stmt 1              # parallel-rne.mlir:264:19
	setlt.u r22, r3, r22
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	beq r22, zero, .LBB0_131
	j .LBB0_132
.LBB0_130:                              #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r27
	.loc	1 264 19 is_stmt 1              # parallel-rne.mlir:264:19
	setlt.u r22, r3, r22
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r22, zero, .LBB0_132
.LBB0_131:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r21, 16
	andi r19, r19, 1
	add.s r19, r21, r19
	add.s r19, r19, r1
	and r19, r19, r4
.LBB0_132:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	setlt.u r13, r3, r13
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	beq r13, zero, .LBB0_135
# %bb.133:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r3, r20
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	beq r13, zero, .LBB0_136
.LBB0_134:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r9
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r9, zero, .LBB0_118
	j .LBB0_137
.LBB0_135:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r15, 16
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r1
	and r14, r13, r4
	setlt.u r13, r3, r20
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r13, zero, .LBB0_134
.LBB0_136:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r9, r3, r9
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r9, zero, .LBB0_118
.LBB0_137:                              # %vector.body299
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_118
.LBB0_138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 243 7                         # parallel-rne.mlir:243:7
	mfence { sm }
	.loc	1 272 7                         # parallel-rne.mlir:272:7
	addli r2, zero, 4
	bneq r9, r2, .LBB0_40
.LBB0_139:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 512
	.loc	1 272 7                         # parallel-rne.mlir:272:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_141
.LBB0_140:                              # %middle.block294
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 576
	.loc	1 280 9 is_stmt 1               # parallel-rne.mlir:280:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[10:11], r5
	beq r2, zero, .LBB0_162
.LBB0_141:                              # %vector.ph289
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[17:18], zero
	j .LBB0_143
.LBB0_142:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 281 11 is_stmt 1              # parallel-rne.mlir:281:11
	addli.d r[17:18], r[17:18], 4
	zext_int2long r[8:9], r23
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	add.s r7, r24, r7
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	setneq.d r8, r[17:18], r[8:9]
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r14, 4(r7)
	stores.w r19, 0(r7)
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	beq r8, zero, .LBB0_140
.LBB0_143:                              # %vector.body290
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	add.ul r[7:8], r[17:18], r[10:11]
	slli r7, r7, 2
	add.s r2, r16, r7
	loads.w r8, 12(r2)
	loads.w r21, 0(r2)
	loads.w r15, 4(r2)
	loads.w r12, 8(r2)
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	and r9, r8, r26
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	setlt.u r2, r28, r9
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r2, zero, .LBB0_145
# %bb.144:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	or r2, r8, r27
.LBB0_146:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	and r20, r12, r26
	setlt.u r5, r28, r20
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r5, zero, .LBB0_148
# %bb.147:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_143 Depth=3
	or r5, r12, r27
.LBB0_149:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	and r13, r15, r26
	setlt.u r14, r28, r13
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r14, zero, .LBB0_151
# %bb.150:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_143 Depth=3
	or r14, r15, r27
.LBB0_152:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	and r22, r21, r26
	setlt.u r19, r28, r22
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r19, zero, .LBB0_154
# %bb.153:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r22, r3, r22
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r22, zero, .LBB0_155
	j .LBB0_156
.LBB0_154:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r27
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r22, r3, r22
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r22, zero, .LBB0_156
.LBB0_155:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r21, 16
	andi r19, r19, 1
	add.s r19, r21, r19
	add.s r19, r19, r1
	and r19, r19, r4
.LBB0_156:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	setlt.u r13, r3, r13
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r13, zero, .LBB0_159
# %bb.157:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r3, r20
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r13, zero, .LBB0_160
.LBB0_158:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r9
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r9, zero, .LBB0_142
	j .LBB0_161
.LBB0_159:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r15, 16
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r1
	and r14, r13, r4
	setlt.u r13, r3, r20
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r13, zero, .LBB0_158
.LBB0_160:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r9, r3, r9
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r9, zero, .LBB0_142
.LBB0_161:                              # %vector.body290
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_142
.LBB0_162:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 272 7                         # parallel-rne.mlir:272:7
	mfence { sm }
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	addli r2, zero, 5
	bneq r9, r2, .LBB0_41
.LBB0_163:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 640
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_165
.LBB0_164:                              # %middle.block285
                                        #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 704
	.loc	1 309 9 is_stmt 1               # parallel-rne.mlir:309:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[10:11], r5
	beq r2, zero, .LBB0_186
.LBB0_165:                              # %vector.ph280
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_167 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[17:18], zero
	j .LBB0_167
.LBB0_166:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 310 11 is_stmt 1              # parallel-rne.mlir:310:11
	addli.d r[17:18], r[17:18], 4
	zext_int2long r[8:9], r23
	.loc	1 325 13                        # parallel-rne.mlir:325:13
	add.s r7, r24, r7
	.loc	1 310 11                        # parallel-rne.mlir:310:11
	setneq.d r8, r[17:18], r[8:9]
	.loc	1 325 13                        # parallel-rne.mlir:325:13
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r14, 4(r7)
	stores.w r19, 0(r7)
	.loc	1 310 11                        # parallel-rne.mlir:310:11
	beq r8, zero, .LBB0_164
.LBB0_167:                              # %vector.body281
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_165 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	add.ul r[7:8], r[17:18], r[10:11]
	slli r7, r7, 2
	add.s r2, r16, r7
	loads.w r8, 12(r2)
	loads.w r21, 0(r2)
	loads.w r15, 4(r2)
	loads.w r12, 8(r2)
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	and r9, r8, r26
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	setlt.u r2, r28, r9
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r2, zero, .LBB0_169
# %bb.168:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_170
.LBB0_169:                              #   in Loop: Header=BB0_167 Depth=3
	or r2, r8, r27
.LBB0_170:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	and r20, r12, r26
	setlt.u r5, r28, r20
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r5, zero, .LBB0_172
# %bb.171:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_167 Depth=3
	or r5, r12, r27
.LBB0_173:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	and r13, r15, r26
	setlt.u r14, r28, r13
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r14, zero, .LBB0_175
# %bb.174:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_167 Depth=3
	or r14, r15, r27
.LBB0_176:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	and r22, r21, r26
	setlt.u r19, r28, r22
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r19, zero, .LBB0_178
# %bb.177:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 322 19 is_stmt 1              # parallel-rne.mlir:322:19
	setlt.u r22, r3, r22
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	beq r22, zero, .LBB0_179
	j .LBB0_180
.LBB0_178:                              #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r27
	.loc	1 322 19 is_stmt 1              # parallel-rne.mlir:322:19
	setlt.u r22, r3, r22
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r22, zero, .LBB0_180
.LBB0_179:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r21, 16
	andi r19, r19, 1
	add.s r19, r21, r19
	add.s r19, r19, r1
	and r19, r19, r4
.LBB0_180:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	setlt.u r13, r3, r13
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	beq r13, zero, .LBB0_183
# %bb.181:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r3, r20
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	beq r13, zero, .LBB0_184
.LBB0_182:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r9
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r9, zero, .LBB0_166
	j .LBB0_185
.LBB0_183:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r15, 16
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r1
	and r14, r13, r4
	setlt.u r13, r3, r20
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r13, zero, .LBB0_182
.LBB0_184:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r9, r3, r9
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r9, zero, .LBB0_166
.LBB0_185:                              # %vector.body281
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_166
.LBB0_186:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	mfence { sm }
	.loc	1 330 7                         # parallel-rne.mlir:330:7
	addli r2, zero, 6
	bneq r9, r2, .LBB0_42
.LBB0_187:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 768
	.loc	1 330 7                         # parallel-rne.mlir:330:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_189
.LBB0_188:                              # %middle.block276
                                        #   in Loop: Header=BB0_189 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 832
	.loc	1 338 9 is_stmt 1               # parallel-rne.mlir:338:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[10:11], r5
	beq r2, zero, .LBB0_210
.LBB0_189:                              # %vector.ph271
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_191 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[17:18], zero
	j .LBB0_191
.LBB0_190:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 339 11 is_stmt 1              # parallel-rne.mlir:339:11
	addli.d r[17:18], r[17:18], 4
	zext_int2long r[8:9], r23
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	add.s r7, r24, r7
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	setneq.d r8, r[17:18], r[8:9]
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r14, 4(r7)
	stores.w r19, 0(r7)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	beq r8, zero, .LBB0_188
.LBB0_191:                              # %vector.body272
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[7:8], r[17:18], r[10:11]
	slli r7, r7, 2
	add.s r2, r16, r7
	loads.w r8, 12(r2)
	loads.w r21, 0(r2)
	loads.w r15, 4(r2)
	loads.w r12, 8(r2)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r9, r8, r26
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	setlt.u r2, r28, r9
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r2, zero, .LBB0_193
# %bb.192:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_194
.LBB0_193:                              #   in Loop: Header=BB0_191 Depth=3
	or r2, r8, r27
.LBB0_194:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	and r20, r12, r26
	setlt.u r5, r28, r20
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r5, zero, .LBB0_196
# %bb.195:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_197
.LBB0_196:                              #   in Loop: Header=BB0_191 Depth=3
	or r5, r12, r27
.LBB0_197:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	and r13, r15, r26
	setlt.u r14, r28, r13
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r14, zero, .LBB0_199
# %bb.198:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_191 Depth=3
	or r14, r15, r27
.LBB0_200:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	and r22, r21, r26
	setlt.u r19, r28, r22
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r19, zero, .LBB0_202
# %bb.201:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r22, r3, r22
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r22, zero, .LBB0_203
	j .LBB0_204
.LBB0_202:                              #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r27
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r22, r3, r22
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r22, zero, .LBB0_204
.LBB0_203:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r21, 16
	andi r19, r19, 1
	add.s r19, r21, r19
	add.s r19, r19, r1
	and r19, r19, r4
.LBB0_204:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	setlt.u r13, r3, r13
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r13, zero, .LBB0_207
# %bb.205:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r3, r20
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r13, zero, .LBB0_208
.LBB0_206:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r9
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r9, zero, .LBB0_190
	j .LBB0_209
.LBB0_207:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r15, 16
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r1
	and r14, r13, r4
	setlt.u r13, r3, r20
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r13, zero, .LBB0_206
.LBB0_208:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r9, r3, r9
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r9, zero, .LBB0_190
.LBB0_209:                              # %vector.body272
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_190
.LBB0_210:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 330 7                         # parallel-rne.mlir:330:7
	mfence { sm }
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	addli r2, zero, 7
	bneq r9, r2, .LBB0_235
.LBB0_211:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 896
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_213
.LBB0_212:                              # %middle.block267
                                        #   in Loop: Header=BB0_213 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 960
	.loc	1 367 9 is_stmt 1               # parallel-rne.mlir:367:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[10:11], r5
	beq r2, zero, .LBB0_234
.LBB0_213:                              # %vector.ph262
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_215 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[17:18], zero
	j .LBB0_215
.LBB0_214:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 368 11 is_stmt 1              # parallel-rne.mlir:368:11
	addli.d r[17:18], r[17:18], 4
	zext_int2long r[8:9], r23
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	add.s r7, r24, r7
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	setneq.d r8, r[17:18], r[8:9]
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r14, 4(r7)
	stores.w r19, 0(r7)
	.loc	1 368 11                        # parallel-rne.mlir:368:11
	beq r8, zero, .LBB0_212
.LBB0_215:                              # %vector.body263
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	add.ul r[7:8], r[17:18], r[10:11]
	slli r7, r7, 2
	add.s r2, r16, r7
	loads.w r8, 12(r2)
	loads.w r21, 0(r2)
	loads.w r15, 4(r2)
	loads.w r12, 8(r2)
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	and r9, r8, r26
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	setlt.u r2, r28, r9
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	bneq r2, zero, .LBB0_217
# %bb.216:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_215 Depth=3
	or r2, r8, r27
.LBB0_218:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	and r20, r12, r26
	setlt.u r5, r28, r20
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	bneq r5, zero, .LBB0_220
# %bb.219:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_215 Depth=3
	or r5, r12, r27
.LBB0_221:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	and r13, r15, r26
	setlt.u r14, r28, r13
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	bneq r14, zero, .LBB0_223
# %bb.222:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_215 Depth=3
	or r14, r15, r27
.LBB0_224:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	and r22, r21, r26
	setlt.u r19, r28, r22
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	bneq r19, zero, .LBB0_226
# %bb.225:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r21, 0
	.loc	1 380 19 is_stmt 1              # parallel-rne.mlir:380:19
	setlt.u r22, r3, r22
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	beq r22, zero, .LBB0_227
	j .LBB0_228
.LBB0_226:                              #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r21, r27
	.loc	1 380 19 is_stmt 1              # parallel-rne.mlir:380:19
	setlt.u r22, r3, r22
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r22, zero, .LBB0_228
.LBB0_227:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r21, 16
	andi r19, r19, 1
	add.s r19, r21, r19
	add.s r19, r19, r1
	and r19, r19, r4
.LBB0_228:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	setlt.u r13, r3, r13
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	beq r13, zero, .LBB0_231
# %bb.229:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r13, r3, r20
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	beq r13, zero, .LBB0_232
.LBB0_230:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r9
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r9, zero, .LBB0_214
	j .LBB0_233
.LBB0_231:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r15, 16
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r1
	and r14, r13, r4
	setlt.u r13, r3, r20
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r13, zero, .LBB0_230
.LBB0_232:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r9, r3, r9
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	bneq r9, zero, .LBB0_214
.LBB0_233:                              # %vector.body263
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_214
.LBB0_234:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	mfence { sm }
.LBB0_235:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -2976(r30)                # 4-byte Folded Reload
	zext_int2long r[10:11], r23
	zext_int2long r[5:6], r2
	addli r2, r30, -2968
	min.ul r[7:8], r[5:6], r[10:11]
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	.loc	1 388 7 is_stmt 1               # parallel-rne.mlir:388:7
	addli r2, r30, -3048
	addli.d r[7:8], r[7:8], 64
	max.ul r[7:8], r[7:8], r[5:6]
	sub.sl r[5:6], r[7:8], r[5:6]
	min.ul r[5:6], r[5:6], r[10:11]
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	addli r2, zero, 3
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	sync_core
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	bneq r9, r2, .LBB0_237
# %bb.236:                              # %.thread59.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 11
	.loc	1 390 7 is_stmt 1               # parallel-rne.mlir:390:7
	addli r5, zero, 18
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	xsignal r2, 0
	.loc	1 390 7                         # parallel-rne.mlir:390:7
	xsignal r5, 0
	.loc	1 395 7                         # parallel-rne.mlir:395:7
	xwait r2, 0
	.loc	1 396 7                         # parallel-rne.mlir:396:7
	addli r2, zero, 19
	xwait r2, 0
	j .LBB0_245
.LBB0_237:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	lui r5, 379
	addli r7, zero, 1
	addli r13, zero, 22
	mod.s r2, r25, r2
	ori r5, r5, 2048
	slli r2, r2, 8
	add.s r10, r2, r5
	.loc	1 392 7 is_stmt 1               # parallel-rne.mlir:392:7
	bneq r9, r7, .LBB0_241
# %bb.238:                              #   in Loop: Header=BB0_7 Depth=1
	addli r8, r30, -3040
	addli r12, zero, 3
	load.d r[5:6], 0(r8)                    # 8-byte Folded Reload
	load.d r[8:9], 16(r30)
	xwait r13, 0
	sll.d r[5:6], r[5:6], r7
	add.ul r[8:9], r[8:9], r[5:6]
	blt.s r12, r25, .LBB0_240
# %bb.239:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r11, zero, 5
	addli r6, zero, 2
	.loc	1 392 7                         # parallel-rne.mlir:392:7
	addli r5, zero, 4
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 6
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 7
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 11
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 12
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 16
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 18
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 19
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 20
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 21
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 24
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 25
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 26
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 27
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 28
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 29
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 30
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 31
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 128
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r10, zero, r23, 3
	dma_cfg r5, zero, r6, 4
	addli r5, zero, 256
	dma_cfg r5, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_240:                              # %.thread59.thread61
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r5, 379
	addli r6, zero, 4
	addli r11, zero, 128
	ori r5, r5, 2112
	.loc	1 392 7                         # parallel-rne.mlir:392:7
	lock zero, r6
	dma_cfg r7, r7, zero, 0
	add.s r2, r2, r5
	addli r5, r30, -3048
	dma_cfg zero, r9, zero, 2
	load.d r[13:14], 0(r5)                  # 8-byte Folded Reload
	dma_cfg r2, r8, r23, 3
	addli r9, zero, 5
	addli r8, zero, 2
	addli r5, r13, 31
	srli r2, r5, 5
	slli r5, r13, 1
	addli r13, zero, 256
	addli r14, zero, 22
	dma_cfg r11, r23, r2, 4
	andi r5, r5, 62
	dma_cfg r13, r11, r7, 5
	dma_cfg zero, zero, r5, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 21
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 6
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 7
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 8
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 9
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 11
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 12
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 13
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 14
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 15
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 16
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 17
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 18
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 19
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 20
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 23
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 24
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 25
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 26
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 27
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 28
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 29
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 30
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 31
	dma_cfg zero, zero, r6, 10
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r10, zero, r23, 3
	dma_cfg r11, zero, r2, 4
	dma_cfg r13, zero, r7, 5
	dma_cfg zero, zero, r5, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r8, 0
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 395 7                         # parallel-rne.mlir:395:7
	j .LBB0_245
.LBB0_241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 393 7                         # parallel-rne.mlir:393:7
	addli r2, zero, 5
	addli r6, zero, 4096
	bneq r9, r2, .LBB0_245
# %bb.242:                              #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 18
	addli r2, zero, 0
	xwait r5, 0
	addli r5, zero, 21
	xwait r5, 0
	addli r5, zero, 2
	lock zero, r5
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 63
	ew_cfg zero, r5, zero, 2
	addli r5, zero, 1
	ew_cfg r5, zero, zero, 3
.LBB0_243:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r24, r2
	addli r2, r2, 256
	dsmadd r5, r5, r10, 0
	bneq r2, r6, .LBB0_243
# %bb.244:                              # %.thread59
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 19
	xsignal r2, 0
	xsignal r13, 0
.LBB0_245:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 398 7                         # parallel-rne.mlir:398:7
	xfence
	.loc	1 400 7                         # parallel-rne.mlir:400:7
	addli r2, zero, 255
	.loc	1 399 7                         # parallel-rne.mlir:399:7
	mfence { lm, sm, gm }
	.loc	1 400 7                         # parallel-rne.mlir:400:7
	csr_set csr5, r2
	sync_core
	.loc	1 401 7                         # parallel-rne.mlir:401:7
	beq r9, zero, .LBB0_253
# %bb.246:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	addli r2, zero, 1
	beq r9, r2, .LBB0_277
.LBB0_247:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 459 7                         # parallel-rne.mlir:459:7
	addli r2, zero, 2
	beq r9, r2, .LBB0_301
.LBB0_248:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 488 7                         # parallel-rne.mlir:488:7
	addli r2, zero, 3
	beq r9, r2, .LBB0_325
.LBB0_249:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	addli r2, zero, 4
	beq r9, r2, .LBB0_349
.LBB0_250:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	addli r2, zero, 5
	beq r9, r2, .LBB0_373
.LBB0_251:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 575 7                         # parallel-rne.mlir:575:7
	addli r2, zero, 6
	beq r9, r2, .LBB0_397
.LBB0_252:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	addli r2, zero, 7
	beq r9, r2, .LBB0_421
	j .LBB0_445
.LBB0_253:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 401 7                         # parallel-rne.mlir:401:7
	xfence
	zext_int2long r[13:14], zero
	addli r12, zero, 1
	addli r2, r30, -2976
	mfence { lm, sm, gm }
	store.d r[13:14], 0(r2)                 # 8-byte Folded Spill
	j .LBB0_255
.LBB0_254:                              # %middle.block258
                                        #   in Loop: Header=BB0_255 Depth=2
	.loc	1 409 9                         # parallel-rne.mlir:409:9
	andi r2, r12, 1
	addli.d r[13:14], r[6:7], 0
	addli r12, zero, 0
	beq r2, zero, .LBB0_276
.LBB0_255:                              # %vector.ph253
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_257 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -2976
	load.d r[17:18], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_257
.LBB0_256:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 410 11 is_stmt 1              # parallel-rne.mlir:410:11
	addli.d r[17:18], r[17:18], 4
	zext_int2long r[6:7], r23
	.loc	1 425 13                        # parallel-rne.mlir:425:13
	add.s r8, r16, r8
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	setneq.d r9, r[17:18], r[6:7]
	.loc	1 425 13                        # parallel-rne.mlir:425:13
	stores.w r2, 12(r8)
	stores.w r5, 8(r8)
	stores.w r20, 4(r8)
	stores.w r10, 0(r8)
	.loc	1 410 11                        # parallel-rne.mlir:410:11
	beq r9, zero, .LBB0_254
.LBB0_257:                              # %vector.body254
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_255 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.ul r[5:6], r[17:18], r[13:14]
	slli r8, r5, 2
	add.s r2, r24, r8
	loads.w r9, 12(r2)
	loads.w r22, 0(r2)
	loads.w r21, 4(r2)
	loads.w r19, 8(r2)
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	and r15, r9, r26
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	setlt.u r2, r28, r15
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r2, zero, .LBB0_259
# %bb.258:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_257 Depth=3
	or r2, r9, r27
.LBB0_260:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	and r25, r19, r26
	setlt.u r5, r28, r25
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r5, zero, .LBB0_262
# %bb.261:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r19, 0
	j .LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_257 Depth=3
	or r5, r19, r27
.LBB0_263:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	and r11, r21, r26
	setlt.u r6, r28, r11
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r6, zero, .LBB0_265
# %bb.264:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_257 Depth=3
	or r20, r21, r27
.LBB0_266:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	and r6, r22, r26
	setlt.u r7, r28, r6
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	bneq r7, zero, .LBB0_268
# %bb.267:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r22, 0
	.loc	1 422 19 is_stmt 1              # parallel-rne.mlir:422:19
	setlt.u r6, r3, r6
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	beq r6, zero, .LBB0_269
	j .LBB0_270
.LBB0_268:                              #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r22, r27
	.loc	1 422 19 is_stmt 1              # parallel-rne.mlir:422:19
	setlt.u r6, r3, r6
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r6, zero, .LBB0_270
.LBB0_269:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r1
	and r10, r6, r4
.LBB0_270:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	setlt.u r6, r3, r11
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	beq r6, zero, .LBB0_273
# %bb.271:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r25
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	beq r6, zero, .LBB0_274
.LBB0_272:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r15
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r6, zero, .LBB0_256
	j .LBB0_275
.LBB0_273:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r1
	and r20, r6, r4
	setlt.u r6, r3, r25
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r6, zero, .LBB0_272
.LBB0_274:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r6, r3, r15
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r6, zero, .LBB0_256
.LBB0_275:                              # %vector.body254
                                        #   in Loop: Header=BB0_257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_256
.LBB0_276:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 401 7                         # parallel-rne.mlir:401:7
	mfence { sm }
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	addli r2, zero, 1
	bneq r9, r2, .LBB0_247
.LBB0_277:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	xfence
	addli r10, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[11:12], r2
	j .LBB0_279
.LBB0_278:                              # %middle.block249
                                        #   in Loop: Header=BB0_279 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 192
	.loc	1 438 9 is_stmt 1               # parallel-rne.mlir:438:9
	andi r2, r10, 1
	addli r10, zero, 0
	zext_int2long r[11:12], r5
	beq r2, zero, .LBB0_300
.LBB0_279:                              # %vector.ph244
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_281 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[13:14], zero
	j .LBB0_281
.LBB0_280:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 439 11 is_stmt 1              # parallel-rne.mlir:439:11
	addli.d r[13:14], r[13:14], 4
	zext_int2long r[6:7], r23
	setneq.d r6, r[13:14], r[6:7]
	.loc	1 454 13                        # parallel-rne.mlir:454:13
	add.s r7, r16, r8
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r18, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 439 11                        # parallel-rne.mlir:439:11
	beq r6, zero, .LBB0_278
.LBB0_281:                              # %vector.body245
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	add.ul r[5:6], r[13:14], r[11:12]
	slli r8, r5, 2
	add.s r2, r24, r8
	loads.w r9, 12(r2)
	loads.w r22, 0(r2)
	loads.w r19, 4(r2)
	loads.w r17, 8(r2)
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	and r15, r9, r26
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	setlt.u r2, r28, r15
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	bneq r2, zero, .LBB0_283
# %bb.282:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_284
.LBB0_283:                              #   in Loop: Header=BB0_281 Depth=3
	or r2, r9, r27
.LBB0_284:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	and r21, r17, r26
	setlt.u r5, r28, r21
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	bneq r5, zero, .LBB0_286
# %bb.285:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r17, 0
	j .LBB0_287
.LBB0_286:                              #   in Loop: Header=BB0_281 Depth=3
	or r5, r17, r27
.LBB0_287:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	and r25, r19, r26
	setlt.u r6, r28, r25
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	bneq r6, zero, .LBB0_289
# %bb.288:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_290
.LBB0_289:                              #   in Loop: Header=BB0_281 Depth=3
	or r18, r19, r27
.LBB0_290:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	and r6, r22, r26
	setlt.u r7, r28, r6
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	bneq r7, zero, .LBB0_292
# %bb.291:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 451 19 is_stmt 1              # parallel-rne.mlir:451:19
	setlt.u r6, r3, r6
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	beq r6, zero, .LBB0_293
	j .LBB0_294
.LBB0_292:                              #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r22, r27
	.loc	1 451 19 is_stmt 1              # parallel-rne.mlir:451:19
	setlt.u r6, r3, r6
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	bneq r6, zero, .LBB0_294
.LBB0_293:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r1
	and r20, r6, r4
.LBB0_294:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	setlt.u r6, r3, r25
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	beq r6, zero, .LBB0_297
# %bb.295:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r21
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	beq r6, zero, .LBB0_298
.LBB0_296:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r15
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	bneq r6, zero, .LBB0_280
	j .LBB0_299
.LBB0_297:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r1
	and r18, r6, r4
	setlt.u r6, r3, r21
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	bneq r6, zero, .LBB0_296
.LBB0_298:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r6, r3, r15
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	bneq r6, zero, .LBB0_280
.LBB0_299:                              # %vector.body245
                                        #   in Loop: Header=BB0_281 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_280
.LBB0_300:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	mfence { sm }
	.loc	1 459 7                         # parallel-rne.mlir:459:7
	addli r2, zero, 2
	bneq r9, r2, .LBB0_248
.LBB0_301:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 459 7                         # parallel-rne.mlir:459:7
	xfence
	addli r10, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[11:12], r2
	j .LBB0_303
.LBB0_302:                              # %middle.block240
                                        #   in Loop: Header=BB0_303 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 320
	.loc	1 467 9 is_stmt 1               # parallel-rne.mlir:467:9
	andi r2, r10, 1
	addli r10, zero, 0
	zext_int2long r[11:12], r5
	beq r2, zero, .LBB0_324
.LBB0_303:                              # %vector.ph235
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_305 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[13:14], zero
	j .LBB0_305
.LBB0_304:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 468 11 is_stmt 1              # parallel-rne.mlir:468:11
	addli.d r[13:14], r[13:14], 4
	zext_int2long r[6:7], r23
	setneq.d r6, r[13:14], r[6:7]
	.loc	1 483 13                        # parallel-rne.mlir:483:13
	add.s r7, r16, r8
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r18, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 468 11                        # parallel-rne.mlir:468:11
	beq r6, zero, .LBB0_302
.LBB0_305:                              # %vector.body236
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	add.ul r[5:6], r[13:14], r[11:12]
	slli r8, r5, 2
	add.s r2, r24, r8
	loads.w r9, 12(r2)
	loads.w r22, 0(r2)
	loads.w r19, 4(r2)
	loads.w r17, 8(r2)
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	and r15, r9, r26
	.loc	1 473 19                        # parallel-rne.mlir:473:19
	setlt.u r2, r28, r15
	.loc	1 474 19                        # parallel-rne.mlir:474:19
	bneq r2, zero, .LBB0_307
# %bb.306:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_308
.LBB0_307:                              #   in Loop: Header=BB0_305 Depth=3
	or r2, r9, r27
.LBB0_308:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	and r21, r17, r26
	setlt.u r5, r28, r21
	.loc	1 474 19                        # parallel-rne.mlir:474:19
	bneq r5, zero, .LBB0_310
# %bb.309:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r17, 0
	j .LBB0_311
.LBB0_310:                              #   in Loop: Header=BB0_305 Depth=3
	or r5, r17, r27
.LBB0_311:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	and r25, r19, r26
	setlt.u r6, r28, r25
	.loc	1 474 19                        # parallel-rne.mlir:474:19
	bneq r6, zero, .LBB0_313
# %bb.312:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_305 Depth=3
	or r18, r19, r27
.LBB0_314:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	and r6, r22, r26
	setlt.u r7, r28, r6
	.loc	1 474 19                        # parallel-rne.mlir:474:19
	bneq r7, zero, .LBB0_316
# %bb.315:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 480 19 is_stmt 1              # parallel-rne.mlir:480:19
	setlt.u r6, r3, r6
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	beq r6, zero, .LBB0_317
	j .LBB0_318
.LBB0_316:                              #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r22, r27
	.loc	1 480 19 is_stmt 1              # parallel-rne.mlir:480:19
	setlt.u r6, r3, r6
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	bneq r6, zero, .LBB0_318
.LBB0_317:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r1
	and r20, r6, r4
.LBB0_318:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	setlt.u r6, r3, r25
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	beq r6, zero, .LBB0_321
# %bb.319:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r21
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	beq r6, zero, .LBB0_322
.LBB0_320:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r15
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	bneq r6, zero, .LBB0_304
	j .LBB0_323
.LBB0_321:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r1
	and r18, r6, r4
	setlt.u r6, r3, r21
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	bneq r6, zero, .LBB0_320
.LBB0_322:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r6, r3, r15
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	bneq r6, zero, .LBB0_304
.LBB0_323:                              # %vector.body236
                                        #   in Loop: Header=BB0_305 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_304
.LBB0_324:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 459 7                         # parallel-rne.mlir:459:7
	mfence { sm }
	.loc	1 488 7                         # parallel-rne.mlir:488:7
	addli r2, zero, 3
	bneq r9, r2, .LBB0_249
.LBB0_325:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 384
	.loc	1 488 7                         # parallel-rne.mlir:488:7
	xfence
	addli r10, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[11:12], r2
	j .LBB0_327
.LBB0_326:                              # %middle.block231
                                        #   in Loop: Header=BB0_327 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 448
	.loc	1 496 9 is_stmt 1               # parallel-rne.mlir:496:9
	andi r2, r10, 1
	addli r10, zero, 0
	zext_int2long r[11:12], r5
	beq r2, zero, .LBB0_348
.LBB0_327:                              # %vector.ph226
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_329 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[13:14], zero
	j .LBB0_329
.LBB0_328:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 497 11 is_stmt 1              # parallel-rne.mlir:497:11
	addli.d r[13:14], r[13:14], 4
	zext_int2long r[6:7], r23
	setneq.d r6, r[13:14], r[6:7]
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	add.s r7, r16, r8
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r18, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 497 11                        # parallel-rne.mlir:497:11
	beq r6, zero, .LBB0_326
.LBB0_329:                              # %vector.body227
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_327 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	add.ul r[5:6], r[13:14], r[11:12]
	slli r8, r5, 2
	add.s r2, r24, r8
	loads.w r9, 12(r2)
	loads.w r22, 0(r2)
	loads.w r19, 4(r2)
	loads.w r17, 8(r2)
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	and r15, r9, r26
	.loc	1 502 19                        # parallel-rne.mlir:502:19
	setlt.u r2, r28, r15
	.loc	1 503 19                        # parallel-rne.mlir:503:19
	bneq r2, zero, .LBB0_331
# %bb.330:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_332
.LBB0_331:                              #   in Loop: Header=BB0_329 Depth=3
	or r2, r9, r27
.LBB0_332:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	and r21, r17, r26
	setlt.u r5, r28, r21
	.loc	1 503 19                        # parallel-rne.mlir:503:19
	bneq r5, zero, .LBB0_334
# %bb.333:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r17, 0
	j .LBB0_335
.LBB0_334:                              #   in Loop: Header=BB0_329 Depth=3
	or r5, r17, r27
.LBB0_335:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	and r25, r19, r26
	setlt.u r6, r28, r25
	.loc	1 503 19                        # parallel-rne.mlir:503:19
	bneq r6, zero, .LBB0_337
# %bb.336:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_338
.LBB0_337:                              #   in Loop: Header=BB0_329 Depth=3
	or r18, r19, r27
.LBB0_338:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	and r6, r22, r26
	setlt.u r7, r28, r6
	.loc	1 503 19                        # parallel-rne.mlir:503:19
	bneq r7, zero, .LBB0_340
# %bb.339:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 509 19 is_stmt 1              # parallel-rne.mlir:509:19
	setlt.u r6, r3, r6
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	beq r6, zero, .LBB0_341
	j .LBB0_342
.LBB0_340:                              #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r22, r27
	.loc	1 509 19 is_stmt 1              # parallel-rne.mlir:509:19
	setlt.u r6, r3, r6
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	bneq r6, zero, .LBB0_342
.LBB0_341:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r1
	and r20, r6, r4
.LBB0_342:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	setlt.u r6, r3, r25
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	beq r6, zero, .LBB0_345
# %bb.343:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r21
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	beq r6, zero, .LBB0_346
.LBB0_344:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r15
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	bneq r6, zero, .LBB0_328
	j .LBB0_347
.LBB0_345:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r1
	and r18, r6, r4
	setlt.u r6, r3, r21
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	bneq r6, zero, .LBB0_344
.LBB0_346:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r6, r3, r15
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	bneq r6, zero, .LBB0_328
.LBB0_347:                              # %vector.body227
                                        #   in Loop: Header=BB0_329 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_328
.LBB0_348:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 488 7                         # parallel-rne.mlir:488:7
	mfence { sm }
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	addli r2, zero, 4
	bneq r9, r2, .LBB0_250
.LBB0_349:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 512
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	xfence
	addli r10, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[11:12], r2
	j .LBB0_351
.LBB0_350:                              # %middle.block222
                                        #   in Loop: Header=BB0_351 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 576
	.loc	1 525 9 is_stmt 1               # parallel-rne.mlir:525:9
	andi r2, r10, 1
	addli r10, zero, 0
	zext_int2long r[11:12], r5
	beq r2, zero, .LBB0_372
.LBB0_351:                              # %vector.ph217
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_353 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[13:14], zero
	j .LBB0_353
.LBB0_352:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 526 11 is_stmt 1              # parallel-rne.mlir:526:11
	addli.d r[13:14], r[13:14], 4
	zext_int2long r[6:7], r23
	setneq.d r6, r[13:14], r[6:7]
	.loc	1 541 13                        # parallel-rne.mlir:541:13
	add.s r7, r16, r8
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r18, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	beq r6, zero, .LBB0_350
.LBB0_353:                              # %vector.body218
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.ul r[5:6], r[13:14], r[11:12]
	slli r8, r5, 2
	add.s r2, r24, r8
	loads.w r9, 12(r2)
	loads.w r22, 0(r2)
	loads.w r19, 4(r2)
	loads.w r17, 8(r2)
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	and r15, r9, r26
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	setlt.u r2, r28, r15
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r2, zero, .LBB0_355
# %bb.354:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_356
.LBB0_355:                              #   in Loop: Header=BB0_353 Depth=3
	or r2, r9, r27
.LBB0_356:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	and r21, r17, r26
	setlt.u r5, r28, r21
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r5, zero, .LBB0_358
# %bb.357:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r17, 0
	j .LBB0_359
.LBB0_358:                              #   in Loop: Header=BB0_353 Depth=3
	or r5, r17, r27
.LBB0_359:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	and r25, r19, r26
	setlt.u r6, r28, r25
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r6, zero, .LBB0_361
# %bb.360:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_362
.LBB0_361:                              #   in Loop: Header=BB0_353 Depth=3
	or r18, r19, r27
.LBB0_362:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	and r6, r22, r26
	setlt.u r7, r28, r6
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r7, zero, .LBB0_364
# %bb.363:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 538 19 is_stmt 1              # parallel-rne.mlir:538:19
	setlt.u r6, r3, r6
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	beq r6, zero, .LBB0_365
	j .LBB0_366
.LBB0_364:                              #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r22, r27
	.loc	1 538 19 is_stmt 1              # parallel-rne.mlir:538:19
	setlt.u r6, r3, r6
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r6, zero, .LBB0_366
.LBB0_365:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r1
	and r20, r6, r4
.LBB0_366:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	setlt.u r6, r3, r25
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	beq r6, zero, .LBB0_369
# %bb.367:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r21
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	beq r6, zero, .LBB0_370
.LBB0_368:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r15
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r6, zero, .LBB0_352
	j .LBB0_371
.LBB0_369:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r1
	and r18, r6, r4
	setlt.u r6, r3, r21
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r6, zero, .LBB0_368
.LBB0_370:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r6, r3, r15
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r6, zero, .LBB0_352
.LBB0_371:                              # %vector.body218
                                        #   in Loop: Header=BB0_353 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_352
.LBB0_372:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	mfence { sm }
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	addli r2, zero, 5
	bneq r9, r2, .LBB0_251
.LBB0_373:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 640
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	xfence
	addli r10, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[11:12], r2
	j .LBB0_375
.LBB0_374:                              # %middle.block213
                                        #   in Loop: Header=BB0_375 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 704
	.loc	1 554 9 is_stmt 1               # parallel-rne.mlir:554:9
	andi r2, r10, 1
	addli r10, zero, 0
	zext_int2long r[11:12], r5
	beq r2, zero, .LBB0_396
.LBB0_375:                              # %vector.ph208
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_377 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[13:14], zero
	j .LBB0_377
.LBB0_376:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 555 11 is_stmt 1              # parallel-rne.mlir:555:11
	addli.d r[13:14], r[13:14], 4
	zext_int2long r[6:7], r23
	setneq.d r6, r[13:14], r[6:7]
	.loc	1 570 13                        # parallel-rne.mlir:570:13
	add.s r7, r16, r8
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r18, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 555 11                        # parallel-rne.mlir:555:11
	beq r6, zero, .LBB0_374
.LBB0_377:                              # %vector.body209
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_375 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	add.ul r[5:6], r[13:14], r[11:12]
	slli r8, r5, 2
	add.s r2, r24, r8
	loads.w r9, 12(r2)
	loads.w r22, 0(r2)
	loads.w r19, 4(r2)
	loads.w r17, 8(r2)
	.loc	1 558 19                        # parallel-rne.mlir:558:19
	and r15, r9, r26
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	setlt.u r2, r28, r15
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	bneq r2, zero, .LBB0_379
# %bb.378:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_380
.LBB0_379:                              #   in Loop: Header=BB0_377 Depth=3
	or r2, r9, r27
.LBB0_380:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	and r21, r17, r26
	setlt.u r5, r28, r21
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	bneq r5, zero, .LBB0_382
# %bb.381:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r17, 0
	j .LBB0_383
.LBB0_382:                              #   in Loop: Header=BB0_377 Depth=3
	or r5, r17, r27
.LBB0_383:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	and r25, r19, r26
	setlt.u r6, r28, r25
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	bneq r6, zero, .LBB0_385
# %bb.384:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_377 Depth=3
	or r18, r19, r27
.LBB0_386:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	and r6, r22, r26
	setlt.u r7, r28, r6
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	bneq r7, zero, .LBB0_388
# %bb.387:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 567 19 is_stmt 1              # parallel-rne.mlir:567:19
	setlt.u r6, r3, r6
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	beq r6, zero, .LBB0_389
	j .LBB0_390
.LBB0_388:                              #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r22, r27
	.loc	1 567 19 is_stmt 1              # parallel-rne.mlir:567:19
	setlt.u r6, r3, r6
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r6, zero, .LBB0_390
.LBB0_389:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r1
	and r20, r6, r4
.LBB0_390:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	setlt.u r6, r3, r25
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	beq r6, zero, .LBB0_393
# %bb.391:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r21
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	beq r6, zero, .LBB0_394
.LBB0_392:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r15
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r6, zero, .LBB0_376
	j .LBB0_395
.LBB0_393:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r1
	and r18, r6, r4
	setlt.u r6, r3, r21
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r6, zero, .LBB0_392
.LBB0_394:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r6, r3, r15
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	bneq r6, zero, .LBB0_376
.LBB0_395:                              # %vector.body209
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_376
.LBB0_396:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	mfence { sm }
	.loc	1 575 7                         # parallel-rne.mlir:575:7
	addli r2, zero, 6
	bneq r9, r2, .LBB0_252
.LBB0_397:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 768
	.loc	1 575 7                         # parallel-rne.mlir:575:7
	xfence
	addli r10, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[11:12], r2
	j .LBB0_399
.LBB0_398:                              # %middle.block204
                                        #   in Loop: Header=BB0_399 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 832
	.loc	1 583 9 is_stmt 1               # parallel-rne.mlir:583:9
	andi r2, r10, 1
	addli r10, zero, 0
	zext_int2long r[11:12], r5
	beq r2, zero, .LBB0_420
.LBB0_399:                              # %vector.ph199
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_401 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[13:14], zero
	j .LBB0_401
.LBB0_400:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 584 11 is_stmt 1              # parallel-rne.mlir:584:11
	addli.d r[13:14], r[13:14], 4
	zext_int2long r[6:7], r23
	setneq.d r6, r[13:14], r[6:7]
	.loc	1 599 13                        # parallel-rne.mlir:599:13
	add.s r7, r16, r8
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r18, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 584 11                        # parallel-rne.mlir:584:11
	beq r6, zero, .LBB0_398
.LBB0_401:                              # %vector.body200
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_399 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 585 19                        # parallel-rne.mlir:585:19
	add.ul r[5:6], r[13:14], r[11:12]
	slli r8, r5, 2
	add.s r2, r24, r8
	loads.w r9, 12(r2)
	loads.w r22, 0(r2)
	loads.w r19, 4(r2)
	loads.w r17, 8(r2)
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	and r15, r9, r26
	.loc	1 589 19                        # parallel-rne.mlir:589:19
	setlt.u r2, r28, r15
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r2, zero, .LBB0_403
# %bb.402:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_404
.LBB0_403:                              #   in Loop: Header=BB0_401 Depth=3
	or r2, r9, r27
.LBB0_404:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	and r21, r17, r26
	setlt.u r5, r28, r21
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r5, zero, .LBB0_406
# %bb.405:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r17, 0
	j .LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_401 Depth=3
	or r5, r17, r27
.LBB0_407:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	and r25, r19, r26
	setlt.u r6, r28, r25
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r6, zero, .LBB0_409
# %bb.408:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_401 Depth=3
	or r18, r19, r27
.LBB0_410:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	and r6, r22, r26
	setlt.u r7, r28, r6
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r7, zero, .LBB0_412
# %bb.411:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 596 19 is_stmt 1              # parallel-rne.mlir:596:19
	setlt.u r6, r3, r6
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	beq r6, zero, .LBB0_413
	j .LBB0_414
.LBB0_412:                              #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r22, r27
	.loc	1 596 19 is_stmt 1              # parallel-rne.mlir:596:19
	setlt.u r6, r3, r6
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r6, zero, .LBB0_414
.LBB0_413:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r1
	and r20, r6, r4
.LBB0_414:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	setlt.u r6, r3, r25
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	beq r6, zero, .LBB0_417
# %bb.415:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r21
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	beq r6, zero, .LBB0_418
.LBB0_416:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r15
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r6, zero, .LBB0_400
	j .LBB0_419
.LBB0_417:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r1
	and r18, r6, r4
	setlt.u r6, r3, r21
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r6, zero, .LBB0_416
.LBB0_418:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r6, r3, r15
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r6, zero, .LBB0_400
.LBB0_419:                              # %vector.body200
                                        #   in Loop: Header=BB0_401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_400
.LBB0_420:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 575 7                         # parallel-rne.mlir:575:7
	mfence { sm }
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	addli r2, zero, 7
	bneq r9, r2, .LBB0_445
.LBB0_421:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 896
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	xfence
	addli r10, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[11:12], r2
	j .LBB0_423
.LBB0_422:                              # %middle.block195
                                        #   in Loop: Header=BB0_423 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 960
	.loc	1 612 9 is_stmt 1               # parallel-rne.mlir:612:9
	andi r2, r10, 1
	addli r10, zero, 0
	zext_int2long r[11:12], r5
	beq r2, zero, .LBB0_444
.LBB0_423:                              # %vector.ph190
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_425 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[13:14], zero
	j .LBB0_425
.LBB0_424:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 613 11 is_stmt 1              # parallel-rne.mlir:613:11
	addli.d r[13:14], r[13:14], 4
	zext_int2long r[6:7], r23
	setneq.d r6, r[13:14], r[6:7]
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	add.s r7, r16, r8
	stores.w r2, 12(r7)
	stores.w r5, 8(r7)
	stores.w r18, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 613 11                        # parallel-rne.mlir:613:11
	beq r6, zero, .LBB0_422
.LBB0_425:                              # %vector.body191
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_423 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 614 19                        # parallel-rne.mlir:614:19
	add.ul r[5:6], r[13:14], r[11:12]
	slli r8, r5, 2
	add.s r2, r24, r8
	loads.w r9, 12(r2)
	loads.w r22, 0(r2)
	loads.w r19, 4(r2)
	loads.w r17, 8(r2)
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	and r15, r9, r26
	.loc	1 618 19                        # parallel-rne.mlir:618:19
	setlt.u r2, r28, r15
	.loc	1 619 19                        # parallel-rne.mlir:619:19
	bneq r2, zero, .LBB0_427
# %bb.426:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_428
.LBB0_427:                              #   in Loop: Header=BB0_425 Depth=3
	or r2, r9, r27
.LBB0_428:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	and r21, r17, r26
	setlt.u r5, r28, r21
	.loc	1 619 19                        # parallel-rne.mlir:619:19
	bneq r5, zero, .LBB0_430
# %bb.429:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r17, 0
	j .LBB0_431
.LBB0_430:                              #   in Loop: Header=BB0_425 Depth=3
	or r5, r17, r27
.LBB0_431:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	and r25, r19, r26
	setlt.u r6, r28, r25
	.loc	1 619 19                        # parallel-rne.mlir:619:19
	bneq r6, zero, .LBB0_433
# %bb.432:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_434
.LBB0_433:                              #   in Loop: Header=BB0_425 Depth=3
	or r18, r19, r27
.LBB0_434:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	and r6, r22, r26
	setlt.u r7, r28, r6
	.loc	1 619 19                        # parallel-rne.mlir:619:19
	bneq r7, zero, .LBB0_436
# %bb.435:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 625 19 is_stmt 1              # parallel-rne.mlir:625:19
	setlt.u r6, r3, r6
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r6, zero, .LBB0_437
	j .LBB0_438
.LBB0_436:                              #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r20, r22, r27
	.loc	1 625 19 is_stmt 1              # parallel-rne.mlir:625:19
	setlt.u r6, r3, r6
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	bneq r6, zero, .LBB0_438
.LBB0_437:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r1
	and r20, r6, r4
.LBB0_438:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	setlt.u r6, r3, r25
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r6, zero, .LBB0_441
# %bb.439:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r21
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	beq r6, zero, .LBB0_442
.LBB0_440:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r15
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	bneq r6, zero, .LBB0_424
	j .LBB0_443
.LBB0_441:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r1
	and r18, r6, r4
	setlt.u r6, r3, r21
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	bneq r6, zero, .LBB0_440
.LBB0_442:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r17, 16
	andi r5, r5, 1
	add.s r5, r17, r5
	add.s r5, r5, r1
	and r5, r5, r4
	setlt.u r6, r3, r15
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	bneq r6, zero, .LBB0_424
.LBB0_443:                              # %vector.body191
                                        #   in Loop: Header=BB0_425 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r1
	and r2, r2, r4
	j .LBB0_424
.LBB0_444:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	mfence { sm }
.LBB0_445:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	addli r2, zero, 3
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	sync_core
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	bneq r9, r2, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	.loc	1 639 13                        # parallel-rne.mlir:639:13
	addli r5, zero, 4
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	xsignal r2, 0
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	addli r2, zero, 15
	xsignal r2, 0
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	addli r2, zero, 20
	xsignal r2, 0
	.loc	1 639 13                        # parallel-rne.mlir:639:13
	loadli.w r2,  -40(r30)
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	loadli.w r6,  -20(r30)
	.loc	1 639 13                        # parallel-rne.mlir:639:13
	mod.s r5, r2, r5
	addli r2, r2, 1
	storeli.w r2, -40(r30)
	slli r2, r5, 12
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	addli r5, r6, 1
	.loc	1 639 13                        # parallel-rne.mlir:639:13
	loadli.w r6,  -3076(r30)                # 4-byte Folded Reload
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	storeli.w r5, -20(r30)
	.loc	1 639 13                        # parallel-rne.mlir:639:13
	add.s r24, r2, r6
	.loc	1 648 7                         # parallel-rne.mlir:648:7
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 649 7                         # parallel-rne.mlir:649:7
	addli r2, zero, 23
	xwait r2, 0
	j .LBB0_454
.LBB0_447:                              # %.critedge10
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 639 13                        # parallel-rne.mlir:639:13
	loadli.w r2,  -40(r30)
	addli r6, zero, 4
	loadli.w r7,  -3076(r30)                # 4-byte Folded Reload
	mod.s r5, r2, r6
	addli r2, r2, 1
	storeli.w r2, -40(r30)
	.loc	1 640 7                         # parallel-rne.mlir:640:7
	addli r2, zero, 5
	.loc	1 639 13                        # parallel-rne.mlir:639:13
	slli r5, r5, 12
	add.s r24, r5, r7
	.loc	1 640 7                         # parallel-rne.mlir:640:7
	bneq r9, r2, .LBB0_453
# %bb.448:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 12
	addli r8, zero, 2
	addli r7, zero, 1
	lui r10, 790528
	addli r5, zero, 0
	xwait r2, 0
	addli r2, zero, 24
	xwait r2, 0
	lock zero, r8
	addli r2, zero, 511
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 13
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, zero, 19
	ew_cfg r2, zero, zero, 10
	loadli.w r2,  -3080(r30)                # 4-byte Folded Reload
	ew_cfg r8, r7, r2, 11
	addli r2, zero, 3
	ew_cfg zero, zero, r2, 13
	lui r2, 266232
	ew_cfg r10, r6, r2, 14
	lui r2, 260096
	ew_cfg zero, r2, zero, 15
	sslut r24, r16, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r8
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	loadli.w r2,  -20(r30)
	mod.s r6, r2, r6
	addli r2, r2, 1
	storeli.w r2, -20(r30)
	.loc	1 643 7                         # parallel-rne.mlir:643:7
	addli r2, zero, 14
	xwait r2, 0
	addli r2, zero, 25
	xwait r2, 0
	lock zero, r8
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	slli r2, r6, 12
	addli r8, zero, 4096
	.loc	1 643 7                         # parallel-rne.mlir:643:7
	ew_cfg zero, zero, zero, 1
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	loadli.w r6,  -3084(r30)                # 4-byte Folded Reload
	add.s r2, r2, r6
	.loc	1 643 7                         # parallel-rne.mlir:643:7
	addli r6, zero, 63
	ew_cfg zero, r6, zero, 2
	ew_cfg r7, zero, zero, 3
	loadli.w r6,  -3088(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r6, zero, zero, 0
.LBB0_449:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r2, r5
	add.s r7, r16, r5
	addli r5, r5, 256
	dscmpnsel r6, r7, r7, 0
	bneq r5, r8, .LBB0_449
# %bb.450:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 2
	addli r5, zero, 0
	.loc	1 643 7                         # parallel-rne.mlir:643:7
	unlock r6
	.loc	1 644 7 is_stmt 1               # parallel-rne.mlir:644:7
	lock zero, r6
	addli r6, zero, 63
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r6, zero, 2
	addli r6, zero, 1
	ew_cfg r6, zero, zero, 3
	ewcoeff_cfg r3, zero, zero, 0
.LBB0_451:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r2, r5
	addli r5, r5, 256
	dscmpnsel r6, r6, r6, 4
	bneq r5, r8, .LBB0_451
# %bb.452:                              # %.critedge14.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 2
	.loc	1 645 7 is_stmt 1               # parallel-rne.mlir:645:7
	addli r6, zero, 15
	lui r7, 260096
	.loc	1 644 7                         # parallel-rne.mlir:644:7
	unlock r5
	.loc	1 645 7                         # parallel-rne.mlir:645:7
	xwait r6, 0
	lock zero, r5
	lui r6, 784384
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r7, r6, zero, 0
	addli r6, zero, 511
	ew_cfg zero, r6, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	dsmadd r16, r16, r2, 0
	addli r2, zero, 25
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	.loc	1 646 7                         # parallel-rne.mlir:646:7
	lock zero, r5
	addli r2, zero, 13
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r7, r7, zero, 0
	ew_cfg zero, r6, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	dsmadd r24, r24, r16, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r2, 0
	.loc	1 648 7                         # parallel-rne.mlir:648:7
	j .LBB0_454
.LBB0_453:                              # %.critedge14
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	loadli.w r2,  -20(r30)
	addli r2, r2, 1
	storeli.w r2, -20(r30)
.LBB0_454:                              # %.critedge16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 653 7                         # parallel-rne.mlir:653:7
	addli r2, zero, 255
	.loc	1 651 7                         # parallel-rne.mlir:651:7
	xfence
	.loc	1 652 7                         # parallel-rne.mlir:652:7
	mfence { lm, sm, gm }
	.loc	1 653 7                         # parallel-rne.mlir:653:7
	csr_set csr5, r2
	sub.s r2, r16, r24
	storeli.w r2, -3012(r30)                # 4-byte Folded Spill
	addli r2, zero, 63
	sync_core
	zext_int2long r[13:14], r2
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	beq r9, zero, .LBB0_461
# %bb.455:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 683 7                         # parallel-rne.mlir:683:7
	addli r2, zero, 1
	beq r9, r2, .LBB0_492
.LBB0_456:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 712 7                         # parallel-rne.mlir:712:7
	addli r2, zero, 2
	beq r9, r2, .LBB0_523
.LBB0_457:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 741 7                         # parallel-rne.mlir:741:7
	addli r2, zero, 3
	beq r9, r2, .LBB0_554
.LBB0_458:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 770 7                         # parallel-rne.mlir:770:7
	addli r2, zero, 4
	beq r9, r2, .LBB0_585
.LBB0_459:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	addli r2, zero, 5
	beq r9, r2, .LBB0_616
.LBB0_460:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 828 7                         # parallel-rne.mlir:828:7
	addli r2, zero, 6
	beq r9, r2, .LBB0_647
	j .LBB0_678
.LBB0_461:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -3012(r30)                # 4-byte Folded Reload
	addli r2, zero, 16
	zext_int2long r[17:18], zero
	setlt.u r2, r5, r2
	addli r5, zero, 1
	.loc	1 654 7 is_stmt 1               # parallel-rne.mlir:654:7
	storeli.w r2, -2980(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_463
.LBB0_462:                              # %middle.block186
                                        #   in Loop: Header=BB0_463 Depth=2
	.loc	1 662 9                         # parallel-rne.mlir:662:9
	loadli.w r2,  -2976(r30)                # 4-byte Folded Reload
	addli r5, r30, -2968
	load.d r[17:18], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_491
.LBB0_463:                              # %vector.memcheck178
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_472 Depth 3
                                        #       Child Loop BB0_466 Depth 3
	.loc	1 663 11                        # parallel-rne.mlir:663:11
	loadli.w r2,  -2980(r30)                # 4-byte Folded Reload
	storeli.w r5, -2976(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_470
# %bb.464:                              # %scalar.ph180.preheader
                                        #   in Loop: Header=BB0_463 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_466
.LBB0_465:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_466 Depth=3
	.loc	1 663 11                        # parallel-rne.mlir:663:11
	setlt.ul r6, r[8:9], r[13:14]
	.loc	1 678 13 is_stmt 1              # parallel-rne.mlir:678:13
	add.s r2, r16, r2
	.loc	1 663 11                        # parallel-rne.mlir:663:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 678 13                        # parallel-rne.mlir:678:13
	stores.w r5, 0(r2)
	.loc	1 663 11                        # parallel-rne.mlir:663:11
	beq r6, zero, .LBB0_462
.LBB0_466:                              # %scalar.ph180
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_463 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	add.ul r[5:6], r[8:9], r[17:18]
	slli r2, r5, 2
	add.s r5, r24, r2
	loads.w r6, 0(r5)
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	and r7, r6, r26
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	setlt.u r5, r28, r7
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	bneq r5, zero, .LBB0_468
# %bb.467:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 675 19 is_stmt 1              # parallel-rne.mlir:675:19
	setlt.u r7, r3, r7
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	bneq r7, zero, .LBB0_465
	j .LBB0_469
.LBB0_468:                              #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r27
	.loc	1 675 19 is_stmt 1              # parallel-rne.mlir:675:19
	setlt.u r7, r3, r7
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	bneq r7, zero, .LBB0_465
.LBB0_469:                              # %scalar.ph180
                                        #   in Loop: Header=BB0_466 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r1
	and r5, r5, r4
	j .LBB0_465
.LBB0_470:                              # %vector.body182.preheader
                                        #   in Loop: Header=BB0_463 Depth=2
	zext_int2long r[20:21], zero
	j .LBB0_472
.LBB0_471:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 663 11 is_stmt 1              # parallel-rne.mlir:663:11
	addli r2, r30, -2968
	addli.d r[20:21], r[20:21], 4
	.loc	1 678 13                        # parallel-rne.mlir:678:13
	add.s r5, r16, r8
	.loc	1 663 11                        # parallel-rne.mlir:663:11
	load.d r[22:23], 0(r2)                  # 8-byte Folded Reload
	.loc	1 678 13                        # parallel-rne.mlir:678:13
	stores.w r9, 12(r5)
	stores.w r12, 8(r5)
	stores.w r10, 4(r5)
	stores.w r6, 0(r5)
	.loc	1 663 11                        # parallel-rne.mlir:663:11
	seteq.d r2, r[20:21], r[22:23]
	addli r23, zero, 64
	bneq r2, zero, .LBB0_462
.LBB0_472:                              # %vector.body182
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_463 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	add.ul r[5:6], r[20:21], r[17:18]
	slli r8, r5, 2
	add.s r22, r24, r8
	loads.w r2, 12(r22)
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	and r5, r2, r26
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	setlt.u r6, r28, r5
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	bneq r6, zero, .LBB0_474
# %bb.473:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	j .LBB0_475
.LBB0_474:                              #   in Loop: Header=BB0_472 Depth=3
	or r9, r2, r27
.LBB0_475:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r19, 8(r22)
	and r25, r19, r26
	setlt.u r6, r28, r25
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	bneq r6, zero, .LBB0_477
# %bb.476:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
	j .LBB0_478
.LBB0_477:                              #   in Loop: Header=BB0_472 Depth=3
	or r12, r19, r27
.LBB0_478:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r15, 4(r22)
	and r11, r15, r26
	setlt.u r6, r28, r11
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	bneq r6, zero, .LBB0_480
# %bb.479:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r15, 0
	j .LBB0_481
.LBB0_480:                              #   in Loop: Header=BB0_472 Depth=3
	or r10, r15, r27
.LBB0_481:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r22, 0(r22)
	and r7, r22, r26
	setlt.u r6, r28, r7
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	bneq r6, zero, .LBB0_483
# %bb.482:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r22, 0
	.loc	1 675 19 is_stmt 1              # parallel-rne.mlir:675:19
	setlt.u r7, r3, r7
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r7, zero, .LBB0_484
	j .LBB0_485
.LBB0_483:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r22, r27
	.loc	1 675 19 is_stmt 1              # parallel-rne.mlir:675:19
	setlt.u r7, r3, r7
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	bneq r7, zero, .LBB0_485
.LBB0_484:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r1
	and r6, r6, r4
.LBB0_485:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	setlt.u r7, r3, r11
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r7, zero, .LBB0_488
# %bb.486:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r3, r25
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r7, zero, .LBB0_489
.LBB0_487:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r5
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	bneq r5, zero, .LBB0_471
	j .LBB0_490
.LBB0_488:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r15, 16
	andi r7, r7, 1
	add.s r7, r15, r7
	add.s r7, r7, r1
	and r10, r7, r4
	setlt.u r7, r3, r25
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	bneq r7, zero, .LBB0_487
.LBB0_489:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r19, 16
	andi r7, r7, 1
	add.s r7, r19, r7
	add.s r7, r7, r1
	and r12, r7, r4
	setlt.u r5, r3, r5
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	bneq r5, zero, .LBB0_471
.LBB0_490:                              # %vector.body182
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r1
	and r9, r2, r4
	j .LBB0_471
.LBB0_491:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	mfence { sm }
	.loc	1 683 7                         # parallel-rne.mlir:683:7
	addli r2, zero, 1
	bneq r9, r2, .LBB0_456
.LBB0_492:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -3012(r30)                # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r2, r5, r2
	storeli.w r2, -2980(r30)                # 4-byte Folded Spill
	addli r2, zero, 128
	zext_int2long r[20:21], r2
	addli r2, zero, 192
	zext_int2long r[5:6], r2
	.loc	1 683 7                         # parallel-rne.mlir:683:7
	addli r2, r30, -2992
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r5, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_494
.LBB0_493:                              # %middle.block177
                                        #   in Loop: Header=BB0_494 Depth=2
	.loc	1 691 9 is_stmt 1               # parallel-rne.mlir:691:9
	loadli.w r2,  -2976(r30)                # 4-byte Folded Reload
	addli r5, r30, -2992
	load.d r[20:21], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_522
.LBB0_494:                              # %vector.memcheck169
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_503 Depth 3
                                        #       Child Loop BB0_497 Depth 3
	.loc	1 692 11                        # parallel-rne.mlir:692:11
	loadli.w r2,  -2980(r30)                # 4-byte Folded Reload
	storeli.w r5, -2976(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_501
# %bb.495:                              # %scalar.ph171.preheader
                                        #   in Loop: Header=BB0_494 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_497
.LBB0_496:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_497 Depth=3
	.loc	1 692 11                        # parallel-rne.mlir:692:11
	setlt.ul r6, r[8:9], r[13:14]
	.loc	1 707 13 is_stmt 1              # parallel-rne.mlir:707:13
	add.s r2, r16, r2
	.loc	1 692 11                        # parallel-rne.mlir:692:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 707 13                        # parallel-rne.mlir:707:13
	stores.w r5, 0(r2)
	.loc	1 692 11                        # parallel-rne.mlir:692:11
	beq r6, zero, .LBB0_493
.LBB0_497:                              # %scalar.ph171
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_494 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	add.ul r[5:6], r[8:9], r[20:21]
	slli r2, r5, 2
	add.s r5, r24, r2
	loads.w r6, 0(r5)
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	and r7, r6, r26
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	setlt.u r5, r28, r7
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	bneq r5, zero, .LBB0_499
# %bb.498:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_497 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 704 19 is_stmt 1              # parallel-rne.mlir:704:19
	setlt.u r7, r3, r7
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	bneq r7, zero, .LBB0_496
	j .LBB0_500
.LBB0_499:                              #   in Loop: Header=BB0_497 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r27
	.loc	1 704 19 is_stmt 1              # parallel-rne.mlir:704:19
	setlt.u r7, r3, r7
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	bneq r7, zero, .LBB0_496
.LBB0_500:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_497 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r1
	and r5, r5, r4
	j .LBB0_496
.LBB0_501:                              # %vector.body173.preheader
                                        #   in Loop: Header=BB0_494 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_503
.LBB0_502:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	.loc	1 692 11 is_stmt 1              # parallel-rne.mlir:692:11
	addli r2, r30, -2968
	addli.d r[18:19], r[18:19], 4
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	seteq.d r2, r[18:19], r[5:6]
	.loc	1 707 13                        # parallel-rne.mlir:707:13
	add.s r5, r16, r8
	stores.w r9, 12(r5)
	stores.w r25, 8(r5)
	stores.w r15, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 692 11                        # parallel-rne.mlir:692:11
	bneq r2, zero, .LBB0_493
.LBB0_503:                              # %vector.body173
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_494 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	add.ul r[5:6], r[18:19], r[20:21]
	slli r8, r5, 2
	add.s r10, r24, r8
	loads.w r2, 12(r10)
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	and r5, r2, r26
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	setlt.u r6, r28, r5
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	bneq r6, zero, .LBB0_505
# %bb.504:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	j .LBB0_506
.LBB0_505:                              #   in Loop: Header=BB0_503 Depth=3
	or r9, r2, r27
.LBB0_506:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	loads.w r22, 8(r10)
	and r11, r22, r26
	setlt.u r6, r28, r11
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	bneq r6, zero, .LBB0_508
# %bb.507:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r22, 0
	j .LBB0_509
.LBB0_508:                              #   in Loop: Header=BB0_503 Depth=3
	or r25, r22, r27
.LBB0_509:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	loads.w r12, 4(r10)
	and r17, r12, r26
	setlt.u r6, r28, r17
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	bneq r6, zero, .LBB0_511
# %bb.510:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r12, 0
	j .LBB0_512
.LBB0_511:                              #   in Loop: Header=BB0_503 Depth=3
	or r15, r12, r27
.LBB0_512:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	loads.w r6, 0(r10)
	and r7, r6, r26
	setlt.u r10, r28, r7
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	bneq r10, zero, .LBB0_514
# %bb.513:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 704 19 is_stmt 1              # parallel-rne.mlir:704:19
	setlt.u r7, r3, r7
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	beq r7, zero, .LBB0_515
	j .LBB0_516
.LBB0_514:                              #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r6, r27
	.loc	1 704 19 is_stmt 1              # parallel-rne.mlir:704:19
	setlt.u r7, r3, r7
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	bneq r7, zero, .LBB0_516
.LBB0_515:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r10, r6, r4
.LBB0_516:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	setlt.u r6, r3, r17
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	beq r6, zero, .LBB0_519
# %bb.517:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r11
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	beq r6, zero, .LBB0_520
.LBB0_518:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r5
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	bneq r5, zero, .LBB0_502
	j .LBB0_521
.LBB0_519:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r12, 16
	andi r6, r6, 1
	add.s r6, r12, r6
	add.s r6, r6, r1
	and r15, r6, r4
	setlt.u r6, r3, r11
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	bneq r6, zero, .LBB0_518
.LBB0_520:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r1
	and r25, r6, r4
	setlt.u r5, r3, r5
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	bneq r5, zero, .LBB0_502
.LBB0_521:                              # %vector.body173
                                        #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r1
	and r9, r2, r4
	j .LBB0_502
.LBB0_522:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 683 7                         # parallel-rne.mlir:683:7
	mfence { sm }
	.loc	1 712 7                         # parallel-rne.mlir:712:7
	addli r2, zero, 2
	bneq r9, r2, .LBB0_457
.LBB0_523:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -3012(r30)                # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r2, r5, r2
	storeli.w r2, -2980(r30)                # 4-byte Folded Spill
	addli r2, zero, 256
	zext_int2long r[11:12], r2
	addli r2, zero, 320
	zext_int2long r[5:6], r2
	.loc	1 712 7                         # parallel-rne.mlir:712:7
	addli r2, r30, -2992
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r5, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_525
.LBB0_524:                              # %middle.block168
                                        #   in Loop: Header=BB0_525 Depth=2
	.loc	1 720 9 is_stmt 1               # parallel-rne.mlir:720:9
	loadli.w r2,  -2976(r30)                # 4-byte Folded Reload
	addli r5, r30, -2992
	load.d r[11:12], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_553
.LBB0_525:                              # %vector.memcheck160
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_534 Depth 3
                                        #       Child Loop BB0_528 Depth 3
	.loc	1 721 11                        # parallel-rne.mlir:721:11
	loadli.w r2,  -2980(r30)                # 4-byte Folded Reload
	storeli.w r5, -2976(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_532
# %bb.526:                              # %scalar.ph162.preheader
                                        #   in Loop: Header=BB0_525 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_528
.LBB0_527:                              # %scalar.ph162
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 721 11                        # parallel-rne.mlir:721:11
	setlt.ul r6, r[8:9], r[13:14]
	.loc	1 736 13 is_stmt 1              # parallel-rne.mlir:736:13
	add.s r2, r16, r2
	.loc	1 721 11                        # parallel-rne.mlir:721:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 736 13                        # parallel-rne.mlir:736:13
	stores.w r5, 0(r2)
	.loc	1 721 11                        # parallel-rne.mlir:721:11
	beq r6, zero, .LBB0_524
.LBB0_528:                              # %scalar.ph162
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_525 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 722 19                        # parallel-rne.mlir:722:19
	add.ul r[5:6], r[8:9], r[11:12]
	slli r2, r5, 2
	add.s r5, r24, r2
	loads.w r6, 0(r5)
	.loc	1 724 19                        # parallel-rne.mlir:724:19
	and r7, r6, r26
	.loc	1 726 19                        # parallel-rne.mlir:726:19
	setlt.u r5, r28, r7
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r5, zero, .LBB0_530
# %bb.529:                              # %scalar.ph162
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 733 19 is_stmt 1              # parallel-rne.mlir:733:19
	setlt.u r7, r3, r7
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	bneq r7, zero, .LBB0_527
	j .LBB0_531
.LBB0_530:                              #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r27
	.loc	1 733 19 is_stmt 1              # parallel-rne.mlir:733:19
	setlt.u r7, r3, r7
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	bneq r7, zero, .LBB0_527
.LBB0_531:                              # %scalar.ph162
                                        #   in Loop: Header=BB0_528 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r1
	and r5, r5, r4
	j .LBB0_527
.LBB0_532:                              # %vector.body164.preheader
                                        #   in Loop: Header=BB0_525 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_534
.LBB0_533:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 721 11 is_stmt 1              # parallel-rne.mlir:721:11
	addli r2, r30, -2968
	addli.d r[18:19], r[18:19], 4
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	seteq.d r2, r[18:19], r[5:6]
	.loc	1 736 13                        # parallel-rne.mlir:736:13
	add.s r5, r16, r8
	stores.w r9, 12(r5)
	stores.w r22, 8(r5)
	stores.w r15, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 721 11                        # parallel-rne.mlir:721:11
	bneq r2, zero, .LBB0_524
.LBB0_534:                              # %vector.body164
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_525 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 722 19                        # parallel-rne.mlir:722:19
	add.ul r[5:6], r[18:19], r[11:12]
	slli r8, r5, 2
	add.s r10, r24, r8
	loads.w r2, 12(r10)
	.loc	1 724 19                        # parallel-rne.mlir:724:19
	and r5, r2, r26
	.loc	1 726 19                        # parallel-rne.mlir:726:19
	setlt.u r6, r28, r5
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r6, zero, .LBB0_536
# %bb.535:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	j .LBB0_537
.LBB0_536:                              #   in Loop: Header=BB0_534 Depth=3
	or r9, r2, r27
.LBB0_537:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	loads.w r25, 8(r10)
	and r20, r25, r26
	setlt.u r6, r28, r20
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r6, zero, .LBB0_539
# %bb.538:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r25, 0
	j .LBB0_540
.LBB0_539:                              #   in Loop: Header=BB0_534 Depth=3
	or r22, r25, r27
.LBB0_540:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	loads.w r21, 4(r10)
	and r17, r21, r26
	setlt.u r6, r28, r17
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r6, zero, .LBB0_542
# %bb.541:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_543
.LBB0_542:                              #   in Loop: Header=BB0_534 Depth=3
	or r15, r21, r27
.LBB0_543:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	loads.w r6, 0(r10)
	and r7, r6, r26
	setlt.u r10, r28, r7
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	bneq r10, zero, .LBB0_545
# %bb.544:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 733 19 is_stmt 1              # parallel-rne.mlir:733:19
	setlt.u r7, r3, r7
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	beq r7, zero, .LBB0_546
	j .LBB0_547
.LBB0_545:                              #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r6, r27
	.loc	1 733 19 is_stmt 1              # parallel-rne.mlir:733:19
	setlt.u r7, r3, r7
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	bneq r7, zero, .LBB0_547
.LBB0_546:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r10, r6, r4
.LBB0_547:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	setlt.u r6, r3, r17
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	beq r6, zero, .LBB0_550
# %bb.548:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r20
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	beq r6, zero, .LBB0_551
.LBB0_549:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r5
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	bneq r5, zero, .LBB0_533
	j .LBB0_552
.LBB0_550:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r1
	and r15, r6, r4
	setlt.u r6, r3, r20
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	bneq r6, zero, .LBB0_549
.LBB0_551:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r1
	and r22, r6, r4
	setlt.u r5, r3, r5
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	bneq r5, zero, .LBB0_533
.LBB0_552:                              # %vector.body164
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r1
	and r9, r2, r4
	j .LBB0_533
.LBB0_553:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 712 7                         # parallel-rne.mlir:712:7
	mfence { sm }
	.loc	1 741 7                         # parallel-rne.mlir:741:7
	addli r2, zero, 3
	bneq r9, r2, .LBB0_458
.LBB0_554:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -3012(r30)                # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r2, r5, r2
	storeli.w r2, -2980(r30)                # 4-byte Folded Spill
	addli r2, zero, 384
	zext_int2long r[11:12], r2
	addli r2, zero, 448
	zext_int2long r[5:6], r2
	.loc	1 741 7                         # parallel-rne.mlir:741:7
	addli r2, r30, -2992
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r5, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_556
.LBB0_555:                              # %middle.block159
                                        #   in Loop: Header=BB0_556 Depth=2
	.loc	1 749 9 is_stmt 1               # parallel-rne.mlir:749:9
	loadli.w r2,  -2976(r30)                # 4-byte Folded Reload
	addli r5, r30, -2992
	load.d r[11:12], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_584
.LBB0_556:                              # %vector.memcheck151
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_565 Depth 3
                                        #       Child Loop BB0_559 Depth 3
	.loc	1 750 11                        # parallel-rne.mlir:750:11
	loadli.w r2,  -2980(r30)                # 4-byte Folded Reload
	storeli.w r5, -2976(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_563
# %bb.557:                              # %scalar.ph153.preheader
                                        #   in Loop: Header=BB0_556 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_559
.LBB0_558:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_559 Depth=3
	.loc	1 750 11                        # parallel-rne.mlir:750:11
	setlt.ul r6, r[8:9], r[13:14]
	.loc	1 765 13 is_stmt 1              # parallel-rne.mlir:765:13
	add.s r2, r16, r2
	.loc	1 750 11                        # parallel-rne.mlir:750:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 765 13                        # parallel-rne.mlir:765:13
	stores.w r5, 0(r2)
	.loc	1 750 11                        # parallel-rne.mlir:750:11
	beq r6, zero, .LBB0_555
.LBB0_559:                              # %scalar.ph153
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_556 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	add.ul r[5:6], r[8:9], r[11:12]
	slli r2, r5, 2
	add.s r5, r24, r2
	loads.w r6, 0(r5)
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	and r7, r6, r26
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	setlt.u r5, r28, r7
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r5, zero, .LBB0_561
# %bb.560:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_559 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 762 19 is_stmt 1              # parallel-rne.mlir:762:19
	setlt.u r7, r3, r7
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r7, zero, .LBB0_558
	j .LBB0_562
.LBB0_561:                              #   in Loop: Header=BB0_559 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r27
	.loc	1 762 19 is_stmt 1              # parallel-rne.mlir:762:19
	setlt.u r7, r3, r7
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r7, zero, .LBB0_558
.LBB0_562:                              # %scalar.ph153
                                        #   in Loop: Header=BB0_559 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r1
	and r5, r5, r4
	j .LBB0_558
.LBB0_563:                              # %vector.body155.preheader
                                        #   in Loop: Header=BB0_556 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_565
.LBB0_564:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 750 11 is_stmt 1              # parallel-rne.mlir:750:11
	addli r2, r30, -2968
	addli.d r[18:19], r[18:19], 4
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	seteq.d r2, r[18:19], r[5:6]
	.loc	1 765 13                        # parallel-rne.mlir:765:13
	add.s r5, r16, r8
	stores.w r9, 12(r5)
	stores.w r22, 8(r5)
	stores.w r15, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 750 11                        # parallel-rne.mlir:750:11
	bneq r2, zero, .LBB0_555
.LBB0_565:                              # %vector.body155
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_556 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	add.ul r[5:6], r[18:19], r[11:12]
	slli r8, r5, 2
	add.s r10, r24, r8
	loads.w r2, 12(r10)
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	and r5, r2, r26
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	setlt.u r6, r28, r5
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r6, zero, .LBB0_567
# %bb.566:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	j .LBB0_568
.LBB0_567:                              #   in Loop: Header=BB0_565 Depth=3
	or r9, r2, r27
.LBB0_568:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r25, 8(r10)
	and r20, r25, r26
	setlt.u r6, r28, r20
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r6, zero, .LBB0_570
# %bb.569:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r25, 0
	j .LBB0_571
.LBB0_570:                              #   in Loop: Header=BB0_565 Depth=3
	or r22, r25, r27
.LBB0_571:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r21, 4(r10)
	and r17, r21, r26
	setlt.u r6, r28, r17
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r6, zero, .LBB0_573
# %bb.572:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_574
.LBB0_573:                              #   in Loop: Header=BB0_565 Depth=3
	or r15, r21, r27
.LBB0_574:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r6, 0(r10)
	and r7, r6, r26
	setlt.u r10, r28, r7
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	bneq r10, zero, .LBB0_576
# %bb.575:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 762 19 is_stmt 1              # parallel-rne.mlir:762:19
	setlt.u r7, r3, r7
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r7, zero, .LBB0_577
	j .LBB0_578
.LBB0_576:                              #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r6, r27
	.loc	1 762 19 is_stmt 1              # parallel-rne.mlir:762:19
	setlt.u r7, r3, r7
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r7, zero, .LBB0_578
.LBB0_577:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r10, r6, r4
.LBB0_578:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	setlt.u r6, r3, r17
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r6, zero, .LBB0_581
# %bb.579:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r20
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r6, zero, .LBB0_582
.LBB0_580:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r5, zero, .LBB0_564
	j .LBB0_583
.LBB0_581:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r1
	and r15, r6, r4
	setlt.u r6, r3, r20
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r6, zero, .LBB0_580
.LBB0_582:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r1
	and r22, r6, r4
	setlt.u r5, r3, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	bneq r5, zero, .LBB0_564
.LBB0_583:                              # %vector.body155
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r1
	and r9, r2, r4
	j .LBB0_564
.LBB0_584:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 741 7                         # parallel-rne.mlir:741:7
	mfence { sm }
	.loc	1 770 7                         # parallel-rne.mlir:770:7
	addli r2, zero, 4
	bneq r9, r2, .LBB0_459
.LBB0_585:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -3012(r30)                # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r2, r5, r2
	storeli.w r2, -2980(r30)                # 4-byte Folded Spill
	addli r2, zero, 512
	zext_int2long r[11:12], r2
	addli r2, zero, 576
	zext_int2long r[5:6], r2
	.loc	1 770 7                         # parallel-rne.mlir:770:7
	addli r2, r30, -2992
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r5, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_587
.LBB0_586:                              # %middle.block150
                                        #   in Loop: Header=BB0_587 Depth=2
	.loc	1 778 9 is_stmt 1               # parallel-rne.mlir:778:9
	loadli.w r2,  -2976(r30)                # 4-byte Folded Reload
	addli r5, r30, -2992
	load.d r[11:12], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_615
.LBB0_587:                              # %vector.memcheck142
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_596 Depth 3
                                        #       Child Loop BB0_590 Depth 3
	.loc	1 779 11                        # parallel-rne.mlir:779:11
	loadli.w r2,  -2980(r30)                # 4-byte Folded Reload
	storeli.w r5, -2976(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_594
# %bb.588:                              # %scalar.ph144.preheader
                                        #   in Loop: Header=BB0_587 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_590
.LBB0_589:                              # %scalar.ph144
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 779 11                        # parallel-rne.mlir:779:11
	setlt.ul r6, r[8:9], r[13:14]
	.loc	1 794 13 is_stmt 1              # parallel-rne.mlir:794:13
	add.s r2, r16, r2
	.loc	1 779 11                        # parallel-rne.mlir:779:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 794 13                        # parallel-rne.mlir:794:13
	stores.w r5, 0(r2)
	.loc	1 779 11                        # parallel-rne.mlir:779:11
	beq r6, zero, .LBB0_586
.LBB0_590:                              # %scalar.ph144
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_587 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	add.ul r[5:6], r[8:9], r[11:12]
	slli r2, r5, 2
	add.s r5, r24, r2
	loads.w r6, 0(r5)
	.loc	1 782 19                        # parallel-rne.mlir:782:19
	and r7, r6, r26
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	setlt.u r5, r28, r7
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	bneq r5, zero, .LBB0_592
# %bb.591:                              # %scalar.ph144
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 791 19 is_stmt 1              # parallel-rne.mlir:791:19
	setlt.u r7, r3, r7
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	bneq r7, zero, .LBB0_589
	j .LBB0_593
.LBB0_592:                              #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r27
	.loc	1 791 19 is_stmt 1              # parallel-rne.mlir:791:19
	setlt.u r7, r3, r7
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	bneq r7, zero, .LBB0_589
.LBB0_593:                              # %scalar.ph144
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r1
	and r5, r5, r4
	j .LBB0_589
.LBB0_594:                              # %vector.body146.preheader
                                        #   in Loop: Header=BB0_587 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_596
.LBB0_595:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 779 11 is_stmt 1              # parallel-rne.mlir:779:11
	addli r2, r30, -2968
	addli.d r[18:19], r[18:19], 4
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	seteq.d r2, r[18:19], r[5:6]
	.loc	1 794 13                        # parallel-rne.mlir:794:13
	add.s r5, r16, r8
	stores.w r9, 12(r5)
	stores.w r22, 8(r5)
	stores.w r15, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 779 11                        # parallel-rne.mlir:779:11
	bneq r2, zero, .LBB0_586
.LBB0_596:                              # %vector.body146
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_587 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	add.ul r[5:6], r[18:19], r[11:12]
	slli r8, r5, 2
	add.s r10, r24, r8
	loads.w r2, 12(r10)
	.loc	1 782 19                        # parallel-rne.mlir:782:19
	and r5, r2, r26
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	setlt.u r6, r28, r5
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	bneq r6, zero, .LBB0_598
# %bb.597:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	j .LBB0_599
.LBB0_598:                              #   in Loop: Header=BB0_596 Depth=3
	or r9, r2, r27
.LBB0_599:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	loads.w r25, 8(r10)
	and r20, r25, r26
	setlt.u r6, r28, r20
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	bneq r6, zero, .LBB0_601
# %bb.600:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r25, 0
	j .LBB0_602
.LBB0_601:                              #   in Loop: Header=BB0_596 Depth=3
	or r22, r25, r27
.LBB0_602:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	loads.w r21, 4(r10)
	and r17, r21, r26
	setlt.u r6, r28, r17
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	bneq r6, zero, .LBB0_604
# %bb.603:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_605
.LBB0_604:                              #   in Loop: Header=BB0_596 Depth=3
	or r15, r21, r27
.LBB0_605:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	loads.w r6, 0(r10)
	and r7, r6, r26
	setlt.u r10, r28, r7
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	bneq r10, zero, .LBB0_607
# %bb.606:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 791 19 is_stmt 1              # parallel-rne.mlir:791:19
	setlt.u r7, r3, r7
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	beq r7, zero, .LBB0_608
	j .LBB0_609
.LBB0_607:                              #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r6, r27
	.loc	1 791 19 is_stmt 1              # parallel-rne.mlir:791:19
	setlt.u r7, r3, r7
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	bneq r7, zero, .LBB0_609
.LBB0_608:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r10, r6, r4
.LBB0_609:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	setlt.u r6, r3, r17
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	beq r6, zero, .LBB0_612
# %bb.610:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r20
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	beq r6, zero, .LBB0_613
.LBB0_611:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r5
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	bneq r5, zero, .LBB0_595
	j .LBB0_614
.LBB0_612:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r1
	and r15, r6, r4
	setlt.u r6, r3, r20
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	bneq r6, zero, .LBB0_611
.LBB0_613:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r1
	and r22, r6, r4
	setlt.u r5, r3, r5
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	bneq r5, zero, .LBB0_595
.LBB0_614:                              # %vector.body146
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r1
	and r9, r2, r4
	j .LBB0_595
.LBB0_615:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 770 7                         # parallel-rne.mlir:770:7
	mfence { sm }
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	addli r2, zero, 5
	bneq r9, r2, .LBB0_460
.LBB0_616:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -3012(r30)                # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r2, r5, r2
	storeli.w r2, -2980(r30)                # 4-byte Folded Spill
	addli r2, zero, 640
	zext_int2long r[11:12], r2
	addli r2, zero, 704
	zext_int2long r[5:6], r2
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	addli r2, r30, -2992
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r5, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_618
.LBB0_617:                              # %middle.block141
                                        #   in Loop: Header=BB0_618 Depth=2
	.loc	1 807 9 is_stmt 1               # parallel-rne.mlir:807:9
	loadli.w r2,  -2976(r30)                # 4-byte Folded Reload
	addli r5, r30, -2992
	load.d r[11:12], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_646
.LBB0_618:                              # %vector.memcheck133
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_627 Depth 3
                                        #       Child Loop BB0_621 Depth 3
	.loc	1 808 11                        # parallel-rne.mlir:808:11
	loadli.w r2,  -2980(r30)                # 4-byte Folded Reload
	storeli.w r5, -2976(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_625
# %bb.619:                              # %scalar.ph135.preheader
                                        #   in Loop: Header=BB0_618 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_621
.LBB0_620:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 808 11                        # parallel-rne.mlir:808:11
	setlt.ul r6, r[8:9], r[13:14]
	.loc	1 823 13 is_stmt 1              # parallel-rne.mlir:823:13
	add.s r2, r16, r2
	.loc	1 808 11                        # parallel-rne.mlir:808:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 823 13                        # parallel-rne.mlir:823:13
	stores.w r5, 0(r2)
	.loc	1 808 11                        # parallel-rne.mlir:808:11
	beq r6, zero, .LBB0_617
.LBB0_621:                              # %scalar.ph135
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_618 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	add.ul r[5:6], r[8:9], r[11:12]
	slli r2, r5, 2
	add.s r5, r24, r2
	loads.w r6, 0(r5)
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	and r7, r6, r26
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	setlt.u r5, r28, r7
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r5, zero, .LBB0_623
# %bb.622:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 820 19 is_stmt 1              # parallel-rne.mlir:820:19
	setlt.u r7, r3, r7
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r7, zero, .LBB0_620
	j .LBB0_624
.LBB0_623:                              #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r27
	.loc	1 820 19 is_stmt 1              # parallel-rne.mlir:820:19
	setlt.u r7, r3, r7
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r7, zero, .LBB0_620
.LBB0_624:                              # %scalar.ph135
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r1
	and r5, r5, r4
	j .LBB0_620
.LBB0_625:                              # %vector.body137.preheader
                                        #   in Loop: Header=BB0_618 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_627
.LBB0_626:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 808 11 is_stmt 1              # parallel-rne.mlir:808:11
	addli r2, r30, -2968
	addli.d r[18:19], r[18:19], 4
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	seteq.d r2, r[18:19], r[5:6]
	.loc	1 823 13                        # parallel-rne.mlir:823:13
	add.s r5, r16, r8
	stores.w r9, 12(r5)
	stores.w r22, 8(r5)
	stores.w r15, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 808 11                        # parallel-rne.mlir:808:11
	bneq r2, zero, .LBB0_617
.LBB0_627:                              # %vector.body137
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_618 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	add.ul r[5:6], r[18:19], r[11:12]
	slli r8, r5, 2
	add.s r10, r24, r8
	loads.w r2, 12(r10)
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	and r5, r2, r26
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	setlt.u r6, r28, r5
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r6, zero, .LBB0_629
# %bb.628:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	j .LBB0_630
.LBB0_629:                              #   in Loop: Header=BB0_627 Depth=3
	or r9, r2, r27
.LBB0_630:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	loads.w r25, 8(r10)
	and r20, r25, r26
	setlt.u r6, r28, r20
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r6, zero, .LBB0_632
# %bb.631:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r25, 0
	j .LBB0_633
.LBB0_632:                              #   in Loop: Header=BB0_627 Depth=3
	or r22, r25, r27
.LBB0_633:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	loads.w r21, 4(r10)
	and r17, r21, r26
	setlt.u r6, r28, r17
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r6, zero, .LBB0_635
# %bb.634:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_636
.LBB0_635:                              #   in Loop: Header=BB0_627 Depth=3
	or r15, r21, r27
.LBB0_636:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	loads.w r6, 0(r10)
	and r7, r6, r26
	setlt.u r10, r28, r7
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	bneq r10, zero, .LBB0_638
# %bb.637:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 820 19 is_stmt 1              # parallel-rne.mlir:820:19
	setlt.u r7, r3, r7
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	beq r7, zero, .LBB0_639
	j .LBB0_640
.LBB0_638:                              #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r6, r27
	.loc	1 820 19 is_stmt 1              # parallel-rne.mlir:820:19
	setlt.u r7, r3, r7
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r7, zero, .LBB0_640
.LBB0_639:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r10, r6, r4
.LBB0_640:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	setlt.u r6, r3, r17
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	beq r6, zero, .LBB0_643
# %bb.641:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r20
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	beq r6, zero, .LBB0_644
.LBB0_642:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r5
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r5, zero, .LBB0_626
	j .LBB0_645
.LBB0_643:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r1
	and r15, r6, r4
	setlt.u r6, r3, r20
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r6, zero, .LBB0_642
.LBB0_644:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r1
	and r22, r6, r4
	setlt.u r5, r3, r5
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r5, zero, .LBB0_626
.LBB0_645:                              # %vector.body137
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r1
	and r9, r2, r4
	j .LBB0_626
.LBB0_646:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	mfence { sm }
	.loc	1 828 7                         # parallel-rne.mlir:828:7
	addli r2, zero, 6
	bneq r9, r2, .LBB0_678
.LBB0_647:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -3012(r30)                # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r2, r5, r2
	storeli.w r2, -2980(r30)                # 4-byte Folded Spill
	addli r2, zero, 768
	zext_int2long r[11:12], r2
	addli r2, zero, 832
	zext_int2long r[5:6], r2
	.loc	1 828 7                         # parallel-rne.mlir:828:7
	addli r2, r30, -2992
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r5, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_649
.LBB0_648:                              # %middle.block132
                                        #   in Loop: Header=BB0_649 Depth=2
	.loc	1 836 9 is_stmt 1               # parallel-rne.mlir:836:9
	loadli.w r2,  -2976(r30)                # 4-byte Folded Reload
	addli r5, r30, -2992
	load.d r[11:12], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_677
.LBB0_649:                              # %vector.memcheck124
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_658 Depth 3
                                        #       Child Loop BB0_652 Depth 3
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	loadli.w r2,  -2980(r30)                # 4-byte Folded Reload
	storeli.w r5, -2976(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_656
# %bb.650:                              # %scalar.ph126.preheader
                                        #   in Loop: Header=BB0_649 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_652
.LBB0_651:                              # %scalar.ph126
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	setlt.ul r6, r[8:9], r[13:14]
	.loc	1 852 13 is_stmt 1              # parallel-rne.mlir:852:13
	add.s r2, r16, r2
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 852 13                        # parallel-rne.mlir:852:13
	stores.w r5, 0(r2)
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	beq r6, zero, .LBB0_648
.LBB0_652:                              # %scalar.ph126
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_649 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	add.ul r[5:6], r[8:9], r[11:12]
	slli r2, r5, 2
	add.s r5, r24, r2
	loads.w r6, 0(r5)
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	and r7, r6, r26
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	setlt.u r5, r28, r7
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	bneq r5, zero, .LBB0_654
# %bb.653:                              # %scalar.ph126
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 849 19 is_stmt 1              # parallel-rne.mlir:849:19
	setlt.u r7, r3, r7
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r7, zero, .LBB0_651
	j .LBB0_655
.LBB0_654:                              #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r27
	.loc	1 849 19 is_stmt 1              # parallel-rne.mlir:849:19
	setlt.u r7, r3, r7
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r7, zero, .LBB0_651
.LBB0_655:                              # %scalar.ph126
                                        #   in Loop: Header=BB0_652 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r1
	and r5, r5, r4
	j .LBB0_651
.LBB0_656:                              # %vector.body128.preheader
                                        #   in Loop: Header=BB0_649 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_658
.LBB0_657:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 837 11 is_stmt 1              # parallel-rne.mlir:837:11
	addli r2, r30, -2968
	addli.d r[18:19], r[18:19], 4
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	seteq.d r2, r[18:19], r[5:6]
	.loc	1 852 13                        # parallel-rne.mlir:852:13
	add.s r5, r16, r8
	stores.w r9, 12(r5)
	stores.w r22, 8(r5)
	stores.w r15, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	bneq r2, zero, .LBB0_648
.LBB0_658:                              # %vector.body128
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_649 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	add.ul r[5:6], r[18:19], r[11:12]
	slli r8, r5, 2
	add.s r10, r24, r8
	loads.w r2, 12(r10)
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	and r5, r2, r26
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	setlt.u r6, r28, r5
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	bneq r6, zero, .LBB0_660
# %bb.659:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	j .LBB0_661
.LBB0_660:                              #   in Loop: Header=BB0_658 Depth=3
	or r9, r2, r27
.LBB0_661:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	loads.w r25, 8(r10)
	and r20, r25, r26
	setlt.u r6, r28, r20
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	bneq r6, zero, .LBB0_663
# %bb.662:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r25, 0
	j .LBB0_664
.LBB0_663:                              #   in Loop: Header=BB0_658 Depth=3
	or r22, r25, r27
.LBB0_664:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	loads.w r21, 4(r10)
	and r17, r21, r26
	setlt.u r6, r28, r17
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	bneq r6, zero, .LBB0_666
# %bb.665:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_667
.LBB0_666:                              #   in Loop: Header=BB0_658 Depth=3
	or r15, r21, r27
.LBB0_667:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	loads.w r6, 0(r10)
	and r7, r6, r26
	setlt.u r10, r28, r7
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	bneq r10, zero, .LBB0_669
# %bb.668:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 849 19 is_stmt 1              # parallel-rne.mlir:849:19
	setlt.u r7, r3, r7
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	beq r7, zero, .LBB0_670
	j .LBB0_671
.LBB0_669:                              #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r6, r27
	.loc	1 849 19 is_stmt 1              # parallel-rne.mlir:849:19
	setlt.u r7, r3, r7
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r7, zero, .LBB0_671
.LBB0_670:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r10, r6, r4
.LBB0_671:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	setlt.u r6, r3, r17
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	beq r6, zero, .LBB0_674
# %bb.672:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r20
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	beq r6, zero, .LBB0_675
.LBB0_673:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r3, r5
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r5, zero, .LBB0_657
	j .LBB0_676
.LBB0_674:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r1
	and r15, r6, r4
	setlt.u r6, r3, r20
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r6, zero, .LBB0_673
.LBB0_675:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r1
	and r22, r6, r4
	setlt.u r5, r3, r5
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r5, zero, .LBB0_657
.LBB0_676:                              # %vector.body128
                                        #   in Loop: Header=BB0_658 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r1
	and r9, r2, r4
	j .LBB0_657
.LBB0_677:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 828 7                         # parallel-rne.mlir:828:7
	mfence { sm }
.LBB0_678:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[5:6], zero
	.loc	1 857 7 is_stmt 1               # parallel-rne.mlir:857:7
	addli r2, r30, -3008
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 7
	bneq r9, r2, .LBB0_710
# %bb.679:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  -3012(r30)                # 4-byte Folded Reload
	addli r2, zero, 16
	setlt.u r2, r5, r2
	storeli.w r2, -2980(r30)                # 4-byte Folded Spill
	addli r2, zero, 896
	zext_int2long r[20:21], r2
	addli r2, zero, 960
	zext_int2long r[5:6], r2
	.loc	1 857 7                         # parallel-rne.mlir:857:7
	addli r2, r30, -2992
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r5, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_681
.LBB0_680:                              # %middle.block
                                        #   in Loop: Header=BB0_681 Depth=2
	.loc	1 865 9 is_stmt 1               # parallel-rne.mlir:865:9
	loadli.w r2,  -2976(r30)                # 4-byte Folded Reload
	addli r5, r30, -2992
	load.d r[20:21], 0(r5)                  # 8-byte Folded Reload
	addli r5, zero, 0
	andi r2, r2, 1
	beq r2, zero, .LBB0_709
.LBB0_681:                              # %vector.memcheck
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_690 Depth 3
                                        #       Child Loop BB0_684 Depth 3
	.loc	1 866 11                        # parallel-rne.mlir:866:11
	loadli.w r2,  -2980(r30)                # 4-byte Folded Reload
	storeli.w r5, -2976(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_688
# %bb.682:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_681 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_684
.LBB0_683:                              # %scalar.ph
                                        #   in Loop: Header=BB0_684 Depth=3
	.loc	1 866 11                        # parallel-rne.mlir:866:11
	setlt.ul r6, r[8:9], r[13:14]
	.loc	1 881 13 is_stmt 1              # parallel-rne.mlir:881:13
	add.s r2, r16, r2
	.loc	1 866 11                        # parallel-rne.mlir:866:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 881 13                        # parallel-rne.mlir:881:13
	stores.w r5, 0(r2)
	.loc	1 866 11                        # parallel-rne.mlir:866:11
	beq r6, zero, .LBB0_680
.LBB0_684:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_681 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	add.ul r[5:6], r[8:9], r[20:21]
	slli r2, r5, 2
	add.s r5, r24, r2
	loads.w r6, 0(r5)
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	and r7, r6, r26
	.loc	1 871 19                        # parallel-rne.mlir:871:19
	setlt.u r5, r28, r7
	.loc	1 872 19                        # parallel-rne.mlir:872:19
	bneq r5, zero, .LBB0_686
# %bb.685:                              # %scalar.ph
                                        #   in Loop: Header=BB0_684 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 878 19 is_stmt 1              # parallel-rne.mlir:878:19
	setlt.u r7, r3, r7
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r7, zero, .LBB0_683
	j .LBB0_687
.LBB0_686:                              #   in Loop: Header=BB0_684 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r27
	.loc	1 878 19 is_stmt 1              # parallel-rne.mlir:878:19
	setlt.u r7, r3, r7
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r7, zero, .LBB0_683
.LBB0_687:                              # %scalar.ph
                                        #   in Loop: Header=BB0_684 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r1
	and r5, r5, r4
	j .LBB0_683
.LBB0_688:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_681 Depth=2
	addli r2, r30, -3008
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_690
.LBB0_689:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	.loc	1 866 11 is_stmt 1              # parallel-rne.mlir:866:11
	addli r2, r30, -2968
	addli.d r[10:11], r[10:11], 4
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	seteq.d r2, r[10:11], r[6:7]
	.loc	1 881 13                        # parallel-rne.mlir:881:13
	add.s r6, r16, r19
	stores.w r5, 12(r6)
	stores.w r15, 8(r6)
	stores.w r8, 4(r6)
	stores.w r25, 0(r6)
	.loc	1 866 11                        # parallel-rne.mlir:866:11
	bneq r2, zero, .LBB0_680
.LBB0_690:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_681 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	add.ul r[5:6], r[10:11], r[20:21]
	slli r19, r5, 2
	add.s r25, r24, r19
	loads.w r2, 12(r25)
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	and r22, r2, r26
	.loc	1 871 19                        # parallel-rne.mlir:871:19
	setlt.u r5, r28, r22
	.loc	1 872 19                        # parallel-rne.mlir:872:19
	bneq r5, zero, .LBB0_692
# %bb.691:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r2, 0
	j .LBB0_693
.LBB0_692:                              #   in Loop: Header=BB0_690 Depth=3
	or r5, r2, r27
.LBB0_693:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	loads.w r9, 8(r25)
	and r17, r9, r26
	setlt.u r6, r28, r17
	.loc	1 872 19                        # parallel-rne.mlir:872:19
	bneq r6, zero, .LBB0_695
# %bb.694:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_696
.LBB0_695:                              #   in Loop: Header=BB0_690 Depth=3
	or r15, r9, r27
.LBB0_696:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	loads.w r18, 4(r25)
	and r12, r18, r26
	setlt.u r6, r28, r12
	.loc	1 872 19                        # parallel-rne.mlir:872:19
	bneq r6, zero, .LBB0_698
# %bb.697:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r18, 0
	j .LBB0_699
.LBB0_698:                              #   in Loop: Header=BB0_690 Depth=3
	or r8, r18, r27
.LBB0_699:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	loads.w r6, 0(r25)
	and r7, r6, r26
	setlt.u r25, r28, r7
	.loc	1 872 19                        # parallel-rne.mlir:872:19
	bneq r25, zero, .LBB0_701
# %bb.700:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r6, 0
	.loc	1 878 19 is_stmt 1              # parallel-rne.mlir:878:19
	setlt.u r7, r3, r7
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	beq r7, zero, .LBB0_702
	j .LBB0_703
.LBB0_701:                              #   in Loop: Header=BB0_690 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r25, r6, r27
	.loc	1 878 19 is_stmt 1              # parallel-rne.mlir:878:19
	setlt.u r7, r3, r7
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r7, zero, .LBB0_703
.LBB0_702:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r1
	and r25, r6, r4
.LBB0_703:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	setlt.u r6, r3, r12
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	beq r6, zero, .LBB0_706
# %bb.704:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r17
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	beq r6, zero, .LBB0_707
.LBB0_705:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r3, r22
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r6, zero, .LBB0_689
	j .LBB0_708
.LBB0_706:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r1
	and r8, r6, r4
	setlt.u r6, r3, r17
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r6, zero, .LBB0_705
.LBB0_707:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r1
	and r15, r6, r4
	setlt.u r6, r3, r22
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	bneq r6, zero, .LBB0_689
.LBB0_708:                              # %vector.body
                                        #   in Loop: Header=BB0_690 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r2, 16
	andi r5, r5, 1
	add.s r2, r2, r5
	add.s r2, r2, r1
	and r5, r2, r4
	j .LBB0_689
.LBB0_709:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r9
	.loc	1 857 7                         # parallel-rne.mlir:857:7
	mfence { sm }
.LBB0_710:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 886 7                         # parallel-rne.mlir:886:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 3
	sync_core
	.loc	1 887 7                         # parallel-rne.mlir:887:7
	beq r9, r2, .LBB0_5
# %bb.711:                              # %.critedge18
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, r30, -3024
	addli r15, zero, 1
	addli r17, zero, 6
	load.d r[13:14], 0(r2)                  # 8-byte Folded Reload
	.loc	1 896 7 is_stmt 1               # parallel-rne.mlir:896:7
	bneq r9, zero, .LBB0_6
# %bb.712:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -3060(r30)                # 4-byte Folded Reload
	.loc	1 896 7                         # parallel-rne.mlir:896:7
	addli r11, r30, -3056
	load.d r[18:19], 24(r30)
	load.d r[9:10], 0(r11)                  # 8-byte Folded Reload
	sext_int2long r[5:6], r2
	addli r2, r30, -3008
	load.d r[7:8], 0(r2)                    # 8-byte Folded Reload
	addli r2, zero, 12
	sll.d r[9:10], r[9:10], r2
	addli r2, r30, -3040
	min.sl r[7:8], r[5:6], r[7:8]
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	add.ul r[9:10], r[18:19], r[9:10]
	addli r2, zero, 16
	addli.d r[7:8], r[7:8], 16
	xwait r2, 0
	sll.d r[11:12], r[11:12], r15
	max.sl r[7:8], r[7:8], r[5:6]
	add.ul r[9:10], r[9:10], r[11:12]
	addli r11, zero, 5
	sub.sl r[5:6], r[7:8], r[5:6]
	zext_int2long r[7:8], r2
	ori r2, r16, 64
	lock zero, r11
	.loc	1 892 13 is_stmt 1              # parallel-rne.mlir:892:13
	min.sl r[5:6], r[5:6], r[7:8]
	.loc	1 896 7                         # parallel-rne.mlir:896:7
	addli r8, zero, 128
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r2, r23, 3
	addli r2, r30, -3048
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r9
	load.d r[18:19], 0(r2)                  # 8-byte Folded Reload
	.loc	1 896 7                         # parallel-rne.mlir:896:7
	addli r2, r18, 31
	slli r7, r18, 1
	srli r2, r2, 5
	dma_cfg r23, r8, r2, 4
	andi r2, r7, 62
	addli r7, zero, 256
	dma_cfg r7, r7, r5, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	addli r2, zero, 17
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r2, 0
	j .LBB0_6
.LBB0_713:                              # %._crit_edge
	.loc	1 898 5                         # parallel-rne.mlir:898:5
	xsignal zero, 0
	bneq r9, zero, .LBB0_715
# %bb.714:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 898 5                         # parallel-rne.mlir:898:5
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
.LBB0_715:
	.loc	1 899 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:899:5
	addli sp, sp, 3088
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
	.long	3152                            # 0xc50
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-k6l0ynw0" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
