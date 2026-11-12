	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-xwxxkeps" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4336
	addli r1, zero, 1
.Ltmp0:
	.loc	1 35 5 prologue_end             # parallel-rne.mlir:35:5
	core_id r2
	addli r30, sp, 4272
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 35 5                          # parallel-rne.mlir:35:5
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
	.loc	1 35 5                          # parallel-rne.mlir:35:5
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
	addli r1, zero, 18
	addli r2, zero, 22
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
	.loc	1 37 10 is_stmt 1               # parallel-rne.mlir:37:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -1024(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -2048(r30)
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r1
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r4, r1, r4
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	addli r2, r2, -1
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r5
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r3, -3040(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 49 11                         # parallel-rne.mlir:49:11
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
	.loc	1 50 11                         # parallel-rne.mlir:50:11
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
	.loc	1 49 11                         # parallel-rne.mlir:49:11
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
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r3, -2052(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
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
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	mul.s r1, r2, r6
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	fmac.s r2, r2, r6
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	min.s r2, r2, r4
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	ble.s r2, r1, .LBB0_718
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 46 11 is_stmt 1               # parallel-rne.mlir:46:11
	addli r4, r30, -4256
	lui r6, 40
	addli r18, zero, 4
	addli r11, zero, 1
	lui r28, 1024
	lui r14, 1048560
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[1:2], r1
	addli r3, r30, -4216
	lui r4, 385
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r2, zero, 2047
	addli r3, r30, -4264
	lui r1, 1048572
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	lui r2, 7
	lui r1, 524287
	ori r3, r2, 4095
	lui r2, 522239
	ori r27, r1, 4095
	lui r1, 522240
	ori r26, r2, 4095
	ori r2, r4, 2176
	storeli.w r2, -4104(r30)                # 4-byte Folded Spill
	lui r2, 386
	ori r2, r2, 2176
	storeli.w r2, -4108(r30)                # 4-byte Folded Spill
	ori r2, r6, 2114
	storeli.w r2, -4268(r30)                # 4-byte Folded Spill
	lui r2, 384
	ori r2, r2, 2176
	storeli.w r2, -4100(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge19.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r2, zero, 15
	.loc	1 995 7 is_stmt 1               # parallel-rne.mlir:995:7
	xsignal r2, 0
	.loc	1 996 7                         # parallel-rne.mlir:996:7
	addli r2, zero, 22
	xsignal r2, 0
	.loc	1 997 7                         # parallel-rne.mlir:997:7
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 998 7                         # parallel-rne.mlir:998:7
	addli r2, zero, 26
	xsignal r2, 0
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, r30, -4216
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 52 5 is_stmt 1                # parallel-rne.mlir:52:5
	addli r2, r30, -4256
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4216
	addli.d r[8:9], r[8:9], 1
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	setlt.sl r2, r[8:9], r[6:7]
	beq r2, zero, .LBB0_718
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_65 Depth 2
                                        #       Child Loop BB0_67 Depth 3
                                        #     Child Loop BB0_90 Depth 2
                                        #       Child Loop BB0_92 Depth 3
                                        #     Child Loop BB0_115 Depth 2
                                        #       Child Loop BB0_117 Depth 3
                                        #     Child Loop BB0_140 Depth 2
                                        #       Child Loop BB0_142 Depth 3
                                        #     Child Loop BB0_165 Depth 2
                                        #       Child Loop BB0_167 Depth 3
                                        #     Child Loop BB0_190 Depth 2
                                        #       Child Loop BB0_192 Depth 3
                                        #     Child Loop BB0_215 Depth 2
                                        #       Child Loop BB0_217 Depth 3
                                        #     Child Loop BB0_243 Depth 2
                                        #     Child Loop BB0_256 Depth 2
                                        #       Child Loop BB0_258 Depth 3
                                        #     Child Loop BB0_280 Depth 2
                                        #       Child Loop BB0_282 Depth 3
                                        #     Child Loop BB0_304 Depth 2
                                        #       Child Loop BB0_306 Depth 3
                                        #     Child Loop BB0_328 Depth 2
                                        #       Child Loop BB0_330 Depth 3
                                        #     Child Loop BB0_352 Depth 2
                                        #       Child Loop BB0_354 Depth 3
                                        #     Child Loop BB0_376 Depth 2
                                        #       Child Loop BB0_378 Depth 3
                                        #     Child Loop BB0_400 Depth 2
                                        #       Child Loop BB0_402 Depth 3
                                        #     Child Loop BB0_424 Depth 2
                                        #       Child Loop BB0_426 Depth 3
                                        #     Child Loop BB0_460 Depth 2
                                        #       Child Loop BB0_462 Depth 3
                                        #     Child Loop BB0_492 Depth 2
                                        #       Child Loop BB0_494 Depth 3
                                        #     Child Loop BB0_524 Depth 2
                                        #       Child Loop BB0_526 Depth 3
                                        #     Child Loop BB0_556 Depth 2
                                        #       Child Loop BB0_558 Depth 3
                                        #     Child Loop BB0_588 Depth 2
                                        #       Child Loop BB0_590 Depth 3
                                        #     Child Loop BB0_620 Depth 2
                                        #       Child Loop BB0_622 Depth 3
                                        #     Child Loop BB0_652 Depth 2
                                        #       Child Loop BB0_654 Depth 3
                                        #     Child Loop BB0_684 Depth 2
                                        #       Child Loop BB0_686 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r25, zero, 5
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	bneq r5, r18, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, r30, -4216
	loadli.w r2,  48(r30)
	addli r10, zero, 8
	addli r6, zero, 0
	load.d r[7:8], 0(r4)                    # 8-byte Folded Reload
	loadli.w r4,  44(r30)
	div.s r2, r7, r2
	div.s r2, r2, r4
	addli r4, zero, 256
	div.s r7, r2, r4
	slli r9, r7, 3
	slli r7, r7, 8
	sub.s r8, r18, r9
	sub.s r7, r2, r7
	min.s r8, r8, r10
	mod.s r2, r2, r8
	div.s r10, r7, r8
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	loadli.w r7,  -4096(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r8,  -3072(r30)
	add.s r2, r9, r2
	slli r4, r10, 5
	zext_int2long r[9:10], r10
	storeli.w r4, -4200(r30)                # 4-byte Folded Spill
	slli r4, r2, 5
	zext_int2long r[12:13], r2
	addli r2, zero, 12
	sll.d r[9:10], r[9:10], r25
	storeli.w r4, -4244(r30)                # 4-byte Folded Spill
	addli r4, r30, -4240
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	sll.d r[15:16], r[9:10], r11
	store.d r[12:13], 0(r4)                 # 8-byte Folded Spill
	sll.d r[12:13], r[12:13], r2
	addli r2, r30, -4264
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4224
	store.d r[15:16], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -4120
	and.d r[19:20], r[12:13], r[9:10]
	load.d r[9:10], 8(r30)
	add.ul r[4:5], r[9:10], r[15:16]
	addli r9, zero, 0
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	lock zero, r18
	addli r11, r15, 8256
	addli r24, zero, 64
	addli r17, zero, 32
	addli r15, zero, 5
	addli r16, zero, 2
	dma_cfg r4, r4, zero, 0
	dma_cfg zero, r22, zero, 2
	dma_cfg r11, r21, r24, 3
	addli r11, zero, 256
	dma_cfg r25, r24, r4, 4
	dma_cfg r25, r11, r10, 5
	addli r11, zero, 6
	dma_cfg zero, zero, r17, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 7
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 15
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 16
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r24, 3
	dma_cfg r25, zero, r4, 4
	dma_cfg r25, zero, r10, 5
	addli r25, zero, 5
	dma_cfg zero, zero, r17, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r16, 0
.LBB0_11:                               # %.thread51
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -2048(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r10,  -1024(r30)
	addli r16, zero, 128
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r10, r10, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r2, -2048(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r10, -1024(r30)
.LBB0_12:                               # %.thread54
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r9, r9, 1
	addli r2, zero, 8
	beq r9, r2, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r6, r6, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	zext_int2long r[21:22], r9
	addli r2, zero, 16383
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	sll.d r[10:11], r[21:22], r18
	addli.d r[17:18], r[19:20], 0
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	add.ul r[23:24], r[10:11], r[12:13]
	zext_int2long r[10:11], r2
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	setlt.ul r2, r[10:11], r[23:24]
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	bneq r2, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[17:18], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	add.s r16, r8, r6
	addli r4, zero, 255
	add.s r2, r7, r6
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	addli r11, r30, -4184
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r15, r16, r4
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r10, r2, r4
	addli r4, zero, 96
	addli r2, r2, 1
	zext_int2long r[4:5], r4
	storeli.w r2, -4096(r30)
	store.d r[4:5], 0(r11)                  # 8-byte Folded Spill
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r4, zero, 2
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r5
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r15, r15, 12
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r11, r10, 11
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r10, r16, 1
	addli r2, r15, 8192
	storeli.w r10, -3072(r30)
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r5, r4, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	bneq r5, r4, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r25, zero, 128
	sub.sl r[10:11], r[23:24], r[17:18]
	addli r21, r30, -4184
	zext_int2long r[17:18], r25
	div.sl r[10:11], r[10:11], r[17:18]
	load.d r[17:18], 0(r21)                 # 8-byte Folded Reload
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[21:22], r[23:24], r4
	addli r23, zero, 3
	xwait r23, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[17:18], r[10:11], r[17:18]
	sub.sl r[10:11], r[17:18], r[10:11]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	load.d r[17:18], 0(r30)
	addli r10, r10, 32
	addli r11, zero, 254
	add.ul r[21:22], r[17:18], r[21:22]
	addli r18, zero, 4
	blt.s r11, r16, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r16, zero, 5
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r11, zero, 2
	lock zero, r16
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 7
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 15
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 16
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 64
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r11, 3
	addli r11, zero, 32
	dma_cfg r25, zero, r4, 4
	dma_cfg r25, zero, r11, 5
	dma_cfg zero, zero, r11, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 2
	addli r10, zero, 16
	addli r18, zero, 4
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	xwait r4, 0
	xwait r25, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 32
	ds_cfg r4, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r4, zero, 13
	shuffle_batch r11, r2, r10, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	xsignal r18, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -2048(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r17,  -1024(r30)
	addli r4, zero, 255
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r10, r2, r4
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r16, r17, r4
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	storeli.w r2, -2048(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	lui r2, 257
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r15, r10, 11
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r10, r16, 11
	addli r16, r17, 1
	storeli.w r16, -1024(r30)
	add.s r2, r10, r2
	addli r16, zero, 7
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r5, r16, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r18, zero, 4
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r4, zero, 6
	bneq r5, r4, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r23, zero, 15
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r4, r30, -4120
	sll.d r[15:16], r[21:22], r23
	load.d r[21:22], 0(r4)                  # 8-byte Folded Reload
	addli r4, zero, 254
	add.ul r[15:16], r[21:22], r[15:16]
	addli r22, zero, 7
	xwait r22, 0
	blt.s r4, r17, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r17, zero, 5
	addli r4, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r11, zero, 2
	addli r21, zero, 16
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 3
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 64
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r11, 3
	addli r11, zero, 128
	dma_cfg r11, zero, r4, 4
	dma_cfg r11, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r4, 257
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r18
	addli r21, zero, 64
	addli r17, zero, 6
	addli r25, zero, 5
	ori r11, r4, 64
	addli r4, zero, 1
	add.s r10, r10, r11
	dma_cfg r4, r4, zero, 0
	addli r11, zero, 5
	dma_cfg zero, r16, zero, 2
	dma_cfg r10, r15, r21, 3
	addli r16, zero, 128
	addli r15, zero, 16
	addli r10, zero, 2048
	dma_cfg r16, r21, r4, 4
	dma_cfg r16, r10, r15, 5
	addli r10, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 3
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 9
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 13
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 14
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 18
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 19
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 20
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 21
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 22
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 23
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 26
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 27
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 28
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 29
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 30
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r10, 10
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r21, 3
	dma_cfg r16, zero, r4, 4
	dma_cfg r16, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r17, 0
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r4, zero, 6
	addli r10, zero, 16
	addli r18, zero, 4
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	addli r4, zero, 2
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 32
	ds_cfg r4, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r4, zero, 13
	shuffle_coa r15, r2, r10, 2
	addli r2, zero, 8
	unlock zero
	xsignal r16, 0
	addli r16, zero, 128
	xsignal r2, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r16, zero, 128
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r5, r18, .LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 8
	xwait r18, 0
	addli r4, zero, 32
	addli r10, zero, 16
	xwait r2, 0
	addli r2, zero, 1
	lock zero, r2
	mm_cfg r4, r10, r4, 0
	addli r4, zero, 4096
	mm_cfg r2, r2, r2, 2
	beq r6, zero, .LBB0_31
# %bb.29:                               # %.preheader83
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r4, r11, r15, 8
	j .LBB0_32
.LBB0_30:                               # %.thread54.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r9, r9, 1
	addli r2, zero, 8
	bneq r9, r2, .LBB0_13
	j .LBB0_35
.LBB0_31:                               # %.preheader82
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r4, r11, r15, 8
.LBB0_32:                               # %.thread54.thread114
                                        #   in Loop: Header=BB0_14 Depth=2
	unlock r2
	addli r2, zero, 9
	xsignal r25, 0
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r9, r9, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	xsignal r2, 0
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r2, zero, 8
	bneq r9, r2, .LBB0_13
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r5, r18, .LBB0_35
.LBB0_34:                               # %.thread116
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_35:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	addli r2, zero, 3
	bneq r5, r2, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	addli r2, zero, 16
	xwait r2, 0
.LBB0_37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 144 7 is_stmt 1               # parallel-rne.mlir:144:7
	xfence
	addli r4, zero, 5
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 3
	zext_int2long r[8:9], r2
	addli r2, r30, -4192
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 1
	sync_core
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	bneq r5, zero, .LBB0_62
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[8:9], zero
	addli r2, r30, -4128
	mfence { lm, sm, gm }
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_40
.LBB0_39:                               # %middle.block273
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 154 9                         # parallel-rne.mlir:154:9
	addli r2, r30, -4192
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_61
.LBB0_40:                               # %.preheader81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_42 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[17:18], r[8:9], r4
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4128
	load.d r[19:20], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_42
.LBB0_41:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 155 11 is_stmt 1              # parallel-rne.mlir:155:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 170 13                        # parallel-rne.mlir:170:13
	stores.w r15, 12(r2)
	stores.w r22, 8(r2)
	stores.w r23, 4(r2)
	stores.w r24, 0(r2)
	.loc	1 155 11                        # parallel-rne.mlir:155:11
	setneq.d r8, r[19:20], r[6:7]
	beq r8, zero, .LBB0_39
.LBB0_42:                               # %vector.body269
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	add.ul r[8:9], r[19:20], r[17:18]
	slli r2, r8, 2
	addli r8, r2, 4108
	addli r12, r2, 4104
	loads.w r10, 0(r8)
	addli r8, r2, 4096
	loads.w r16, 0(r12)
	loads.w r9, 0(r8)
	addli r8, r2, 4100
	loads.w r11, 0(r8)
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	and r21, r10, r27
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	setlt.u r8, r1, r21
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r8, zero, .LBB0_44
# %bb.43:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=3
	or r15, r10, r28
.LBB0_45:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	and r8, r16, r27
	setlt.u r12, r1, r8
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r12, zero, .LBB0_47
# %bb.46:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r16, 0
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_42 Depth=3
	or r22, r16, r28
.LBB0_48:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	and r12, r11, r27
	setlt.u r13, r1, r12
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r13, zero, .LBB0_50
# %bb.49:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r11, 0
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_42 Depth=3
	or r23, r11, r28
.LBB0_51:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	and r13, r9, r27
	setlt.u r24, r1, r13
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r24, zero, .LBB0_53
# %bb.52:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r9, 0
	.loc	1 167 19 is_stmt 1              # parallel-rne.mlir:167:19
	setlt.u r13, r26, r13
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	beq r13, zero, .LBB0_54
	j .LBB0_55
.LBB0_53:                               #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r9, r28
	.loc	1 167 19 is_stmt 1              # parallel-rne.mlir:167:19
	setlt.u r13, r26, r13
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r13, zero, .LBB0_55
.LBB0_54:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	add.s r9, r9, r3
	and r24, r9, r14
.LBB0_55:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	setlt.u r9, r26, r12
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	beq r9, zero, .LBB0_58
# %bb.56:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r8
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	beq r8, zero, .LBB0_59
.LBB0_57:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r21
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r8, zero, .LBB0_41
	j .LBB0_60
.LBB0_58:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r11, 16
	andi r9, r9, 1
	add.s r9, r11, r9
	add.s r9, r9, r3
	and r23, r9, r14
	setlt.u r8, r26, r8
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r8, zero, .LBB0_57
.LBB0_59:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r22, r8, r14
	setlt.u r8, r26, r21
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r8, zero, .LBB0_41
.LBB0_60:                               # %vector.body269
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_41
.LBB0_61:                               #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r2, zero, 1
	addli r16, zero, 128
	.loc	1 147 7 is_stmt 1               # parallel-rne.mlir:147:7
	mfence { sm }
.LBB0_62:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 7
	.loc	1 175 7 is_stmt 1               # parallel-rne.mlir:175:7
	addli r10, r30, -4176
	zext_int2long r[8:9], r8
	store.d r[8:9], 0(r10)                  # 8-byte Folded Spill
	bneq r5, r2, .LBB0_87
# %bb.63:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[8:9], r18
	mfence { lm, sm, gm }
	j .LBB0_65
.LBB0_64:                               # %middle.block267
                                        #   in Loop: Header=BB0_65 Depth=2
	.loc	1 182 9                         # parallel-rne.mlir:182:9
	addli r2, r30, -4176
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_86
.LBB0_65:                               # %.preheader80
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_67 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_67
.LBB0_66:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 183 11 is_stmt 1              # parallel-rne.mlir:183:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 198 13                        # parallel-rne.mlir:198:13
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 183 11                        # parallel-rne.mlir:183:11
	setneq.d r8, r[17:18], r[6:7]
	beq r8, zero, .LBB0_64
.LBB0_67:                               # %vector.body263
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	addli r8, r2, 4108
	addli r9, r2, 4104
	loads.w r10, 0(r8)
	addli r8, r2, 4096
	loads.w r16, 0(r9)
	loads.w r24, 0(r8)
	addli r8, r2, 4100
	loads.w r11, 0(r8)
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	and r19, r10, r27
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	setlt.u r8, r1, r19
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r8, zero, .LBB0_69
# %bb.68:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_70
.LBB0_69:                               #   in Loop: Header=BB0_67 Depth=3
	or r15, r10, r28
.LBB0_70:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r8, zero, .LBB0_72
# %bb.71:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_73
.LBB0_72:                               #   in Loop: Header=BB0_67 Depth=3
	or r20, r16, r28
.LBB0_73:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r9, zero, .LBB0_75
# %bb.74:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_67 Depth=3
	or r21, r11, r28
.LBB0_76:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r22, zero, .LBB0_78
# %bb.77:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 195 19 is_stmt 1              # parallel-rne.mlir:195:19
	setlt.u r9, r26, r9
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	beq r9, zero, .LBB0_79
	j .LBB0_80
.LBB0_78:                               #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 195 19 is_stmt 1              # parallel-rne.mlir:195:19
	setlt.u r9, r26, r9
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r9, zero, .LBB0_80
.LBB0_79:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_80:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	setlt.u r8, r26, r8
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	beq r8, zero, .LBB0_83
# %bb.81:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	beq r8, zero, .LBB0_84
.LBB0_82:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r8, zero, .LBB0_66
	j .LBB0_85
.LBB0_83:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r8, zero, .LBB0_82
.LBB0_84:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r8, zero, .LBB0_66
.LBB0_85:                               # %vector.body263
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_66
.LBB0_86:                               #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 175 7 is_stmt 1               # parallel-rne.mlir:175:7
	mfence { sm }
.LBB0_87:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 11
	zext_int2long r[8:9], r2
	.loc	1 203 7 is_stmt 1               # parallel-rne.mlir:203:7
	addli r2, r30, -4168
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 2
	bneq r5, r2, .LBB0_112
# %bb.88:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 203 7                         # parallel-rne.mlir:203:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_90
.LBB0_89:                               # %middle.block261
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 210 9 is_stmt 1               # parallel-rne.mlir:210:9
	addli r2, r30, -4168
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_111
.LBB0_90:                               # %.preheader79
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_92
.LBB0_91:                               # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 211 11 is_stmt 1              # parallel-rne.mlir:211:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 226 13                        # parallel-rne.mlir:226:13
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 211 11                        # parallel-rne.mlir:211:11
	setneq.d r8, r[17:18], r[6:7]
	beq r8, zero, .LBB0_89
.LBB0_92:                               # %vector.body257
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	addli r8, r2, 4108
	addli r9, r2, 4104
	loads.w r10, 0(r8)
	addli r8, r2, 4096
	loads.w r16, 0(r9)
	loads.w r24, 0(r8)
	addli r8, r2, 4100
	loads.w r11, 0(r8)
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	and r19, r10, r27
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	setlt.u r8, r1, r19
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r8, zero, .LBB0_94
# %bb.93:                               # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_92 Depth=3
	or r15, r10, r28
.LBB0_95:                               # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r8, zero, .LBB0_97
# %bb.96:                               # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_98
.LBB0_97:                               #   in Loop: Header=BB0_92 Depth=3
	or r20, r16, r28
.LBB0_98:                               # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r9, zero, .LBB0_100
# %bb.99:                               # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_101
.LBB0_100:                              #   in Loop: Header=BB0_92 Depth=3
	or r21, r11, r28
.LBB0_101:                              # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r22, zero, .LBB0_103
# %bb.102:                              # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 223 19 is_stmt 1              # parallel-rne.mlir:223:19
	setlt.u r9, r26, r9
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	beq r9, zero, .LBB0_104
	j .LBB0_105
.LBB0_103:                              #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 223 19 is_stmt 1              # parallel-rne.mlir:223:19
	setlt.u r9, r26, r9
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r9, zero, .LBB0_105
.LBB0_104:                              # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_105:                              # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	setlt.u r8, r26, r8
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	beq r8, zero, .LBB0_108
# %bb.106:                              # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	beq r8, zero, .LBB0_109
.LBB0_107:                              # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r8, zero, .LBB0_91
	j .LBB0_110
.LBB0_108:                              # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r8, zero, .LBB0_107
.LBB0_109:                              # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r8, zero, .LBB0_91
.LBB0_110:                              # %vector.body257
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_91
.LBB0_111:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 203 7 is_stmt 1               # parallel-rne.mlir:203:7
	mfence { sm }
.LBB0_112:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	zext_int2long r[8:9], r2
	addli r2, r30, -4160
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 3
	.loc	1 231 7 is_stmt 1               # parallel-rne.mlir:231:7
	bneq r5, r2, .LBB0_137
# %bb.113:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 231 7                         # parallel-rne.mlir:231:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_115
.LBB0_114:                              # %middle.block255
                                        #   in Loop: Header=BB0_115 Depth=2
	.loc	1 238 9 is_stmt 1               # parallel-rne.mlir:238:9
	addli r2, r30, -4160
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_136
.LBB0_115:                              # %.preheader78
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_117 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_117
.LBB0_116:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 239 11 is_stmt 1              # parallel-rne.mlir:239:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 254 13                        # parallel-rne.mlir:254:13
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	setneq.d r8, r[17:18], r[6:7]
	beq r8, zero, .LBB0_114
.LBB0_117:                              # %vector.body251
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_115 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	addli r8, r2, 4108
	addli r9, r2, 4104
	loads.w r10, 0(r8)
	addli r8, r2, 4096
	loads.w r16, 0(r9)
	loads.w r24, 0(r8)
	addli r8, r2, 4100
	loads.w r11, 0(r8)
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	and r19, r10, r27
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	setlt.u r8, r1, r19
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r8, zero, .LBB0_119
# %bb.118:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_117 Depth=3
	or r15, r10, r28
.LBB0_120:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r8, zero, .LBB0_122
# %bb.121:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_117 Depth=3
	or r20, r16, r28
.LBB0_123:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r9, zero, .LBB0_125
# %bb.124:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_126
.LBB0_125:                              #   in Loop: Header=BB0_117 Depth=3
	or r21, r11, r28
.LBB0_126:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r22, zero, .LBB0_128
# %bb.127:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 251 19 is_stmt 1              # parallel-rne.mlir:251:19
	setlt.u r9, r26, r9
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	beq r9, zero, .LBB0_129
	j .LBB0_130
.LBB0_128:                              #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 251 19 is_stmt 1              # parallel-rne.mlir:251:19
	setlt.u r9, r26, r9
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r9, zero, .LBB0_130
.LBB0_129:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_130:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	setlt.u r8, r26, r8
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	beq r8, zero, .LBB0_133
# %bb.131:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	beq r8, zero, .LBB0_134
.LBB0_132:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r8, zero, .LBB0_116
	j .LBB0_135
.LBB0_133:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r8, zero, .LBB0_132
.LBB0_134:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r8, zero, .LBB0_116
.LBB0_135:                              # %vector.body251
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_116
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 231 7 is_stmt 1               # parallel-rne.mlir:231:7
	mfence { sm }
.LBB0_137:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 19
	zext_int2long r[8:9], r2
	.loc	1 259 7 is_stmt 1               # parallel-rne.mlir:259:7
	addli r2, r30, -4152
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	bneq r5, r18, .LBB0_162
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 259 7                         # parallel-rne.mlir:259:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_140
.LBB0_139:                              # %middle.block249
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 266 9 is_stmt 1               # parallel-rne.mlir:266:9
	addli r2, r30, -4152
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_161
.LBB0_140:                              # %.preheader77
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_142 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_142
.LBB0_141:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 267 11 is_stmt 1              # parallel-rne.mlir:267:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 282 13                        # parallel-rne.mlir:282:13
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 267 11                        # parallel-rne.mlir:267:11
	setneq.d r8, r[17:18], r[6:7]
	beq r8, zero, .LBB0_139
.LBB0_142:                              # %vector.body245
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	addli r8, r2, 4108
	addli r9, r2, 4104
	loads.w r10, 0(r8)
	addli r8, r2, 4096
	loads.w r16, 0(r9)
	loads.w r24, 0(r8)
	addli r8, r2, 4100
	loads.w r11, 0(r8)
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	and r19, r10, r27
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	setlt.u r8, r1, r19
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r8, zero, .LBB0_144
# %bb.143:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_142 Depth=3
	or r15, r10, r28
.LBB0_145:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r8, zero, .LBB0_147
# %bb.146:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_142 Depth=3
	or r20, r16, r28
.LBB0_148:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r9, zero, .LBB0_150
# %bb.149:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_142 Depth=3
	or r21, r11, r28
.LBB0_151:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r22, zero, .LBB0_153
# %bb.152:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 279 19 is_stmt 1              # parallel-rne.mlir:279:19
	setlt.u r9, r26, r9
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	beq r9, zero, .LBB0_154
	j .LBB0_155
.LBB0_153:                              #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 279 19 is_stmt 1              # parallel-rne.mlir:279:19
	setlt.u r9, r26, r9
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r9, zero, .LBB0_155
.LBB0_154:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_155:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	setlt.u r8, r26, r8
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	beq r8, zero, .LBB0_158
# %bb.156:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	beq r8, zero, .LBB0_159
.LBB0_157:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r8, zero, .LBB0_141
	j .LBB0_160
.LBB0_158:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r8, zero, .LBB0_157
.LBB0_159:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r8, zero, .LBB0_141
.LBB0_160:                              # %vector.body245
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_141
.LBB0_161:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 259 7 is_stmt 1               # parallel-rne.mlir:259:7
	mfence { sm }
.LBB0_162:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[8:9], r2
	.loc	1 287 7 is_stmt 1               # parallel-rne.mlir:287:7
	addli r2, r30, -4144
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	bneq r5, r4, .LBB0_187
# %bb.163:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 287 7                         # parallel-rne.mlir:287:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_165
.LBB0_164:                              # %middle.block243
                                        #   in Loop: Header=BB0_165 Depth=2
	.loc	1 294 9 is_stmt 1               # parallel-rne.mlir:294:9
	addli r2, r30, -4144
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_186
.LBB0_165:                              # %.preheader76
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_167 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_167
.LBB0_166:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 295 11 is_stmt 1              # parallel-rne.mlir:295:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 310 13                        # parallel-rne.mlir:310:13
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 295 11                        # parallel-rne.mlir:295:11
	setneq.d r8, r[17:18], r[6:7]
	beq r8, zero, .LBB0_164
.LBB0_167:                              # %vector.body239
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_165 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	addli r8, r2, 4108
	addli r9, r2, 4104
	loads.w r10, 0(r8)
	addli r8, r2, 4096
	loads.w r16, 0(r9)
	loads.w r24, 0(r8)
	addli r8, r2, 4100
	loads.w r11, 0(r8)
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	and r19, r10, r27
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	setlt.u r8, r1, r19
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	bneq r8, zero, .LBB0_169
# %bb.168:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_170
.LBB0_169:                              #   in Loop: Header=BB0_167 Depth=3
	or r15, r10, r28
.LBB0_170:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	bneq r8, zero, .LBB0_172
# %bb.171:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_167 Depth=3
	or r20, r16, r28
.LBB0_173:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	bneq r9, zero, .LBB0_175
# %bb.174:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_167 Depth=3
	or r21, r11, r28
.LBB0_176:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	bneq r22, zero, .LBB0_178
# %bb.177:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 307 19 is_stmt 1              # parallel-rne.mlir:307:19
	setlt.u r9, r26, r9
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	beq r9, zero, .LBB0_179
	j .LBB0_180
.LBB0_178:                              #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 307 19 is_stmt 1              # parallel-rne.mlir:307:19
	setlt.u r9, r26, r9
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r9, zero, .LBB0_180
.LBB0_179:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_180:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	setlt.u r8, r26, r8
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	beq r8, zero, .LBB0_183
# %bb.181:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	beq r8, zero, .LBB0_184
.LBB0_182:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r8, zero, .LBB0_166
	j .LBB0_185
.LBB0_183:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r8, zero, .LBB0_182
.LBB0_184:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r8, zero, .LBB0_166
.LBB0_185:                              # %vector.body239
                                        #   in Loop: Header=BB0_167 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_166
.LBB0_186:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 287 7 is_stmt 1               # parallel-rne.mlir:287:7
	mfence { sm }
.LBB0_187:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 27
	zext_int2long r[8:9], r2
	.loc	1 315 7 is_stmt 1               # parallel-rne.mlir:315:7
	addli r2, r30, -4136
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 6
	bneq r5, r2, .LBB0_212
# %bb.188:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 315 7                         # parallel-rne.mlir:315:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_190
.LBB0_189:                              # %middle.block237
                                        #   in Loop: Header=BB0_190 Depth=2
	.loc	1 322 9 is_stmt 1               # parallel-rne.mlir:322:9
	addli r2, r30, -4136
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_211
.LBB0_190:                              # %.preheader75
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_192 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_192
.LBB0_191:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 323 11 is_stmt 1              # parallel-rne.mlir:323:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 338 13                        # parallel-rne.mlir:338:13
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 323 11                        # parallel-rne.mlir:323:11
	setneq.d r8, r[17:18], r[6:7]
	beq r8, zero, .LBB0_189
.LBB0_192:                              # %vector.body233
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_190 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	addli r8, r2, 4108
	addli r9, r2, 4104
	loads.w r10, 0(r8)
	addli r8, r2, 4096
	loads.w r16, 0(r9)
	loads.w r24, 0(r8)
	addli r8, r2, 4100
	loads.w r11, 0(r8)
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	and r19, r10, r27
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	setlt.u r8, r1, r19
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r8, zero, .LBB0_194
# %bb.193:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_195
.LBB0_194:                              #   in Loop: Header=BB0_192 Depth=3
	or r15, r10, r28
.LBB0_195:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r8, zero, .LBB0_197
# %bb.196:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_198
.LBB0_197:                              #   in Loop: Header=BB0_192 Depth=3
	or r20, r16, r28
.LBB0_198:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r9, zero, .LBB0_200
# %bb.199:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_192 Depth=3
	or r21, r11, r28
.LBB0_201:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r22, zero, .LBB0_203
# %bb.202:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 335 19 is_stmt 1              # parallel-rne.mlir:335:19
	setlt.u r9, r26, r9
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	beq r9, zero, .LBB0_204
	j .LBB0_205
.LBB0_203:                              #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 335 19 is_stmt 1              # parallel-rne.mlir:335:19
	setlt.u r9, r26, r9
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r9, zero, .LBB0_205
.LBB0_204:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_205:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	setlt.u r8, r26, r8
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	beq r8, zero, .LBB0_208
# %bb.206:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	beq r8, zero, .LBB0_209
.LBB0_207:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r8, zero, .LBB0_191
	j .LBB0_210
.LBB0_208:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r8, zero, .LBB0_207
.LBB0_209:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r8, zero, .LBB0_191
.LBB0_210:                              # %vector.body233
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_191
.LBB0_211:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 315 7 is_stmt 1               # parallel-rne.mlir:315:7
	mfence { sm }
.LBB0_212:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	zext_int2long r[8:9], r2
	.loc	1 343 7 is_stmt 1               # parallel-rne.mlir:343:7
	addli r2, r30, -4128
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 7
	bneq r5, r2, .LBB0_237
# %bb.213:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 343 7                         # parallel-rne.mlir:343:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_215
.LBB0_214:                              # %middle.block231
                                        #   in Loop: Header=BB0_215 Depth=2
	.loc	1 350 9 is_stmt 1               # parallel-rne.mlir:350:9
	addli r2, r30, -4128
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_236
.LBB0_215:                              # %.preheader74
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_217 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_217
.LBB0_216:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 351 11 is_stmt 1              # parallel-rne.mlir:351:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	setneq.d r8, r[17:18], r[6:7]
	beq r8, zero, .LBB0_214
.LBB0_217:                              # %vector.body227
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	addli r8, r2, 4108
	addli r9, r2, 4104
	loads.w r10, 0(r8)
	addli r8, r2, 4096
	loads.w r16, 0(r9)
	loads.w r24, 0(r8)
	addli r8, r2, 4100
	loads.w r11, 0(r8)
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	and r19, r10, r27
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	setlt.u r8, r1, r19
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r8, zero, .LBB0_219
# %bb.218:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_217 Depth=3
	or r15, r10, r28
.LBB0_220:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r8, zero, .LBB0_222
# %bb.221:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_223
.LBB0_222:                              #   in Loop: Header=BB0_217 Depth=3
	or r20, r16, r28
.LBB0_223:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r9, zero, .LBB0_225
# %bb.224:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_226
.LBB0_225:                              #   in Loop: Header=BB0_217 Depth=3
	or r21, r11, r28
.LBB0_226:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r22, zero, .LBB0_228
# %bb.227:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r9, r26, r9
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r9, zero, .LBB0_229
	j .LBB0_230
.LBB0_228:                              #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r9, r26, r9
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_230
.LBB0_229:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_230:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	setlt.u r8, r26, r8
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r8, zero, .LBB0_233
# %bb.231:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r8, zero, .LBB0_234
.LBB0_232:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r8, zero, .LBB0_216
	j .LBB0_235
.LBB0_233:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r8, zero, .LBB0_232
.LBB0_234:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r8, zero, .LBB0_216
.LBB0_235:                              # %vector.body227
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_216
.LBB0_236:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 343 7 is_stmt 1               # parallel-rne.mlir:343:7
	mfence { sm }
.LBB0_237:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -4200(r30)                # 4-byte Folded Reload
	zext_int2long r[8:9], r2
	addli r2, zero, 992
	zext_int2long r[10:11], r2
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	addli r2, r30, -4232
	min.ul r[10:11], r[8:9], r[10:11]
	addli.d r[10:11], r[10:11], 32
	max.ul r[10:11], r[10:11], r[8:9]
	sub.sl r[8:9], r[10:11], r[8:9]
	min.ul r[8:9], r[8:9], r[6:7]
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	addli r2, zero, 3
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	sync_core
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	bneq r5, r2, .LBB0_239
# %bb.238:                              # %.thread56.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	addli r2, zero, 22
	xwait r2, 0
	j .LBB0_245
.LBB0_239:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r10, 384
	addli r16, zero, 1
	ori r2, r10, 2048
	.loc	1 375 7 is_stmt 1               # parallel-rne.mlir:375:7
	bneq r5, r16, .LBB0_241
# %bb.240:                              # %.thread56.thread58
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r5, r30, -4224
	addli r13, zero, 18
	addli r21, zero, 3
	load.d r[8:9], 16(r30)
	addli r23, zero, 7
	addli r22, zero, 10
	addli r24, zero, 15
	addli r15, zero, 17
	addli r25, zero, 19
	addli r17, zero, 128
	ori r10, r10, 2112
	load.d r[11:12], 0(r5)                  # 8-byte Folded Reload
	xwait r13, 0
	lock zero, r4
	addli r5, zero, 2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r5, 10
	add.ul r[8:9], r[8:9], r[11:12]
	addli r11, zero, 8
	addli r12, zero, 64
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 5
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 16
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	addli r11, r30, -4232
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r12, 3
	dma_cfg r17, zero, r16, 4
	dma_cfg r17, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r18
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r9, zero, 2
	load.d r[19:20], 0(r11)                 # 8-byte Folded Reload
	dma_cfg r10, r8, r12, 3
	addli r10, zero, 9
	addli r11, r19, 31
	slli r9, r19, 1
	srli r8, r11, 5
	andi r9, r9, 62
	dma_cfg r17, r12, r8, 4
	dma_cfg r17, r12, r16, 5
	dma_cfg zero, zero, r9, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r5, 10
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r5
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 5
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 13
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 14
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 16
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 20
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 21
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 22
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 23
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 26
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 27
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 28
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 29
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 30
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r10, 10
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r12, 3
	dma_cfg r17, zero, r8, 4
	dma_cfg r17, zero, r16, 5
	dma_cfg zero, zero, r9, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	addli r16, zero, 128
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r15, 0
	j .LBB0_245
.LBB0_241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, zero, 1
	.loc	1 376 7 is_stmt 1               # parallel-rne.mlir:376:7
	bneq r5, r4, .LBB0_717
# %bb.242:                              #   in Loop: Header=BB0_7 Depth=1
	addli r9, zero, 12
	addli r8, zero, 0
	addli r16, zero, 128
	xwait r9, 0
	addli r9, zero, 17
	xwait r9, 0
	addli r9, zero, 2
	lock zero, r9
	lui r9, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r9, r9, zero, 0
	addli r9, zero, 31
	ew_cfg zero, r9, zero, 2
	addli r9, zero, 4096
	ew_cfg r10, zero, zero, 3
.LBB0_243:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	dsmadd r8, r8, r2, 0
	addli r8, r8, 128
	bneq r8, r9, .LBB0_243
# %bb.244:                              # %.thread56
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 13
	xsignal r2, 0
	addli r2, zero, 18
	xsignal r2, 0
.LBB0_245:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1
.LBB0_246:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 382 7 is_stmt 1               # parallel-rne.mlir:382:7
	xfence
	.loc	1 384 7                         # parallel-rne.mlir:384:7
	addli r8, zero, 255
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	mfence { lm, sm, gm }
	.loc	1 384 7                         # parallel-rne.mlir:384:7
	csr_set csr5, r8
	sync_core
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	beq r5, zero, .LBB0_254
# %bb.247:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 413 7                         # parallel-rne.mlir:413:7
	beq r5, r2, .LBB0_278
.LBB0_248:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 441 7                         # parallel-rne.mlir:441:7
	addli r8, zero, 2
	beq r5, r8, .LBB0_302
.LBB0_249:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	addli r8, zero, 3
	beq r5, r8, .LBB0_326
.LBB0_250:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 497 7                         # parallel-rne.mlir:497:7
	beq r5, r18, .LBB0_350
.LBB0_251:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 525 7                         # parallel-rne.mlir:525:7
	beq r5, r4, .LBB0_374
.LBB0_252:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 553 7                         # parallel-rne.mlir:553:7
	addli r8, zero, 6
	beq r5, r8, .LBB0_398
.LBB0_253:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 581 7                         # parallel-rne.mlir:581:7
	addli r8, zero, 7
	beq r5, r8, .LBB0_422
	j .LBB0_446
.LBB0_254:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	xfence
	zext_int2long r[8:9], zero
	addli r2, r30, -4200
	mfence { lm, sm, gm }
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_256
.LBB0_255:                              # %middle.block225
                                        #   in Loop: Header=BB0_256 Depth=2
	.loc	1 392 9                         # parallel-rne.mlir:392:9
	addli r2, r30, -4192
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_277
.LBB0_256:                              # %.preheader73
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_258 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[17:18], r[8:9], r4
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4200
	load.d r[19:20], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_258
.LBB0_257:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 393 11 is_stmt 1              # parallel-rne.mlir:393:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 408 13                        # parallel-rne.mlir:408:13
	loadli.w r9,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 393 11                        # parallel-rne.mlir:393:11
	setneq.d r8, r[19:20], r[6:7]
	.loc	1 408 13                        # parallel-rne.mlir:408:13
	add.s r2, r2, r9
	stores.w r15, 12(r2)
	stores.w r22, 8(r2)
	stores.w r23, 4(r2)
	stores.w r24, 0(r2)
	.loc	1 393 11                        # parallel-rne.mlir:393:11
	beq r8, zero, .LBB0_255
.LBB0_258:                              # %vector.body221
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_256 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	add.ul r[8:9], r[19:20], r[17:18]
	slli r2, r8, 2
	loads.w r10, 12(r2)
	loads.w r9, 0(r2)
	loads.w r11, 4(r2)
	loads.w r16, 8(r2)
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	and r21, r10, r27
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	setlt.u r8, r1, r21
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r8, zero, .LBB0_260
# %bb.259:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_258 Depth=3
	or r15, r10, r28
.LBB0_261:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	and r8, r16, r27
	setlt.u r12, r1, r8
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r12, zero, .LBB0_263
# %bb.262:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r16, 0
	j .LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_258 Depth=3
	or r22, r16, r28
.LBB0_264:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	and r12, r11, r27
	setlt.u r13, r1, r12
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r13, zero, .LBB0_266
# %bb.265:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r11, 0
	j .LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_258 Depth=3
	or r23, r11, r28
.LBB0_267:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	and r13, r9, r27
	setlt.u r24, r1, r13
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r24, zero, .LBB0_269
# %bb.268:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r9, 0
	.loc	1 405 19 is_stmt 1              # parallel-rne.mlir:405:19
	setlt.u r13, r26, r13
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	beq r13, zero, .LBB0_270
	j .LBB0_271
.LBB0_269:                              #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r9, r28
	.loc	1 405 19 is_stmt 1              # parallel-rne.mlir:405:19
	setlt.u r13, r26, r13
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r13, zero, .LBB0_271
.LBB0_270:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	add.s r9, r9, r3
	and r24, r9, r14
.LBB0_271:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	setlt.u r9, r26, r12
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	beq r9, zero, .LBB0_274
# %bb.272:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r8
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	beq r8, zero, .LBB0_275
.LBB0_273:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r21
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r8, zero, .LBB0_257
	j .LBB0_276
.LBB0_274:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r11, 16
	andi r9, r9, 1
	add.s r9, r11, r9
	add.s r9, r9, r3
	and r23, r9, r14
	setlt.u r8, r26, r8
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r8, zero, .LBB0_273
.LBB0_275:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r22, r8, r14
	setlt.u r8, r26, r21
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r8, zero, .LBB0_257
.LBB0_276:                              # %vector.body221
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_257
.LBB0_277:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r2, zero, 1
	addli r16, zero, 128
	.loc	1 385 7 is_stmt 1               # parallel-rne.mlir:385:7
	mfence { sm }
	.loc	1 413 7                         # parallel-rne.mlir:413:7
	bneq r5, r2, .LBB0_248
.LBB0_278:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[8:9], r18
	mfence { lm, sm, gm }
	j .LBB0_280
.LBB0_279:                              # %middle.block219
                                        #   in Loop: Header=BB0_280 Depth=2
	.loc	1 420 9                         # parallel-rne.mlir:420:9
	addli r2, r30, -4176
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_301
.LBB0_280:                              # %.preheader72
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_282 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_282
.LBB0_281:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	.loc	1 421 11 is_stmt 1              # parallel-rne.mlir:421:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 436 13                        # parallel-rne.mlir:436:13
	loadli.w r9,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 421 11                        # parallel-rne.mlir:421:11
	setneq.d r8, r[17:18], r[6:7]
	.loc	1 436 13                        # parallel-rne.mlir:436:13
	add.s r2, r2, r9
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 421 11                        # parallel-rne.mlir:421:11
	beq r8, zero, .LBB0_279
.LBB0_282:                              # %vector.body215
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_280 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	loads.w r10, 12(r2)
	loads.w r24, 0(r2)
	loads.w r11, 4(r2)
	loads.w r16, 8(r2)
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	and r19, r10, r27
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	setlt.u r8, r1, r19
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r8, zero, .LBB0_284
# %bb.283:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_285
.LBB0_284:                              #   in Loop: Header=BB0_282 Depth=3
	or r15, r10, r28
.LBB0_285:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r8, zero, .LBB0_287
# %bb.286:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_288
.LBB0_287:                              #   in Loop: Header=BB0_282 Depth=3
	or r20, r16, r28
.LBB0_288:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r9, zero, .LBB0_290
# %bb.289:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_291
.LBB0_290:                              #   in Loop: Header=BB0_282 Depth=3
	or r21, r11, r28
.LBB0_291:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r22, zero, .LBB0_293
# %bb.292:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 433 19 is_stmt 1              # parallel-rne.mlir:433:19
	setlt.u r9, r26, r9
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	beq r9, zero, .LBB0_294
	j .LBB0_295
.LBB0_293:                              #   in Loop: Header=BB0_282 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 433 19 is_stmt 1              # parallel-rne.mlir:433:19
	setlt.u r9, r26, r9
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r9, zero, .LBB0_295
.LBB0_294:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_295:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	setlt.u r8, r26, r8
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	beq r8, zero, .LBB0_298
# %bb.296:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	beq r8, zero, .LBB0_299
.LBB0_297:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r8, zero, .LBB0_281
	j .LBB0_300
.LBB0_298:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r8, zero, .LBB0_297
.LBB0_299:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r8, zero, .LBB0_281
.LBB0_300:                              # %vector.body215
                                        #   in Loop: Header=BB0_282 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_281
.LBB0_301:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r2, zero, 1
	addli r16, zero, 128
	.loc	1 413 7 is_stmt 1               # parallel-rne.mlir:413:7
	mfence { sm }
	.loc	1 441 7                         # parallel-rne.mlir:441:7
	addli r8, zero, 2
	bneq r5, r8, .LBB0_249
.LBB0_302:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 441 7                         # parallel-rne.mlir:441:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_304
.LBB0_303:                              # %middle.block213
                                        #   in Loop: Header=BB0_304 Depth=2
	.loc	1 448 9 is_stmt 1               # parallel-rne.mlir:448:9
	addli r2, r30, -4168
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_325
.LBB0_304:                              # %.preheader71
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_306 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_306
.LBB0_305:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	.loc	1 449 11 is_stmt 1              # parallel-rne.mlir:449:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 464 13                        # parallel-rne.mlir:464:13
	loadli.w r9,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 449 11                        # parallel-rne.mlir:449:11
	setneq.d r8, r[17:18], r[6:7]
	.loc	1 464 13                        # parallel-rne.mlir:464:13
	add.s r2, r2, r9
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 449 11                        # parallel-rne.mlir:449:11
	beq r8, zero, .LBB0_303
.LBB0_306:                              # %vector.body209
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_304 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	loads.w r10, 12(r2)
	loads.w r24, 0(r2)
	loads.w r11, 4(r2)
	loads.w r16, 8(r2)
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	and r19, r10, r27
	.loc	1 454 19                        # parallel-rne.mlir:454:19
	setlt.u r8, r1, r19
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r8, zero, .LBB0_308
# %bb.307:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_309
.LBB0_308:                              #   in Loop: Header=BB0_306 Depth=3
	or r15, r10, r28
.LBB0_309:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r8, zero, .LBB0_311
# %bb.310:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_312
.LBB0_311:                              #   in Loop: Header=BB0_306 Depth=3
	or r20, r16, r28
.LBB0_312:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r9, zero, .LBB0_314
# %bb.313:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_315
.LBB0_314:                              #   in Loop: Header=BB0_306 Depth=3
	or r21, r11, r28
.LBB0_315:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r22, zero, .LBB0_317
# %bb.316:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 461 19 is_stmt 1              # parallel-rne.mlir:461:19
	setlt.u r9, r26, r9
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	beq r9, zero, .LBB0_318
	j .LBB0_319
.LBB0_317:                              #   in Loop: Header=BB0_306 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 461 19 is_stmt 1              # parallel-rne.mlir:461:19
	setlt.u r9, r26, r9
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r9, zero, .LBB0_319
.LBB0_318:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_319:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	setlt.u r8, r26, r8
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	beq r8, zero, .LBB0_322
# %bb.320:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	beq r8, zero, .LBB0_323
.LBB0_321:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r8, zero, .LBB0_305
	j .LBB0_324
.LBB0_322:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r8, zero, .LBB0_321
.LBB0_323:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r8, zero, .LBB0_305
.LBB0_324:                              # %vector.body209
                                        #   in Loop: Header=BB0_306 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_305
.LBB0_325:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r2, zero, 1
	addli r16, zero, 128
	.loc	1 441 7 is_stmt 1               # parallel-rne.mlir:441:7
	mfence { sm }
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	addli r8, zero, 3
	bneq r5, r8, .LBB0_250
.LBB0_326:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_328
.LBB0_327:                              # %middle.block207
                                        #   in Loop: Header=BB0_328 Depth=2
	.loc	1 476 9 is_stmt 1               # parallel-rne.mlir:476:9
	addli r2, r30, -4160
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_349
.LBB0_328:                              # %.preheader70
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_330 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_330
.LBB0_329:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 477 11 is_stmt 1              # parallel-rne.mlir:477:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 492 13                        # parallel-rne.mlir:492:13
	loadli.w r9,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 477 11                        # parallel-rne.mlir:477:11
	setneq.d r8, r[17:18], r[6:7]
	.loc	1 492 13                        # parallel-rne.mlir:492:13
	add.s r2, r2, r9
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 477 11                        # parallel-rne.mlir:477:11
	beq r8, zero, .LBB0_327
.LBB0_330:                              # %vector.body203
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_328 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 478 19                        # parallel-rne.mlir:478:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	loads.w r10, 12(r2)
	loads.w r24, 0(r2)
	loads.w r11, 4(r2)
	loads.w r16, 8(r2)
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	and r19, r10, r27
	.loc	1 482 19                        # parallel-rne.mlir:482:19
	setlt.u r8, r1, r19
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r8, zero, .LBB0_332
# %bb.331:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_333
.LBB0_332:                              #   in Loop: Header=BB0_330 Depth=3
	or r15, r10, r28
.LBB0_333:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r8, zero, .LBB0_335
# %bb.334:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_336
.LBB0_335:                              #   in Loop: Header=BB0_330 Depth=3
	or r20, r16, r28
.LBB0_336:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r9, zero, .LBB0_338
# %bb.337:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_339
.LBB0_338:                              #   in Loop: Header=BB0_330 Depth=3
	or r21, r11, r28
.LBB0_339:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r22, zero, .LBB0_341
# %bb.340:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 489 19 is_stmt 1              # parallel-rne.mlir:489:19
	setlt.u r9, r26, r9
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	beq r9, zero, .LBB0_342
	j .LBB0_343
.LBB0_341:                              #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 489 19 is_stmt 1              # parallel-rne.mlir:489:19
	setlt.u r9, r26, r9
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r9, zero, .LBB0_343
.LBB0_342:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_343:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	setlt.u r8, r26, r8
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	beq r8, zero, .LBB0_346
# %bb.344:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	beq r8, zero, .LBB0_347
.LBB0_345:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r8, zero, .LBB0_329
	j .LBB0_348
.LBB0_346:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r8, zero, .LBB0_345
.LBB0_347:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r8, zero, .LBB0_329
.LBB0_348:                              # %vector.body203
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_329
.LBB0_349:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r2, zero, 1
	addli r16, zero, 128
	.loc	1 469 7 is_stmt 1               # parallel-rne.mlir:469:7
	mfence { sm }
	.loc	1 497 7                         # parallel-rne.mlir:497:7
	bneq r5, r18, .LBB0_251
.LBB0_350:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 497 7                         # parallel-rne.mlir:497:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_352
.LBB0_351:                              # %middle.block201
                                        #   in Loop: Header=BB0_352 Depth=2
	.loc	1 504 9 is_stmt 1               # parallel-rne.mlir:504:9
	addli r2, r30, -4152
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_373
.LBB0_352:                              # %.preheader69
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_354 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_354
.LBB0_353:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 505 11 is_stmt 1              # parallel-rne.mlir:505:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 520 13                        # parallel-rne.mlir:520:13
	loadli.w r9,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 505 11                        # parallel-rne.mlir:505:11
	setneq.d r8, r[17:18], r[6:7]
	.loc	1 520 13                        # parallel-rne.mlir:520:13
	add.s r2, r2, r9
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 505 11                        # parallel-rne.mlir:505:11
	beq r8, zero, .LBB0_351
.LBB0_354:                              # %vector.body197
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_352 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	loads.w r10, 12(r2)
	loads.w r24, 0(r2)
	loads.w r11, 4(r2)
	loads.w r16, 8(r2)
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	and r19, r10, r27
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	setlt.u r8, r1, r19
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r8, zero, .LBB0_356
# %bb.355:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_357
.LBB0_356:                              #   in Loop: Header=BB0_354 Depth=3
	or r15, r10, r28
.LBB0_357:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r8, zero, .LBB0_359
# %bb.358:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_360
.LBB0_359:                              #   in Loop: Header=BB0_354 Depth=3
	or r20, r16, r28
.LBB0_360:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r9, zero, .LBB0_362
# %bb.361:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_363
.LBB0_362:                              #   in Loop: Header=BB0_354 Depth=3
	or r21, r11, r28
.LBB0_363:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r22, zero, .LBB0_365
# %bb.364:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 517 19 is_stmt 1              # parallel-rne.mlir:517:19
	setlt.u r9, r26, r9
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	beq r9, zero, .LBB0_366
	j .LBB0_367
.LBB0_365:                              #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 517 19 is_stmt 1              # parallel-rne.mlir:517:19
	setlt.u r9, r26, r9
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r9, zero, .LBB0_367
.LBB0_366:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_367:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	setlt.u r8, r26, r8
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	beq r8, zero, .LBB0_370
# %bb.368:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	beq r8, zero, .LBB0_371
.LBB0_369:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r8, zero, .LBB0_353
	j .LBB0_372
.LBB0_370:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r8, zero, .LBB0_369
.LBB0_371:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r8, zero, .LBB0_353
.LBB0_372:                              # %vector.body197
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_353
.LBB0_373:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r2, zero, 1
	addli r16, zero, 128
	.loc	1 497 7 is_stmt 1               # parallel-rne.mlir:497:7
	mfence { sm }
	.loc	1 525 7                         # parallel-rne.mlir:525:7
	bneq r5, r4, .LBB0_252
.LBB0_374:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 525 7                         # parallel-rne.mlir:525:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_376
.LBB0_375:                              # %middle.block195
                                        #   in Loop: Header=BB0_376 Depth=2
	.loc	1 532 9 is_stmt 1               # parallel-rne.mlir:532:9
	addli r2, r30, -4144
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_397
.LBB0_376:                              # %.preheader68
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_378 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_378
.LBB0_377:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 533 11 is_stmt 1              # parallel-rne.mlir:533:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 548 13                        # parallel-rne.mlir:548:13
	loadli.w r9,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 533 11                        # parallel-rne.mlir:533:11
	setneq.d r8, r[17:18], r[6:7]
	.loc	1 548 13                        # parallel-rne.mlir:548:13
	add.s r2, r2, r9
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 533 11                        # parallel-rne.mlir:533:11
	beq r8, zero, .LBB0_375
.LBB0_378:                              # %vector.body191
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_376 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 534 19                        # parallel-rne.mlir:534:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	loads.w r10, 12(r2)
	loads.w r24, 0(r2)
	loads.w r11, 4(r2)
	loads.w r16, 8(r2)
	.loc	1 536 19                        # parallel-rne.mlir:536:19
	and r19, r10, r27
	.loc	1 538 19                        # parallel-rne.mlir:538:19
	setlt.u r8, r1, r19
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r8, zero, .LBB0_380
# %bb.379:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_381
.LBB0_380:                              #   in Loop: Header=BB0_378 Depth=3
	or r15, r10, r28
.LBB0_381:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r8, zero, .LBB0_383
# %bb.382:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_384
.LBB0_383:                              #   in Loop: Header=BB0_378 Depth=3
	or r20, r16, r28
.LBB0_384:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r9, zero, .LBB0_386
# %bb.385:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_387
.LBB0_386:                              #   in Loop: Header=BB0_378 Depth=3
	or r21, r11, r28
.LBB0_387:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r22, zero, .LBB0_389
# %bb.388:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 545 19 is_stmt 1              # parallel-rne.mlir:545:19
	setlt.u r9, r26, r9
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	beq r9, zero, .LBB0_390
	j .LBB0_391
.LBB0_389:                              #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 545 19 is_stmt 1              # parallel-rne.mlir:545:19
	setlt.u r9, r26, r9
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r9, zero, .LBB0_391
.LBB0_390:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_391:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	setlt.u r8, r26, r8
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	beq r8, zero, .LBB0_394
# %bb.392:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	beq r8, zero, .LBB0_395
.LBB0_393:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r8, zero, .LBB0_377
	j .LBB0_396
.LBB0_394:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r8, zero, .LBB0_393
.LBB0_395:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r8, zero, .LBB0_377
.LBB0_396:                              # %vector.body191
                                        #   in Loop: Header=BB0_378 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_377
.LBB0_397:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r2, zero, 1
	addli r16, zero, 128
	.loc	1 525 7 is_stmt 1               # parallel-rne.mlir:525:7
	mfence { sm }
	.loc	1 553 7                         # parallel-rne.mlir:553:7
	addli r8, zero, 6
	bneq r5, r8, .LBB0_253
.LBB0_398:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 553 7                         # parallel-rne.mlir:553:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_400
.LBB0_399:                              # %middle.block189
                                        #   in Loop: Header=BB0_400 Depth=2
	.loc	1 560 9 is_stmt 1               # parallel-rne.mlir:560:9
	addli r2, r30, -4136
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_421
.LBB0_400:                              # %.preheader67
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_402 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_402
.LBB0_401:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 561 11 is_stmt 1              # parallel-rne.mlir:561:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 576 13                        # parallel-rne.mlir:576:13
	loadli.w r9,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 561 11                        # parallel-rne.mlir:561:11
	setneq.d r8, r[17:18], r[6:7]
	.loc	1 576 13                        # parallel-rne.mlir:576:13
	add.s r2, r2, r9
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 561 11                        # parallel-rne.mlir:561:11
	beq r8, zero, .LBB0_399
.LBB0_402:                              # %vector.body185
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_400 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	loads.w r10, 12(r2)
	loads.w r24, 0(r2)
	loads.w r11, 4(r2)
	loads.w r16, 8(r2)
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	and r19, r10, r27
	.loc	1 566 19                        # parallel-rne.mlir:566:19
	setlt.u r8, r1, r19
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r8, zero, .LBB0_404
# %bb.403:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_405
.LBB0_404:                              #   in Loop: Header=BB0_402 Depth=3
	or r15, r10, r28
.LBB0_405:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r8, zero, .LBB0_407
# %bb.406:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_408
.LBB0_407:                              #   in Loop: Header=BB0_402 Depth=3
	or r20, r16, r28
.LBB0_408:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r9, zero, .LBB0_410
# %bb.409:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_411
.LBB0_410:                              #   in Loop: Header=BB0_402 Depth=3
	or r21, r11, r28
.LBB0_411:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r22, zero, .LBB0_413
# %bb.412:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 573 19 is_stmt 1              # parallel-rne.mlir:573:19
	setlt.u r9, r26, r9
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	beq r9, zero, .LBB0_414
	j .LBB0_415
.LBB0_413:                              #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 573 19 is_stmt 1              # parallel-rne.mlir:573:19
	setlt.u r9, r26, r9
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r9, zero, .LBB0_415
.LBB0_414:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_415:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	setlt.u r8, r26, r8
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	beq r8, zero, .LBB0_418
# %bb.416:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	beq r8, zero, .LBB0_419
.LBB0_417:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r8, zero, .LBB0_401
	j .LBB0_420
.LBB0_418:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r8, zero, .LBB0_417
.LBB0_419:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r8, zero, .LBB0_401
.LBB0_420:                              # %vector.body185
                                        #   in Loop: Header=BB0_402 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_401
.LBB0_421:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r2, zero, 1
	addli r16, zero, 128
	.loc	1 553 7 is_stmt 1               # parallel-rne.mlir:553:7
	mfence { sm }
	.loc	1 581 7                         # parallel-rne.mlir:581:7
	addli r8, zero, 7
	bneq r5, r8, .LBB0_446
.LBB0_422:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 581 7                         # parallel-rne.mlir:581:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_424
.LBB0_423:                              # %middle.block183
                                        #   in Loop: Header=BB0_424 Depth=2
	.loc	1 588 9 is_stmt 1               # parallel-rne.mlir:588:9
	addli r2, r30, -4128
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4120
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_445
.LBB0_424:                              # %.preheader66
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_426 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4120
	sll.d r[12:13], r[8:9], r4
	zext_int2long r[17:18], zero
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_426
.LBB0_425:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	.loc	1 589 11 is_stmt 1              # parallel-rne.mlir:589:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 604 13                        # parallel-rne.mlir:604:13
	loadli.w r9,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 589 11                        # parallel-rne.mlir:589:11
	setneq.d r8, r[17:18], r[6:7]
	.loc	1 604 13                        # parallel-rne.mlir:604:13
	add.s r2, r2, r9
	stores.w r15, 12(r2)
	stores.w r20, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 589 11                        # parallel-rne.mlir:589:11
	beq r8, zero, .LBB0_423
.LBB0_426:                              # %vector.body179
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_424 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	loads.w r10, 12(r2)
	loads.w r24, 0(r2)
	loads.w r11, 4(r2)
	loads.w r16, 8(r2)
	.loc	1 592 19                        # parallel-rne.mlir:592:19
	and r19, r10, r27
	.loc	1 594 19                        # parallel-rne.mlir:594:19
	setlt.u r8, r1, r19
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r8, zero, .LBB0_428
# %bb.427:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r10, 0
	j .LBB0_429
.LBB0_428:                              #   in Loop: Header=BB0_426 Depth=3
	or r15, r10, r28
.LBB0_429:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	and r23, r16, r27
	setlt.u r8, r1, r23
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r8, zero, .LBB0_431
# %bb.430:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r16, 0
	j .LBB0_432
.LBB0_431:                              #   in Loop: Header=BB0_426 Depth=3
	or r20, r16, r28
.LBB0_432:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	and r8, r11, r27
	setlt.u r9, r1, r8
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r9, zero, .LBB0_434
# %bb.433:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_435
.LBB0_434:                              #   in Loop: Header=BB0_426 Depth=3
	or r21, r11, r28
.LBB0_435:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	and r9, r24, r27
	setlt.u r22, r1, r9
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r22, zero, .LBB0_437
# %bb.436:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r24, 0
	.loc	1 601 19 is_stmt 1              # parallel-rne.mlir:601:19
	setlt.u r9, r26, r9
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	beq r9, zero, .LBB0_438
	j .LBB0_439
.LBB0_437:                              #   in Loop: Header=BB0_426 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r24, r28
	.loc	1 601 19 is_stmt 1              # parallel-rne.mlir:601:19
	setlt.u r9, r26, r9
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r9, zero, .LBB0_439
.LBB0_438:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r24, 16
	andi r9, r9, 1
	add.s r9, r24, r9
	add.s r9, r9, r3
	and r22, r9, r14
.LBB0_439:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	setlt.u r8, r26, r8
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	beq r8, zero, .LBB0_442
# %bb.440:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r23
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	beq r8, zero, .LBB0_443
.LBB0_441:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r26, r19
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r8, zero, .LBB0_425
	j .LBB0_444
.LBB0_442:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	add.s r8, r8, r3
	and r21, r8, r14
	setlt.u r8, r26, r23
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r8, zero, .LBB0_441
.LBB0_443:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r16, 16
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r3
	and r20, r8, r14
	setlt.u r8, r26, r19
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r8, zero, .LBB0_425
.LBB0_444:                              # %vector.body179
                                        #   in Loop: Header=BB0_426 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r3
	and r15, r8, r14
	j .LBB0_425
.LBB0_445:                              #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 4
	addli r2, zero, 1
	addli r16, zero, 128
	.loc	1 581 7 is_stmt 1               # parallel-rne.mlir:581:7
	mfence { sm }
.LBB0_446:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	addli r8, zero, 255
	csr_set csr5, r8
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	addli r8, zero, 3
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	sync_core
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	bneq r5, r8, .LBB0_448
# %bb.447:                              # %.critedge13
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 14
	.loc	1 611 7 is_stmt 1               # parallel-rne.mlir:611:7
	addli r8, zero, 21
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	xsignal r9, 0
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	xsignal r8, 0
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	addli r8, zero, 19
	xsignal r8, 0
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	addli r8, zero, 20
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	xwait r9, 0
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	xwait r8, 0
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r8, zero, 23
	xwait r8, 0
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	addli r8, zero, 25
	xwait r8, 0
	j .LBB0_450
.LBB0_448:                              # %.critedge9
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	bneq r5, r4, .LBB0_450
# %bb.449:                              #   in Loop: Header=BB0_7 Depth=1
	addli r8, zero, 19
	addli r12, zero, 1023
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	addli r10, zero, 21
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	xwait r8, 0
	addli r8, zero, 24
	xwait r8, 0
	addli r8, zero, 2
	lock zero, r8
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r12, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	ew_cfg r8, zero, zero, 10
	loadli.w r9,  -4268(r30)                # 4-byte Folded Reload
	ew_cfg r8, r2, r9, 11
	lui r9, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r18, r9, 14
	ew_cfg zero, zero, zero, 15
	loadli.w r9,  -4104(r30)                # 4-byte Folded Reload
	loadli.w r11,  -4100(r30)               # 4-byte Folded Reload
	sslut r9, r11, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r8
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	xwait r10, 0
	addli r10, zero, 26
	xwait r10, 0
	lock zero, r8
	lui r10, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r10, 0
	ew_cfg zero, r12, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, r2, 19
	loadli.w r10,  -4108(r30)               # 4-byte Folded Reload
	dsmul r10, r11, r9, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	addli r8, zero, 20
	xsignal r8, 0
	addli r8, zero, 23
	xsignal r8, 0
	addli r8, zero, 25
	xsignal r8, 0
.LBB0_450:                              # %.critedge15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	xfence
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	addli r8, zero, 255
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	mfence { lm, sm, gm }
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	csr_set csr5, r8
	sync_core
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	beq r5, zero, .LBB0_458
# %bb.451:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 672 7                         # parallel-rne.mlir:672:7
	beq r5, r2, .LBB0_490
.LBB0_452:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 718 7                         # parallel-rne.mlir:718:7
	addli r2, zero, 2
	beq r5, r2, .LBB0_522
.LBB0_453:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	.loc	1 764 7 is_stmt 1               # parallel-rne.mlir:764:7
	beq r5, r2, .LBB0_554
.LBB0_454:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 810 7                         # parallel-rne.mlir:810:7
	beq r5, r18, .LBB0_586
.LBB0_455:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 856 7                         # parallel-rne.mlir:856:7
	beq r5, r4, .LBB0_618
.LBB0_456:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 902 7                         # parallel-rne.mlir:902:7
	addli r2, zero, 6
	beq r5, r2, .LBB0_650
.LBB0_457:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 948 7                         # parallel-rne.mlir:948:7
	addli r2, zero, 7
	beq r5, r2, .LBB0_682
	j .LBB0_714
.LBB0_458:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	xfence
	zext_int2long r[8:9], zero
	addli r2, r30, -4208
	mfence { lm, sm, gm }
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_460
.LBB0_459:                              # %middle.block177
                                        #   in Loop: Header=BB0_460 Depth=2
	.loc	1 633 9                         # parallel-rne.mlir:633:9
	addli r2, r30, -4192
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4200
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	addli.d r[8:9], r[4:5], 0
	addli r4, zero, 5
	beq r2, zero, .LBB0_489
.LBB0_460:                              # %.preheader65
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_462 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4200
	sll.d r[4:5], r[8:9], r4
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4120
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4208
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_462
.LBB0_461:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 634 11 is_stmt 1              # parallel-rne.mlir:634:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 667 13                        # parallel-rne.mlir:667:13
	stores.w r23, 12(r2)
	stores.w r16, 8(r2)
	stores.w r11, 4(r2)
	stores.w r8, 0(r2)
	.loc	1 634 11                        # parallel-rne.mlir:634:11
	setneq.d r4, r[12:13], r[6:7]
	beq r4, zero, .LBB0_459
.LBB0_462:                              # %vector.body171
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_460 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 635 19                        # parallel-rne.mlir:635:19
	addli r2, r30, -4120
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	add.ul r[8:9], r[12:13], r[4:5]
	loadli.w r4,  -4100(r30)                # 4-byte Folded Reload
	slli r2, r8, 2
	add.s r8, r2, r4
	.loc	1 636 19                        # parallel-rne.mlir:636:19
	loadli.w r4,  -4104(r30)                # 4-byte Folded Reload
	.loc	1 635 19                        # parallel-rne.mlir:635:19
	loads.w r11, 0(r8)
	loads.w r9, 4(r8)
	loads.w r22, 8(r8)
	loads.w r24, 12(r8)
	.loc	1 636 19                        # parallel-rne.mlir:636:19
	add.s r10, r2, r4
	.loc	1 637 19                        # parallel-rne.mlir:637:19
	loadli.w r4,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 636 19                        # parallel-rne.mlir:636:19
	loads.w r15, 0(r10)
	loads.w r21, 4(r10)
	loads.w r8, 8(r10)
	loads.w r16, 12(r10)
	.loc	1 637 19                        # parallel-rne.mlir:637:19
	add.s r17, r2, r4
	loads.w r23, 12(r17)
	loads.w r18, 4(r17)
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	and r10, r11, r27
	.loc	1 637 19                        # parallel-rne.mlir:637:19
	loads.w r11, 8(r17)
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	seteq r4, r10, r1
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	seteq r19, r10, zero
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	and r15, r15, r27
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	seteq r5, r15, zero
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	seteq r25, r15, r1
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	max.u r10, r10, r15
	lui r15, 523264
	setlt.u r10, r1, r10
	.loc	1 645 19                        # parallel-rne.mlir:645:19
	and r4, r4, r5
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	and r5, r19, r25
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	or r4, r4, r5
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	or r4, r10, r4
	lui r10, 523264
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	bneq r4, zero, .LBB0_464
# %bb.463:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r17)
.LBB0_464:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	and r4, r9, r27
	and r5, r21, r27
	lui r21, 523264
	seteq r9, r4, r1
	seteq r20, r4, zero
	seteq r17, r5, zero
	seteq r19, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r9, r17
	and r9, r20, r19
	or r5, r5, r9
	or r4, r4, r5
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	bneq r4, zero, .LBB0_466
# %bb.465:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r18, 0
.LBB0_466:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	and r4, r22, r27
	and r5, r8, r27
	lui r22, 523264
	seteq r8, r4, r1
	seteq r18, r4, zero
	seteq r9, r5, zero
	seteq r17, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r9
	and r8, r18, r17
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	bneq r4, zero, .LBB0_468
# %bb.467:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
.LBB0_468:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	and r5, r16, r27
	and r4, r24, r27
	seteq r8, r4, r1
	seteq r16, r4, zero
	seteq r9, r5, zero
	seteq r11, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r9
	and r8, r16, r11
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	bneq r4, zero, .LBB0_470
# %bb.469:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r23, 0
.LBB0_470:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 655 19 is_stmt 1              # parallel-rne.mlir:655:19
	and r24, r15, r27
	.loc	1 657 19                        # parallel-rne.mlir:657:19
	setlt.u r4, r1, r24
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	bneq r4, zero, .LBB0_472
# %bb.471:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r15, 0
	j .LBB0_473
.LBB0_472:                              #   in Loop: Header=BB0_462 Depth=3
	or r23, r15, r28
.LBB0_473:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	and r9, r22, r27
	setlt.u r4, r1, r9
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	bneq r4, zero, .LBB0_475
# %bb.474:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r22, 0
	j .LBB0_476
.LBB0_475:                              #   in Loop: Header=BB0_462 Depth=3
	or r16, r22, r28
.LBB0_476:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	and r17, r21, r27
	setlt.u r4, r1, r17
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	bneq r4, zero, .LBB0_478
# %bb.477:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r21, 0
	j .LBB0_479
.LBB0_478:                              #   in Loop: Header=BB0_462 Depth=3
	or r11, r21, r28
.LBB0_479:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	and r18, r10, r27
	setlt.u r4, r1, r18
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	bneq r4, zero, .LBB0_481
# %bb.480:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r10, 0
	.loc	1 664 19 is_stmt 1              # parallel-rne.mlir:664:19
	setlt.u r4, r26, r18
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	beq r4, zero, .LBB0_482
	j .LBB0_483
.LBB0_481:                              #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r10, r28
	.loc	1 664 19 is_stmt 1              # parallel-rne.mlir:664:19
	setlt.u r4, r26, r18
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	bneq r4, zero, .LBB0_483
.LBB0_482:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r3
	and r8, r4, r14
.LBB0_483:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	setlt.u r4, r26, r17
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	beq r4, zero, .LBB0_486
# %bb.484:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r9
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	beq r4, zero, .LBB0_487
.LBB0_485:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r24
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	bneq r4, zero, .LBB0_461
	j .LBB0_488
.LBB0_486:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r3
	and r11, r4, r14
	setlt.u r4, r26, r9
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	bneq r4, zero, .LBB0_485
.LBB0_487:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r22, 16
	andi r4, r4, 1
	add.s r4, r22, r4
	add.s r4, r4, r3
	and r16, r4, r14
	setlt.u r4, r26, r24
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	bneq r4, zero, .LBB0_461
.LBB0_488:                              # %vector.body171
                                        #   in Loop: Header=BB0_462 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r15, 16
	andi r4, r4, 1
	add.s r4, r15, r4
	add.s r4, r4, r3
	and r23, r4, r14
	j .LBB0_461
.LBB0_489:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r5
	addli r18, zero, 4
	addli r2, zero, 1
	addli r16, zero, 128
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	mfence { sm }
	.loc	1 672 7                         # parallel-rne.mlir:672:7
	bneq r5, r2, .LBB0_452
.LBB0_490:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[8:9], r18
	mfence { lm, sm, gm }
	j .LBB0_492
.LBB0_491:                              # %middle.block169
                                        #   in Loop: Header=BB0_492 Depth=2
	.loc	1 679 9                         # parallel-rne.mlir:679:9
	addli r2, r30, -4176
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4192
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	addli.d r[8:9], r[4:5], 0
	addli r4, zero, 5
	beq r2, zero, .LBB0_521
.LBB0_492:                              # %.preheader64
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_494 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4192
	zext_int2long r[19:20], zero
	sll.d r[4:5], r[8:9], r4
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4120
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_494
.LBB0_493:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 680 11 is_stmt 1              # parallel-rne.mlir:680:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 713 13                        # parallel-rne.mlir:713:13
	stores.w r21, 12(r2)
	stores.w r16, 8(r2)
	stores.w r11, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 680 11                        # parallel-rne.mlir:680:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_491
.LBB0_494:                              # %vector.body163
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_492 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	addli r2, r30, -4120
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	loadli.w r10,  -4108(r30)               # 4-byte Folded Reload
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	add.ul r[4:5], r[19:20], r[4:5]
	slli r2, r4, 2
	loadli.w r4,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	loadli.w r5,  -4104(r30)                # 4-byte Folded Reload
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	add.s r17, r2, r10
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	add.s r4, r2, r4
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	add.s r5, r2, r5
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	loads.w r21, 12(r17)
	loads.w r11, 8(r17)
	loads.w r18, 4(r17)
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	loads.w r8, 0(r4)
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	loads.w r9, 0(r5)
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	loads.w r10, 4(r4)
	loads.w r15, 8(r4)
	loads.w r22, 12(r4)
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	loads.w r24, 4(r5)
	loads.w r23, 8(r5)
	loads.w r16, 12(r5)
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	and r4, r8, r27
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	and r5, r9, r27
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	seteq r8, r4, r1
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	seteq r12, r4, zero
	.loc	1 690 19                        # parallel-rne.mlir:690:19
	seteq r9, r5, zero
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	seteq r25, r5, r1
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	and r5, r8, r9
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	and r8, r12, r25
	lui r9, 523264
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	or r5, r5, r8
	lui r8, 523264
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	or r4, r4, r5
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r4, zero, .LBB0_496
# %bb.495:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r17)
.LBB0_496:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	and r4, r10, r27
	and r5, r24, r27
	seteq r10, r4, r1
	seteq r17, r4, zero
	seteq r12, r5, zero
	seteq r13, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r10, r12
	and r10, r17, r13
	or r5, r5, r10
	lui r10, 523264
	or r4, r4, r5
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r4, zero, .LBB0_498
# %bb.497:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r18, 0
.LBB0_498:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	and r4, r15, r27
	and r5, r23, r27
	seteq r12, r4, r1
	seteq r17, r4, zero
	seteq r13, r5, zero
	seteq r15, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r12, r13
	and r12, r17, r15
	lui r15, 523264
	or r5, r5, r12
	or r4, r4, r5
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r4, zero, .LBB0_500
# %bb.499:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r11, 0
.LBB0_500:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	and r5, r16, r27
	and r4, r22, r27
	seteq r11, r4, r1
	seteq r16, r4, zero
	seteq r12, r5, zero
	seteq r13, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r11, r12
	and r11, r16, r13
	or r5, r5, r11
	or r4, r4, r5
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r4, zero, .LBB0_502
# %bb.501:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r21, 0
.LBB0_502:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 701 19 is_stmt 1              # parallel-rne.mlir:701:19
	and r22, r8, r27
	.loc	1 703 19                        # parallel-rne.mlir:703:19
	setlt.u r4, r1, r22
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	bneq r4, zero, .LBB0_504
# %bb.503:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r8, 0
	j .LBB0_505
.LBB0_504:                              #   in Loop: Header=BB0_494 Depth=3
	or r21, r8, r28
.LBB0_505:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	and r24, r15, r27
	setlt.u r4, r1, r24
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	bneq r4, zero, .LBB0_507
# %bb.506:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_508
.LBB0_507:                              #   in Loop: Header=BB0_494 Depth=3
	or r16, r15, r28
.LBB0_508:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	and r17, r10, r27
	setlt.u r4, r1, r17
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	bneq r4, zero, .LBB0_510
# %bb.509:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_511
.LBB0_510:                              #   in Loop: Header=BB0_494 Depth=3
	or r11, r10, r28
.LBB0_511:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	and r18, r9, r27
	setlt.u r4, r1, r18
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	bneq r4, zero, .LBB0_513
# %bb.512:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r9, 0
	.loc	1 710 19 is_stmt 1              # parallel-rne.mlir:710:19
	setlt.u r4, r26, r18
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	beq r4, zero, .LBB0_514
	j .LBB0_515
.LBB0_513:                              #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r9, r28
	.loc	1 710 19 is_stmt 1              # parallel-rne.mlir:710:19
	setlt.u r4, r26, r18
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	bneq r4, zero, .LBB0_515
.LBB0_514:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r3
	and r23, r4, r14
.LBB0_515:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	setlt.u r4, r26, r17
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	beq r4, zero, .LBB0_518
# %bb.516:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r24
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	beq r4, zero, .LBB0_519
.LBB0_517:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r22
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	bneq r4, zero, .LBB0_493
	j .LBB0_520
.LBB0_518:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r3
	and r11, r4, r14
	setlt.u r4, r26, r24
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	bneq r4, zero, .LBB0_517
.LBB0_519:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r15, 16
	andi r4, r4, 1
	add.s r4, r15, r4
	add.s r4, r4, r3
	and r16, r4, r14
	setlt.u r4, r26, r22
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	bneq r4, zero, .LBB0_493
.LBB0_520:                              # %vector.body163
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r3
	and r21, r4, r14
	j .LBB0_493
.LBB0_521:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r5
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 672 7                         # parallel-rne.mlir:672:7
	mfence { sm }
	.loc	1 718 7                         # parallel-rne.mlir:718:7
	addli r2, zero, 2
	bneq r5, r2, .LBB0_453
.LBB0_522:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 718 7                         # parallel-rne.mlir:718:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_524
.LBB0_523:                              # %middle.block161
                                        #   in Loop: Header=BB0_524 Depth=2
	.loc	1 725 9 is_stmt 1               # parallel-rne.mlir:725:9
	addli r2, r30, -4168
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4176
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	addli.d r[8:9], r[4:5], 0
	addli r4, zero, 5
	beq r2, zero, .LBB0_553
.LBB0_524:                              # %.preheader63
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_526 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4176
	zext_int2long r[19:20], zero
	sll.d r[4:5], r[8:9], r4
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4120
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_526
.LBB0_525:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 726 11 is_stmt 1              # parallel-rne.mlir:726:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 759 13                        # parallel-rne.mlir:759:13
	stores.w r21, 12(r2)
	stores.w r16, 8(r2)
	stores.w r11, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 726 11                        # parallel-rne.mlir:726:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_523
.LBB0_526:                              # %vector.body155
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_524 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	addli r2, r30, -4120
	.loc	1 729 19                        # parallel-rne.mlir:729:19
	loadli.w r10,  -4108(r30)               # 4-byte Folded Reload
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	add.ul r[4:5], r[19:20], r[4:5]
	slli r2, r4, 2
	loadli.w r4,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 728 19                        # parallel-rne.mlir:728:19
	loadli.w r5,  -4104(r30)                # 4-byte Folded Reload
	.loc	1 729 19                        # parallel-rne.mlir:729:19
	add.s r17, r2, r10
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	add.s r4, r2, r4
	.loc	1 728 19                        # parallel-rne.mlir:728:19
	add.s r5, r2, r5
	.loc	1 729 19                        # parallel-rne.mlir:729:19
	loads.w r21, 12(r17)
	loads.w r11, 8(r17)
	loads.w r18, 4(r17)
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	loads.w r8, 0(r4)
	.loc	1 728 19                        # parallel-rne.mlir:728:19
	loads.w r9, 0(r5)
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	loads.w r10, 4(r4)
	loads.w r15, 8(r4)
	loads.w r22, 12(r4)
	.loc	1 728 19                        # parallel-rne.mlir:728:19
	loads.w r24, 4(r5)
	loads.w r23, 8(r5)
	loads.w r16, 12(r5)
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	and r4, r8, r27
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	and r5, r9, r27
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	seteq r8, r4, r1
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	seteq r12, r4, zero
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	seteq r9, r5, zero
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	seteq r25, r5, r1
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	and r5, r8, r9
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	and r8, r12, r25
	lui r9, 523264
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	or r5, r5, r8
	lui r8, 523264
	.loc	1 745 19                        # parallel-rne.mlir:745:19
	or r4, r4, r5
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	bneq r4, zero, .LBB0_528
# %bb.527:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r17)
.LBB0_528:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	and r4, r10, r27
	and r5, r24, r27
	seteq r10, r4, r1
	seteq r17, r4, zero
	seteq r12, r5, zero
	seteq r13, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r10, r12
	and r10, r17, r13
	or r5, r5, r10
	lui r10, 523264
	or r4, r4, r5
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	bneq r4, zero, .LBB0_530
# %bb.529:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r18, 0
.LBB0_530:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	and r4, r15, r27
	and r5, r23, r27
	seteq r12, r4, r1
	seteq r17, r4, zero
	seteq r13, r5, zero
	seteq r15, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r12, r13
	and r12, r17, r15
	lui r15, 523264
	or r5, r5, r12
	or r4, r4, r5
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	bneq r4, zero, .LBB0_532
# %bb.531:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r11, 0
.LBB0_532:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	and r5, r16, r27
	and r4, r22, r27
	seteq r11, r4, r1
	seteq r16, r4, zero
	seteq r12, r5, zero
	seteq r13, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r11, r12
	and r11, r16, r13
	or r5, r5, r11
	or r4, r4, r5
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	bneq r4, zero, .LBB0_534
# %bb.533:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r21, 0
.LBB0_534:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 747 19 is_stmt 1              # parallel-rne.mlir:747:19
	and r22, r8, r27
	.loc	1 749 19                        # parallel-rne.mlir:749:19
	setlt.u r4, r1, r22
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	bneq r4, zero, .LBB0_536
# %bb.535:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r8, 0
	j .LBB0_537
.LBB0_536:                              #   in Loop: Header=BB0_526 Depth=3
	or r21, r8, r28
.LBB0_537:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	and r24, r15, r27
	setlt.u r4, r1, r24
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	bneq r4, zero, .LBB0_539
# %bb.538:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_540
.LBB0_539:                              #   in Loop: Header=BB0_526 Depth=3
	or r16, r15, r28
.LBB0_540:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	and r17, r10, r27
	setlt.u r4, r1, r17
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	bneq r4, zero, .LBB0_542
# %bb.541:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_543
.LBB0_542:                              #   in Loop: Header=BB0_526 Depth=3
	or r11, r10, r28
.LBB0_543:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	and r18, r9, r27
	setlt.u r4, r1, r18
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	bneq r4, zero, .LBB0_545
# %bb.544:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r9, 0
	.loc	1 756 19 is_stmt 1              # parallel-rne.mlir:756:19
	setlt.u r4, r26, r18
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	beq r4, zero, .LBB0_546
	j .LBB0_547
.LBB0_545:                              #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r9, r28
	.loc	1 756 19 is_stmt 1              # parallel-rne.mlir:756:19
	setlt.u r4, r26, r18
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	bneq r4, zero, .LBB0_547
.LBB0_546:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r3
	and r23, r4, r14
.LBB0_547:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	setlt.u r4, r26, r17
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	beq r4, zero, .LBB0_550
# %bb.548:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r24
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	beq r4, zero, .LBB0_551
.LBB0_549:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r22
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	bneq r4, zero, .LBB0_525
	j .LBB0_552
.LBB0_550:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r3
	and r11, r4, r14
	setlt.u r4, r26, r24
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	bneq r4, zero, .LBB0_549
.LBB0_551:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r15, 16
	andi r4, r4, 1
	add.s r4, r15, r4
	add.s r4, r4, r3
	and r16, r4, r14
	setlt.u r4, r26, r22
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	bneq r4, zero, .LBB0_525
.LBB0_552:                              # %vector.body155
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r3
	and r21, r4, r14
	j .LBB0_525
.LBB0_553:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r5
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 718 7                         # parallel-rne.mlir:718:7
	mfence { sm }
	addli r2, zero, 3
	.loc	1 764 7                         # parallel-rne.mlir:764:7
	bneq r5, r2, .LBB0_454
.LBB0_554:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 764 7                         # parallel-rne.mlir:764:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_556
.LBB0_555:                              # %middle.block153
                                        #   in Loop: Header=BB0_556 Depth=2
	.loc	1 771 9 is_stmt 1               # parallel-rne.mlir:771:9
	addli r2, r30, -4160
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4168
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	addli.d r[8:9], r[4:5], 0
	addli r4, zero, 5
	beq r2, zero, .LBB0_585
.LBB0_556:                              # %.preheader62
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_558 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4168
	zext_int2long r[19:20], zero
	sll.d r[4:5], r[8:9], r4
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4120
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_558
.LBB0_557:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 772 11 is_stmt 1              # parallel-rne.mlir:772:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 805 13                        # parallel-rne.mlir:805:13
	stores.w r21, 12(r2)
	stores.w r16, 8(r2)
	stores.w r11, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 772 11                        # parallel-rne.mlir:772:11
	setneq.d r4, r[19:20], r[6:7]
	beq r4, zero, .LBB0_555
.LBB0_558:                              # %vector.body147
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_556 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	addli r2, r30, -4120
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	loadli.w r10,  -4108(r30)               # 4-byte Folded Reload
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	add.ul r[4:5], r[19:20], r[4:5]
	slli r2, r4, 2
	loadli.w r4,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	loadli.w r5,  -4104(r30)                # 4-byte Folded Reload
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	add.s r17, r2, r10
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	add.s r4, r2, r4
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	add.s r5, r2, r5
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	loads.w r21, 12(r17)
	loads.w r11, 8(r17)
	loads.w r18, 4(r17)
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	loads.w r8, 0(r4)
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	loads.w r9, 0(r5)
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	loads.w r10, 4(r4)
	loads.w r15, 8(r4)
	loads.w r22, 12(r4)
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	loads.w r24, 4(r5)
	loads.w r23, 8(r5)
	loads.w r16, 12(r5)
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	and r4, r8, r27
	.loc	1 778 19                        # parallel-rne.mlir:778:19
	and r5, r9, r27
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	seteq r8, r4, r1
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	seteq r12, r4, zero
	.loc	1 782 19                        # parallel-rne.mlir:782:19
	seteq r9, r5, zero
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	seteq r25, r5, r1
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	and r5, r8, r9
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	and r8, r12, r25
	lui r9, 523264
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	or r5, r5, r8
	lui r8, 523264
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	or r4, r4, r5
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	bneq r4, zero, .LBB0_560
# %bb.559:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r17)
.LBB0_560:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	and r4, r10, r27
	and r5, r24, r27
	seteq r10, r4, r1
	seteq r17, r4, zero
	seteq r12, r5, zero
	seteq r13, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r10, r12
	and r10, r17, r13
	or r5, r5, r10
	lui r10, 523264
	or r4, r4, r5
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	bneq r4, zero, .LBB0_562
# %bb.561:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r18, 0
.LBB0_562:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	and r4, r15, r27
	and r5, r23, r27
	seteq r12, r4, r1
	seteq r17, r4, zero
	seteq r13, r5, zero
	seteq r15, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r12, r13
	and r12, r17, r15
	lui r15, 523264
	or r5, r5, r12
	or r4, r4, r5
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	bneq r4, zero, .LBB0_564
# %bb.563:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r11, 0
.LBB0_564:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	and r5, r16, r27
	and r4, r22, r27
	seteq r11, r4, r1
	seteq r16, r4, zero
	seteq r12, r5, zero
	seteq r13, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r11, r12
	and r11, r16, r13
	or r5, r5, r11
	or r4, r4, r5
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	bneq r4, zero, .LBB0_566
# %bb.565:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r21, 0
.LBB0_566:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 793 19 is_stmt 1              # parallel-rne.mlir:793:19
	and r22, r8, r27
	.loc	1 795 19                        # parallel-rne.mlir:795:19
	setlt.u r4, r1, r22
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	bneq r4, zero, .LBB0_568
# %bb.567:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r8, 0
	j .LBB0_569
.LBB0_568:                              #   in Loop: Header=BB0_558 Depth=3
	or r21, r8, r28
.LBB0_569:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	and r24, r15, r27
	setlt.u r4, r1, r24
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	bneq r4, zero, .LBB0_571
# %bb.570:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_572
.LBB0_571:                              #   in Loop: Header=BB0_558 Depth=3
	or r16, r15, r28
.LBB0_572:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	and r17, r10, r27
	setlt.u r4, r1, r17
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	bneq r4, zero, .LBB0_574
# %bb.573:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_575
.LBB0_574:                              #   in Loop: Header=BB0_558 Depth=3
	or r11, r10, r28
.LBB0_575:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	and r18, r9, r27
	setlt.u r4, r1, r18
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	bneq r4, zero, .LBB0_577
# %bb.576:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r9, 0
	.loc	1 802 19 is_stmt 1              # parallel-rne.mlir:802:19
	setlt.u r4, r26, r18
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	beq r4, zero, .LBB0_578
	j .LBB0_579
.LBB0_577:                              #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r9, r28
	.loc	1 802 19 is_stmt 1              # parallel-rne.mlir:802:19
	setlt.u r4, r26, r18
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	bneq r4, zero, .LBB0_579
.LBB0_578:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r3
	and r23, r4, r14
.LBB0_579:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	setlt.u r4, r26, r17
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	beq r4, zero, .LBB0_582
# %bb.580:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r24
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	beq r4, zero, .LBB0_583
.LBB0_581:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r22
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	bneq r4, zero, .LBB0_557
	j .LBB0_584
.LBB0_582:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r3
	and r11, r4, r14
	setlt.u r4, r26, r24
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	bneq r4, zero, .LBB0_581
.LBB0_583:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r15, 16
	andi r4, r4, 1
	add.s r4, r15, r4
	add.s r4, r4, r3
	and r16, r4, r14
	setlt.u r4, r26, r22
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	bneq r4, zero, .LBB0_557
.LBB0_584:                              # %vector.body147
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r3
	and r21, r4, r14
	j .LBB0_557
.LBB0_585:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r5
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 764 7                         # parallel-rne.mlir:764:7
	mfence { sm }
	.loc	1 810 7                         # parallel-rne.mlir:810:7
	bneq r5, r18, .LBB0_455
.LBB0_586:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 810 7                         # parallel-rne.mlir:810:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_588
.LBB0_587:                              # %middle.block145
                                        #   in Loop: Header=BB0_588 Depth=2
	.loc	1 817 9 is_stmt 1               # parallel-rne.mlir:817:9
	addli r2, r30, -4152
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4160
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	addli.d r[8:9], r[4:5], 0
	addli r4, zero, 5
	beq r2, zero, .LBB0_617
.LBB0_588:                              # %.preheader61
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_590 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4160
	zext_int2long r[17:18], zero
	sll.d r[4:5], r[8:9], r4
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4120
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_590
.LBB0_589:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 818 11 is_stmt 1              # parallel-rne.mlir:818:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 851 13                        # parallel-rne.mlir:851:13
	stores.w r21, 12(r2)
	stores.w r16, 8(r2)
	stores.w r11, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 818 11                        # parallel-rne.mlir:818:11
	setneq.d r4, r[17:18], r[6:7]
	beq r4, zero, .LBB0_587
.LBB0_590:                              # %vector.body139
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_588 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	addli r2, r30, -4120
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	loadli.w r8,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	add.ul r[4:5], r[17:18], r[4:5]
	slli r2, r4, 2
	loadli.w r4,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 820 19                        # parallel-rne.mlir:820:19
	loadli.w r5,  -4104(r30)                # 4-byte Folded Reload
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	add.s r8, r2, r8
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	add.s r4, r2, r4
	.loc	1 820 19                        # parallel-rne.mlir:820:19
	add.s r5, r2, r5
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	loads.w r21, 12(r8)
	loads.w r11, 8(r8)
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	loads.w r9, 0(r4)
	.loc	1 820 19                        # parallel-rne.mlir:820:19
	loads.w r10, 0(r5)
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	loads.w r19, 4(r4)
	loads.w r20, 8(r4)
	loads.w r22, 12(r4)
	.loc	1 820 19                        # parallel-rne.mlir:820:19
	loads.w r24, 4(r5)
	loads.w r23, 8(r5)
	loads.w r16, 12(r5)
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	and r4, r9, r27
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	and r5, r10, r27
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	loads.w r9, 4(r8)
	.loc	1 827 19                        # parallel-rne.mlir:827:19
	seteq r10, r4, r1
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	seteq r12, r4, zero
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	seteq r15, r5, zero
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	seteq r25, r5, r1
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	and r5, r10, r15
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	and r10, r12, r25
	lui r15, 523264
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	or r5, r5, r10
	lui r10, 523264
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	or r4, r4, r5
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r4, zero, .LBB0_592
# %bb.591:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r8)
.LBB0_592:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	and r4, r19, r27
	and r5, r24, r27
	seteq r8, r4, r1
	seteq r19, r4, zero
	seteq r12, r5, zero
	seteq r13, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r12
	and r8, r19, r13
	lui r19, 523264
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r4, zero, .LBB0_594
# %bb.593:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r9, 0
.LBB0_594:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	and r4, r20, r27
	and r5, r23, r27
	lui r20, 523264
	seteq r8, r4, r1
	seteq r13, r4, zero
	seteq r9, r5, zero
	seteq r12, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r9
	and r8, r13, r12
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r4, zero, .LBB0_596
# %bb.595:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
.LBB0_596:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	and r4, r22, r27
	and r5, r16, r27
	seteq r8, r4, r1
	seteq r12, r4, zero
	seteq r9, r5, zero
	seteq r11, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r9
	and r8, r12, r11
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	bneq r4, zero, .LBB0_598
# %bb.597:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
.LBB0_598:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 839 19 is_stmt 1              # parallel-rne.mlir:839:19
	and r22, r15, r27
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	setlt.u r4, r1, r22
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	bneq r4, zero, .LBB0_600
# %bb.599:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r15, 0
	j .LBB0_601
.LBB0_600:                              #   in Loop: Header=BB0_590 Depth=3
	or r21, r15, r28
.LBB0_601:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	and r24, r20, r27
	setlt.u r4, r1, r24
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	bneq r4, zero, .LBB0_603
# %bb.602:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r20, 0
	j .LBB0_604
.LBB0_603:                              #   in Loop: Header=BB0_590 Depth=3
	or r16, r20, r28
.LBB0_604:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	and r8, r19, r27
	setlt.u r4, r1, r8
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	bneq r4, zero, .LBB0_606
# %bb.605:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_607
.LBB0_606:                              #   in Loop: Header=BB0_590 Depth=3
	or r11, r19, r28
.LBB0_607:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	and r9, r10, r27
	setlt.u r4, r1, r9
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	bneq r4, zero, .LBB0_609
# %bb.608:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r10, 0
	.loc	1 848 19 is_stmt 1              # parallel-rne.mlir:848:19
	setlt.u r4, r26, r9
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	beq r4, zero, .LBB0_610
	j .LBB0_611
.LBB0_609:                              #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r10, r28
	.loc	1 848 19 is_stmt 1              # parallel-rne.mlir:848:19
	setlt.u r4, r26, r9
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	bneq r4, zero, .LBB0_611
.LBB0_610:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r3
	and r23, r4, r14
.LBB0_611:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	setlt.u r4, r26, r8
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	beq r4, zero, .LBB0_614
# %bb.612:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r24
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	beq r4, zero, .LBB0_615
.LBB0_613:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r22
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	bneq r4, zero, .LBB0_589
	j .LBB0_616
.LBB0_614:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r3
	and r11, r4, r14
	setlt.u r4, r26, r24
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	bneq r4, zero, .LBB0_613
.LBB0_615:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r3
	and r16, r4, r14
	setlt.u r4, r26, r22
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	bneq r4, zero, .LBB0_589
.LBB0_616:                              # %vector.body139
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r15, 16
	andi r4, r4, 1
	add.s r4, r15, r4
	add.s r4, r4, r3
	and r21, r4, r14
	j .LBB0_589
.LBB0_617:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r5
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 810 7                         # parallel-rne.mlir:810:7
	mfence { sm }
	.loc	1 856 7                         # parallel-rne.mlir:856:7
	bneq r5, r4, .LBB0_456
.LBB0_618:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 856 7                         # parallel-rne.mlir:856:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_620
.LBB0_619:                              # %middle.block137
                                        #   in Loop: Header=BB0_620 Depth=2
	.loc	1 863 9 is_stmt 1               # parallel-rne.mlir:863:9
	addli r2, r30, -4144
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4152
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	addli.d r[8:9], r[4:5], 0
	addli r4, zero, 5
	beq r2, zero, .LBB0_649
.LBB0_620:                              # %.preheader60
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_622 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4152
	zext_int2long r[17:18], zero
	sll.d r[4:5], r[8:9], r4
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4120
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_622
.LBB0_621:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 864 11 is_stmt 1              # parallel-rne.mlir:864:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 897 13                        # parallel-rne.mlir:897:13
	stores.w r21, 12(r2)
	stores.w r16, 8(r2)
	stores.w r11, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 864 11                        # parallel-rne.mlir:864:11
	setneq.d r4, r[17:18], r[6:7]
	beq r4, zero, .LBB0_619
.LBB0_622:                              # %vector.body131
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_620 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	addli r2, r30, -4120
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	loadli.w r8,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	add.ul r[4:5], r[17:18], r[4:5]
	slli r2, r4, 2
	loadli.w r4,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	loadli.w r5,  -4104(r30)                # 4-byte Folded Reload
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	add.s r8, r2, r8
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	add.s r4, r2, r4
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	add.s r5, r2, r5
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	loads.w r21, 12(r8)
	loads.w r11, 8(r8)
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	loads.w r9, 0(r4)
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	loads.w r10, 0(r5)
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	loads.w r19, 4(r4)
	loads.w r20, 8(r4)
	loads.w r22, 12(r4)
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	loads.w r24, 4(r5)
	loads.w r23, 8(r5)
	loads.w r16, 12(r5)
	.loc	1 872 19                        # parallel-rne.mlir:872:19
	and r4, r9, r27
	.loc	1 870 19                        # parallel-rne.mlir:870:19
	and r5, r10, r27
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	loads.w r9, 4(r8)
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	seteq r10, r4, r1
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	seteq r12, r4, zero
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	seteq r15, r5, zero
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	seteq r25, r5, r1
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	and r5, r10, r15
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	and r10, r12, r25
	lui r15, 523264
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	or r5, r5, r10
	lui r10, 523264
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	or r4, r4, r5
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	bneq r4, zero, .LBB0_624
# %bb.623:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r8)
.LBB0_624:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	and r4, r19, r27
	and r5, r24, r27
	seteq r8, r4, r1
	seteq r19, r4, zero
	seteq r12, r5, zero
	seteq r13, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r12
	and r8, r19, r13
	lui r19, 523264
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	bneq r4, zero, .LBB0_626
# %bb.625:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r9, 0
.LBB0_626:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	and r4, r20, r27
	and r5, r23, r27
	lui r20, 523264
	seteq r8, r4, r1
	seteq r13, r4, zero
	seteq r9, r5, zero
	seteq r12, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r9
	and r8, r13, r12
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	bneq r4, zero, .LBB0_628
# %bb.627:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
.LBB0_628:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	and r4, r22, r27
	and r5, r16, r27
	seteq r8, r4, r1
	seteq r12, r4, zero
	seteq r9, r5, zero
	seteq r11, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r9
	and r8, r12, r11
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	bneq r4, zero, .LBB0_630
# %bb.629:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
.LBB0_630:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 885 19 is_stmt 1              # parallel-rne.mlir:885:19
	and r22, r15, r27
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	setlt.u r4, r1, r22
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r4, zero, .LBB0_632
# %bb.631:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r15, 0
	j .LBB0_633
.LBB0_632:                              #   in Loop: Header=BB0_622 Depth=3
	or r21, r15, r28
.LBB0_633:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	and r24, r20, r27
	setlt.u r4, r1, r24
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r4, zero, .LBB0_635
# %bb.634:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r20, 0
	j .LBB0_636
.LBB0_635:                              #   in Loop: Header=BB0_622 Depth=3
	or r16, r20, r28
.LBB0_636:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	and r8, r19, r27
	setlt.u r4, r1, r8
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r4, zero, .LBB0_638
# %bb.637:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_639
.LBB0_638:                              #   in Loop: Header=BB0_622 Depth=3
	or r11, r19, r28
.LBB0_639:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	and r9, r10, r27
	setlt.u r4, r1, r9
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r4, zero, .LBB0_641
# %bb.640:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r10, 0
	.loc	1 894 19 is_stmt 1              # parallel-rne.mlir:894:19
	setlt.u r4, r26, r9
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	beq r4, zero, .LBB0_642
	j .LBB0_643
.LBB0_641:                              #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r10, r28
	.loc	1 894 19 is_stmt 1              # parallel-rne.mlir:894:19
	setlt.u r4, r26, r9
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	bneq r4, zero, .LBB0_643
.LBB0_642:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r3
	and r23, r4, r14
.LBB0_643:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	setlt.u r4, r26, r8
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	beq r4, zero, .LBB0_646
# %bb.644:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r24
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	beq r4, zero, .LBB0_647
.LBB0_645:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r22
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	bneq r4, zero, .LBB0_621
	j .LBB0_648
.LBB0_646:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r3
	and r11, r4, r14
	setlt.u r4, r26, r24
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	bneq r4, zero, .LBB0_645
.LBB0_647:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r3
	and r16, r4, r14
	setlt.u r4, r26, r22
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	bneq r4, zero, .LBB0_621
.LBB0_648:                              # %vector.body131
                                        #   in Loop: Header=BB0_622 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r15, 16
	andi r4, r4, 1
	add.s r4, r15, r4
	add.s r4, r4, r3
	and r21, r4, r14
	j .LBB0_621
.LBB0_649:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r5
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 856 7                         # parallel-rne.mlir:856:7
	mfence { sm }
	.loc	1 902 7                         # parallel-rne.mlir:902:7
	addli r2, zero, 6
	bneq r5, r2, .LBB0_457
.LBB0_650:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 902 7                         # parallel-rne.mlir:902:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_652
.LBB0_651:                              # %middle.block129
                                        #   in Loop: Header=BB0_652 Depth=2
	.loc	1 909 9 is_stmt 1               # parallel-rne.mlir:909:9
	addli r2, r30, -4136
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4144
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	addli.d r[8:9], r[4:5], 0
	addli r4, zero, 5
	beq r2, zero, .LBB0_681
.LBB0_652:                              # %.preheader59
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_654 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4144
	zext_int2long r[17:18], zero
	sll.d r[4:5], r[8:9], r4
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4120
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_654
.LBB0_653:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 910 11 is_stmt 1              # parallel-rne.mlir:910:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 943 13                        # parallel-rne.mlir:943:13
	stores.w r21, 12(r2)
	stores.w r16, 8(r2)
	stores.w r11, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 910 11                        # parallel-rne.mlir:910:11
	setneq.d r4, r[17:18], r[6:7]
	beq r4, zero, .LBB0_651
.LBB0_654:                              # %vector.body123
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_652 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	addli r2, r30, -4120
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	loadli.w r8,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	add.ul r[4:5], r[17:18], r[4:5]
	slli r2, r4, 2
	loadli.w r4,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	loadli.w r5,  -4104(r30)                # 4-byte Folded Reload
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	add.s r8, r2, r8
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	add.s r4, r2, r4
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	add.s r5, r2, r5
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	loads.w r21, 12(r8)
	loads.w r11, 8(r8)
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	loads.w r9, 0(r4)
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	loads.w r10, 0(r5)
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	loads.w r19, 4(r4)
	loads.w r20, 8(r4)
	loads.w r22, 12(r4)
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	loads.w r24, 4(r5)
	loads.w r23, 8(r5)
	loads.w r16, 12(r5)
	.loc	1 918 19                        # parallel-rne.mlir:918:19
	and r4, r9, r27
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	and r5, r10, r27
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	loads.w r9, 4(r8)
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	seteq r10, r4, r1
	.loc	1 923 19                        # parallel-rne.mlir:923:19
	seteq r12, r4, zero
	.loc	1 920 19                        # parallel-rne.mlir:920:19
	seteq r15, r5, zero
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	seteq r25, r5, r1
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	and r5, r10, r15
	.loc	1 924 19                        # parallel-rne.mlir:924:19
	and r10, r12, r25
	lui r15, 523264
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	or r5, r5, r10
	lui r10, 523264
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	or r4, r4, r5
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r4, zero, .LBB0_656
# %bb.655:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r8)
.LBB0_656:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	and r4, r19, r27
	and r5, r24, r27
	seteq r8, r4, r1
	seteq r19, r4, zero
	seteq r12, r5, zero
	seteq r13, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r12
	and r8, r19, r13
	lui r19, 523264
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r4, zero, .LBB0_658
# %bb.657:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r9, 0
.LBB0_658:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	and r4, r20, r27
	and r5, r23, r27
	lui r20, 523264
	seteq r8, r4, r1
	seteq r13, r4, zero
	seteq r9, r5, zero
	seteq r12, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r9
	and r8, r13, r12
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r4, zero, .LBB0_660
# %bb.659:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
.LBB0_660:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	and r4, r22, r27
	and r5, r16, r27
	seteq r8, r4, r1
	seteq r12, r4, zero
	seteq r9, r5, zero
	seteq r11, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r9
	and r8, r12, r11
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r4, zero, .LBB0_662
# %bb.661:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
.LBB0_662:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 931 19 is_stmt 1              # parallel-rne.mlir:931:19
	and r22, r15, r27
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	setlt.u r4, r1, r22
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	bneq r4, zero, .LBB0_664
# %bb.663:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r15, 0
	j .LBB0_665
.LBB0_664:                              #   in Loop: Header=BB0_654 Depth=3
	or r21, r15, r28
.LBB0_665:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	and r24, r20, r27
	setlt.u r4, r1, r24
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	bneq r4, zero, .LBB0_667
# %bb.666:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r20, 0
	j .LBB0_668
.LBB0_667:                              #   in Loop: Header=BB0_654 Depth=3
	or r16, r20, r28
.LBB0_668:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	and r8, r19, r27
	setlt.u r4, r1, r8
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	bneq r4, zero, .LBB0_670
# %bb.669:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_671
.LBB0_670:                              #   in Loop: Header=BB0_654 Depth=3
	or r11, r19, r28
.LBB0_671:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	and r9, r10, r27
	setlt.u r4, r1, r9
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	bneq r4, zero, .LBB0_673
# %bb.672:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r10, 0
	.loc	1 940 19 is_stmt 1              # parallel-rne.mlir:940:19
	setlt.u r4, r26, r9
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	beq r4, zero, .LBB0_674
	j .LBB0_675
.LBB0_673:                              #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r10, r28
	.loc	1 940 19 is_stmt 1              # parallel-rne.mlir:940:19
	setlt.u r4, r26, r9
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_675
.LBB0_674:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r3
	and r23, r4, r14
.LBB0_675:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	setlt.u r4, r26, r8
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	beq r4, zero, .LBB0_678
# %bb.676:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r24
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	beq r4, zero, .LBB0_679
.LBB0_677:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r22
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_653
	j .LBB0_680
.LBB0_678:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r3
	and r11, r4, r14
	setlt.u r4, r26, r24
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_677
.LBB0_679:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r3
	and r16, r4, r14
	setlt.u r4, r26, r22
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_653
.LBB0_680:                              # %vector.body123
                                        #   in Loop: Header=BB0_654 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r15, 16
	andi r4, r4, 1
	add.s r4, r15, r4
	add.s r4, r4, r3
	and r21, r4, r14
	j .LBB0_653
.LBB0_681:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r5
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 902 7                         # parallel-rne.mlir:902:7
	mfence { sm }
	.loc	1 948 7                         # parallel-rne.mlir:948:7
	addli r2, zero, 7
	bneq r5, r2, .LBB0_714
.LBB0_682:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 948 7                         # parallel-rne.mlir:948:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_684
.LBB0_683:                              # %middle.block
                                        #   in Loop: Header=BB0_684 Depth=2
	.loc	1 955 9 is_stmt 1               # parallel-rne.mlir:955:9
	addli r2, r30, -4128
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -4136
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	addli.d r[8:9], r[4:5], 0
	addli r4, zero, 5
	beq r2, zero, .LBB0_713
.LBB0_684:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_686 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -4136
	zext_int2long r[17:18], zero
	sll.d r[4:5], r[8:9], r4
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4120
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_686
.LBB0_685:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 956 11 is_stmt 1              # parallel-rne.mlir:956:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 989 13                        # parallel-rne.mlir:989:13
	stores.w r21, 12(r2)
	stores.w r16, 8(r2)
	stores.w r11, 4(r2)
	stores.w r23, 0(r2)
	.loc	1 956 11                        # parallel-rne.mlir:956:11
	setneq.d r4, r[17:18], r[6:7]
	beq r4, zero, .LBB0_683
.LBB0_686:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_684 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	addli r2, r30, -4120
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	loadli.w r8,  -4108(r30)                # 4-byte Folded Reload
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	add.ul r[4:5], r[17:18], r[4:5]
	slli r2, r4, 2
	loadli.w r4,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 958 19                        # parallel-rne.mlir:958:19
	loadli.w r5,  -4104(r30)                # 4-byte Folded Reload
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	add.s r8, r2, r8
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	add.s r4, r2, r4
	.loc	1 958 19                        # parallel-rne.mlir:958:19
	add.s r5, r2, r5
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	loads.w r21, 12(r8)
	loads.w r11, 8(r8)
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	loads.w r9, 0(r4)
	.loc	1 958 19                        # parallel-rne.mlir:958:19
	loads.w r10, 0(r5)
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	loads.w r19, 4(r4)
	loads.w r20, 8(r4)
	loads.w r22, 12(r4)
	.loc	1 958 19                        # parallel-rne.mlir:958:19
	loads.w r24, 4(r5)
	loads.w r23, 8(r5)
	loads.w r16, 12(r5)
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	and r4, r9, r27
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	and r5, r10, r27
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	loads.w r9, 4(r8)
	.loc	1 965 19                        # parallel-rne.mlir:965:19
	seteq r10, r4, r1
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	seteq r12, r4, zero
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	seteq r15, r5, zero
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	seteq r25, r5, r1
	.loc	1 974 19                        # parallel-rne.mlir:974:19
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	and r5, r10, r15
	.loc	1 970 19                        # parallel-rne.mlir:970:19
	and r10, r12, r25
	lui r15, 523264
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	or r5, r5, r10
	lui r10, 523264
	.loc	1 975 19                        # parallel-rne.mlir:975:19
	or r4, r4, r5
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	bneq r4, zero, .LBB0_688
# %bb.687:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r8)
.LBB0_688:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	and r4, r19, r27
	and r5, r24, r27
	seteq r8, r4, r1
	seteq r19, r4, zero
	seteq r12, r5, zero
	seteq r13, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r12
	and r8, r19, r13
	lui r19, 523264
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	bneq r4, zero, .LBB0_690
# %bb.689:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r9, 0
.LBB0_690:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	and r4, r20, r27
	and r5, r23, r27
	lui r20, 523264
	seteq r8, r4, r1
	seteq r13, r4, zero
	seteq r9, r5, zero
	seteq r12, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r9
	and r8, r13, r12
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	bneq r4, zero, .LBB0_692
# %bb.691:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
.LBB0_692:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	and r4, r22, r27
	and r5, r16, r27
	seteq r8, r4, r1
	seteq r12, r4, zero
	seteq r9, r5, zero
	seteq r11, r5, r1
	max.u r4, r4, r5
	setlt.u r4, r1, r4
	and r5, r8, r9
	and r8, r12, r11
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	bneq r4, zero, .LBB0_694
# %bb.693:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
.LBB0_694:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 977 19 is_stmt 1              # parallel-rne.mlir:977:19
	and r22, r15, r27
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	setlt.u r4, r1, r22
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r4, zero, .LBB0_696
# %bb.695:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r15, 0
	j .LBB0_697
.LBB0_696:                              #   in Loop: Header=BB0_686 Depth=3
	or r21, r15, r28
.LBB0_697:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	and r24, r20, r27
	setlt.u r4, r1, r24
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r4, zero, .LBB0_699
# %bb.698:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r20, 0
	j .LBB0_700
.LBB0_699:                              #   in Loop: Header=BB0_686 Depth=3
	or r16, r20, r28
.LBB0_700:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	and r8, r19, r27
	setlt.u r4, r1, r8
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r4, zero, .LBB0_702
# %bb.701:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r19, 0
	j .LBB0_703
.LBB0_702:                              #   in Loop: Header=BB0_686 Depth=3
	or r11, r19, r28
.LBB0_703:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	and r9, r10, r27
	setlt.u r4, r1, r9
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r4, zero, .LBB0_705
# %bb.704:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r10, 0
	.loc	1 986 19 is_stmt 1              # parallel-rne.mlir:986:19
	setlt.u r4, r26, r9
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	beq r4, zero, .LBB0_706
	j .LBB0_707
.LBB0_705:                              #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r23, r10, r28
	.loc	1 986 19 is_stmt 1              # parallel-rne.mlir:986:19
	setlt.u r4, r26, r9
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r4, zero, .LBB0_707
.LBB0_706:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r3
	and r23, r4, r14
.LBB0_707:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	setlt.u r4, r26, r8
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	beq r4, zero, .LBB0_710
# %bb.708:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r24
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	beq r4, zero, .LBB0_711
.LBB0_709:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r22
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r4, zero, .LBB0_685
	j .LBB0_712
.LBB0_710:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r3
	and r11, r4, r14
	setlt.u r4, r26, r24
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r4, zero, .LBB0_709
.LBB0_711:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r3
	and r16, r4, r14
	setlt.u r4, r26, r22
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	bneq r4, zero, .LBB0_685
.LBB0_712:                              # %vector.body
                                        #   in Loop: Header=BB0_686 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r15, 16
	andi r4, r4, 1
	add.s r4, r15, r4
	add.s r4, r4, r3
	and r21, r4, r14
	j .LBB0_685
.LBB0_713:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r5
	addli r18, zero, 4
	addli r16, zero, 128
	.loc	1 948 7                         # parallel-rne.mlir:948:7
	mfence { sm }
.LBB0_714:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 994 7                         # parallel-rne.mlir:994:7
	addli r2, zero, 255
	addli r11, zero, 1
	csr_set csr5, r2
	.loc	1 995 7                         # parallel-rne.mlir:995:7
	addli r2, zero, 3
	.loc	1 994 7                         # parallel-rne.mlir:994:7
	sync_core
	.loc	1 995 7                         # parallel-rne.mlir:995:7
	beq r5, r2, .LBB0_5
# %bb.715:                              # %.critedge19
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1006 7                        # parallel-rne.mlir:1006:7
	bneq r5, zero, .LBB0_6
# %bb.716:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -4244(r30)                # 4-byte Folded Reload
	.loc	1 1006 7                        # parallel-rne.mlir:1006:7
	addli r10, r30, -4240
	addli r15, r30, -4184
	addli r13, zero, 15
	addli r12, zero, 16
	load.d r[19:20], 24(r30)
	addli r2, zero, 5
	load.d r[8:9], 0(r10)                   # 8-byte Folded Reload
	load.d r[10:11], 0(r15)                 # 8-byte Folded Reload
	xwait r13, 0
	addli r13, r30, -4224
	sext_int2long r[4:5], r4
	min.sl r[10:11], r[4:5], r[10:11]
	sll.d r[8:9], r[8:9], r12
	addli.d r[10:11], r[10:11], 32
	add.ul r[8:9], r[19:20], r[8:9]
	load.d r[19:20], 0(r13)                 # 8-byte Folded Reload
	lock zero, r2
	addli r2, r30, -4232
	max.sl r[10:11], r[10:11], r[4:5]
	add.ul r[8:9], r[8:9], r[19:20]
	sub.sl r[4:5], r[10:11], r[4:5]
	addli r10, zero, 1
	addli r11, zero, 64
	dma_cfg r10, r10, zero, 0
	.loc	1 1002 13 is_stmt 1             # parallel-rne.mlir:1002:13
	min.sl r[4:5], r[4:5], r[6:7]
	.loc	1 1006 7                        # parallel-rne.mlir:1006:7
	dma_cfg zero, r10, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r11, r11, 3
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r8, 31
	slli r6, r8, 1
	srli r2, r2, 5
	dma_cfg r11, r16, r2, 4
	andi r2, r6, 62
	addli r6, zero, 2048
	addli r11, zero, 1
	dma_cfg r6, r16, r4, 5
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r5
	addli r4, zero, 5
	.loc	1 1006 7                        # parallel-rne.mlir:1006:7
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r12, 0
	j .LBB0_6
.LBB0_717:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1
	addli r16, zero, 128
	.loc	1 376 7 is_stmt 1               # parallel-rne.mlir:376:7
	j .LBB0_246
.LBB0_718:                              # %._crit_edge
	.loc	1 1008 5                        # parallel-rne.mlir:1008:5
	xsignal zero, 0
	bneq r5, zero, .LBB0_720
# %bb.719:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1008 5                        # parallel-rne.mlir:1008:5
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
.LBB0_720:
	.loc	1 1009 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1009:5
	addli sp, sp, 4272
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
	.long	4336                            # 0x10f0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-xwxxkeps" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
