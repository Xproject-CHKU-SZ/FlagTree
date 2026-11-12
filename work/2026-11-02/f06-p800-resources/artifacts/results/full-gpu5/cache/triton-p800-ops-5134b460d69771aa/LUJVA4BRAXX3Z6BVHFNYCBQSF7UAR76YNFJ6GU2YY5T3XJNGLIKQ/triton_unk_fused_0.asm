	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-xoty61fb" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4368
	addli r2, zero, 1
.Ltmp0:
	.loc	1 41 5 prologue_end             # parallel-rne.mlir:41:5
	core_id r13
	addli r30, sp, 4304
	xsignal_mode_cfg r2
	beq r13, zero, .LBB0_2
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
	addli r2, zero, 21
	sync_group
	xsignal r2, 0
	addli r2, zero, 11
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
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	addli r3, zero, 9
	addli r4, zero, 7
	addli r2, zero, 23
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
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
	addli r2, zero, 41
	addli r3, zero, 29
	xsignal r2, 0
	addli r2, zero, 34
	xsignal r3, 0
	xsignal r1, 0
	addli r1, zero, 36
	xsignal r2, 0
	addli r2, zero, 38
	xsignal r1, 0
	addli r1, zero, 44
	xsignal r2, 0
	addli r2, zero, 46
	xsignal r1, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 43 10 is_stmt 1               # parallel-rne.mlir:43:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -1024(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -2048(r30)
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	mul.s r1, r2, r1
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	mul.s r3, r1, r3
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	addli r2, r2, -1
	.loc	1 48 10                         # parallel-rne.mlir:48:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 54 11                         # parallel-rne.mlir:54:11
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
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r4, -3040(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
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
	.loc	1 55 11                         # parallel-rne.mlir:55:11
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
	.loc	1 56 11                         # parallel-rne.mlir:56:11
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
	storeli.w zero, -3068(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
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
	storeli.w r4, -1964(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r4, -2052(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -4092(r30)
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
	storeli.w r4, -3072(r30)
	.loc	1 49 10                         # parallel-rne.mlir:49:10
	mul.s r1, r2, r6
	.loc	1 50 10                         # parallel-rne.mlir:50:10
	fmac.s r2, r2, r6
	.loc	1 51 10                         # parallel-rne.mlir:51:10
	min.s r3, r2, r3
	.loc	1 58 5                          # parallel-rne.mlir:58:5
	ble.s r3, r1, .LBB0_1259
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 52 11 is_stmt 1               # parallel-rne.mlir:52:11
	addli r4, r30, -4280
	addli r5, r30, -4288
	addli r6, zero, 4
	lui r12, 522240
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	addli r2, zero, 2047
	lui r1, 1048572
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	lui r1, 524287
	lui r2, 7
	ori r27, r2, 4095
	ori r21, r1, 4095
	lui r1, 522239
	lui r2, 384
	ori r23, r1, 4095
	ori r1, r2, 2176
	lui r2, 387
	storeli.w r27, -4124(r30)               # 4-byte Folded Spill
	storeli.w r1, -4096(r30)                # 4-byte Folded Spill
	lui r1, 386
	ori r1, r1, 2176
	storeli.w r1, -4108(r30)                # 4-byte Folded Spill
	ori r1, r2, 2176
	lui r2, 2047
	storeli.w r1, -4112(r30)                # 4-byte Folded Spill
	lui r1, 388
	ori r28, r2, 4095
	lui r2, 385
	ori r22, r1, 2176
	lui r1, 389
	ori r1, r1, 2176
	storeli.w r22, -4212(r30)               # 4-byte Folded Spill
	storeli.w r1, -4100(r30)                # 4-byte Folded Spill
	ori r1, r2, 2176
	lui r2, 56
	storeli.w r1, -4116(r30)                # 4-byte Folded Spill
	lui r1, 390
	ori r1, r1, 2176
	storeli.w r1, -4120(r30)                # 4-byte Folded Spill
	ori r1, r2, 2115
	lui r2, 259268
	storeli.w r1, -4292(r30)                # 4-byte Folded Spill
	lui r1, 250738
	ori r1, r1, 1811
	storeli.w r1, -4296(r30)                # 4-byte Folded Spill
	ori r1, r2, 554
	storeli.w r1, -4300(r30)                # 4-byte Folded Spill
	lui r1, 383
	ori r1, r1, 2176
	storeli.w r1, -4104(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge48.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1836 7                        # parallel-rne.mlir:1836:7
	addli r1, zero, 20
	xsignal r1, 0
	.loc	1 1837 7                        # parallel-rne.mlir:1837:7
	addli r1, zero, 32
	xsignal r1, 0
	.loc	1 1838 7                        # parallel-rne.mlir:1838:7
	addli r1, zero, 44
	xsignal r1, 0
	.loc	1 1839 7                        # parallel-rne.mlir:1839:7
	addli r1, zero, 46
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -4240
	.loc	1 58 5 is_stmt 1                # parallel-rne.mlir:58:5
	addli r5, r30, -4280
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	addli.d r[3:4], r[3:4], 1
	setlt.sl r1, r[3:4], r[1:2]
	beq r1, zero, .LBB0_1259
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_43 Depth 3
                                        #     Child Loop BB0_66 Depth 2
                                        #       Child Loop BB0_68 Depth 3
                                        #     Child Loop BB0_91 Depth 2
                                        #       Child Loop BB0_93 Depth 3
                                        #     Child Loop BB0_116 Depth 2
                                        #       Child Loop BB0_118 Depth 3
                                        #     Child Loop BB0_141 Depth 2
                                        #       Child Loop BB0_143 Depth 3
                                        #     Child Loop BB0_166 Depth 2
                                        #       Child Loop BB0_168 Depth 3
                                        #     Child Loop BB0_191 Depth 2
                                        #       Child Loop BB0_193 Depth 3
                                        #     Child Loop BB0_216 Depth 2
                                        #       Child Loop BB0_218 Depth 3
                                        #     Child Loop BB0_1257 Depth 2
                                        #     Child Loop BB0_253 Depth 2
                                        #       Child Loop BB0_255 Depth 3
                                        #     Child Loop BB0_277 Depth 2
                                        #       Child Loop BB0_279 Depth 3
                                        #     Child Loop BB0_301 Depth 2
                                        #       Child Loop BB0_303 Depth 3
                                        #     Child Loop BB0_325 Depth 2
                                        #       Child Loop BB0_327 Depth 3
                                        #     Child Loop BB0_349 Depth 2
                                        #       Child Loop BB0_351 Depth 3
                                        #     Child Loop BB0_373 Depth 2
                                        #       Child Loop BB0_375 Depth 3
                                        #     Child Loop BB0_397 Depth 2
                                        #       Child Loop BB0_399 Depth 3
                                        #     Child Loop BB0_421 Depth 2
                                        #       Child Loop BB0_423 Depth 3
                                        #     Child Loop BB0_457 Depth 2
                                        #       Child Loop BB0_459 Depth 3
                                        #     Child Loop BB0_470 Depth 2
                                        #       Child Loop BB0_472 Depth 3
                                        #     Child Loop BB0_483 Depth 2
                                        #       Child Loop BB0_485 Depth 3
                                        #     Child Loop BB0_496 Depth 2
                                        #       Child Loop BB0_498 Depth 3
                                        #     Child Loop BB0_509 Depth 2
                                        #       Child Loop BB0_511 Depth 3
                                        #     Child Loop BB0_522 Depth 2
                                        #       Child Loop BB0_524 Depth 3
                                        #     Child Loop BB0_535 Depth 2
                                        #       Child Loop BB0_537 Depth 3
                                        #     Child Loop BB0_548 Depth 2
                                        #       Child Loop BB0_550 Depth 3
                                        #     Child Loop BB0_566 Depth 2
                                        #       Child Loop BB0_567 Depth 3
                                        #     Child Loop BB0_571 Depth 2
                                        #       Child Loop BB0_572 Depth 3
                                        #     Child Loop BB0_582 Depth 2
                                        #       Child Loop BB0_583 Depth 3
                                        #     Child Loop BB0_587 Depth 2
                                        #       Child Loop BB0_588 Depth 3
                                        #     Child Loop BB0_592 Depth 2
                                        #       Child Loop BB0_593 Depth 3
                                        #     Child Loop BB0_597 Depth 2
                                        #       Child Loop BB0_598 Depth 3
                                        #     Child Loop BB0_602 Depth 2
                                        #       Child Loop BB0_603 Depth 3
                                        #     Child Loop BB0_607 Depth 2
                                        #       Child Loop BB0_608 Depth 3
                                        #     Child Loop BB0_623 Depth 2
                                        #       Child Loop BB0_625 Depth 3
                                        #     Child Loop BB0_644 Depth 2
                                        #       Child Loop BB0_646 Depth 3
                                        #     Child Loop BB0_665 Depth 2
                                        #       Child Loop BB0_667 Depth 3
                                        #     Child Loop BB0_686 Depth 2
                                        #       Child Loop BB0_688 Depth 3
                                        #     Child Loop BB0_707 Depth 2
                                        #       Child Loop BB0_709 Depth 3
                                        #     Child Loop BB0_728 Depth 2
                                        #       Child Loop BB0_730 Depth 3
                                        #     Child Loop BB0_749 Depth 2
                                        #       Child Loop BB0_751 Depth 3
                                        #     Child Loop BB0_770 Depth 2
                                        #       Child Loop BB0_772 Depth 3
                                        #     Child Loop BB0_803 Depth 2
                                        #       Child Loop BB0_805 Depth 3
                                        #     Child Loop BB0_825 Depth 2
                                        #       Child Loop BB0_827 Depth 3
                                        #     Child Loop BB0_848 Depth 2
                                        #       Child Loop BB0_850 Depth 3
                                        #     Child Loop BB0_871 Depth 2
                                        #       Child Loop BB0_873 Depth 3
                                        #     Child Loop BB0_894 Depth 2
                                        #       Child Loop BB0_896 Depth 3
                                        #     Child Loop BB0_917 Depth 2
                                        #       Child Loop BB0_919 Depth 3
                                        #     Child Loop BB0_940 Depth 2
                                        #       Child Loop BB0_942 Depth 3
                                        #     Child Loop BB0_963 Depth 2
                                        #       Child Loop BB0_965 Depth 3
                                        #     Child Loop BB0_998 Depth 2
                                        #       Child Loop BB0_1000 Depth 3
                                        #     Child Loop BB0_1030 Depth 2
                                        #       Child Loop BB0_1032 Depth 3
                                        #     Child Loop BB0_1062 Depth 2
                                        #       Child Loop BB0_1064 Depth 3
                                        #     Child Loop BB0_1094 Depth 2
                                        #       Child Loop BB0_1096 Depth 3
                                        #     Child Loop BB0_1126 Depth 2
                                        #       Child Loop BB0_1128 Depth 3
                                        #     Child Loop BB0_1158 Depth 2
                                        #       Child Loop BB0_1160 Depth 3
                                        #     Child Loop BB0_1190 Depth 2
                                        #       Child Loop BB0_1192 Depth 3
                                        #     Child Loop BB0_1222 Depth 2
                                        #       Child Loop BB0_1224 Depth 3
	.loc	1 83 7                          # parallel-rne.mlir:83:7
	bneq r13, r6, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  48(r30)
	addli r2, r30, -4240
	addli r5, zero, 8
	addli r7, r30, -4264
	.loc	1 101 15 is_stmt 1              # parallel-rne.mlir:101:15
	loadli.w r9,  -4092(r30)
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	loadli.w r26,  -3068(r30)
	addli r8, zero, 0
	addli r18, zero, 0
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  44(r30)
	div.s r1, r3, r1
	div.s r1, r1, r2
	addli r2, zero, 256
	div.s r2, r1, r2
	slli r3, r2, 3
	slli r2, r2, 8
	sub.s r4, r6, r3
	sub.s r2, r1, r2
	min.s r4, r4, r5
	mod.s r1, r1, r4
	div.s r2, r2, r4
	add.s r1, r3, r1
	slli r3, r2, 5
	slli r4, r1, 5
	storeli.w r3, -4224(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	storeli.w r4, -4268(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r1
	addli r1, zero, 5
	sll.d r[1:2], r[2:3], r1
	addli r3, zero, 12
	store.d r[4:5], 0(r7)                   # 8-byte Folded Spill
	sll.d r[15:16], r[4:5], r3
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	addli r3, zero, 1
	addli r5, r30, -4288
	sll.d r[3:4], r[1:2], r3
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	addli r5, r30, -4248
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	and.d r[10:11], r[15:16], r[1:2]
	load.d r[1:2], 8(r30)
	add.ul r[1:2], r[1:2], r[3:4]
	addli r3, r30, -4136
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	lock zero, r6
	addli r1, r1, 8256
	addli r25, zero, 64
	addli r7, zero, 32
	addli r4, zero, 5
	addli r5, zero, 2
	dma_cfg r22, r22, zero, 0
	dma_cfg zero, r20, zero, 2
	dma_cfg r1, r19, r25, 3
	addli r1, zero, 256
	dma_cfg r17, r25, r22, 4
	dma_cfg r17, r1, r3, 5
	addli r1, zero, 6
	dma_cfg zero, zero, r7, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
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
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r25, 3
	dma_cfg r17, zero, r22, 4
	dma_cfg r17, zero, r3, 5
	dma_cfg zero, zero, r7, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r5, 0
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
.LBB0_12:                               # %.thread112
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	loadli.w r1,  -2048(r30)
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	loadli.w r2,  -1024(r30)
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	addli r1, r1, 1
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	addli r2, r2, 1
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	storeli.w r1, -2048(r30)
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	storeli.w r2, -1024(r30)
.LBB0_13:                               # %.thread115
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	lui r17, 1024
	.loc	1 84 7 is_stmt 1                # parallel-rne.mlir:84:7
	addli r18, r18, 1
	addli r1, zero, 8
	beq r18, r1, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 128 15                        # parallel-rne.mlir:128:15
	addli r8, r8, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	zext_int2long r[3:4], r18
	addli.d r[24:25], r[10:11], 0
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	sll.d r[1:2], r[3:4], r6
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	add.ul r[19:20], r[1:2], r[15:16]
	addli r1, zero, 16383
	zext_int2long r[1:2], r1
	.loc	1 89 15                         # parallel-rne.mlir:89:15
	setlt.ul r1, r[1:2], r[19:20]
	.loc	1 93 15                         # parallel-rne.mlir:93:15
	bneq r1, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[24:25], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	add.s r5, r26, r8
	.loc	1 103 15 is_stmt 1              # parallel-rne.mlir:103:15
	addli r6, zero, 254
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r1, r9, r8
	.loc	1 101 15 is_stmt 1              # parallel-rne.mlir:101:15
	addli r2, zero, 255
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r17
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	mod.s r7, r5, r6
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	mod.s r2, r1, r2
	addli r1, r1, 1
	addli r6, zero, 96
	zext_int2long r[13:14], r6
	addli r6, r30, -4208
	storeli.w r1, -4092(r30)
	store.d r[13:14], 0(r6)                 # 8-byte Folded Spill
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	slli r1, r7, 12
	addli r7, r5, 1
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	slli r6, r2, 11
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	storeli.w r7, -3068(r30)
	addli r2, r1, 8192
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	addli r7, zero, 2
	beq r17, r7, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r22, zero, 1
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	bneq r17, r22, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r17, zero, 128
	sub.sl r[3:4], r[19:20], r[24:25]
	addli r14, r30, -4208
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	sll.d r[19:20], r[19:20], r22
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r24, zero, 3
	zext_int2long r[6:7], r17
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.sl r[3:4], r[3:4], r[6:7]
	load.d r[6:7], 0(r14)                   # 8-byte Folded Reload
	.loc	1 107 9 is_stmt 1               # parallel-rne.mlir:107:9
	xwait r24, 0
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	min.sl r[6:7], r[3:4], r[6:7]
	sub.sl r[3:4], r[6:7], r[3:4]
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	load.d r[6:7], 0(r30)
	addli r3, r3, 32
	addli r4, zero, 253
	add.ul r[19:20], r[6:7], r[19:20]
	addli r6, zero, 4
	blt.s r4, r5, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r5, zero, 5
	.loc	1 107 9                         # parallel-rne.mlir:107:9
	addli r4, zero, 2
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 7
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
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
	addli r4, zero, 64
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r4, 3
	addli r4, zero, 32
	dma_cfg r17, zero, r22, 4
	dma_cfg r17, zero, r4, 5
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r3, zero, 2
	.loc	1 108 9 is_stmt 1               # parallel-rne.mlir:108:9
	addli r1, zero, 5
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	.loc	1 108 9                         # parallel-rne.mlir:108:9
	xwait r3, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r3, zero, 0
	addli r3, zero, 16
	ds_cfg r1, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 3
	shuffle_batch r6, r2, r3, 1
	addli r6, zero, 4
	unlock zero
	xsignal r1, 0
	xsignal r6, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	loadli.w r1,  -2048(r30)
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	loadli.w r7,  -1024(r30)
	addli r5, zero, 255
	addli r19, zero, 7
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	mod.s r2, r1, r5
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	mod.s r13, r7, r5
	.loc	1 118 15                        # parallel-rne.mlir:118:15
	addli r1, r1, 1
	storeli.w r1, -2048(r30)
	slli r5, r2, 11
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	slli r1, r13, 11
	lui r2, 256
	addli r13, r7, 1
	add.s r2, r1, r2
	storeli.w r13, -1024(r30)
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	beq r17, r19, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	addli r13, zero, 6
	bneq r17, r13, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	addli r14, r30, -4136
	addli r24, zero, 15
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r20, zero, 7
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	load.d r[5:6], 0(r14)                   # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r24
	xwait r20, 0
	add.ul r[3:4], r[5:6], r[3:4]
	addli r6, zero, 4
	addli r5, zero, 254
	blt.s r5, r7, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r7, zero, 5
	addli r17, zero, 1
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	addli r5, zero, 2
	addli r19, zero, 16
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 3
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 6
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r20, 10
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
	addli r5, zero, 17
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r19, 10
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
	addli r5, zero, 64
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r5, 3
	addli r5, zero, 128
	dma_cfg r5, zero, r17, 4
	dma_cfg r5, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r5, 256
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	lock zero, r6
	addli r19, zero, 64
	addli r7, zero, 16
	addli r17, zero, 6
	ori r5, r5, 64
	add.s r1, r1, r5
	addli r5, zero, 1
	dma_cfg r5, r5, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r1, r3, r19, 3
	addli r4, zero, 128
	addli r1, zero, 2048
	addli r3, zero, 5
	dma_cfg r4, r19, r5, 4
	dma_cfg r4, r1, r7, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 3
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
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
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r19, 3
	dma_cfg r4, zero, r5, 4
	dma_cfg r4, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r17, 0
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 125 9 is_stmt 1               # parallel-rne.mlir:125:9
	addli r1, zero, 6
	addli r3, zero, 16
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	.loc	1 125 9                         # parallel-rne.mlir:125:9
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	addli r1, zero, 2
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 32
	ds_cfg r1, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 8
	shuffle_coa r5, r2, r3, 2
	unlock zero
	xsignal r19, 0
	xsignal r1, 0
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 4
	.loc	1 127 9 is_stmt 1               # parallel-rne.mlir:127:9
	bneq r17, r1, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r1, 0
	addli r1, zero, 8
	addli r2, zero, 32
	addli r3, zero, 16
	xwait r1, 0
	addli r1, zero, 1
	lock zero, r1
	mm_cfg r2, r3, r2, 0
	addli r2, zero, 4096
	mm_cfg r1, r1, r1, 2
	beq r8, zero, .LBB0_32
# %bb.30:                               # %.preheader178
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r2, r6, r5, 8
	j .LBB0_33
.LBB0_31:                               # %.thread115.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	addli r18, r18, 1
	addli r6, zero, 4
	addli r1, zero, 8
	lui r17, 1024
	bneq r18, r1, .LBB0_14
	j .LBB0_36
.LBB0_32:                               # %.preheader177
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 127 9                         # parallel-rne.mlir:127:9
	mm r2, r6, r5, 8
.LBB0_33:                               # %.thread115.thread249
                                        #   in Loop: Header=BB0_15 Depth=2
	unlock r1
	addli r1, zero, 5
	lui r17, 1024
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	addli r18, r18, 1
	addli r6, zero, 4
	.loc	1 127 9                         # parallel-rne.mlir:127:9
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 84 7                          # parallel-rne.mlir:84:7
	addli r1, zero, 8
	bneq r18, r1, .LBB0_14
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r13, r6, .LBB0_36
.LBB0_35:                               # %.thread251
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_36:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r2, zero, 3
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	bneq r13, r2, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	addli r1, zero, 21
	xwait r1, 0
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 151 7 is_stmt 1               # parallel-rne.mlir:151:7
	xfence
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	addli r3, r30, -4200
	addli r16, zero, 128
	addli r5, zero, 4096
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	mfence { lm, sm, gm }
	zext_int2long r[14:15], r1
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	addli r1, zero, 255
	csr_set csr5, r1
	zext_int2long r[1:2], r2
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, zero, 1
	sync_core
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	bneq r13, zero, .LBB0_63
# %bb.39:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[8:9], zero
	addli r1, r30, -4136
	mfence { lm, sm, gm }
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	j .LBB0_41
.LBB0_40:                               # %middle.block656
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 161 9                         # parallel-rne.mlir:161:9
	addli r3, r30, -4200
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_62
.LBB0_41:                               # %.preheader176
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_43 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	sll.d r[10:11], r[8:9], r1
	addli r1, r30, -4136
	load.d r[25:26], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_43
.LBB0_42:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 162 11 is_stmt 1              # parallel-rne.mlir:162:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 177 13                        # parallel-rne.mlir:177:13
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 162 11                        # parallel-rne.mlir:162:11
	setneq.d r1, r[25:26], r[14:15]
	beq r1, zero, .LBB0_40
.LBB0_43:                               # %vector.body652
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	add.ul r[1:2], r[25:26], r[10:11]
	slli r4, r1, 2
	addli r1, r4, 4108
	addli r2, r4, 4096
	addli r3, r4, 4104
	loads.w r1, 0(r1)
	loads.w r24, 0(r2)
	addli r2, r4, 4100
	loads.w r19, 0(r3)
	loads.w r13, 0(r2)
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	and r16, r1, r21
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	setlt.u r2, r12, r16
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r2, zero, .LBB0_45
# %bb.44:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_43 Depth=3
	or r6, r1, r17
.LBB0_46:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	and r27, r19, r21
	setlt.u r2, r12, r27
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r2, zero, .LBB0_48
# %bb.47:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_43 Depth=3
	or r18, r19, r17
.LBB0_49:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	and r3, r13, r21
	setlt.u r2, r12, r3
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r2, zero, .LBB0_51
# %bb.50:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_43 Depth=3
	or r20, r13, r17
.LBB0_52:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	and r5, r24, r21
	setlt.u r2, r12, r5
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	bneq r2, zero, .LBB0_54
# %bb.53:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r24, 0
	.loc	1 174 19 is_stmt 1              # parallel-rne.mlir:174:19
	setlt.u r5, r23, r5
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	beq r5, zero, .LBB0_55
	j .LBB0_56
.LBB0_54:                               #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r24, r17
	.loc	1 174 19 is_stmt 1              # parallel-rne.mlir:174:19
	setlt.u r5, r23, r5
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r5, zero, .LBB0_56
.LBB0_55:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r24, 16
	loadli.w r5,  -4124(r30)                # 4-byte Folded Reload
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r5
	lui r5, 1048560
	and r2, r2, r5
.LBB0_56:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r3, r23, r3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r3, zero, .LBB0_58
# %bb.57:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r13, 16
	loadli.w r5,  -4124(r30)                # 4-byte Folded Reload
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r5
	lui r5, 1048560
	and r20, r3, r5
.LBB0_58:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r3, r23, r27
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r3, zero, .LBB0_60
# %bb.59:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r27
	and r18, r3, r5
.LBB0_60:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r3, r23, r16
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r3, zero, .LBB0_42
# %bb.61:                               # %vector.body652
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	lui r3, 1048560
	add.s r1, r1, r27
	and r6, r1, r3
	j .LBB0_42
.LBB0_62:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r1, zero, 1
	addli r16, zero, 128
	addli r5, zero, 4096
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	mfence { sm }
.LBB0_63:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	.loc	1 182 7 is_stmt 1               # parallel-rne.mlir:182:7
	addli r4, r30, -4192
	zext_int2long r[2:3], r2
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	bneq r13, r1, .LBB0_88
# %bb.64:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[2:3], r6
	mfence { lm, sm, gm }
	j .LBB0_66
.LBB0_65:                               # %middle.block650
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 189 9                         # parallel-rne.mlir:189:9
	addli r1, r30, -4192
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_87
.LBB0_66:                               # %.preheader175
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_68 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_68
.LBB0_67:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 190 11 is_stmt 1              # parallel-rne.mlir:190:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 205 13                        # parallel-rne.mlir:205:13
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_65
.LBB0_68:                               # %vector.body646
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	addli r1, r4, 4108
	addli r5, r4, 4096
	addli r6, r4, 4104
	loads.w r1, 0(r1)
	loads.w r26, 0(r5)
	addli r5, r4, 4100
	loads.w r19, 0(r6)
	loads.w r13, 0(r5)
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	and r16, r1, r21
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	setlt.u r5, r12, r16
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r5, zero, .LBB0_70
# %bb.69:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_68 Depth=3
	or r6, r1, r17
.LBB0_71:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r5, zero, .LBB0_73
# %bb.72:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_68 Depth=3
	or r18, r19, r17
.LBB0_74:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r7, zero, .LBB0_76
# %bb.75:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_68 Depth=3
	or r20, r13, r17
.LBB0_77:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r24, zero, .LBB0_79
# %bb.78:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 202 19 is_stmt 1              # parallel-rne.mlir:202:19
	setlt.u r7, r23, r7
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	beq r7, zero, .LBB0_80
	j .LBB0_81
.LBB0_79:                               #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 202 19 is_stmt 1              # parallel-rne.mlir:202:19
	setlt.u r7, r23, r7
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r7, zero, .LBB0_81
.LBB0_80:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_81:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	setlt.u r5, r23, r5
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	beq r5, zero, .LBB0_84
# %bb.82:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	beq r5, zero, .LBB0_85
.LBB0_83:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r5, zero, .LBB0_67
	j .LBB0_86
.LBB0_84:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r5, zero, .LBB0_83
.LBB0_85:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r5, zero, .LBB0_67
.LBB0_86:                               # %vector.body646
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_67
.LBB0_87:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r5, zero, 4096
	.loc	1 182 7                         # parallel-rne.mlir:182:7
	mfence { sm }
.LBB0_88:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 11
	.loc	1 210 7 is_stmt 1               # parallel-rne.mlir:210:7
	addli r3, r30, -4184
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, zero, 2
	bneq r13, r1, .LBB0_113
# %bb.89:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 210 7                         # parallel-rne.mlir:210:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_91
.LBB0_90:                               # %middle.block644
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 217 9 is_stmt 1               # parallel-rne.mlir:217:9
	addli r1, r30, -4184
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_112
.LBB0_91:                               # %.preheader174
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_93
.LBB0_92:                               # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 218 11 is_stmt 1              # parallel-rne.mlir:218:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 233 13                        # parallel-rne.mlir:233:13
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 218 11                        # parallel-rne.mlir:218:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_90
.LBB0_93:                               # %vector.body640
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_91 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	addli r1, r4, 4108
	addli r5, r4, 4096
	addli r6, r4, 4104
	loads.w r1, 0(r1)
	loads.w r26, 0(r5)
	addli r5, r4, 4100
	loads.w r19, 0(r6)
	loads.w r13, 0(r5)
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	and r16, r1, r21
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	setlt.u r5, r12, r16
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r5, zero, .LBB0_95
# %bb.94:                               # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_93 Depth=3
	or r6, r1, r17
.LBB0_96:                               # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r5, zero, .LBB0_98
# %bb.97:                               # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_93 Depth=3
	or r18, r19, r17
.LBB0_99:                               # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r7, zero, .LBB0_101
# %bb.100:                              # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_93 Depth=3
	or r20, r13, r17
.LBB0_102:                              # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r24, zero, .LBB0_104
# %bb.103:                              # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 230 19 is_stmt 1              # parallel-rne.mlir:230:19
	setlt.u r7, r23, r7
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	beq r7, zero, .LBB0_105
	j .LBB0_106
.LBB0_104:                              #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 230 19 is_stmt 1              # parallel-rne.mlir:230:19
	setlt.u r7, r23, r7
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r7, zero, .LBB0_106
.LBB0_105:                              # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_106:                              # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	setlt.u r5, r23, r5
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	beq r5, zero, .LBB0_109
# %bb.107:                              # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	beq r5, zero, .LBB0_110
.LBB0_108:                              # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r5, zero, .LBB0_92
	j .LBB0_111
.LBB0_109:                              # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r5, zero, .LBB0_108
.LBB0_110:                              # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r5, zero, .LBB0_92
.LBB0_111:                              # %vector.body640
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_92
.LBB0_112:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r5, zero, 4096
	.loc	1 210 7                         # parallel-rne.mlir:210:7
	mfence { sm }
.LBB0_113:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	.loc	1 238 7 is_stmt 1               # parallel-rne.mlir:238:7
	addli r3, r30, -4176
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, zero, 3
	bneq r13, r1, .LBB0_138
# %bb.114:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 238 7                         # parallel-rne.mlir:238:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_116
.LBB0_115:                              # %middle.block638
                                        #   in Loop: Header=BB0_116 Depth=2
	.loc	1 245 9 is_stmt 1               # parallel-rne.mlir:245:9
	addli r1, r30, -4176
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_137
.LBB0_116:                              # %.preheader173
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_118
.LBB0_117:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_115
.LBB0_118:                              # %vector.body634
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	addli r1, r4, 4108
	addli r5, r4, 4096
	addli r6, r4, 4104
	loads.w r1, 0(r1)
	loads.w r26, 0(r5)
	addli r5, r4, 4100
	loads.w r19, 0(r6)
	loads.w r13, 0(r5)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r16, r1, r21
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	setlt.u r5, r12, r16
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r5, zero, .LBB0_120
# %bb.119:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_118 Depth=3
	or r6, r1, r17
.LBB0_121:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r5, zero, .LBB0_123
# %bb.122:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_118 Depth=3
	or r18, r19, r17
.LBB0_124:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r7, zero, .LBB0_126
# %bb.125:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_118 Depth=3
	or r20, r13, r17
.LBB0_127:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r24, zero, .LBB0_129
# %bb.128:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r7, r23, r7
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r7, zero, .LBB0_130
	j .LBB0_131
.LBB0_129:                              #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r7, r23, r7
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r7, zero, .LBB0_131
.LBB0_130:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_131:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	setlt.u r5, r23, r5
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r5, zero, .LBB0_134
# %bb.132:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r5, zero, .LBB0_135
.LBB0_133:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r5, zero, .LBB0_117
	j .LBB0_136
.LBB0_134:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r5, zero, .LBB0_133
.LBB0_135:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r5, zero, .LBB0_117
.LBB0_136:                              # %vector.body634
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_117
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r5, zero, 4096
	.loc	1 238 7                         # parallel-rne.mlir:238:7
	mfence { sm }
.LBB0_138:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 19
	.loc	1 266 7 is_stmt 1               # parallel-rne.mlir:266:7
	addli r3, r30, -4168
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	bneq r13, r6, .LBB0_163
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_141
.LBB0_140:                              # %middle.block632
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 273 9 is_stmt 1               # parallel-rne.mlir:273:9
	addli r1, r30, -4168
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_162
.LBB0_141:                              # %.preheader172
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_143
.LBB0_142:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 289 13                        # parallel-rne.mlir:289:13
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_140
.LBB0_143:                              # %vector.body628
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	addli r1, r4, 4108
	addli r5, r4, 4096
	addli r6, r4, 4104
	loads.w r1, 0(r1)
	loads.w r26, 0(r5)
	addli r5, r4, 4100
	loads.w r19, 0(r6)
	loads.w r13, 0(r5)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	and r16, r1, r21
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	setlt.u r5, r12, r16
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r5, zero, .LBB0_145
# %bb.144:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	or r6, r1, r17
.LBB0_146:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r5, zero, .LBB0_148
# %bb.147:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_143 Depth=3
	or r18, r19, r17
.LBB0_149:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r7, zero, .LBB0_151
# %bb.150:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_143 Depth=3
	or r20, r13, r17
.LBB0_152:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	bneq r24, zero, .LBB0_154
# %bb.153:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r7, r23, r7
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r7, zero, .LBB0_155
	j .LBB0_156
.LBB0_154:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 286 19 is_stmt 1              # parallel-rne.mlir:286:19
	setlt.u r7, r23, r7
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r7, zero, .LBB0_156
.LBB0_155:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_156:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	setlt.u r5, r23, r5
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r5, zero, .LBB0_159
# %bb.157:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	beq r5, zero, .LBB0_160
.LBB0_158:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r5, zero, .LBB0_142
	j .LBB0_161
.LBB0_159:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r5, zero, .LBB0_158
.LBB0_160:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r5, zero, .LBB0_142
.LBB0_161:                              # %vector.body628
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_142
.LBB0_162:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r5, zero, 4096
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	mfence { sm }
.LBB0_163:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	.loc	1 294 7 is_stmt 1               # parallel-rne.mlir:294:7
	addli r3, r30, -4160
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, zero, 5
	bneq r13, r1, .LBB0_188
# %bb.164:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_166
.LBB0_165:                              # %middle.block626
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 301 9 is_stmt 1               # parallel-rne.mlir:301:9
	addli r1, r30, -4160
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_187
.LBB0_166:                              # %.preheader171
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_168 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_168
.LBB0_167:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 302 11 is_stmt 1              # parallel-rne.mlir:302:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 302 11                        # parallel-rne.mlir:302:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_165
.LBB0_168:                              # %vector.body622
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	addli r1, r4, 4108
	addli r5, r4, 4096
	addli r6, r4, 4104
	loads.w r1, 0(r1)
	loads.w r26, 0(r5)
	addli r5, r4, 4100
	loads.w r19, 0(r6)
	loads.w r13, 0(r5)
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r16, r1, r21
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	setlt.u r5, r12, r16
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r5, zero, .LBB0_170
# %bb.169:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_168 Depth=3
	or r6, r1, r17
.LBB0_171:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r5, zero, .LBB0_173
# %bb.172:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_168 Depth=3
	or r18, r19, r17
.LBB0_174:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r7, zero, .LBB0_176
# %bb.175:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_168 Depth=3
	or r20, r13, r17
.LBB0_177:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	bneq r24, zero, .LBB0_179
# %bb.178:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r7, r23, r7
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r7, zero, .LBB0_180
	j .LBB0_181
.LBB0_179:                              #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 314 19 is_stmt 1              # parallel-rne.mlir:314:19
	setlt.u r7, r23, r7
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r7, zero, .LBB0_181
.LBB0_180:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_181:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	setlt.u r5, r23, r5
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r5, zero, .LBB0_184
# %bb.182:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r5, zero, .LBB0_185
.LBB0_183:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r5, zero, .LBB0_167
	j .LBB0_186
.LBB0_184:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r5, zero, .LBB0_183
.LBB0_185:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r5, zero, .LBB0_167
.LBB0_186:                              # %vector.body622
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_167
.LBB0_187:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r5, zero, 4096
	.loc	1 294 7                         # parallel-rne.mlir:294:7
	mfence { sm }
.LBB0_188:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 27
	.loc	1 322 7 is_stmt 1               # parallel-rne.mlir:322:7
	addli r3, r30, -4152
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, zero, 6
	bneq r13, r1, .LBB0_213
# %bb.189:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 322 7                         # parallel-rne.mlir:322:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_191
.LBB0_190:                              # %middle.block620
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 329 9 is_stmt 1               # parallel-rne.mlir:329:9
	addli r1, r30, -4152
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_212
.LBB0_191:                              # %.preheader170
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_193 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_193
.LBB0_192:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 330 11 is_stmt 1              # parallel-rne.mlir:330:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 345 13                        # parallel-rne.mlir:345:13
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_190
.LBB0_193:                              # %vector.body616
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	addli r1, r4, 4108
	addli r5, r4, 4096
	addli r6, r4, 4104
	loads.w r1, 0(r1)
	loads.w r26, 0(r5)
	addli r5, r4, 4100
	loads.w r19, 0(r6)
	loads.w r13, 0(r5)
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	and r16, r1, r21
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	setlt.u r5, r12, r16
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r5, zero, .LBB0_195
# %bb.194:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_196
.LBB0_195:                              #   in Loop: Header=BB0_193 Depth=3
	or r6, r1, r17
.LBB0_196:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r5, zero, .LBB0_198
# %bb.197:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_193 Depth=3
	or r18, r19, r17
.LBB0_199:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r7, zero, .LBB0_201
# %bb.200:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_193 Depth=3
	or r20, r13, r17
.LBB0_202:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	bneq r24, zero, .LBB0_204
# %bb.203:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r7, r23, r7
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	beq r7, zero, .LBB0_205
	j .LBB0_206
.LBB0_204:                              #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 342 19 is_stmt 1              # parallel-rne.mlir:342:19
	setlt.u r7, r23, r7
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r7, zero, .LBB0_206
.LBB0_205:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_206:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	setlt.u r5, r23, r5
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	beq r5, zero, .LBB0_209
# %bb.207:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	beq r5, zero, .LBB0_210
.LBB0_208:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r5, zero, .LBB0_192
	j .LBB0_211
.LBB0_209:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r5, zero, .LBB0_208
.LBB0_210:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r5, zero, .LBB0_192
.LBB0_211:                              # %vector.body616
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_192
.LBB0_212:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r5, zero, 4096
	.loc	1 322 7                         # parallel-rne.mlir:322:7
	mfence { sm }
.LBB0_213:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	.loc	1 350 7 is_stmt 1               # parallel-rne.mlir:350:7
	addli r3, r30, -4144
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, zero, 7
	bneq r13, r1, .LBB0_238
# %bb.214:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 350 7                         # parallel-rne.mlir:350:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_216
.LBB0_215:                              # %middle.block614
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 357 9 is_stmt 1               # parallel-rne.mlir:357:9
	addli r1, r30, -4144
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_237
.LBB0_216:                              # %.preheader169
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_218 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_218
.LBB0_217:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 358 11 is_stmt 1              # parallel-rne.mlir:358:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 358 11                        # parallel-rne.mlir:358:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_215
.LBB0_218:                              # %vector.body610
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	addli r1, r4, 4108
	addli r5, r4, 4096
	addli r6, r4, 4104
	loads.w r1, 0(r1)
	loads.w r26, 0(r5)
	addli r5, r4, 4100
	loads.w r19, 0(r6)
	loads.w r13, 0(r5)
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	and r16, r1, r21
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	setlt.u r5, r12, r16
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r5, zero, .LBB0_220
# %bb.219:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_218 Depth=3
	or r6, r1, r17
.LBB0_221:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r5, zero, .LBB0_223
# %bb.222:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_218 Depth=3
	or r18, r19, r17
.LBB0_224:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r7, zero, .LBB0_226
# %bb.225:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_218 Depth=3
	or r20, r13, r17
.LBB0_227:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r24, zero, .LBB0_229
# %bb.228:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 370 19 is_stmt 1              # parallel-rne.mlir:370:19
	setlt.u r7, r23, r7
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	beq r7, zero, .LBB0_230
	j .LBB0_231
.LBB0_229:                              #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 370 19 is_stmt 1              # parallel-rne.mlir:370:19
	setlt.u r7, r23, r7
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r7, zero, .LBB0_231
.LBB0_230:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_231:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	setlt.u r5, r23, r5
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	beq r5, zero, .LBB0_234
# %bb.232:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	beq r5, zero, .LBB0_235
.LBB0_233:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r5, zero, .LBB0_217
	j .LBB0_236
.LBB0_234:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r5, zero, .LBB0_233
.LBB0_235:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r5, zero, .LBB0_217
.LBB0_236:                              # %vector.body610
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_217
.LBB0_237:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r5, zero, 4096
	.loc	1 350 7                         # parallel-rne.mlir:350:7
	mfence { sm }
.LBB0_238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4224(r30)                # 4-byte Folded Reload
	addli r3, zero, 992
	zext_int2long r[3:4], r3
	zext_int2long r[1:2], r1
	min.ul r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 32
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	.loc	1 378 7 is_stmt 1               # parallel-rne.mlir:378:7
	addli r3, r30, -4256
	min.ul r[1:2], r[1:2], r[14:15]
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r1, zero, 3
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sync_core
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	bneq r13, r1, .LBB0_241
# %bb.239:                              # %.thread117.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	lui r17, 1024
	xsignal r1, 0
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	addli r1, zero, 12
	xsignal r1, 0
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	addli r1, zero, 13
	xwait r1, 0
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r1, zero, 29
	xwait r1, 0
.LBB0_240:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 1
	j .LBB0_243
.LBB0_241:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	lui r1, 383
	ori r2, r1, 2048
	addli r1, zero, 1
	.loc	1 382 7 is_stmt 1               # parallel-rne.mlir:382:7
	bneq r13, r1, .LBB0_1255
# %bb.242:                              # %.thread117.thread121
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r9, r30, -4248
	addli r18, zero, 23
	load.d r[3:4], 16(r30)
	addli r25, zero, 2
	addli r26, zero, 7
	addli r20, zero, 10
	addli r24, zero, 21
	addli r10, zero, 22
	addli r19, zero, 64
	lui r5, 383
	addli r11, zero, 1
	lui r17, 1024
	load.d r[7:8], 0(r9)                    # 8-byte Folded Reload
	addli r9, zero, 5
	xwait r18, 0
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	add.ul r[7:8], r[3:4], r[7:8]
	addli r3, zero, 3
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 27
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	dma_cfg r1, r1, zero, 0
	dma_cfg r1, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r19, 3
	dma_cfg r16, zero, r1, 4
	dma_cfg r16, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r6
	dma_cfg r1, r1, zero, 0
	ori r1, r5, 2112
	addli r5, r30, -4256
	dma_cfg zero, r8, zero, 2
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	dma_cfg r1, r7, r19, 3
	addli r5, r3, 31
	slli r3, r3, 1
	addli r4, zero, 3
	srli r1, r5, 5
	andi r3, r3, 62
	dma_cfg r16, r19, r1, 4
	dma_cfg r16, r19, r11, 5
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r20, 10
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
	addli r4, zero, 24
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r18, 10
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
	dma_cfg r2, zero, r19, 3
	dma_cfg r16, zero, r1, 4
	addli r1, zero, 1
	dma_cfg r16, zero, r1, 5
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r10, 0
.LBB0_243:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	xfence
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	addli r2, zero, 255
	.loc	1 390 7                         # parallel-rne.mlir:390:7
	mfence { lm, sm, gm }
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	csr_set csr5, r2
	sync_core
	.loc	1 392 7                         # parallel-rne.mlir:392:7
	beq r13, zero, .LBB0_251
# %bb.244:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 420 7                         # parallel-rne.mlir:420:7
	beq r13, r1, .LBB0_275
.LBB0_245:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	addli r1, zero, 2
	beq r13, r1, .LBB0_299
.LBB0_246:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	addli r1, zero, 3
	beq r13, r1, .LBB0_323
.LBB0_247:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	beq r13, r6, .LBB0_347
.LBB0_248:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 532 7                         # parallel-rne.mlir:532:7
	addli r1, zero, 5
	beq r13, r1, .LBB0_371
.LBB0_249:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	addli r1, zero, 6
	beq r13, r1, .LBB0_395
.LBB0_250:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	addli r1, zero, 7
	beq r13, r1, .LBB0_419
	j .LBB0_443
.LBB0_251:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 392 7                         # parallel-rne.mlir:392:7
	xfence
	zext_int2long r[8:9], zero
	addli r1, r30, -4136
	lui r7, 1024
	mfence { lm, sm, gm }
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	j .LBB0_253
.LBB0_252:                              # %middle.block608
                                        #   in Loop: Header=BB0_253 Depth=2
	.loc	1 399 9                         # parallel-rne.mlir:399:9
	addli r3, r30, -4200
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_274
.LBB0_253:                              # %.preheader168
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_255 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	sll.d r[10:11], r[8:9], r1
	addli r1, r30, -4136
	load.d r[25:26], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_255
.LBB0_254:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 400 11 is_stmt 1              # parallel-rne.mlir:400:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 415 13                        # parallel-rne.mlir:415:13
	loadli.w r3,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 400 11                        # parallel-rne.mlir:400:11
	setneq.d r1, r[25:26], r[14:15]
	.loc	1 415 13                        # parallel-rne.mlir:415:13
	add.s r3, r4, r3
	stores.w r6, 12(r3)
	stores.w r18, 8(r3)
	stores.w r20, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 400 11                        # parallel-rne.mlir:400:11
	beq r1, zero, .LBB0_252
.LBB0_255:                              # %vector.body604
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_253 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	add.ul r[1:2], r[25:26], r[10:11]
	slli r4, r1, 2
	loads.w r1, 12(r4)
	loads.w r24, 0(r4)
	loads.w r13, 4(r4)
	loads.w r19, 8(r4)
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	and r16, r1, r21
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	setlt.u r2, r12, r16
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r2, zero, .LBB0_257
# %bb.256:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_258
.LBB0_257:                              #   in Loop: Header=BB0_255 Depth=3
	or r6, r1, r7
.LBB0_258:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	and r27, r19, r21
	setlt.u r2, r12, r27
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r2, zero, .LBB0_260
# %bb.259:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_255 Depth=3
	or r18, r19, r7
.LBB0_261:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	and r3, r13, r21
	setlt.u r2, r12, r3
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r2, zero, .LBB0_263
# %bb.262:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_255 Depth=3
	or r20, r13, r7
.LBB0_264:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	and r5, r24, r21
	setlt.u r2, r12, r5
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r2, zero, .LBB0_266
# %bb.265:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r24, 0
	.loc	1 412 19 is_stmt 1              # parallel-rne.mlir:412:19
	setlt.u r5, r23, r5
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	beq r5, zero, .LBB0_267
	j .LBB0_268
.LBB0_266:                              #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r24, r7
	.loc	1 412 19 is_stmt 1              # parallel-rne.mlir:412:19
	setlt.u r5, r23, r5
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r5, zero, .LBB0_268
.LBB0_267:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r24, 16
	loadli.w r5,  -4124(r30)                # 4-byte Folded Reload
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r5
	lui r5, 1048560
	and r2, r2, r5
.LBB0_268:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	setlt.u r3, r23, r3
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r3, zero, .LBB0_270
# %bb.269:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r13, 16
	loadli.w r5,  -4124(r30)                # 4-byte Folded Reload
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r5
	lui r5, 1048560
	and r20, r3, r5
.LBB0_270:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	setlt.u r3, r23, r27
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r3, zero, .LBB0_272
# %bb.271:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r27
	and r18, r3, r5
.LBB0_272:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	setlt.u r3, r23, r16
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	bneq r3, zero, .LBB0_254
# %bb.273:                              # %vector.body604
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	lui r3, 1048560
	add.s r1, r1, r27
	and r6, r1, r3
	j .LBB0_254
.LBB0_274:                              #   in Loop: Header=BB0_8 Depth=1
	lui r17, 1024
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r1, zero, 1
	addli r16, zero, 128
	.loc	1 392 7                         # parallel-rne.mlir:392:7
	mfence { sm }
	.loc	1 420 7                         # parallel-rne.mlir:420:7
	bneq r13, r1, .LBB0_245
.LBB0_275:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[2:3], r6
	mfence { lm, sm, gm }
	j .LBB0_277
.LBB0_276:                              # %middle.block602
                                        #   in Loop: Header=BB0_277 Depth=2
	.loc	1 427 9                         # parallel-rne.mlir:427:9
	addli r1, r30, -4192
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_298
.LBB0_277:                              # %.preheader167
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_279 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_279
.LBB0_278:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 428 11 is_stmt 1              # parallel-rne.mlir:428:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 443 13                        # parallel-rne.mlir:443:13
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 428 11                        # parallel-rne.mlir:428:11
	setneq.d r1, r[10:11], r[14:15]
	.loc	1 443 13                        # parallel-rne.mlir:443:13
	add.s r4, r4, r5
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 428 11                        # parallel-rne.mlir:428:11
	beq r1, zero, .LBB0_276
.LBB0_279:                              # %vector.body598
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	loads.w r1, 12(r4)
	loads.w r26, 0(r4)
	loads.w r13, 4(r4)
	loads.w r19, 8(r4)
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	and r16, r1, r21
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	setlt.u r5, r12, r16
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r5, zero, .LBB0_281
# %bb.280:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_279 Depth=3
	or r6, r1, r17
.LBB0_282:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r5, zero, .LBB0_284
# %bb.283:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_285
.LBB0_284:                              #   in Loop: Header=BB0_279 Depth=3
	or r18, r19, r17
.LBB0_285:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r7, zero, .LBB0_287
# %bb.286:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_288
.LBB0_287:                              #   in Loop: Header=BB0_279 Depth=3
	or r20, r13, r17
.LBB0_288:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r24, zero, .LBB0_290
# %bb.289:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 440 19 is_stmt 1              # parallel-rne.mlir:440:19
	setlt.u r7, r23, r7
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	beq r7, zero, .LBB0_291
	j .LBB0_292
.LBB0_290:                              #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 440 19 is_stmt 1              # parallel-rne.mlir:440:19
	setlt.u r7, r23, r7
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r7, zero, .LBB0_292
.LBB0_291:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_292:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	setlt.u r5, r23, r5
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	beq r5, zero, .LBB0_295
# %bb.293:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	beq r5, zero, .LBB0_296
.LBB0_294:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r5, zero, .LBB0_278
	j .LBB0_297
.LBB0_295:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r5, zero, .LBB0_294
.LBB0_296:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r5, zero, .LBB0_278
.LBB0_297:                              # %vector.body598
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_278
.LBB0_298:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	.loc	1 420 7                         # parallel-rne.mlir:420:7
	mfence { sm }
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	addli r1, zero, 2
	bneq r13, r1, .LBB0_246
.LBB0_299:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_301
.LBB0_300:                              # %middle.block596
                                        #   in Loop: Header=BB0_301 Depth=2
	.loc	1 455 9 is_stmt 1               # parallel-rne.mlir:455:9
	addli r1, r30, -4184
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_322
.LBB0_301:                              # %.preheader166
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_303 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_303
.LBB0_302:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 456 11 is_stmt 1              # parallel-rne.mlir:456:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 471 13                        # parallel-rne.mlir:471:13
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 456 11                        # parallel-rne.mlir:456:11
	setneq.d r1, r[10:11], r[14:15]
	.loc	1 471 13                        # parallel-rne.mlir:471:13
	add.s r4, r4, r5
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 456 11                        # parallel-rne.mlir:456:11
	beq r1, zero, .LBB0_300
.LBB0_303:                              # %vector.body592
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_301 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	loads.w r1, 12(r4)
	loads.w r26, 0(r4)
	loads.w r13, 4(r4)
	loads.w r19, 8(r4)
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	and r16, r1, r21
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	setlt.u r5, r12, r16
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r5, zero, .LBB0_305
# %bb.304:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_306
.LBB0_305:                              #   in Loop: Header=BB0_303 Depth=3
	or r6, r1, r17
.LBB0_306:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r5, zero, .LBB0_308
# %bb.307:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_309
.LBB0_308:                              #   in Loop: Header=BB0_303 Depth=3
	or r18, r19, r17
.LBB0_309:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r7, zero, .LBB0_311
# %bb.310:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_312
.LBB0_311:                              #   in Loop: Header=BB0_303 Depth=3
	or r20, r13, r17
.LBB0_312:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 462 19                        # parallel-rne.mlir:462:19
	bneq r24, zero, .LBB0_314
# %bb.313:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 468 19 is_stmt 1              # parallel-rne.mlir:468:19
	setlt.u r7, r23, r7
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	beq r7, zero, .LBB0_315
	j .LBB0_316
.LBB0_314:                              #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 468 19 is_stmt 1              # parallel-rne.mlir:468:19
	setlt.u r7, r23, r7
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	bneq r7, zero, .LBB0_316
.LBB0_315:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_316:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	setlt.u r5, r23, r5
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	beq r5, zero, .LBB0_319
# %bb.317:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	beq r5, zero, .LBB0_320
.LBB0_318:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	bneq r5, zero, .LBB0_302
	j .LBB0_321
.LBB0_319:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	bneq r5, zero, .LBB0_318
.LBB0_320:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	bneq r5, zero, .LBB0_302
.LBB0_321:                              # %vector.body592
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_302
.LBB0_322:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	mfence { sm }
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	addli r1, zero, 3
	bneq r13, r1, .LBB0_247
.LBB0_323:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_325
.LBB0_324:                              # %middle.block590
                                        #   in Loop: Header=BB0_325 Depth=2
	.loc	1 483 9 is_stmt 1               # parallel-rne.mlir:483:9
	addli r1, r30, -4176
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_346
.LBB0_325:                              # %.preheader165
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_327 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_327
.LBB0_326:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 484 11 is_stmt 1              # parallel-rne.mlir:484:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 499 13                        # parallel-rne.mlir:499:13
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 484 11                        # parallel-rne.mlir:484:11
	setneq.d r1, r[10:11], r[14:15]
	.loc	1 499 13                        # parallel-rne.mlir:499:13
	add.s r4, r4, r5
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 484 11                        # parallel-rne.mlir:484:11
	beq r1, zero, .LBB0_324
.LBB0_327:                              # %vector.body586
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_325 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	loads.w r1, 12(r4)
	loads.w r26, 0(r4)
	loads.w r13, 4(r4)
	loads.w r19, 8(r4)
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	and r16, r1, r21
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	setlt.u r5, r12, r16
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r5, zero, .LBB0_329
# %bb.328:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_330
.LBB0_329:                              #   in Loop: Header=BB0_327 Depth=3
	or r6, r1, r17
.LBB0_330:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r5, zero, .LBB0_332
# %bb.331:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_333
.LBB0_332:                              #   in Loop: Header=BB0_327 Depth=3
	or r18, r19, r17
.LBB0_333:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r7, zero, .LBB0_335
# %bb.334:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_336
.LBB0_335:                              #   in Loop: Header=BB0_327 Depth=3
	or r20, r13, r17
.LBB0_336:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 490 19                        # parallel-rne.mlir:490:19
	bneq r24, zero, .LBB0_338
# %bb.337:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 496 19 is_stmt 1              # parallel-rne.mlir:496:19
	setlt.u r7, r23, r7
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	beq r7, zero, .LBB0_339
	j .LBB0_340
.LBB0_338:                              #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 496 19 is_stmt 1              # parallel-rne.mlir:496:19
	setlt.u r7, r23, r7
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r7, zero, .LBB0_340
.LBB0_339:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_340:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	setlt.u r5, r23, r5
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	beq r5, zero, .LBB0_343
# %bb.341:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	beq r5, zero, .LBB0_344
.LBB0_342:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r5, zero, .LBB0_326
	j .LBB0_345
.LBB0_343:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r5, zero, .LBB0_342
.LBB0_344:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	bneq r5, zero, .LBB0_326
.LBB0_345:                              # %vector.body586
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_326
.LBB0_346:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	mfence { sm }
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	bneq r13, r6, .LBB0_248
.LBB0_347:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_349
.LBB0_348:                              # %middle.block584
                                        #   in Loop: Header=BB0_349 Depth=2
	.loc	1 511 9 is_stmt 1               # parallel-rne.mlir:511:9
	addli r1, r30, -4168
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_370
.LBB0_349:                              # %.preheader164
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_351 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_351
.LBB0_350:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 512 11 is_stmt 1              # parallel-rne.mlir:512:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 527 13                        # parallel-rne.mlir:527:13
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	setneq.d r1, r[10:11], r[14:15]
	.loc	1 527 13                        # parallel-rne.mlir:527:13
	add.s r4, r4, r5
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	beq r1, zero, .LBB0_348
.LBB0_351:                              # %vector.body580
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_349 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	loads.w r1, 12(r4)
	loads.w r26, 0(r4)
	loads.w r13, 4(r4)
	loads.w r19, 8(r4)
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	and r16, r1, r21
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	setlt.u r5, r12, r16
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r5, zero, .LBB0_353
# %bb.352:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_354
.LBB0_353:                              #   in Loop: Header=BB0_351 Depth=3
	or r6, r1, r17
.LBB0_354:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r5, zero, .LBB0_356
# %bb.355:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_357
.LBB0_356:                              #   in Loop: Header=BB0_351 Depth=3
	or r18, r19, r17
.LBB0_357:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r7, zero, .LBB0_359
# %bb.358:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_360
.LBB0_359:                              #   in Loop: Header=BB0_351 Depth=3
	or r20, r13, r17
.LBB0_360:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 518 19                        # parallel-rne.mlir:518:19
	bneq r24, zero, .LBB0_362
# %bb.361:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 524 19 is_stmt 1              # parallel-rne.mlir:524:19
	setlt.u r7, r23, r7
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	beq r7, zero, .LBB0_363
	j .LBB0_364
.LBB0_362:                              #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 524 19 is_stmt 1              # parallel-rne.mlir:524:19
	setlt.u r7, r23, r7
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	bneq r7, zero, .LBB0_364
.LBB0_363:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_364:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	setlt.u r5, r23, r5
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	beq r5, zero, .LBB0_367
# %bb.365:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	beq r5, zero, .LBB0_368
.LBB0_366:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	bneq r5, zero, .LBB0_350
	j .LBB0_369
.LBB0_367:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	bneq r5, zero, .LBB0_366
.LBB0_368:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	bneq r5, zero, .LBB0_350
.LBB0_369:                              # %vector.body580
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_350
.LBB0_370:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	mfence { sm }
	.loc	1 532 7                         # parallel-rne.mlir:532:7
	addli r1, zero, 5
	bneq r13, r1, .LBB0_249
.LBB0_371:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 532 7                         # parallel-rne.mlir:532:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_373
.LBB0_372:                              # %middle.block578
                                        #   in Loop: Header=BB0_373 Depth=2
	.loc	1 539 9 is_stmt 1               # parallel-rne.mlir:539:9
	addli r1, r30, -4160
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_394
.LBB0_373:                              # %.preheader163
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_375 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_375
.LBB0_374:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 540 11 is_stmt 1              # parallel-rne.mlir:540:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 555 13                        # parallel-rne.mlir:555:13
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 540 11                        # parallel-rne.mlir:540:11
	setneq.d r1, r[10:11], r[14:15]
	.loc	1 555 13                        # parallel-rne.mlir:555:13
	add.s r4, r4, r5
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 540 11                        # parallel-rne.mlir:540:11
	beq r1, zero, .LBB0_372
.LBB0_375:                              # %vector.body574
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_373 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	loads.w r1, 12(r4)
	loads.w r26, 0(r4)
	loads.w r13, 4(r4)
	loads.w r19, 8(r4)
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	and r16, r1, r21
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	setlt.u r5, r12, r16
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r5, zero, .LBB0_377
# %bb.376:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_378
.LBB0_377:                              #   in Loop: Header=BB0_375 Depth=3
	or r6, r1, r17
.LBB0_378:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r5, zero, .LBB0_380
# %bb.379:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_381
.LBB0_380:                              #   in Loop: Header=BB0_375 Depth=3
	or r18, r19, r17
.LBB0_381:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r7, zero, .LBB0_383
# %bb.382:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_384
.LBB0_383:                              #   in Loop: Header=BB0_375 Depth=3
	or r20, r13, r17
.LBB0_384:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r24, zero, .LBB0_386
# %bb.385:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 552 19 is_stmt 1              # parallel-rne.mlir:552:19
	setlt.u r7, r23, r7
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r7, zero, .LBB0_387
	j .LBB0_388
.LBB0_386:                              #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 552 19 is_stmt 1              # parallel-rne.mlir:552:19
	setlt.u r7, r23, r7
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r7, zero, .LBB0_388
.LBB0_387:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_388:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	setlt.u r5, r23, r5
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r5, zero, .LBB0_391
# %bb.389:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r5, zero, .LBB0_392
.LBB0_390:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r5, zero, .LBB0_374
	j .LBB0_393
.LBB0_391:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r5, zero, .LBB0_390
.LBB0_392:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r5, zero, .LBB0_374
.LBB0_393:                              # %vector.body574
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_374
.LBB0_394:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	.loc	1 532 7                         # parallel-rne.mlir:532:7
	mfence { sm }
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	addli r1, zero, 6
	bneq r13, r1, .LBB0_250
.LBB0_395:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_397
.LBB0_396:                              # %middle.block572
                                        #   in Loop: Header=BB0_397 Depth=2
	.loc	1 567 9 is_stmt 1               # parallel-rne.mlir:567:9
	addli r1, r30, -4152
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_418
.LBB0_397:                              # %.preheader162
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_399 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_399
.LBB0_398:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 568 11 is_stmt 1              # parallel-rne.mlir:568:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 568 11                        # parallel-rne.mlir:568:11
	setneq.d r1, r[10:11], r[14:15]
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	add.s r4, r4, r5
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 568 11                        # parallel-rne.mlir:568:11
	beq r1, zero, .LBB0_396
.LBB0_399:                              # %vector.body568
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_397 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	loads.w r1, 12(r4)
	loads.w r26, 0(r4)
	loads.w r13, 4(r4)
	loads.w r19, 8(r4)
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	and r16, r1, r21
	.loc	1 573 19                        # parallel-rne.mlir:573:19
	setlt.u r5, r12, r16
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r5, zero, .LBB0_401
# %bb.400:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_402
.LBB0_401:                              #   in Loop: Header=BB0_399 Depth=3
	or r6, r1, r17
.LBB0_402:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r5, zero, .LBB0_404
# %bb.403:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_405
.LBB0_404:                              #   in Loop: Header=BB0_399 Depth=3
	or r18, r19, r17
.LBB0_405:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r7, zero, .LBB0_407
# %bb.406:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_408
.LBB0_407:                              #   in Loop: Header=BB0_399 Depth=3
	or r20, r13, r17
.LBB0_408:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	bneq r24, zero, .LBB0_410
# %bb.409:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 580 19 is_stmt 1              # parallel-rne.mlir:580:19
	setlt.u r7, r23, r7
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	beq r7, zero, .LBB0_411
	j .LBB0_412
.LBB0_410:                              #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 580 19 is_stmt 1              # parallel-rne.mlir:580:19
	setlt.u r7, r23, r7
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	bneq r7, zero, .LBB0_412
.LBB0_411:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_412:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	setlt.u r5, r23, r5
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	beq r5, zero, .LBB0_415
# %bb.413:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	beq r5, zero, .LBB0_416
.LBB0_414:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	bneq r5, zero, .LBB0_398
	j .LBB0_417
.LBB0_415:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	bneq r5, zero, .LBB0_414
.LBB0_416:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	bneq r5, zero, .LBB0_398
.LBB0_417:                              # %vector.body568
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_398
.LBB0_418:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	mfence { sm }
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	addli r1, zero, 7
	bneq r13, r1, .LBB0_443
.LBB0_419:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_421
.LBB0_420:                              # %middle.block566
                                        #   in Loop: Header=BB0_421 Depth=2
	.loc	1 595 9 is_stmt 1               # parallel-rne.mlir:595:9
	addli r1, r30, -4144
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	setlt.ul r1, r[2:3], r[4:5]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_442
.LBB0_421:                              # %.preheader161
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_423 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	j .LBB0_423
.LBB0_422:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 596 11 is_stmt 1              # parallel-rne.mlir:596:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 611 13                        # parallel-rne.mlir:611:13
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 596 11                        # parallel-rne.mlir:596:11
	setneq.d r1, r[10:11], r[14:15]
	.loc	1 611 13                        # parallel-rne.mlir:611:13
	add.s r4, r4, r5
	stores.w r6, 12(r4)
	stores.w r18, 8(r4)
	stores.w r20, 4(r4)
	stores.w r24, 0(r4)
	.loc	1 596 11                        # parallel-rne.mlir:596:11
	beq r1, zero, .LBB0_420
.LBB0_423:                              # %vector.body562
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_421 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	add.ul r[4:5], r[10:11], r[8:9]
	slli r4, r4, 2
	loads.w r1, 12(r4)
	loads.w r26, 0(r4)
	loads.w r13, 4(r4)
	loads.w r19, 8(r4)
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	and r16, r1, r21
	.loc	1 601 19                        # parallel-rne.mlir:601:19
	setlt.u r5, r12, r16
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r5, zero, .LBB0_425
# %bb.424:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r1, 0
	j .LBB0_426
.LBB0_425:                              #   in Loop: Header=BB0_423 Depth=3
	or r6, r1, r17
.LBB0_426:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	and r25, r19, r21
	setlt.u r5, r12, r25
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r5, zero, .LBB0_428
# %bb.427:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	j .LBB0_429
.LBB0_428:                              #   in Loop: Header=BB0_423 Depth=3
	or r18, r19, r17
.LBB0_429:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	and r5, r13, r21
	setlt.u r7, r12, r5
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r7, zero, .LBB0_431
# %bb.430:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_432
.LBB0_431:                              #   in Loop: Header=BB0_423 Depth=3
	or r20, r13, r17
.LBB0_432:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	and r7, r26, r21
	setlt.u r24, r12, r7
	.loc	1 602 19                        # parallel-rne.mlir:602:19
	bneq r24, zero, .LBB0_434
# %bb.433:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
	.loc	1 608 19 is_stmt 1              # parallel-rne.mlir:608:19
	setlt.u r7, r23, r7
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	beq r7, zero, .LBB0_435
	j .LBB0_436
.LBB0_434:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r24, r26, r17
	.loc	1 608 19 is_stmt 1              # parallel-rne.mlir:608:19
	setlt.u r7, r23, r7
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r7, zero, .LBB0_436
.LBB0_435:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r26, 16
	lui r24, 1048560
	andi r7, r7, 1
	add.s r7, r26, r7
	add.s r7, r7, r27
	and r24, r7, r24
.LBB0_436:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	setlt.u r5, r23, r5
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	beq r5, zero, .LBB0_439
# %bb.437:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r25
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	beq r5, zero, .LBB0_440
.LBB0_438:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r16
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r5, zero, .LBB0_422
	j .LBB0_441
.LBB0_439:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r27
	and r20, r5, r7
	setlt.u r5, r23, r25
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r5, zero, .LBB0_438
.LBB0_440:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r19, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r27
	and r18, r5, r7
	setlt.u r5, r23, r16
	.loc	1 609 19                        # parallel-rne.mlir:609:19
	bneq r5, zero, .LBB0_422
.LBB0_441:                              # %vector.body562
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r27
	and r6, r1, r5
	j .LBB0_422
.LBB0_442:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	mfence { sm }
.LBB0_443:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	addli r1, zero, 3
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	sync_core
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	bneq r13, r1, .LBB0_445
# %bb.444:                              # %.critedge16
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 14
	.loc	1 618 7 is_stmt 1               # parallel-rne.mlir:618:7
	addli r1, zero, 26
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	xsignal r2, 0
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	xsignal r1, 0
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	addli r1, zero, 27
	xsignal r1, 0
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r1, zero, 30
	xsignal r1, 0
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	addli r1, zero, 24
	xsignal r1, 0
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	addli r1, zero, 25
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	xwait r2, 0
	addli r2, zero, 15
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	xwait r1, 0
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	addli r1, zero, 33
	xwait r1, 0
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	addli r1, zero, 35
	xwait r1, 0
	j .LBB0_447
.LBB0_445:                              # %.critedge11
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	addli r1, zero, 5
	addli r2, zero, 15
	bneq r13, r1, .LBB0_447
# %bb.446:                              # %.critedge13
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	addli r4, zero, 2
	addli r8, zero, 1023
	lui r7, 260096
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	addli r5, zero, 27
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	xwait r1, 0
	addli r1, zero, 32
	xwait r1, 0
	lock zero, r4
	lui r1, 258048
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 1
	ew_cfg zero, r8, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	loadli.w r2,  -4096(r30)                # 4-byte Folded Reload
	loadli.w r3,  -4116(r30)                # 4-byte Folded Reload
	hp_ssmul r3, r2, r2, 0
	addli r3, zero, 31
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r3, 0
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	addli r3, zero, 26
	xwait r3, 0
	addli r3, zero, 34
	xwait r3, 0
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, r1, 19
	loadli.w r3,  -4108(r30)                # 4-byte Folded Reload
	dsmul r3, r2, r2, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	xwait r5, 0
	addli r5, zero, 36
	xwait r5, 0
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, r1, 19
	loadli.w r1,  -4112(r30)                # 4-byte Folded Reload
	dsmul r1, r3, r2, 0
	addli r1, zero, 25
	addli r2, zero, 15
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r1, 0
	addli r1, zero, 33
	xsignal r1, 0
	addli r1, zero, 35
	xsignal r1, 0
.LBB0_447:                              # %.critedge18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	xfence
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	addli r1, zero, 255
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	mfence { lm, sm, gm }
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	csr_set csr5, r1
	sync_core
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	beq r13, zero, .LBB0_455
# %bb.448:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 672 7                         # parallel-rne.mlir:672:7
	addli r1, zero, 1
	beq r13, r1, .LBB0_468
.LBB0_449:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 707 7                         # parallel-rne.mlir:707:7
	addli r1, zero, 2
	beq r13, r1, .LBB0_481
.LBB0_450:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 742 7                         # parallel-rne.mlir:742:7
	addli r1, zero, 3
	beq r13, r1, .LBB0_494
.LBB0_451:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 777 7                         # parallel-rne.mlir:777:7
	beq r13, r6, .LBB0_507
.LBB0_452:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 812 7                         # parallel-rne.mlir:812:7
	addli r1, zero, 5
	beq r13, r1, .LBB0_520
.LBB0_453:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 847 7                         # parallel-rne.mlir:847:7
	addli r1, zero, 6
	beq r13, r1, .LBB0_533
.LBB0_454:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 882 7                         # parallel-rne.mlir:882:7
	addli r1, zero, 7
	beq r13, r1, .LBB0_546
	j .LBB0_559
.LBB0_455:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	addli r3, r30, -4224
	.loc	1 637 7 is_stmt 1               # parallel-rne.mlir:637:7
	xfence
	mfence { lm, sm, gm }
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli.d r[2:3], r[1:2], 0
	j .LBB0_457
.LBB0_456:                              # %middle.block560
                                        #   in Loop: Header=BB0_457 Depth=2
	.loc	1 644 9                         # parallel-rne.mlir:644:9
	addli r3, r30, -4200
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_467
.LBB0_457:                              # %.preheader160
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_459 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	addli r1, r30, -4224
	load.d r[25:26], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_459
.LBB0_458:                              # %vector.body554
                                        #   in Loop: Header=BB0_459 Depth=3
	.loc	1 645 11 is_stmt 1              # parallel-rne.mlir:645:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 667 13                        # parallel-rne.mlir:667:13
	stores.w r18, 12(r4)
	stores.w r5, 8(r4)
	stores.w r24, 4(r4)
	stores.w r6, 0(r4)
	.loc	1 645 11                        # parallel-rne.mlir:645:11
	setneq.d r1, r[25:26], r[14:15]
	beq r1, zero, .LBB0_456
.LBB0_459:                              # %vector.body554
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_457 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	add.ul r[4:5], r[25:26], r[2:3]
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	add.s r1, r4, r1
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	add.s r6, r4, r5
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	loadli.w r5,  -4112(r30)                # 4-byte Folded Reload
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	loads.w r8, 0(r1)
	loads.w r20, 8(r1)
	loads.w r16, 12(r1)
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	loads.w r9, 0(r6)
	loads.w r7, 4(r6)
	loads.w r27, 8(r6)
	loads.w r19, 12(r6)
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	add.s r24, r4, r5
	.loc	1 646 19                        # parallel-rne.mlir:646:19
	loads.w r5, 4(r1)
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	loads.w r1, 12(r24)
	loads.w r13, 8(r24)
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	and r6, r8, r21
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	and r8, r9, r21
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	seteq r9, r6, r12
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	seteq r11, r6, zero
	.loc	1 657 19                        # parallel-rne.mlir:657:19
	seteq r10, r8, r12
	.loc	1 655 19                        # parallel-rne.mlir:655:19
	seteq r18, r8, zero
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	max.u r6, r6, r8
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	loads.w r8, 4(r24)
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	setlt.u r6, r12, r6
	.loc	1 656 19                        # parallel-rne.mlir:656:19
	and r9, r9, r18
	.loc	1 659 19                        # parallel-rne.mlir:659:19
	and r10, r11, r10
	lui r18, 523264
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	or r9, r9, r10
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	or r9, r6, r9
	lui r6, 523264
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	bneq r9, zero, .LBB0_461
# %bb.460:                              # %vector.body554
                                        #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r24)
.LBB0_461:                              # %vector.body554
                                        #   in Loop: Header=BB0_459 Depth=3
	and r5, r5, r21
	and r7, r7, r21
	seteq r9, r5, r12
	seteq r24, r5, zero
	seteq r10, r7, zero
	seteq r11, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r9, r10
	and r9, r24, r11
	lui r24, 523264
	or r7, r7, r9
	or r5, r5, r7
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	bneq r5, zero, .LBB0_463
# %bb.462:                              # %vector.body554
                                        #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r8, 0
.LBB0_463:                              # %vector.body554
                                        #   in Loop: Header=BB0_459 Depth=3
	and r5, r20, r21
	and r7, r27, r21
	seteq r8, r5, r12
	seteq r11, r5, zero
	seteq r9, r7, zero
	seteq r10, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r11, r10
	or r7, r7, r8
	or r7, r5, r7
	lui r5, 523264
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	bneq r7, zero, .LBB0_465
# %bb.464:                              # %vector.body554
                                        #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_465:                              # %vector.body554
                                        #   in Loop: Header=BB0_459 Depth=3
	and r7, r16, r21
	and r8, r19, r21
	seteq r9, r7, r12
	seteq r13, r7, zero
	seteq r10, r8, zero
	seteq r11, r8, r12
	max.u r7, r7, r8
	setlt.u r7, r12, r7
	and r8, r9, r10
	and r9, r13, r11
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	bneq r7, zero, .LBB0_458
# %bb.466:                              # %vector.body554
                                        #   in Loop: Header=BB0_459 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_458
.LBB0_467:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 637 7 is_stmt 1               # parallel-rne.mlir:637:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r2, zero, 15
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 672 7                         # parallel-rne.mlir:672:7
	addli r1, zero, 1
	bneq r13, r1, .LBB0_449
.LBB0_468:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[2:3], r6
	mfence { lm, sm, gm }
	j .LBB0_470
.LBB0_469:                              # %middle.block552
                                        #   in Loop: Header=BB0_470 Depth=2
	.loc	1 679 9                         # parallel-rne.mlir:679:9
	addli r3, r30, -4192
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_480
.LBB0_470:                              # %.preheader159
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_472 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_472
.LBB0_471:                              # %vector.body546
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 680 11 is_stmt 1              # parallel-rne.mlir:680:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 702 13                        # parallel-rne.mlir:702:13
	stores.w r18, 12(r4)
	stores.w r5, 8(r4)
	stores.w r24, 4(r4)
	stores.w r6, 0(r4)
	.loc	1 680 11                        # parallel-rne.mlir:680:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_469
.LBB0_472:                              # %vector.body546
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_470 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	add.ul r[4:5], r[10:11], r[2:3]
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	add.s r1, r4, r1
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	add.s r6, r4, r5
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	loadli.w r5,  -4112(r30)                # 4-byte Folded Reload
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	loads.w r13, 0(r1)
	loads.w r20, 8(r1)
	loads.w r16, 12(r1)
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	loads.w r18, 0(r6)
	loads.w r7, 4(r6)
	loads.w r25, 8(r6)
	loads.w r19, 12(r6)
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	add.s r24, r4, r5
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	loads.w r5, 4(r1)
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	loads.w r1, 12(r24)
	loads.w r26, 4(r24)
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	and r6, r13, r21
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	loads.w r13, 8(r24)
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	and r18, r18, r21
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	seteq r27, r6, r12
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	seteq r22, r6, zero
	.loc	1 690 19                        # parallel-rne.mlir:690:19
	seteq r8, r18, zero
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	seteq r9, r18, r12
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	max.u r6, r6, r18
	lui r18, 523264
	setlt.u r6, r12, r6
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	and r8, r27, r8
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	and r9, r22, r9
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	or r8, r8, r9
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	or r8, r6, r8
	lui r6, 523264
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r8, zero, .LBB0_474
# %bb.473:                              # %vector.body546
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r24)
.LBB0_474:                              # %vector.body546
                                        #   in Loop: Header=BB0_472 Depth=3
	and r5, r5, r21
	and r7, r7, r21
	seteq r8, r5, r12
	seteq r24, r5, zero
	seteq r9, r7, zero
	seteq r22, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r24, r22
	lui r24, 523264
	or r7, r7, r8
	or r5, r5, r7
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r5, zero, .LBB0_476
# %bb.475:                              # %vector.body546
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
.LBB0_476:                              # %vector.body546
                                        #   in Loop: Header=BB0_472 Depth=3
	and r5, r20, r21
	and r7, r25, r21
	seteq r8, r5, r12
	seteq r22, r5, zero
	seteq r9, r7, zero
	seteq r20, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r22, r20
	or r7, r7, r8
	or r7, r5, r7
	lui r5, 523264
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r7, zero, .LBB0_478
# %bb.477:                              # %vector.body546
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_478:                              # %vector.body546
                                        #   in Loop: Header=BB0_472 Depth=3
	and r7, r16, r21
	and r8, r19, r21
	seteq r9, r7, r12
	seteq r19, r7, zero
	seteq r13, r8, zero
	seteq r16, r8, r12
	max.u r7, r7, r8
	setlt.u r7, r12, r7
	and r8, r9, r13
	and r9, r19, r16
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r7, zero, .LBB0_471
# %bb.479:                              # %vector.body546
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_471
.LBB0_480:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 672 7 is_stmt 1               # parallel-rne.mlir:672:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r2, zero, 15
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 707 7                         # parallel-rne.mlir:707:7
	addli r1, zero, 2
	bneq r13, r1, .LBB0_450
.LBB0_481:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 707 7                         # parallel-rne.mlir:707:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_483
.LBB0_482:                              # %middle.block544
                                        #   in Loop: Header=BB0_483 Depth=2
	.loc	1 714 9 is_stmt 1               # parallel-rne.mlir:714:9
	addli r3, r30, -4184
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_493
.LBB0_483:                              # %.preheader158
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_485 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_485
.LBB0_484:                              # %vector.body538
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 715 11 is_stmt 1              # parallel-rne.mlir:715:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 737 13                        # parallel-rne.mlir:737:13
	stores.w r18, 12(r4)
	stores.w r5, 8(r4)
	stores.w r24, 4(r4)
	stores.w r6, 0(r4)
	.loc	1 715 11                        # parallel-rne.mlir:715:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_482
.LBB0_485:                              # %vector.body538
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_483 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	add.ul r[4:5], r[10:11], r[2:3]
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	add.s r1, r4, r1
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	add.s r6, r4, r5
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	loadli.w r5,  -4112(r30)                # 4-byte Folded Reload
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	loads.w r13, 0(r1)
	loads.w r20, 8(r1)
	loads.w r16, 12(r1)
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	loads.w r18, 0(r6)
	loads.w r7, 4(r6)
	loads.w r25, 8(r6)
	loads.w r19, 12(r6)
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	add.s r24, r4, r5
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	loads.w r5, 4(r1)
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	loads.w r1, 12(r24)
	loads.w r26, 4(r24)
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	and r6, r13, r21
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	loads.w r13, 8(r24)
	.loc	1 721 19                        # parallel-rne.mlir:721:19
	and r18, r18, r21
	.loc	1 724 19                        # parallel-rne.mlir:724:19
	seteq r22, r6, r12
	.loc	1 728 19                        # parallel-rne.mlir:728:19
	seteq r9, r6, zero
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	seteq r8, r18, r12
	.loc	1 725 19                        # parallel-rne.mlir:725:19
	seteq r27, r18, zero
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	max.u r6, r6, r18
	setlt.u r6, r12, r6
	.loc	1 726 19                        # parallel-rne.mlir:726:19
	and r18, r22, r27
	.loc	1 729 19                        # parallel-rne.mlir:729:19
	and r8, r9, r8
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	or r8, r18, r8
	lui r18, 523264
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	or r8, r6, r8
	lui r6, 523264
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	bneq r8, zero, .LBB0_487
# %bb.486:                              # %vector.body538
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r24)
.LBB0_487:                              # %vector.body538
                                        #   in Loop: Header=BB0_485 Depth=3
	and r5, r5, r21
	and r7, r7, r21
	seteq r8, r5, r12
	seteq r24, r5, zero
	seteq r9, r7, zero
	seteq r22, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r24, r22
	lui r24, 523264
	or r7, r7, r8
	or r5, r5, r7
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	bneq r5, zero, .LBB0_489
# %bb.488:                              # %vector.body538
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
.LBB0_489:                              # %vector.body538
                                        #   in Loop: Header=BB0_485 Depth=3
	and r5, r20, r21
	and r7, r25, r21
	seteq r8, r5, r12
	seteq r22, r5, zero
	seteq r9, r7, zero
	seteq r20, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r22, r20
	or r7, r7, r8
	or r7, r5, r7
	lui r5, 523264
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	bneq r7, zero, .LBB0_491
# %bb.490:                              # %vector.body538
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_491:                              # %vector.body538
                                        #   in Loop: Header=BB0_485 Depth=3
	and r7, r16, r21
	and r8, r19, r21
	seteq r9, r7, r12
	seteq r19, r7, zero
	seteq r13, r8, zero
	seteq r16, r8, r12
	max.u r7, r7, r8
	setlt.u r7, r12, r7
	and r8, r9, r13
	and r9, r19, r16
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	bneq r7, zero, .LBB0_484
# %bb.492:                              # %vector.body538
                                        #   in Loop: Header=BB0_485 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_484
.LBB0_493:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 707 7 is_stmt 1               # parallel-rne.mlir:707:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r2, zero, 15
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 742 7                         # parallel-rne.mlir:742:7
	addli r1, zero, 3
	bneq r13, r1, .LBB0_451
.LBB0_494:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 742 7                         # parallel-rne.mlir:742:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_496
.LBB0_495:                              # %middle.block536
                                        #   in Loop: Header=BB0_496 Depth=2
	.loc	1 749 9 is_stmt 1               # parallel-rne.mlir:749:9
	addli r3, r30, -4176
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_506
.LBB0_496:                              # %.preheader157
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_498 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_498
.LBB0_497:                              # %vector.body530
                                        #   in Loop: Header=BB0_498 Depth=3
	.loc	1 750 11 is_stmt 1              # parallel-rne.mlir:750:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 772 13                        # parallel-rne.mlir:772:13
	stores.w r18, 12(r4)
	stores.w r5, 8(r4)
	stores.w r24, 4(r4)
	stores.w r6, 0(r4)
	.loc	1 750 11                        # parallel-rne.mlir:750:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_495
.LBB0_498:                              # %vector.body530
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_496 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	add.ul r[4:5], r[10:11], r[2:3]
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	add.s r1, r4, r1
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	add.s r6, r4, r5
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	loadli.w r5,  -4112(r30)                # 4-byte Folded Reload
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	loads.w r13, 0(r1)
	loads.w r20, 8(r1)
	loads.w r16, 12(r1)
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	loads.w r18, 0(r6)
	loads.w r7, 4(r6)
	loads.w r25, 8(r6)
	loads.w r19, 12(r6)
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	add.s r24, r4, r5
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	loads.w r5, 4(r1)
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	loads.w r1, 12(r24)
	loads.w r26, 4(r24)
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	and r6, r13, r21
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	loads.w r13, 8(r24)
	.loc	1 756 19                        # parallel-rne.mlir:756:19
	and r18, r18, r21
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	seteq r22, r6, r12
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	seteq r9, r6, zero
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	seteq r8, r18, r12
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	seteq r27, r18, zero
	.loc	1 768 19                        # parallel-rne.mlir:768:19
	max.u r6, r6, r18
	setlt.u r6, r12, r6
	.loc	1 761 19                        # parallel-rne.mlir:761:19
	and r18, r22, r27
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	and r8, r9, r8
	.loc	1 765 19                        # parallel-rne.mlir:765:19
	or r8, r18, r8
	lui r18, 523264
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	or r8, r6, r8
	lui r6, 523264
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	bneq r8, zero, .LBB0_500
# %bb.499:                              # %vector.body530
                                        #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r24)
.LBB0_500:                              # %vector.body530
                                        #   in Loop: Header=BB0_498 Depth=3
	and r5, r5, r21
	and r7, r7, r21
	seteq r8, r5, r12
	seteq r24, r5, zero
	seteq r9, r7, zero
	seteq r22, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r24, r22
	lui r24, 523264
	or r7, r7, r8
	or r5, r5, r7
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	bneq r5, zero, .LBB0_502
# %bb.501:                              # %vector.body530
                                        #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
.LBB0_502:                              # %vector.body530
                                        #   in Loop: Header=BB0_498 Depth=3
	and r5, r20, r21
	and r7, r25, r21
	seteq r8, r5, r12
	seteq r22, r5, zero
	seteq r9, r7, zero
	seteq r20, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r22, r20
	or r7, r7, r8
	or r7, r5, r7
	lui r5, 523264
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	bneq r7, zero, .LBB0_504
# %bb.503:                              # %vector.body530
                                        #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_504:                              # %vector.body530
                                        #   in Loop: Header=BB0_498 Depth=3
	and r7, r16, r21
	and r8, r19, r21
	seteq r9, r7, r12
	seteq r19, r7, zero
	seteq r13, r8, zero
	seteq r16, r8, r12
	max.u r7, r7, r8
	setlt.u r7, r12, r7
	and r8, r9, r13
	and r9, r19, r16
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	bneq r7, zero, .LBB0_497
# %bb.505:                              # %vector.body530
                                        #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_497
.LBB0_506:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 742 7 is_stmt 1               # parallel-rne.mlir:742:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r2, zero, 15
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 777 7                         # parallel-rne.mlir:777:7
	bneq r13, r6, .LBB0_452
.LBB0_507:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 777 7                         # parallel-rne.mlir:777:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_509
.LBB0_508:                              # %middle.block528
                                        #   in Loop: Header=BB0_509 Depth=2
	.loc	1 784 9 is_stmt 1               # parallel-rne.mlir:784:9
	addli r3, r30, -4168
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_519
.LBB0_509:                              # %.preheader156
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_511 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_511
.LBB0_510:                              # %vector.body522
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 785 11 is_stmt 1              # parallel-rne.mlir:785:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 807 13                        # parallel-rne.mlir:807:13
	stores.w r18, 12(r4)
	stores.w r5, 8(r4)
	stores.w r24, 4(r4)
	stores.w r6, 0(r4)
	.loc	1 785 11                        # parallel-rne.mlir:785:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_508
.LBB0_511:                              # %vector.body522
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_509 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	add.ul r[4:5], r[10:11], r[2:3]
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	add.s r1, r4, r1
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	add.s r6, r4, r5
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	loadli.w r5,  -4112(r30)                # 4-byte Folded Reload
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	loads.w r13, 0(r1)
	loads.w r20, 8(r1)
	loads.w r16, 12(r1)
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	loads.w r18, 0(r6)
	loads.w r7, 4(r6)
	loads.w r25, 8(r6)
	loads.w r19, 12(r6)
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	add.s r24, r4, r5
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	loads.w r5, 4(r1)
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	loads.w r1, 12(r24)
	loads.w r26, 4(r24)
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	and r6, r13, r21
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	loads.w r13, 8(r24)
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	and r18, r18, r21
	.loc	1 794 19                        # parallel-rne.mlir:794:19
	seteq r22, r6, r12
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	seteq r9, r6, zero
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	seteq r8, r18, r12
	.loc	1 795 19                        # parallel-rne.mlir:795:19
	seteq r27, r18, zero
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	max.u r6, r6, r18
	setlt.u r6, r12, r6
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	and r18, r22, r27
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	and r8, r9, r8
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	or r8, r18, r8
	lui r18, 523264
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	or r8, r6, r8
	lui r6, 523264
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	bneq r8, zero, .LBB0_513
# %bb.512:                              # %vector.body522
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r24)
.LBB0_513:                              # %vector.body522
                                        #   in Loop: Header=BB0_511 Depth=3
	and r5, r5, r21
	and r7, r7, r21
	seteq r8, r5, r12
	seteq r24, r5, zero
	seteq r9, r7, zero
	seteq r22, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r24, r22
	lui r24, 523264
	or r7, r7, r8
	or r5, r5, r7
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	bneq r5, zero, .LBB0_515
# %bb.514:                              # %vector.body522
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
.LBB0_515:                              # %vector.body522
                                        #   in Loop: Header=BB0_511 Depth=3
	and r5, r20, r21
	and r7, r25, r21
	seteq r8, r5, r12
	seteq r22, r5, zero
	seteq r9, r7, zero
	seteq r20, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r22, r20
	or r7, r7, r8
	or r7, r5, r7
	lui r5, 523264
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	bneq r7, zero, .LBB0_517
# %bb.516:                              # %vector.body522
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_517:                              # %vector.body522
                                        #   in Loop: Header=BB0_511 Depth=3
	and r7, r16, r21
	and r8, r19, r21
	seteq r9, r7, r12
	seteq r19, r7, zero
	seteq r13, r8, zero
	seteq r16, r8, r12
	max.u r7, r7, r8
	setlt.u r7, r12, r7
	and r8, r9, r13
	and r9, r19, r16
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	bneq r7, zero, .LBB0_510
# %bb.518:                              # %vector.body522
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_510
.LBB0_519:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 777 7 is_stmt 1               # parallel-rne.mlir:777:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r2, zero, 15
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 812 7                         # parallel-rne.mlir:812:7
	addli r1, zero, 5
	bneq r13, r1, .LBB0_453
.LBB0_520:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 812 7                         # parallel-rne.mlir:812:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_522
.LBB0_521:                              # %middle.block520
                                        #   in Loop: Header=BB0_522 Depth=2
	.loc	1 819 9 is_stmt 1               # parallel-rne.mlir:819:9
	addli r3, r30, -4160
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_532
.LBB0_522:                              # %.preheader155
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_524 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_524
.LBB0_523:                              # %vector.body514
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 820 11 is_stmt 1              # parallel-rne.mlir:820:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 842 13                        # parallel-rne.mlir:842:13
	stores.w r18, 12(r4)
	stores.w r5, 8(r4)
	stores.w r24, 4(r4)
	stores.w r6, 0(r4)
	.loc	1 820 11                        # parallel-rne.mlir:820:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_521
.LBB0_524:                              # %vector.body514
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_522 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	add.ul r[4:5], r[10:11], r[2:3]
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	add.s r1, r4, r1
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	add.s r6, r4, r5
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	loadli.w r5,  -4112(r30)                # 4-byte Folded Reload
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	loads.w r13, 0(r1)
	loads.w r20, 8(r1)
	loads.w r16, 12(r1)
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	loads.w r18, 0(r6)
	loads.w r7, 4(r6)
	loads.w r25, 8(r6)
	loads.w r19, 12(r6)
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	add.s r24, r4, r5
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	loads.w r5, 4(r1)
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	loads.w r1, 12(r24)
	loads.w r26, 4(r24)
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	and r6, r13, r21
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	loads.w r13, 8(r24)
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	and r18, r18, r21
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	seteq r22, r6, r12
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	seteq r9, r6, zero
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	seteq r8, r18, r12
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	seteq r27, r18, zero
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	max.u r6, r6, r18
	setlt.u r6, r12, r6
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	and r18, r22, r27
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	and r8, r9, r8
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	or r8, r18, r8
	lui r18, 523264
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	or r8, r6, r8
	lui r6, 523264
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	bneq r8, zero, .LBB0_526
# %bb.525:                              # %vector.body514
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r24)
.LBB0_526:                              # %vector.body514
                                        #   in Loop: Header=BB0_524 Depth=3
	and r5, r5, r21
	and r7, r7, r21
	seteq r8, r5, r12
	seteq r24, r5, zero
	seteq r9, r7, zero
	seteq r22, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r24, r22
	lui r24, 523264
	or r7, r7, r8
	or r5, r5, r7
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	bneq r5, zero, .LBB0_528
# %bb.527:                              # %vector.body514
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
.LBB0_528:                              # %vector.body514
                                        #   in Loop: Header=BB0_524 Depth=3
	and r5, r20, r21
	and r7, r25, r21
	seteq r8, r5, r12
	seteq r22, r5, zero
	seteq r9, r7, zero
	seteq r20, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r22, r20
	or r7, r7, r8
	or r7, r5, r7
	lui r5, 523264
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	bneq r7, zero, .LBB0_530
# %bb.529:                              # %vector.body514
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_530:                              # %vector.body514
                                        #   in Loop: Header=BB0_524 Depth=3
	and r7, r16, r21
	and r8, r19, r21
	seteq r9, r7, r12
	seteq r19, r7, zero
	seteq r13, r8, zero
	seteq r16, r8, r12
	max.u r7, r7, r8
	setlt.u r7, r12, r7
	and r8, r9, r13
	and r9, r19, r16
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	bneq r7, zero, .LBB0_523
# %bb.531:                              # %vector.body514
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_523
.LBB0_532:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 812 7 is_stmt 1               # parallel-rne.mlir:812:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r2, zero, 15
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 847 7                         # parallel-rne.mlir:847:7
	addli r1, zero, 6
	bneq r13, r1, .LBB0_454
.LBB0_533:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 847 7                         # parallel-rne.mlir:847:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_535
.LBB0_534:                              # %middle.block512
                                        #   in Loop: Header=BB0_535 Depth=2
	.loc	1 854 9 is_stmt 1               # parallel-rne.mlir:854:9
	addli r3, r30, -4152
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_545
.LBB0_535:                              # %.preheader154
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_537 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_537
.LBB0_536:                              # %vector.body506
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 855 11 is_stmt 1              # parallel-rne.mlir:855:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 877 13                        # parallel-rne.mlir:877:13
	stores.w r18, 12(r4)
	stores.w r5, 8(r4)
	stores.w r24, 4(r4)
	stores.w r6, 0(r4)
	.loc	1 855 11                        # parallel-rne.mlir:855:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_534
.LBB0_537:                              # %vector.body506
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_535 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	add.ul r[4:5], r[10:11], r[2:3]
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	add.s r1, r4, r1
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	add.s r6, r4, r5
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	loadli.w r5,  -4112(r30)                # 4-byte Folded Reload
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	loads.w r13, 0(r1)
	loads.w r20, 8(r1)
	loads.w r16, 12(r1)
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	loads.w r18, 0(r6)
	loads.w r7, 4(r6)
	loads.w r25, 8(r6)
	loads.w r19, 12(r6)
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	add.s r24, r4, r5
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	loads.w r5, 4(r1)
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	loads.w r1, 12(r24)
	loads.w r26, 4(r24)
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	and r6, r13, r21
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	loads.w r13, 8(r24)
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	and r18, r18, r21
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	seteq r22, r6, r12
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	seteq r9, r6, zero
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	seteq r8, r18, r12
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	seteq r27, r18, zero
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	max.u r6, r6, r18
	setlt.u r6, r12, r6
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	and r18, r22, r27
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	and r8, r9, r8
	.loc	1 870 19                        # parallel-rne.mlir:870:19
	or r8, r18, r8
	lui r18, 523264
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	or r8, r6, r8
	lui r6, 523264
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	bneq r8, zero, .LBB0_539
# %bb.538:                              # %vector.body506
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r24)
.LBB0_539:                              # %vector.body506
                                        #   in Loop: Header=BB0_537 Depth=3
	and r5, r5, r21
	and r7, r7, r21
	seteq r8, r5, r12
	seteq r24, r5, zero
	seteq r9, r7, zero
	seteq r22, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r24, r22
	lui r24, 523264
	or r7, r7, r8
	or r5, r5, r7
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	bneq r5, zero, .LBB0_541
# %bb.540:                              # %vector.body506
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
.LBB0_541:                              # %vector.body506
                                        #   in Loop: Header=BB0_537 Depth=3
	and r5, r20, r21
	and r7, r25, r21
	seteq r8, r5, r12
	seteq r22, r5, zero
	seteq r9, r7, zero
	seteq r20, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r22, r20
	or r7, r7, r8
	or r7, r5, r7
	lui r5, 523264
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	bneq r7, zero, .LBB0_543
# %bb.542:                              # %vector.body506
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_543:                              # %vector.body506
                                        #   in Loop: Header=BB0_537 Depth=3
	and r7, r16, r21
	and r8, r19, r21
	seteq r9, r7, r12
	seteq r19, r7, zero
	seteq r13, r8, zero
	seteq r16, r8, r12
	max.u r7, r7, r8
	setlt.u r7, r12, r7
	and r8, r9, r13
	and r9, r19, r16
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	bneq r7, zero, .LBB0_536
# %bb.544:                              # %vector.body506
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_536
.LBB0_545:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 847 7 is_stmt 1               # parallel-rne.mlir:847:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r2, zero, 15
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 882 7                         # parallel-rne.mlir:882:7
	addli r1, zero, 7
	bneq r13, r1, .LBB0_559
.LBB0_546:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 882 7                         # parallel-rne.mlir:882:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_548
.LBB0_547:                              # %middle.block504
                                        #   in Loop: Header=BB0_548 Depth=2
	.loc	1 889 9 is_stmt 1               # parallel-rne.mlir:889:9
	addli r3, r30, -4144
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_558
.LBB0_548:                              # %.preheader153
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_550 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_550
.LBB0_549:                              # %vector.body498
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 890 11 is_stmt 1              # parallel-rne.mlir:890:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 912 13                        # parallel-rne.mlir:912:13
	stores.w r18, 12(r4)
	stores.w r5, 8(r4)
	stores.w r24, 4(r4)
	stores.w r6, 0(r4)
	.loc	1 890 11                        # parallel-rne.mlir:890:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_547
.LBB0_550:                              # %vector.body498
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_548 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	add.ul r[4:5], r[10:11], r[2:3]
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	slli r4, r4, 2
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	loadli.w r5,  -4096(r30)                # 4-byte Folded Reload
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	add.s r1, r4, r1
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	add.s r6, r4, r5
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	loadli.w r5,  -4112(r30)                # 4-byte Folded Reload
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	loads.w r13, 0(r1)
	loads.w r20, 8(r1)
	loads.w r16, 12(r1)
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	loads.w r18, 0(r6)
	loads.w r7, 4(r6)
	loads.w r25, 8(r6)
	loads.w r19, 12(r6)
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	add.s r24, r4, r5
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	loads.w r5, 4(r1)
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	loads.w r1, 12(r24)
	loads.w r26, 4(r24)
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	and r6, r13, r21
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	loads.w r13, 8(r24)
	.loc	1 896 19                        # parallel-rne.mlir:896:19
	and r18, r18, r21
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	seteq r22, r6, r12
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	seteq r9, r6, zero
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	seteq r8, r18, r12
	.loc	1 900 19                        # parallel-rne.mlir:900:19
	seteq r27, r18, zero
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	max.u r6, r6, r18
	setlt.u r6, r12, r6
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	and r18, r22, r27
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	and r8, r9, r8
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	or r8, r18, r8
	lui r18, 523264
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	or r8, r6, r8
	lui r6, 523264
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	bneq r8, zero, .LBB0_552
# %bb.551:                              # %vector.body498
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r24)
.LBB0_552:                              # %vector.body498
                                        #   in Loop: Header=BB0_550 Depth=3
	and r5, r5, r21
	and r7, r7, r21
	seteq r8, r5, r12
	seteq r24, r5, zero
	seteq r9, r7, zero
	seteq r22, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r24, r22
	lui r24, 523264
	or r7, r7, r8
	or r5, r5, r7
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	bneq r5, zero, .LBB0_554
# %bb.553:                              # %vector.body498
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r26, 0
.LBB0_554:                              # %vector.body498
                                        #   in Loop: Header=BB0_550 Depth=3
	and r5, r20, r21
	and r7, r25, r21
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	seteq r8, r5, r12
	seteq r22, r5, zero
	seteq r9, r7, zero
	seteq r20, r7, r12
	max.u r5, r5, r7
	setlt.u r5, r12, r5
	and r7, r8, r9
	and r8, r22, r20
	or r7, r7, r8
	or r7, r5, r7
	lui r5, 523264
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	bneq r7, zero, .LBB0_556
# %bb.555:                              # %vector.body498
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_556:                              # %vector.body498
                                        #   in Loop: Header=BB0_550 Depth=3
	and r7, r16, r21
	and r8, r19, r21
	seteq r9, r7, r12
	seteq r19, r7, zero
	seteq r13, r8, zero
	seteq r16, r8, r12
	max.u r7, r7, r8
	setlt.u r7, r12, r7
	and r8, r9, r13
	and r9, r19, r16
	or r8, r8, r9
	or r7, r7, r8
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	bneq r7, zero, .LBB0_549
# %bb.557:                              # %vector.body498
                                        #   in Loop: Header=BB0_550 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	j .LBB0_549
.LBB0_558:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 882 7 is_stmt 1               # parallel-rne.mlir:882:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	addli r2, zero, 15
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
.LBB0_559:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 917 7                         # parallel-rne.mlir:917:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 918 7                         # parallel-rne.mlir:918:7
	addli r1, zero, 3
	.loc	1 917 7                         # parallel-rne.mlir:917:7
	sync_core
	.loc	1 918 7                         # parallel-rne.mlir:918:7
	bneq r13, r1, .LBB0_561
# %bb.560:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	addli r1, zero, 28
	.loc	1 918 7                         # parallel-rne.mlir:918:7
	xsignal r2, 0
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	xsignal r1, 0
	.loc	1 920 7                         # parallel-rne.mlir:920:7
	addli r1, zero, 34
	xsignal r1, 0
	.loc	1 921 7                         # parallel-rne.mlir:921:7
	addli r1, zero, 36
	xsignal r1, 0
	.loc	1 926 7                         # parallel-rne.mlir:926:7
	addli r1, zero, 37
	xwait r1, 0
	.loc	1 927 7                         # parallel-rne.mlir:927:7
	addli r1, zero, 41
	xwait r1, 0
	j .LBB0_563
.LBB0_561:                              # %.critedge22
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	addli r1, zero, 5
	bneq r13, r1, .LBB0_563
# %bb.562:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 15
	addli r3, zero, 2
	lui r2, 260096
	addli r4, zero, 1023
	xwait r1, 0
	addli r1, zero, 28
	xwait r1, 0
	addli r1, zero, 38
	xwait r1, 0
	lock zero, r3
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -4296(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r2, r1, zero, 0
	addli r1, zero, 1
	ew_cfg zero, r4, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, r1, 19
	loadli.w r2,  -4096(r30)                # 4-byte Folded Reload
	dsmadd r22, r2, zero, 0
	addli r2, zero, 16
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r2, 0
	.loc	1 924 7                         # parallel-rne.mlir:924:7
	lock zero, r3
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -4300(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg zero, r4, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	addli r1, zero, 37
	hp_ssmul r22, r22, r22, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r1, 0
.LBB0_563:                              # %.critedge26
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 929 7                         # parallel-rne.mlir:929:7
	xfence
	.loc	1 931 7                         # parallel-rne.mlir:931:7
	addli r1, zero, 255
	.loc	1 930 7                         # parallel-rne.mlir:930:7
	mfence { lm, sm, gm }
	.loc	1 931 7                         # parallel-rne.mlir:931:7
	csr_set csr5, r1
	sync_core
	.loc	1 932 7                         # parallel-rne.mlir:932:7
	beq r13, zero, .LBB0_565
# %bb.564:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 948 7                         # parallel-rne.mlir:948:7
	addli r1, zero, 1
	beq r13, r1, .LBB0_570
	j .LBB0_575
.LBB0_565:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 932 7                         # parallel-rne.mlir:932:7
	xfence
	zext_int2long r[3:4], zero
	addli r1, r30, -4136
	mfence { lm, sm, gm }
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
.LBB0_566:                              # %.preheader152
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_567 Depth 3
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 5
	loadli.w r17,  -4104(r30)               # 4-byte Folded Reload
	sll.d r[5:6], r[3:4], r1
	addli r1, r30, -4136
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
.LBB0_567:                              # %vector.body491
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_566 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 941 19 is_stmt 1              # parallel-rne.mlir:941:19
	add.ul r[9:10], r[7:8], r[5:6]
	.loc	1 940 11                        # parallel-rne.mlir:940:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	slli r9, r9, 2
	.loc	1 940 11                        # parallel-rne.mlir:940:11
	setneq.d r10, r[7:8], r[14:15]
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	add.s r11, r9, r22
	.loc	1 943 13                        # parallel-rne.mlir:943:13
	add.s r9, r9, r17
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	loads.d r[18:19], 8(r11)
	loads.d r[24:25], 0(r11)
	loads.d r[26:27], 24(r11)
	loads.d r[1:2], 16(r11)
	.loc	1 943 13                        # parallel-rne.mlir:943:13
	stores.d r[18:19], 8(r9)
	stores.d r[24:25], 0(r9)
	stores.d r[26:27], 24(r9)
	stores.d r[1:2], 16(r9)
	.loc	1 940 11                        # parallel-rne.mlir:940:11
	bneq r10, zero, .LBB0_567
# %bb.568:                              # %middle.block496
                                        #   in Loop: Header=BB0_566 Depth=2
	.loc	1 939 9                         # parallel-rne.mlir:939:9
	addli r5, r30, -4200
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[3:4], r[3:4], 1
	bneq r1, zero, .LBB0_566
# %bb.569:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 932 7                         # parallel-rne.mlir:932:7
	mfence { sm }
	addli r6, zero, 4
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 948 7                         # parallel-rne.mlir:948:7
	addli r1, zero, 1
	bneq r13, r1, .LBB0_575
.LBB0_570:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[1:2], r6
	mfence { lm, sm, gm }
.LBB0_571:                              # %.preheader151
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_572 Depth 3
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 5
	loadli.w r17,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[5:6], zero
	sll.d r[3:4], r[1:2], r3
.LBB0_572:                              # %vector.body484
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_571 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 957 19 is_stmt 1              # parallel-rne.mlir:957:19
	add.ul r[7:8], r[5:6], r[3:4]
	.loc	1 956 11                        # parallel-rne.mlir:956:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	slli r7, r7, 2
	.loc	1 956 11                        # parallel-rne.mlir:956:11
	setneq.d r8, r[5:6], r[14:15]
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	add.s r9, r7, r22
	.loc	1 959 13                        # parallel-rne.mlir:959:13
	add.s r7, r7, r17
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	loads.d r[10:11], 8(r9)
	loads.d r[18:19], 0(r9)
	loads.d r[24:25], 24(r9)
	loads.d r[26:27], 16(r9)
	.loc	1 959 13                        # parallel-rne.mlir:959:13
	stores.d r[10:11], 8(r7)
	stores.d r[18:19], 0(r7)
	stores.d r[24:25], 24(r7)
	stores.d r[26:27], 16(r7)
	.loc	1 956 11                        # parallel-rne.mlir:956:11
	bneq r8, zero, .LBB0_572
# %bb.573:                              # %middle.block489
                                        #   in Loop: Header=BB0_571 Depth=2
	.loc	1 955 9                         # parallel-rne.mlir:955:9
	addli r5, r30, -4192
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	bneq r3, zero, .LBB0_571
# %bb.574:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 948 7                         # parallel-rne.mlir:948:7
	mfence { sm }
	addli r6, zero, 4
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
.LBB0_575:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 964 7                         # parallel-rne.mlir:964:7
	addli r1, zero, 2
	lui r17, 1024
	beq r13, r1, .LBB0_581
# %bb.576:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 980 7                         # parallel-rne.mlir:980:7
	addli r1, zero, 3
	beq r13, r1, .LBB0_586
.LBB0_577:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 996 7                         # parallel-rne.mlir:996:7
	beq r13, r6, .LBB0_591
.LBB0_578:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1012 7                        # parallel-rne.mlir:1012:7
	addli r1, zero, 5
	beq r13, r1, .LBB0_596
.LBB0_579:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	addli r1, zero, 6
	beq r13, r1, .LBB0_601
.LBB0_580:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	addli r1, zero, 7
	beq r13, r1, .LBB0_606
	j .LBB0_611
.LBB0_581:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 964 7 is_stmt 1               # parallel-rne.mlir:964:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
.LBB0_582:                              # %.preheader150
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_583 Depth 3
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 5
	loadli.w r20,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[5:6], zero
	sll.d r[3:4], r[1:2], r3
.LBB0_583:                              # %vector.body477
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_582 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 973 19 is_stmt 1              # parallel-rne.mlir:973:19
	add.ul r[7:8], r[5:6], r[3:4]
	.loc	1 972 11                        # parallel-rne.mlir:972:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 973 19                        # parallel-rne.mlir:973:19
	slli r7, r7, 2
	.loc	1 972 11                        # parallel-rne.mlir:972:11
	setneq.d r8, r[5:6], r[14:15]
	.loc	1 973 19                        # parallel-rne.mlir:973:19
	add.s r9, r7, r22
	.loc	1 975 13                        # parallel-rne.mlir:975:13
	add.s r7, r7, r20
	.loc	1 973 19                        # parallel-rne.mlir:973:19
	loads.d r[10:11], 8(r9)
	loads.d r[18:19], 0(r9)
	loads.d r[24:25], 24(r9)
	loads.d r[26:27], 16(r9)
	.loc	1 975 13                        # parallel-rne.mlir:975:13
	stores.d r[10:11], 8(r7)
	stores.d r[18:19], 0(r7)
	stores.d r[24:25], 24(r7)
	stores.d r[26:27], 16(r7)
	.loc	1 972 11                        # parallel-rne.mlir:972:11
	bneq r8, zero, .LBB0_583
# %bb.584:                              # %middle.block482
                                        #   in Loop: Header=BB0_582 Depth=2
	.loc	1 971 9                         # parallel-rne.mlir:971:9
	addli r5, r30, -4184
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	bneq r3, zero, .LBB0_582
# %bb.585:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 964 7                         # parallel-rne.mlir:964:7
	mfence { sm }
	addli r6, zero, 4
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 980 7                         # parallel-rne.mlir:980:7
	addli r1, zero, 3
	bneq r13, r1, .LBB0_577
.LBB0_586:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 980 7                         # parallel-rne.mlir:980:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
.LBB0_587:                              # %.preheader149
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_588 Depth 3
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 5
	loadli.w r20,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[5:6], zero
	sll.d r[3:4], r[1:2], r3
.LBB0_588:                              # %vector.body470
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_587 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 989 19 is_stmt 1              # parallel-rne.mlir:989:19
	add.ul r[7:8], r[5:6], r[3:4]
	.loc	1 988 11                        # parallel-rne.mlir:988:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	slli r7, r7, 2
	.loc	1 988 11                        # parallel-rne.mlir:988:11
	setneq.d r8, r[5:6], r[14:15]
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	add.s r9, r7, r22
	.loc	1 991 13                        # parallel-rne.mlir:991:13
	add.s r7, r7, r20
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	loads.d r[10:11], 8(r9)
	loads.d r[18:19], 0(r9)
	loads.d r[24:25], 24(r9)
	loads.d r[26:27], 16(r9)
	.loc	1 991 13                        # parallel-rne.mlir:991:13
	stores.d r[10:11], 8(r7)
	stores.d r[18:19], 0(r7)
	stores.d r[24:25], 24(r7)
	stores.d r[26:27], 16(r7)
	.loc	1 988 11                        # parallel-rne.mlir:988:11
	bneq r8, zero, .LBB0_588
# %bb.589:                              # %middle.block475
                                        #   in Loop: Header=BB0_587 Depth=2
	.loc	1 987 9                         # parallel-rne.mlir:987:9
	addli r5, r30, -4176
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	bneq r3, zero, .LBB0_587
# %bb.590:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 980 7                         # parallel-rne.mlir:980:7
	mfence { sm }
	addli r6, zero, 4
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 996 7                         # parallel-rne.mlir:996:7
	bneq r13, r6, .LBB0_578
.LBB0_591:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 996 7                         # parallel-rne.mlir:996:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
.LBB0_592:                              # %.preheader148
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_593 Depth 3
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 5
	loadli.w r20,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[5:6], zero
	sll.d r[3:4], r[1:2], r3
.LBB0_593:                              # %vector.body463
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_592 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1005 19 is_stmt 1             # parallel-rne.mlir:1005:19
	add.ul r[7:8], r[5:6], r[3:4]
	.loc	1 1004 11                       # parallel-rne.mlir:1004:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 1005 19                       # parallel-rne.mlir:1005:19
	slli r7, r7, 2
	.loc	1 1004 11                       # parallel-rne.mlir:1004:11
	setneq.d r8, r[5:6], r[14:15]
	.loc	1 1005 19                       # parallel-rne.mlir:1005:19
	add.s r9, r7, r22
	.loc	1 1007 13                       # parallel-rne.mlir:1007:13
	add.s r7, r7, r20
	.loc	1 1005 19                       # parallel-rne.mlir:1005:19
	loads.d r[10:11], 8(r9)
	loads.d r[18:19], 0(r9)
	loads.d r[24:25], 24(r9)
	loads.d r[26:27], 16(r9)
	.loc	1 1007 13                       # parallel-rne.mlir:1007:13
	stores.d r[10:11], 8(r7)
	stores.d r[18:19], 0(r7)
	stores.d r[24:25], 24(r7)
	stores.d r[26:27], 16(r7)
	.loc	1 1004 11                       # parallel-rne.mlir:1004:11
	bneq r8, zero, .LBB0_593
# %bb.594:                              # %middle.block468
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 1003 9                        # parallel-rne.mlir:1003:9
	addli r5, r30, -4168
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	bneq r3, zero, .LBB0_592
# %bb.595:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 996 7                         # parallel-rne.mlir:996:7
	mfence { sm }
	addli r6, zero, 4
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 1012 7                        # parallel-rne.mlir:1012:7
	addli r1, zero, 5
	bneq r13, r1, .LBB0_579
.LBB0_596:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 1012 7                        # parallel-rne.mlir:1012:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
.LBB0_597:                              # %.preheader147
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_598 Depth 3
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 5
	loadli.w r20,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[5:6], zero
	sll.d r[3:4], r[1:2], r3
.LBB0_598:                              # %vector.body456
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_597 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1021 19 is_stmt 1             # parallel-rne.mlir:1021:19
	add.ul r[7:8], r[5:6], r[3:4]
	.loc	1 1020 11                       # parallel-rne.mlir:1020:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	slli r7, r7, 2
	.loc	1 1020 11                       # parallel-rne.mlir:1020:11
	setneq.d r8, r[5:6], r[14:15]
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	add.s r9, r7, r22
	.loc	1 1023 13                       # parallel-rne.mlir:1023:13
	add.s r7, r7, r20
	.loc	1 1021 19                       # parallel-rne.mlir:1021:19
	loads.d r[10:11], 8(r9)
	loads.d r[18:19], 0(r9)
	loads.d r[24:25], 24(r9)
	loads.d r[26:27], 16(r9)
	.loc	1 1023 13                       # parallel-rne.mlir:1023:13
	stores.d r[10:11], 8(r7)
	stores.d r[18:19], 0(r7)
	stores.d r[24:25], 24(r7)
	stores.d r[26:27], 16(r7)
	.loc	1 1020 11                       # parallel-rne.mlir:1020:11
	bneq r8, zero, .LBB0_598
# %bb.599:                              # %middle.block461
                                        #   in Loop: Header=BB0_597 Depth=2
	.loc	1 1019 9                        # parallel-rne.mlir:1019:9
	addli r5, r30, -4160
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	bneq r3, zero, .LBB0_597
# %bb.600:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1012 7                        # parallel-rne.mlir:1012:7
	mfence { sm }
	addli r6, zero, 4
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	addli r1, zero, 6
	bneq r13, r1, .LBB0_580
.LBB0_601:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
.LBB0_602:                              # %.preheader146
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_603 Depth 3
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 5
	loadli.w r20,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[5:6], zero
	sll.d r[3:4], r[1:2], r3
.LBB0_603:                              # %vector.body449
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_602 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1037 19 is_stmt 1             # parallel-rne.mlir:1037:19
	add.ul r[7:8], r[5:6], r[3:4]
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	slli r7, r7, 2
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	setneq.d r8, r[5:6], r[14:15]
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	add.s r9, r7, r22
	.loc	1 1039 13                       # parallel-rne.mlir:1039:13
	add.s r7, r7, r20
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	loads.d r[10:11], 8(r9)
	loads.d r[18:19], 0(r9)
	loads.d r[24:25], 24(r9)
	loads.d r[26:27], 16(r9)
	.loc	1 1039 13                       # parallel-rne.mlir:1039:13
	stores.d r[10:11], 8(r7)
	stores.d r[18:19], 0(r7)
	stores.d r[24:25], 24(r7)
	stores.d r[26:27], 16(r7)
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	bneq r8, zero, .LBB0_603
# %bb.604:                              # %middle.block454
                                        #   in Loop: Header=BB0_602 Depth=2
	.loc	1 1035 9                        # parallel-rne.mlir:1035:9
	addli r5, r30, -4152
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	bneq r3, zero, .LBB0_602
# %bb.605:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	mfence { sm }
	addli r6, zero, 4
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	addli r1, zero, 7
	bneq r13, r1, .LBB0_611
.LBB0_606:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
.LBB0_607:                              # %.preheader145
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_608 Depth 3
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 5
	loadli.w r20,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[5:6], zero
	sll.d r[3:4], r[1:2], r3
.LBB0_608:                              # %vector.body442
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_607 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1053 19 is_stmt 1             # parallel-rne.mlir:1053:19
	add.ul r[7:8], r[5:6], r[3:4]
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	slli r7, r7, 2
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	setneq.d r8, r[5:6], r[14:15]
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	add.s r9, r7, r22
	.loc	1 1055 13                       # parallel-rne.mlir:1055:13
	add.s r7, r7, r20
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	loads.d r[10:11], 8(r9)
	loads.d r[18:19], 0(r9)
	loads.d r[24:25], 24(r9)
	loads.d r[26:27], 16(r9)
	.loc	1 1055 13                       # parallel-rne.mlir:1055:13
	stores.d r[10:11], 8(r7)
	stores.d r[18:19], 0(r7)
	stores.d r[24:25], 24(r7)
	stores.d r[26:27], 16(r7)
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	bneq r8, zero, .LBB0_608
# %bb.609:                              # %middle.block447
                                        #   in Loop: Header=BB0_607 Depth=2
	.loc	1 1051 9                        # parallel-rne.mlir:1051:9
	addli r5, r30, -4144
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	bneq r3, zero, .LBB0_607
# %bb.610:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	mfence { sm }
	addli r6, zero, 4
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
.LBB0_611:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1060 7                        # parallel-rne.mlir:1060:7
	addli r1, zero, 255
	.loc	1 1061 7                        # parallel-rne.mlir:1061:7
	addli r2, zero, 3
	.loc	1 1060 7                        # parallel-rne.mlir:1060:7
	csr_set csr5, r1
	addli r1, zero, 1
	sync_core
	.loc	1 1061 7                        # parallel-rne.mlir:1061:7
	bneq r13, r2, .LBB0_613
# %bb.612:                              # %.critedge28
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 38
	addli r3, zero, 39
	xsignal r2, 0
	.loc	1 1064 7                        # parallel-rne.mlir:1064:7
	addli r2, zero, 16
	.loc	1 1062 7                        # parallel-rne.mlir:1062:7
	xsignal r3, 0
	.loc	1 1064 7                        # parallel-rne.mlir:1064:7
	xwait r2, 0
	.loc	1 1065 7                        # parallel-rne.mlir:1065:7
	xwait r3, 0
.LBB0_613:                              # %.critedge30
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1067 7                        # parallel-rne.mlir:1067:7
	xfence
	.loc	1 1069 7                        # parallel-rne.mlir:1069:7
	addli r2, zero, 255
	.loc	1 1068 7                        # parallel-rne.mlir:1068:7
	mfence { lm, sm, gm }
	.loc	1 1069 7                        # parallel-rne.mlir:1069:7
	csr_set csr5, r2
	sync_core
	.loc	1 1070 7                        # parallel-rne.mlir:1070:7
	beq r13, zero, .LBB0_621
# %bb.614:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1091 7                        # parallel-rne.mlir:1091:7
	beq r13, r1, .LBB0_642
.LBB0_615:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1112 7                        # parallel-rne.mlir:1112:7
	addli r1, zero, 2
	beq r13, r1, .LBB0_663
.LBB0_616:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1133 7                        # parallel-rne.mlir:1133:7
	addli r1, zero, 3
	beq r13, r1, .LBB0_684
.LBB0_617:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1154 7                        # parallel-rne.mlir:1154:7
	beq r13, r6, .LBB0_705
.LBB0_618:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1175 7                        # parallel-rne.mlir:1175:7
	addli r1, zero, 5
	beq r13, r1, .LBB0_726
.LBB0_619:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1196 7                        # parallel-rne.mlir:1196:7
	addli r1, zero, 6
	beq r13, r1, .LBB0_747
.LBB0_620:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1217 7                        # parallel-rne.mlir:1217:7
	addli r1, zero, 7
	beq r13, r1, .LBB0_768
	j .LBB0_789
.LBB0_621:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1070 7                        # parallel-rne.mlir:1070:7
	xfence
	zext_int2long r[1:2], zero
	addli r3, r30, -4224
	lui r11, 524288
	lui r13, 268288
	mfence { lm, sm, gm }
	loadli.w r7,  -4104(r30)                # 4-byte Folded Reload
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli.d r[2:3], r[1:2], 0
	j .LBB0_623
.LBB0_622:                              # %middle.block440
                                        #   in Loop: Header=BB0_623 Depth=2
	.loc	1 1077 9                        # parallel-rne.mlir:1077:9
	addli r3, r30, -4200
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_641
.LBB0_623:                              # %.preheader144
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_625 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	addli r1, r30, -4224
	load.d r[25:26], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_625
.LBB0_624:                              # %vector.body435
                                        #   in Loop: Header=BB0_625 Depth=3
	.loc	1 1078 11 is_stmt 1             # parallel-rne.mlir:1078:11
	addli.d r[25:26], r[25:26], 8
	.loc	1 1086 13                       # parallel-rne.mlir:1086:13
	stores.w r10, 12(r4)
	stores.w r9, 8(r4)
	stores.w r8, 4(r4)
	stores.w r6, 0(r4)
	stores.w r27, 28(r4)
	stores.w r20, 24(r4)
	stores.w r18, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1078 11                       # parallel-rne.mlir:1078:11
	setneq.d r1, r[25:26], r[14:15]
	beq r1, zero, .LBB0_622
.LBB0_625:                              # %vector.body435
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_623 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1079 19                       # parallel-rne.mlir:1079:19
	add.ul r[4:5], r[25:26], r[2:3]
	slli r4, r4, 2
	add.s r1, r4, r7
	loads.w r6, 0(r1)
	loads.w r10, 12(r1)
	loads.w r9, 8(r1)
	loads.w r8, 4(r1)
	loads.w r27, 28(r1)
	loads.w r20, 24(r1)
	loads.w r18, 20(r1)
	loads.w r16, 16(r1)
	.loc	1 1082 19                       # parallel-rne.mlir:1082:19
	and r1, r6, r21
	.loc	1 1083 19                       # parallel-rne.mlir:1083:19
	setlt.u r1, r13, r1
	.loc	1 1084 19                       # parallel-rne.mlir:1084:19
	beq r1, zero, .LBB0_627
# %bb.626:                              #   in Loop: Header=BB0_625 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r11
	or r6, r1, r13
.LBB0_627:                              # %vector.body435
                                        #   in Loop: Header=BB0_625 Depth=3
	and r1, r8, r21
	setlt.u r1, r13, r1
	.loc	1 1084 19                       # parallel-rne.mlir:1084:19
	beq r1, zero, .LBB0_629
# %bb.628:                              #   in Loop: Header=BB0_625 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r8, r11
	or r8, r1, r13
.LBB0_629:                              # %vector.body435
                                        #   in Loop: Header=BB0_625 Depth=3
	and r1, r9, r21
	setlt.u r1, r13, r1
	.loc	1 1084 19                       # parallel-rne.mlir:1084:19
	beq r1, zero, .LBB0_631
# %bb.630:                              #   in Loop: Header=BB0_625 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r9, r11
	or r9, r1, r13
.LBB0_631:                              # %vector.body435
                                        #   in Loop: Header=BB0_625 Depth=3
	and r1, r10, r21
	setlt.u r1, r13, r1
	.loc	1 1084 19                       # parallel-rne.mlir:1084:19
	beq r1, zero, .LBB0_633
# %bb.632:                              #   in Loop: Header=BB0_625 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r10, r11
	or r10, r1, r13
.LBB0_633:                              # %vector.body435
                                        #   in Loop: Header=BB0_625 Depth=3
	and r1, r16, r21
	setlt.u r1, r13, r1
	.loc	1 1084 19                       # parallel-rne.mlir:1084:19
	beq r1, zero, .LBB0_635
# %bb.634:                              #   in Loop: Header=BB0_625 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r11
	or r16, r1, r13
.LBB0_635:                              # %vector.body435
                                        #   in Loop: Header=BB0_625 Depth=3
	and r1, r18, r21
	setlt.u r1, r13, r1
	.loc	1 1084 19                       # parallel-rne.mlir:1084:19
	beq r1, zero, .LBB0_637
# %bb.636:                              #   in Loop: Header=BB0_625 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r11
	or r18, r1, r13
.LBB0_637:                              # %vector.body435
                                        #   in Loop: Header=BB0_625 Depth=3
	and r1, r20, r21
	setlt.u r1, r13, r1
	.loc	1 1084 19                       # parallel-rne.mlir:1084:19
	beq r1, zero, .LBB0_639
# %bb.638:                              #   in Loop: Header=BB0_625 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r11
	or r20, r1, r13
.LBB0_639:                              # %vector.body435
                                        #   in Loop: Header=BB0_625 Depth=3
	and r1, r27, r21
	setlt.u r1, r13, r1
	.loc	1 1084 19                       # parallel-rne.mlir:1084:19
	beq r1, zero, .LBB0_624
# %bb.640:                              #   in Loop: Header=BB0_625 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r27, r11
	or r27, r1, r13
	j .LBB0_624
.LBB0_641:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1070 7 is_stmt 1              # parallel-rne.mlir:1070:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r1, zero, 1
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 1091 7                        # parallel-rne.mlir:1091:7
	bneq r13, r1, .LBB0_615
.LBB0_642:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[2:3], r6
	lui r9, 524288
	lui r13, 268288
	mfence { lm, sm, gm }
	loadli.w r7,  -4104(r30)                # 4-byte Folded Reload
	j .LBB0_644
.LBB0_643:                              # %middle.block433
                                        #   in Loop: Header=BB0_644 Depth=2
	.loc	1 1098 9                        # parallel-rne.mlir:1098:9
	addli r3, r30, -4192
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_662
.LBB0_644:                              # %.preheader143
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_646 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_646
.LBB0_645:                              # %vector.body428
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 1099 11 is_stmt 1             # parallel-rne.mlir:1099:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1107 13                       # parallel-rne.mlir:1107:13
	stores.w r8, 12(r4)
	stores.w r27, 8(r4)
	stores.w r26, 4(r4)
	stores.w r6, 0(r4)
	stores.w r25, 28(r4)
	stores.w r20, 24(r4)
	stores.w r18, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1099 11                       # parallel-rne.mlir:1099:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_643
.LBB0_646:                              # %vector.body428
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_644 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1100 19                       # parallel-rne.mlir:1100:19
	add.ul r[4:5], r[10:11], r[2:3]
	slli r4, r4, 2
	add.s r1, r4, r7
	loads.w r6, 0(r1)
	loads.w r8, 12(r1)
	loads.w r27, 8(r1)
	loads.w r26, 4(r1)
	loads.w r25, 28(r1)
	loads.w r20, 24(r1)
	loads.w r18, 20(r1)
	loads.w r16, 16(r1)
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	and r1, r6, r21
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	setlt.u r1, r13, r1
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	beq r1, zero, .LBB0_648
# %bb.647:                              #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r9
	or r6, r1, r13
.LBB0_648:                              # %vector.body428
                                        #   in Loop: Header=BB0_646 Depth=3
	and r1, r26, r21
	setlt.u r1, r13, r1
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	beq r1, zero, .LBB0_650
# %bb.649:                              #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r26, r9
	or r26, r1, r13
.LBB0_650:                              # %vector.body428
                                        #   in Loop: Header=BB0_646 Depth=3
	and r1, r27, r21
	setlt.u r1, r13, r1
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	beq r1, zero, .LBB0_652
# %bb.651:                              #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r27, r9
	or r27, r1, r13
.LBB0_652:                              # %vector.body428
                                        #   in Loop: Header=BB0_646 Depth=3
	and r1, r8, r21
	setlt.u r1, r13, r1
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	beq r1, zero, .LBB0_654
# %bb.653:                              #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r8, r9
	or r8, r1, r13
.LBB0_654:                              # %vector.body428
                                        #   in Loop: Header=BB0_646 Depth=3
	and r1, r16, r21
	setlt.u r1, r13, r1
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	beq r1, zero, .LBB0_656
# %bb.655:                              #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r9
	or r16, r1, r13
.LBB0_656:                              # %vector.body428
                                        #   in Loop: Header=BB0_646 Depth=3
	and r1, r18, r21
	setlt.u r1, r13, r1
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	beq r1, zero, .LBB0_658
# %bb.657:                              #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r9
	or r18, r1, r13
.LBB0_658:                              # %vector.body428
                                        #   in Loop: Header=BB0_646 Depth=3
	and r1, r20, r21
	setlt.u r1, r13, r1
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	beq r1, zero, .LBB0_660
# %bb.659:                              #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r9
	or r20, r1, r13
.LBB0_660:                              # %vector.body428
                                        #   in Loop: Header=BB0_646 Depth=3
	and r1, r25, r21
	setlt.u r1, r13, r1
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	beq r1, zero, .LBB0_645
# %bb.661:                              #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r9
	or r25, r1, r13
	j .LBB0_645
.LBB0_662:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1091 7 is_stmt 1              # parallel-rne.mlir:1091:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 1112 7                        # parallel-rne.mlir:1112:7
	addli r1, zero, 2
	bneq r13, r1, .LBB0_616
.LBB0_663:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 8
	lui r9, 524288
	lui r13, 268288
	mfence { lm, sm, gm }
	loadli.w r7,  -4104(r30)                # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_665
.LBB0_664:                              # %middle.block426
                                        #   in Loop: Header=BB0_665 Depth=2
	.loc	1 1119 9                        # parallel-rne.mlir:1119:9
	addli r3, r30, -4184
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_683
.LBB0_665:                              # %.preheader142
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_667 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_667
.LBB0_666:                              # %vector.body421
                                        #   in Loop: Header=BB0_667 Depth=3
	.loc	1 1120 11 is_stmt 1             # parallel-rne.mlir:1120:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1128 13                       # parallel-rne.mlir:1128:13
	stores.w r8, 12(r4)
	stores.w r27, 8(r4)
	stores.w r26, 4(r4)
	stores.w r6, 0(r4)
	stores.w r25, 28(r4)
	stores.w r20, 24(r4)
	stores.w r18, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1120 11                       # parallel-rne.mlir:1120:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_664
.LBB0_667:                              # %vector.body421
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_665 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1121 19                       # parallel-rne.mlir:1121:19
	add.ul r[4:5], r[10:11], r[2:3]
	slli r4, r4, 2
	add.s r1, r4, r7
	loads.w r6, 0(r1)
	loads.w r8, 12(r1)
	loads.w r27, 8(r1)
	loads.w r26, 4(r1)
	loads.w r25, 28(r1)
	loads.w r20, 24(r1)
	loads.w r18, 20(r1)
	loads.w r16, 16(r1)
	.loc	1 1124 19                       # parallel-rne.mlir:1124:19
	and r1, r6, r21
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	setlt.u r1, r13, r1
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	beq r1, zero, .LBB0_669
# %bb.668:                              #   in Loop: Header=BB0_667 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r9
	or r6, r1, r13
.LBB0_669:                              # %vector.body421
                                        #   in Loop: Header=BB0_667 Depth=3
	and r1, r26, r21
	setlt.u r1, r13, r1
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	beq r1, zero, .LBB0_671
# %bb.670:                              #   in Loop: Header=BB0_667 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r26, r9
	or r26, r1, r13
.LBB0_671:                              # %vector.body421
                                        #   in Loop: Header=BB0_667 Depth=3
	and r1, r27, r21
	setlt.u r1, r13, r1
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	beq r1, zero, .LBB0_673
# %bb.672:                              #   in Loop: Header=BB0_667 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r27, r9
	or r27, r1, r13
.LBB0_673:                              # %vector.body421
                                        #   in Loop: Header=BB0_667 Depth=3
	and r1, r8, r21
	setlt.u r1, r13, r1
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	beq r1, zero, .LBB0_675
# %bb.674:                              #   in Loop: Header=BB0_667 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r8, r9
	or r8, r1, r13
.LBB0_675:                              # %vector.body421
                                        #   in Loop: Header=BB0_667 Depth=3
	and r1, r16, r21
	setlt.u r1, r13, r1
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	beq r1, zero, .LBB0_677
# %bb.676:                              #   in Loop: Header=BB0_667 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r9
	or r16, r1, r13
.LBB0_677:                              # %vector.body421
                                        #   in Loop: Header=BB0_667 Depth=3
	and r1, r18, r21
	setlt.u r1, r13, r1
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	beq r1, zero, .LBB0_679
# %bb.678:                              #   in Loop: Header=BB0_667 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r9
	or r18, r1, r13
.LBB0_679:                              # %vector.body421
                                        #   in Loop: Header=BB0_667 Depth=3
	and r1, r20, r21
	setlt.u r1, r13, r1
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	beq r1, zero, .LBB0_681
# %bb.680:                              #   in Loop: Header=BB0_667 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r9
	or r20, r1, r13
.LBB0_681:                              # %vector.body421
                                        #   in Loop: Header=BB0_667 Depth=3
	and r1, r25, r21
	setlt.u r1, r13, r1
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	beq r1, zero, .LBB0_666
# %bb.682:                              #   in Loop: Header=BB0_667 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r9
	or r25, r1, r13
	j .LBB0_666
.LBB0_683:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1112 7 is_stmt 1              # parallel-rne.mlir:1112:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 1133 7                        # parallel-rne.mlir:1133:7
	addli r1, zero, 3
	bneq r13, r1, .LBB0_617
.LBB0_684:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 12
	lui r9, 524288
	lui r13, 268288
	mfence { lm, sm, gm }
	loadli.w r7,  -4104(r30)                # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_686
.LBB0_685:                              # %middle.block419
                                        #   in Loop: Header=BB0_686 Depth=2
	.loc	1 1140 9                        # parallel-rne.mlir:1140:9
	addli r3, r30, -4176
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_704
.LBB0_686:                              # %.preheader141
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_688 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_688
.LBB0_687:                              # %vector.body414
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 1141 11 is_stmt 1             # parallel-rne.mlir:1141:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1149 13                       # parallel-rne.mlir:1149:13
	stores.w r8, 12(r4)
	stores.w r27, 8(r4)
	stores.w r26, 4(r4)
	stores.w r6, 0(r4)
	stores.w r25, 28(r4)
	stores.w r20, 24(r4)
	stores.w r18, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1141 11                       # parallel-rne.mlir:1141:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_685
.LBB0_688:                              # %vector.body414
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_686 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	add.ul r[4:5], r[10:11], r[2:3]
	slli r4, r4, 2
	add.s r1, r4, r7
	loads.w r6, 0(r1)
	loads.w r8, 12(r1)
	loads.w r27, 8(r1)
	loads.w r26, 4(r1)
	loads.w r25, 28(r1)
	loads.w r20, 24(r1)
	loads.w r18, 20(r1)
	loads.w r16, 16(r1)
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	and r1, r6, r21
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	setlt.u r1, r13, r1
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	beq r1, zero, .LBB0_690
# %bb.689:                              #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r9
	or r6, r1, r13
.LBB0_690:                              # %vector.body414
                                        #   in Loop: Header=BB0_688 Depth=3
	and r1, r26, r21
	setlt.u r1, r13, r1
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	beq r1, zero, .LBB0_692
# %bb.691:                              #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r26, r9
	or r26, r1, r13
.LBB0_692:                              # %vector.body414
                                        #   in Loop: Header=BB0_688 Depth=3
	and r1, r27, r21
	setlt.u r1, r13, r1
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	beq r1, zero, .LBB0_694
# %bb.693:                              #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r27, r9
	or r27, r1, r13
.LBB0_694:                              # %vector.body414
                                        #   in Loop: Header=BB0_688 Depth=3
	and r1, r8, r21
	setlt.u r1, r13, r1
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	beq r1, zero, .LBB0_696
# %bb.695:                              #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r8, r9
	or r8, r1, r13
.LBB0_696:                              # %vector.body414
                                        #   in Loop: Header=BB0_688 Depth=3
	and r1, r16, r21
	setlt.u r1, r13, r1
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	beq r1, zero, .LBB0_698
# %bb.697:                              #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r9
	or r16, r1, r13
.LBB0_698:                              # %vector.body414
                                        #   in Loop: Header=BB0_688 Depth=3
	and r1, r18, r21
	setlt.u r1, r13, r1
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	beq r1, zero, .LBB0_700
# %bb.699:                              #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r9
	or r18, r1, r13
.LBB0_700:                              # %vector.body414
                                        #   in Loop: Header=BB0_688 Depth=3
	and r1, r20, r21
	setlt.u r1, r13, r1
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	beq r1, zero, .LBB0_702
# %bb.701:                              #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r9
	or r20, r1, r13
.LBB0_702:                              # %vector.body414
                                        #   in Loop: Header=BB0_688 Depth=3
	and r1, r25, r21
	setlt.u r1, r13, r1
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	beq r1, zero, .LBB0_687
# %bb.703:                              #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r9
	or r25, r1, r13
	j .LBB0_687
.LBB0_704:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1133 7 is_stmt 1              # parallel-rne.mlir:1133:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 1154 7                        # parallel-rne.mlir:1154:7
	bneq r13, r6, .LBB0_618
.LBB0_705:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 16
	lui r9, 524288
	lui r13, 268288
	mfence { lm, sm, gm }
	loadli.w r7,  -4104(r30)                # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_707
.LBB0_706:                              # %middle.block412
                                        #   in Loop: Header=BB0_707 Depth=2
	.loc	1 1161 9                        # parallel-rne.mlir:1161:9
	addli r3, r30, -4168
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_725
.LBB0_707:                              # %.preheader140
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_709 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_709
.LBB0_708:                              # %vector.body407
                                        #   in Loop: Header=BB0_709 Depth=3
	.loc	1 1162 11 is_stmt 1             # parallel-rne.mlir:1162:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1170 13                       # parallel-rne.mlir:1170:13
	stores.w r8, 12(r4)
	stores.w r27, 8(r4)
	stores.w r26, 4(r4)
	stores.w r6, 0(r4)
	stores.w r25, 28(r4)
	stores.w r20, 24(r4)
	stores.w r18, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1162 11                       # parallel-rne.mlir:1162:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_706
.LBB0_709:                              # %vector.body407
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_707 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	add.ul r[4:5], r[10:11], r[2:3]
	slli r4, r4, 2
	add.s r1, r4, r7
	loads.w r6, 0(r1)
	loads.w r8, 12(r1)
	loads.w r27, 8(r1)
	loads.w r26, 4(r1)
	loads.w r25, 28(r1)
	loads.w r20, 24(r1)
	loads.w r18, 20(r1)
	loads.w r16, 16(r1)
	.loc	1 1166 19                       # parallel-rne.mlir:1166:19
	and r1, r6, r21
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	setlt.u r1, r13, r1
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	beq r1, zero, .LBB0_711
# %bb.710:                              #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r9
	or r6, r1, r13
.LBB0_711:                              # %vector.body407
                                        #   in Loop: Header=BB0_709 Depth=3
	and r1, r26, r21
	setlt.u r1, r13, r1
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	beq r1, zero, .LBB0_713
# %bb.712:                              #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r26, r9
	or r26, r1, r13
.LBB0_713:                              # %vector.body407
                                        #   in Loop: Header=BB0_709 Depth=3
	and r1, r27, r21
	setlt.u r1, r13, r1
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	beq r1, zero, .LBB0_715
# %bb.714:                              #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r27, r9
	or r27, r1, r13
.LBB0_715:                              # %vector.body407
                                        #   in Loop: Header=BB0_709 Depth=3
	and r1, r8, r21
	setlt.u r1, r13, r1
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	beq r1, zero, .LBB0_717
# %bb.716:                              #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r8, r9
	or r8, r1, r13
.LBB0_717:                              # %vector.body407
                                        #   in Loop: Header=BB0_709 Depth=3
	and r1, r16, r21
	setlt.u r1, r13, r1
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	beq r1, zero, .LBB0_719
# %bb.718:                              #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r9
	or r16, r1, r13
.LBB0_719:                              # %vector.body407
                                        #   in Loop: Header=BB0_709 Depth=3
	and r1, r18, r21
	setlt.u r1, r13, r1
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	beq r1, zero, .LBB0_721
# %bb.720:                              #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r9
	or r18, r1, r13
.LBB0_721:                              # %vector.body407
                                        #   in Loop: Header=BB0_709 Depth=3
	and r1, r20, r21
	setlt.u r1, r13, r1
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	beq r1, zero, .LBB0_723
# %bb.722:                              #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r9
	or r20, r1, r13
.LBB0_723:                              # %vector.body407
                                        #   in Loop: Header=BB0_709 Depth=3
	and r1, r25, r21
	setlt.u r1, r13, r1
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	beq r1, zero, .LBB0_708
# %bb.724:                              #   in Loop: Header=BB0_709 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r9
	or r25, r1, r13
	j .LBB0_708
.LBB0_725:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1154 7 is_stmt 1              # parallel-rne.mlir:1154:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 1175 7                        # parallel-rne.mlir:1175:7
	addli r1, zero, 5
	bneq r13, r1, .LBB0_619
.LBB0_726:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 20
	lui r9, 524288
	lui r13, 268288
	mfence { lm, sm, gm }
	loadli.w r7,  -4104(r30)                # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_728
.LBB0_727:                              # %middle.block405
                                        #   in Loop: Header=BB0_728 Depth=2
	.loc	1 1182 9                        # parallel-rne.mlir:1182:9
	addli r3, r30, -4160
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_746
.LBB0_728:                              # %.preheader139
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_730 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_730
.LBB0_729:                              # %vector.body400
                                        #   in Loop: Header=BB0_730 Depth=3
	.loc	1 1183 11 is_stmt 1             # parallel-rne.mlir:1183:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1191 13                       # parallel-rne.mlir:1191:13
	stores.w r8, 12(r4)
	stores.w r27, 8(r4)
	stores.w r26, 4(r4)
	stores.w r6, 0(r4)
	stores.w r25, 28(r4)
	stores.w r20, 24(r4)
	stores.w r18, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1183 11                       # parallel-rne.mlir:1183:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_727
.LBB0_730:                              # %vector.body400
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_728 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	add.ul r[4:5], r[10:11], r[2:3]
	slli r4, r4, 2
	add.s r1, r4, r7
	loads.w r6, 0(r1)
	loads.w r8, 12(r1)
	loads.w r27, 8(r1)
	loads.w r26, 4(r1)
	loads.w r25, 28(r1)
	loads.w r20, 24(r1)
	loads.w r18, 20(r1)
	loads.w r16, 16(r1)
	.loc	1 1187 19                       # parallel-rne.mlir:1187:19
	and r1, r6, r21
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	setlt.u r1, r13, r1
	.loc	1 1189 19                       # parallel-rne.mlir:1189:19
	beq r1, zero, .LBB0_732
# %bb.731:                              #   in Loop: Header=BB0_730 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r9
	or r6, r1, r13
.LBB0_732:                              # %vector.body400
                                        #   in Loop: Header=BB0_730 Depth=3
	and r1, r26, r21
	setlt.u r1, r13, r1
	.loc	1 1189 19                       # parallel-rne.mlir:1189:19
	beq r1, zero, .LBB0_734
# %bb.733:                              #   in Loop: Header=BB0_730 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r26, r9
	or r26, r1, r13
.LBB0_734:                              # %vector.body400
                                        #   in Loop: Header=BB0_730 Depth=3
	and r1, r27, r21
	setlt.u r1, r13, r1
	.loc	1 1189 19                       # parallel-rne.mlir:1189:19
	beq r1, zero, .LBB0_736
# %bb.735:                              #   in Loop: Header=BB0_730 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r27, r9
	or r27, r1, r13
.LBB0_736:                              # %vector.body400
                                        #   in Loop: Header=BB0_730 Depth=3
	and r1, r8, r21
	setlt.u r1, r13, r1
	.loc	1 1189 19                       # parallel-rne.mlir:1189:19
	beq r1, zero, .LBB0_738
# %bb.737:                              #   in Loop: Header=BB0_730 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r8, r9
	or r8, r1, r13
.LBB0_738:                              # %vector.body400
                                        #   in Loop: Header=BB0_730 Depth=3
	and r1, r16, r21
	setlt.u r1, r13, r1
	.loc	1 1189 19                       # parallel-rne.mlir:1189:19
	beq r1, zero, .LBB0_740
# %bb.739:                              #   in Loop: Header=BB0_730 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r9
	or r16, r1, r13
.LBB0_740:                              # %vector.body400
                                        #   in Loop: Header=BB0_730 Depth=3
	and r1, r18, r21
	setlt.u r1, r13, r1
	.loc	1 1189 19                       # parallel-rne.mlir:1189:19
	beq r1, zero, .LBB0_742
# %bb.741:                              #   in Loop: Header=BB0_730 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r9
	or r18, r1, r13
.LBB0_742:                              # %vector.body400
                                        #   in Loop: Header=BB0_730 Depth=3
	and r1, r20, r21
	setlt.u r1, r13, r1
	.loc	1 1189 19                       # parallel-rne.mlir:1189:19
	beq r1, zero, .LBB0_744
# %bb.743:                              #   in Loop: Header=BB0_730 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r9
	or r20, r1, r13
.LBB0_744:                              # %vector.body400
                                        #   in Loop: Header=BB0_730 Depth=3
	and r1, r25, r21
	setlt.u r1, r13, r1
	.loc	1 1189 19                       # parallel-rne.mlir:1189:19
	beq r1, zero, .LBB0_729
# %bb.745:                              #   in Loop: Header=BB0_730 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r9
	or r25, r1, r13
	j .LBB0_729
.LBB0_746:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1175 7 is_stmt 1              # parallel-rne.mlir:1175:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 1196 7                        # parallel-rne.mlir:1196:7
	addli r1, zero, 6
	bneq r13, r1, .LBB0_620
.LBB0_747:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 24
	lui r9, 524288
	lui r13, 268288
	mfence { lm, sm, gm }
	loadli.w r7,  -4104(r30)                # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_749
.LBB0_748:                              # %middle.block398
                                        #   in Loop: Header=BB0_749 Depth=2
	.loc	1 1203 9                        # parallel-rne.mlir:1203:9
	addli r3, r30, -4152
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_767
.LBB0_749:                              # %.preheader138
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_751 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_751
.LBB0_750:                              # %vector.body393
                                        #   in Loop: Header=BB0_751 Depth=3
	.loc	1 1204 11 is_stmt 1             # parallel-rne.mlir:1204:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1212 13                       # parallel-rne.mlir:1212:13
	stores.w r8, 12(r4)
	stores.w r27, 8(r4)
	stores.w r26, 4(r4)
	stores.w r6, 0(r4)
	stores.w r25, 28(r4)
	stores.w r20, 24(r4)
	stores.w r18, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1204 11                       # parallel-rne.mlir:1204:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_748
.LBB0_751:                              # %vector.body393
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_749 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1205 19                       # parallel-rne.mlir:1205:19
	add.ul r[4:5], r[10:11], r[2:3]
	slli r4, r4, 2
	add.s r1, r4, r7
	loads.w r6, 0(r1)
	loads.w r8, 12(r1)
	loads.w r27, 8(r1)
	loads.w r26, 4(r1)
	loads.w r25, 28(r1)
	loads.w r20, 24(r1)
	loads.w r18, 20(r1)
	loads.w r16, 16(r1)
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	and r1, r6, r21
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	setlt.u r1, r13, r1
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	beq r1, zero, .LBB0_753
# %bb.752:                              #   in Loop: Header=BB0_751 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r9
	or r6, r1, r13
.LBB0_753:                              # %vector.body393
                                        #   in Loop: Header=BB0_751 Depth=3
	and r1, r26, r21
	setlt.u r1, r13, r1
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	beq r1, zero, .LBB0_755
# %bb.754:                              #   in Loop: Header=BB0_751 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r26, r9
	or r26, r1, r13
.LBB0_755:                              # %vector.body393
                                        #   in Loop: Header=BB0_751 Depth=3
	and r1, r27, r21
	setlt.u r1, r13, r1
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	beq r1, zero, .LBB0_757
# %bb.756:                              #   in Loop: Header=BB0_751 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r27, r9
	or r27, r1, r13
.LBB0_757:                              # %vector.body393
                                        #   in Loop: Header=BB0_751 Depth=3
	and r1, r8, r21
	setlt.u r1, r13, r1
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	beq r1, zero, .LBB0_759
# %bb.758:                              #   in Loop: Header=BB0_751 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r8, r9
	or r8, r1, r13
.LBB0_759:                              # %vector.body393
                                        #   in Loop: Header=BB0_751 Depth=3
	and r1, r16, r21
	setlt.u r1, r13, r1
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	beq r1, zero, .LBB0_761
# %bb.760:                              #   in Loop: Header=BB0_751 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r9
	or r16, r1, r13
.LBB0_761:                              # %vector.body393
                                        #   in Loop: Header=BB0_751 Depth=3
	and r1, r18, r21
	setlt.u r1, r13, r1
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	beq r1, zero, .LBB0_763
# %bb.762:                              #   in Loop: Header=BB0_751 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r9
	or r18, r1, r13
.LBB0_763:                              # %vector.body393
                                        #   in Loop: Header=BB0_751 Depth=3
	and r1, r20, r21
	setlt.u r1, r13, r1
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	beq r1, zero, .LBB0_765
# %bb.764:                              #   in Loop: Header=BB0_751 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r9
	or r20, r1, r13
.LBB0_765:                              # %vector.body393
                                        #   in Loop: Header=BB0_751 Depth=3
	and r1, r25, r21
	setlt.u r1, r13, r1
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	beq r1, zero, .LBB0_750
# %bb.766:                              #   in Loop: Header=BB0_751 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r9
	or r25, r1, r13
	j .LBB0_750
.LBB0_767:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1196 7 is_stmt 1              # parallel-rne.mlir:1196:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 1217 7                        # parallel-rne.mlir:1217:7
	addli r1, zero, 7
	bneq r13, r1, .LBB0_789
.LBB0_768:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 28
	lui r9, 524288
	lui r13, 268288
	mfence { lm, sm, gm }
	loadli.w r7,  -4104(r30)                # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_770
.LBB0_769:                              # %middle.block391
                                        #   in Loop: Header=BB0_770 Depth=2
	.loc	1 1224 9                        # parallel-rne.mlir:1224:9
	addli r3, r30, -4144
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_788
.LBB0_770:                              # %.preheader137
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_772 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4136
	addli r1, zero, 5
	zext_int2long r[10:11], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	j .LBB0_772
.LBB0_771:                              # %vector.body386
                                        #   in Loop: Header=BB0_772 Depth=3
	.loc	1 1225 11 is_stmt 1             # parallel-rne.mlir:1225:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1233 13                       # parallel-rne.mlir:1233:13
	stores.w r8, 12(r4)
	stores.w r27, 8(r4)
	stores.w r26, 4(r4)
	stores.w r6, 0(r4)
	stores.w r25, 28(r4)
	stores.w r20, 24(r4)
	stores.w r18, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1225 11                       # parallel-rne.mlir:1225:11
	setneq.d r1, r[10:11], r[14:15]
	beq r1, zero, .LBB0_769
.LBB0_772:                              # %vector.body386
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_770 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1226 19                       # parallel-rne.mlir:1226:19
	add.ul r[4:5], r[10:11], r[2:3]
	slli r4, r4, 2
	add.s r1, r4, r7
	loads.w r6, 0(r1)
	loads.w r8, 12(r1)
	loads.w r27, 8(r1)
	loads.w r26, 4(r1)
	loads.w r25, 28(r1)
	loads.w r20, 24(r1)
	loads.w r18, 20(r1)
	loads.w r16, 16(r1)
	.loc	1 1229 19                       # parallel-rne.mlir:1229:19
	and r1, r6, r21
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	setlt.u r1, r13, r1
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	beq r1, zero, .LBB0_774
# %bb.773:                              #   in Loop: Header=BB0_772 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r6, r9
	or r6, r1, r13
.LBB0_774:                              # %vector.body386
                                        #   in Loop: Header=BB0_772 Depth=3
	and r1, r26, r21
	setlt.u r1, r13, r1
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	beq r1, zero, .LBB0_776
# %bb.775:                              #   in Loop: Header=BB0_772 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r26, r9
	or r26, r1, r13
.LBB0_776:                              # %vector.body386
                                        #   in Loop: Header=BB0_772 Depth=3
	and r1, r27, r21
	setlt.u r1, r13, r1
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	beq r1, zero, .LBB0_778
# %bb.777:                              #   in Loop: Header=BB0_772 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r27, r9
	or r27, r1, r13
.LBB0_778:                              # %vector.body386
                                        #   in Loop: Header=BB0_772 Depth=3
	and r1, r8, r21
	setlt.u r1, r13, r1
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	beq r1, zero, .LBB0_780
# %bb.779:                              #   in Loop: Header=BB0_772 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r8, r9
	or r8, r1, r13
.LBB0_780:                              # %vector.body386
                                        #   in Loop: Header=BB0_772 Depth=3
	and r1, r16, r21
	setlt.u r1, r13, r1
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	beq r1, zero, .LBB0_782
# %bb.781:                              #   in Loop: Header=BB0_772 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r16, r9
	or r16, r1, r13
.LBB0_782:                              # %vector.body386
                                        #   in Loop: Header=BB0_772 Depth=3
	and r1, r18, r21
	setlt.u r1, r13, r1
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	beq r1, zero, .LBB0_784
# %bb.783:                              #   in Loop: Header=BB0_772 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r9
	or r18, r1, r13
.LBB0_784:                              # %vector.body386
                                        #   in Loop: Header=BB0_772 Depth=3
	and r1, r20, r21
	setlt.u r1, r13, r1
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	beq r1, zero, .LBB0_786
# %bb.785:                              #   in Loop: Header=BB0_772 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r9
	or r20, r1, r13
.LBB0_786:                              # %vector.body386
                                        #   in Loop: Header=BB0_772 Depth=3
	and r1, r25, r21
	setlt.u r1, r13, r1
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	beq r1, zero, .LBB0_771
# %bb.787:                              #   in Loop: Header=BB0_772 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r9
	or r25, r1, r13
	j .LBB0_771
.LBB0_788:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1217 7 is_stmt 1              # parallel-rne.mlir:1217:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
.LBB0_789:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1238 7                        # parallel-rne.mlir:1238:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1239 7                        # parallel-rne.mlir:1239:7
	addli r1, zero, 3
	.loc	1 1238 7                        # parallel-rne.mlir:1238:7
	sync_core
	.loc	1 1239 7                        # parallel-rne.mlir:1239:7
	bneq r13, r1, .LBB0_791
# %bb.790:                              # %.critedge34
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 17
	.loc	1 1244 7                        # parallel-rne.mlir:1244:7
	addli r2, zero, 18
	.loc	1 1239 7                        # parallel-rne.mlir:1239:7
	xsignal r1, 0
	addli r1, zero, 40
	.loc	1 1240 7                        # parallel-rne.mlir:1240:7
	xsignal r1, 0
	.loc	1 1244 7                        # parallel-rne.mlir:1244:7
	xwait r2, 0
	.loc	1 1245 7                        # parallel-rne.mlir:1245:7
	xwait r1, 0
	.loc	1 1246 7                        # parallel-rne.mlir:1246:7
	addli r1, zero, 44
	xwait r1, 0
	j .LBB0_793
.LBB0_791:                              # %.critedge32
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1241 7                        # parallel-rne.mlir:1241:7
	addli r1, zero, 5
	bneq r13, r1, .LBB0_793
# %bb.792:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 17
	addli r3, zero, 2
	addli r2, zero, 3
	xwait r1, 0
	lock zero, r3
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	ew_cfg r2, zero, zero, 10
	loadli.w r2,  -4292(r30)                # 4-byte Folded Reload
	ew_cfg r3, r1, r2, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r6, r1, 14
	addli r1, zero, 18
	ew_cfg zero, zero, zero, 15
	sslut zero, zero, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r1, 0
.LBB0_793:                              # %.critedge35
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1248 7                        # parallel-rne.mlir:1248:7
	xfence
	.loc	1 1250 7                        # parallel-rne.mlir:1250:7
	addli r1, zero, 255
	.loc	1 1249 7                        # parallel-rne.mlir:1249:7
	mfence { lm, sm, gm }
	.loc	1 1250 7                        # parallel-rne.mlir:1250:7
	csr_set csr5, r1
	sync_core
	.loc	1 1251 7                        # parallel-rne.mlir:1251:7
	beq r13, zero, .LBB0_801
# %bb.794:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1276 7                        # parallel-rne.mlir:1276:7
	addli r1, zero, 1
	beq r13, r1, .LBB0_823
.LBB0_795:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1301 7                        # parallel-rne.mlir:1301:7
	addli r1, zero, 2
	beq r13, r1, .LBB0_846
.LBB0_796:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1326 7                        # parallel-rne.mlir:1326:7
	addli r1, zero, 3
	beq r13, r1, .LBB0_869
.LBB0_797:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1351 7                        # parallel-rne.mlir:1351:7
	beq r13, r6, .LBB0_892
.LBB0_798:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1376 7                        # parallel-rne.mlir:1376:7
	addli r1, zero, 5
	beq r13, r1, .LBB0_915
.LBB0_799:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1401 7                        # parallel-rne.mlir:1401:7
	addli r1, zero, 6
	beq r13, r1, .LBB0_938
.LBB0_800:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1426 7                        # parallel-rne.mlir:1426:7
	addli r1, zero, 7
	beq r13, r1, .LBB0_961
	j .LBB0_984
.LBB0_801:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1251 7                        # parallel-rne.mlir:1251:7
	xfence
	zext_int2long r[1:2], zero
	addli r3, r30, -4232
	mfence { lm, sm, gm }
	loadli.w r8,  -4104(r30)                # 4-byte Folded Reload
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli.d r[2:3], r[1:2], 0
	j .LBB0_803
.LBB0_802:                              # %middle.block384
                                        #   in Loop: Header=BB0_803 Depth=2
	.loc	1 1258 9                        # parallel-rne.mlir:1258:9
	addli r3, r30, -4200
	addli r5, r30, -4224
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_822
.LBB0_803:                              # %.preheader136
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_805 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4224
	addli r1, zero, 5
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[1:2], r[2:3], r1
	addli r3, r30, -4136
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, r30, -4232
	load.d r[25:26], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_805
.LBB0_804:                              # %vector.body377
                                        #   in Loop: Header=BB0_805 Depth=3
	.loc	1 1271 13 is_stmt 1             # parallel-rne.mlir:1271:13
	loadli.w r1,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1259 11                       # parallel-rne.mlir:1259:11
	addli.d r[25:26], r[25:26], 8
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	.loc	1 1271 13                       # parallel-rne.mlir:1271:13
	add.s r1, r2, r1
	.loc	1 1259 11                       # parallel-rne.mlir:1259:11
	setneq.d r2, r[25:26], r[14:15]
	.loc	1 1271 13                       # parallel-rne.mlir:1271:13
	stores.w r3, 12(r1)
	stores.w r20, 8(r1)
	stores.w r11, 4(r1)
	stores.w r4, 0(r1)
	stores.w r10, 28(r1)
	stores.w r6, 24(r1)
	stores.w r18, 20(r1)
	stores.w r16, 16(r1)
	.loc	1 1259 11                       # parallel-rne.mlir:1259:11
	beq r2, zero, .LBB0_802
.LBB0_805:                              # %vector.body377
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_803 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1260 19                       # parallel-rne.mlir:1260:19
	addli r3, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	add.ul r[1:2], r[25:26], r[1:2]
	slli r2, r1, 2
	add.s r3, r2, r8
	.loc	1 1261 19                       # parallel-rne.mlir:1261:19
	loads.w r20, 8(r2)
	loads.w r11, 4(r2)
	loads.w r10, 28(r2)
	loads.w r6, 24(r2)
	loads.w r18, 20(r2)
	loads.w r16, 16(r2)
	.loc	1 1260 19                       # parallel-rne.mlir:1260:19
	loads.w r4, 0(r3)
	loads.w r8, 4(r3)
	loads.w r5, 8(r3)
	loads.w r13, 12(r3)
	loads.w r19, 16(r3)
	loads.w r1, 20(r3)
	loads.w r24, 24(r3)
	loads.w r27, 28(r3)
	.loc	1 1261 19                       # parallel-rne.mlir:1261:19
	loads.w r3, 12(r2)
	.loc	1 1264 19                       # parallel-rne.mlir:1264:19
	and r7, r4, r12
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	and r9, r4, r28
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	seteq r7, r7, r12
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	setneq r9, r9, zero
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	and r7, r7, r9
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	bneq r7, zero, .LBB0_807
# %bb.806:                              # %vector.body377
                                        #   in Loop: Header=BB0_805 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r2)
	j .LBB0_808
.LBB0_807:                              #   in Loop: Header=BB0_805 Depth=3
	or r4, r4, r17
.LBB0_808:                              # %vector.body377
                                        #   in Loop: Header=BB0_805 Depth=3
	and r7, r8, r12
	and r9, r8, r28
	seteq r7, r7, r12
	setneq r9, r9, zero
	and r7, r7, r9
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	beq r7, zero, .LBB0_810
# %bb.809:                              #   in Loop: Header=BB0_805 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r8, r17
.LBB0_810:                              # %vector.body377
                                        #   in Loop: Header=BB0_805 Depth=3
	and r7, r5, r12
	and r8, r5, r28
	seteq r7, r7, r12
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	beq r7, zero, .LBB0_812
# %bb.811:                              #   in Loop: Header=BB0_805 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r20, r5, r17
.LBB0_812:                              # %vector.body377
                                        #   in Loop: Header=BB0_805 Depth=3
	and r5, r13, r12
	and r7, r13, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	beq r5, zero, .LBB0_814
# %bb.813:                              #   in Loop: Header=BB0_805 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r3, r13, r17
.LBB0_814:                              # %vector.body377
                                        #   in Loop: Header=BB0_805 Depth=3
	and r5, r19, r12
	and r7, r19, r28
	loadli.w r8,  -4104(r30)                # 4-byte Folded Reload
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	beq r5, zero, .LBB0_816
# %bb.815:                              #   in Loop: Header=BB0_805 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r16, r19, r17
.LBB0_816:                              # %vector.body377
                                        #   in Loop: Header=BB0_805 Depth=3
	and r5, r1, r12
	and r7, r1, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	beq r5, zero, .LBB0_818
# %bb.817:                              #   in Loop: Header=BB0_805 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r1, r17
.LBB0_818:                              # %vector.body377
                                        #   in Loop: Header=BB0_805 Depth=3
	and r1, r24, r12
	and r5, r24, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	beq r1, zero, .LBB0_820
# %bb.819:                              #   in Loop: Header=BB0_805 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r24, r17
.LBB0_820:                              # %vector.body377
                                        #   in Loop: Header=BB0_805 Depth=3
	and r1, r27, r12
	and r5, r27, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	beq r1, zero, .LBB0_804
# %bb.821:                              #   in Loop: Header=BB0_805 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r27, r17
	j .LBB0_804
.LBB0_822:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	.loc	1 1251 7                        # parallel-rne.mlir:1251:7
	mfence { sm }
	.loc	1 1276 7                        # parallel-rne.mlir:1276:7
	addli r1, zero, 1
	bneq r13, r1, .LBB0_795
.LBB0_823:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[2:3], r6
	mfence { lm, sm, gm }
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	j .LBB0_825
.LBB0_824:                              # %middle.block375
                                        #   in Loop: Header=BB0_825 Depth=2
	.loc	1 1283 9                        # parallel-rne.mlir:1283:9
	addli r3, r30, -4192
	addli r5, r30, -4224
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_845
.LBB0_825:                              # %.preheader135
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_827 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4224
	addli r1, zero, 5
	zext_int2long r[25:26], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[1:2], r[2:3], r1
	addli r3, r30, -4136
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_827
.LBB0_826:                              # %vector.body368
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 1296 13 is_stmt 1             # parallel-rne.mlir:1296:13
	loadli.w r1,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1284 11                       # parallel-rne.mlir:1284:11
	addli.d r[25:26], r[25:26], 8
	.loc	1 1296 13                       # parallel-rne.mlir:1296:13
	add.s r1, r20, r1
	stores.w r4, 12(r1)
	.loc	1 1284 11                       # parallel-rne.mlir:1284:11
	setneq.d r4, r[25:26], r[14:15]
	.loc	1 1296 13                       # parallel-rne.mlir:1296:13
	stores.w r3, 8(r1)
	stores.w r27, 4(r1)
	stores.w r8, 0(r1)
	stores.w r2, 28(r1)
	stores.w r18, 24(r1)
	stores.w r16, 20(r1)
	stores.w r6, 16(r1)
	.loc	1 1284 11                       # parallel-rne.mlir:1284:11
	beq r4, zero, .LBB0_824
.LBB0_827:                              # %vector.body368
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_825 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1285 19                       # parallel-rne.mlir:1285:19
	addli r3, r30, -4136
	lui r10, 1024
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	add.ul r[1:2], r[25:26], r[1:2]
	slli r20, r1, 2
	add.s r2, r20, r11
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	loads.w r4, 12(r20)
	loads.w r3, 8(r20)
	loads.w r27, 4(r20)
	loads.w r18, 24(r20)
	loads.w r16, 20(r20)
	loads.w r6, 16(r20)
	.loc	1 1285 19                       # parallel-rne.mlir:1285:19
	loads.w r8, 0(r2)
	loads.w r7, 4(r2)
	loads.w r5, 8(r2)
	loads.w r13, 12(r2)
	loads.w r19, 16(r2)
	loads.w r1, 20(r2)
	loads.w r24, 24(r2)
	loads.w r9, 28(r2)
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	loads.w r2, 28(r20)
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	and r22, r8, r12
	.loc	1 1291 19                       # parallel-rne.mlir:1291:19
	and r17, r8, r28
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	seteq r22, r22, r12
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	setneq r17, r17, zero
	.loc	1 1293 19                       # parallel-rne.mlir:1293:19
	and r17, r22, r17
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	bneq r17, zero, .LBB0_829
# %bb.828:                              # %vector.body368
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r20)
	j .LBB0_830
.LBB0_829:                              #   in Loop: Header=BB0_827 Depth=3
	or r8, r8, r10
.LBB0_830:                              # %vector.body368
                                        #   in Loop: Header=BB0_827 Depth=3
	and r17, r7, r12
	and r22, r7, r28
	seteq r17, r17, r12
	setneq r22, r22, zero
	and r17, r17, r22
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	beq r17, zero, .LBB0_832
# %bb.831:                              #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r27, r7, r10
.LBB0_832:                              # %vector.body368
                                        #   in Loop: Header=BB0_827 Depth=3
	and r7, r5, r12
	and r17, r5, r28
	seteq r7, r7, r12
	setneq r17, r17, zero
	and r7, r7, r17
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	bneq r7, zero, .LBB0_834
# %bb.833:                              # %vector.body368
                                        #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 1024
	j .LBB0_835
.LBB0_834:                              #   in Loop: Header=BB0_827 Depth=3
	lui r17, 1024
	or r3, r5, r17
.LBB0_835:                              # %vector.body368
                                        #   in Loop: Header=BB0_827 Depth=3
	and r5, r13, r12
	and r7, r13, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	beq r5, zero, .LBB0_837
# %bb.836:                              #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r13, r17
.LBB0_837:                              # %vector.body368
                                        #   in Loop: Header=BB0_827 Depth=3
	and r5, r19, r12
	and r7, r19, r28
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	beq r5, zero, .LBB0_839
# %bb.838:                              #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r19, r17
.LBB0_839:                              # %vector.body368
                                        #   in Loop: Header=BB0_827 Depth=3
	and r5, r1, r12
	and r7, r1, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	beq r5, zero, .LBB0_841
# %bb.840:                              #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r16, r1, r17
.LBB0_841:                              # %vector.body368
                                        #   in Loop: Header=BB0_827 Depth=3
	and r1, r24, r12
	and r5, r24, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	beq r1, zero, .LBB0_843
# %bb.842:                              #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r24, r17
.LBB0_843:                              # %vector.body368
                                        #   in Loop: Header=BB0_827 Depth=3
	and r1, r9, r12
	and r5, r9, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	beq r1, zero, .LBB0_826
# %bb.844:                              #   in Loop: Header=BB0_827 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r9, r17
	j .LBB0_826
.LBB0_845:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1276 7 is_stmt 1              # parallel-rne.mlir:1276:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1301 7                        # parallel-rne.mlir:1301:7
	addli r1, zero, 2
	bneq r13, r1, .LBB0_796
.LBB0_846:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 8
	mfence { lm, sm, gm }
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_848
.LBB0_847:                              # %middle.block366
                                        #   in Loop: Header=BB0_848 Depth=2
	.loc	1 1308 9                        # parallel-rne.mlir:1308:9
	addli r3, r30, -4184
	addli r5, r30, -4224
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_868
.LBB0_848:                              # %.preheader134
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_850 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4224
	addli r1, zero, 5
	zext_int2long r[25:26], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[1:2], r[2:3], r1
	addli r3, r30, -4136
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_850
.LBB0_849:                              # %vector.body359
                                        #   in Loop: Header=BB0_850 Depth=3
	.loc	1 1321 13 is_stmt 1             # parallel-rne.mlir:1321:13
	loadli.w r1,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1309 11                       # parallel-rne.mlir:1309:11
	addli.d r[25:26], r[25:26], 8
	.loc	1 1321 13                       # parallel-rne.mlir:1321:13
	add.s r1, r20, r1
	stores.w r4, 12(r1)
	.loc	1 1309 11                       # parallel-rne.mlir:1309:11
	setneq.d r4, r[25:26], r[14:15]
	.loc	1 1321 13                       # parallel-rne.mlir:1321:13
	stores.w r27, 8(r1)
	stores.w r3, 4(r1)
	stores.w r8, 0(r1)
	stores.w r18, 28(r1)
	stores.w r16, 24(r1)
	stores.w r6, 20(r1)
	stores.w r2, 16(r1)
	.loc	1 1309 11                       # parallel-rne.mlir:1309:11
	beq r4, zero, .LBB0_847
.LBB0_850:                              # %vector.body359
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_848 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	addli r3, r30, -4136
	lui r10, 1024
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	add.ul r[1:2], r[25:26], r[1:2]
	slli r20, r1, 2
	add.s r2, r20, r11
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	loads.w r4, 12(r20)
	loads.w r27, 8(r20)
	loads.w r3, 4(r20)
	loads.w r18, 28(r20)
	loads.w r16, 24(r20)
	loads.w r6, 20(r20)
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	loads.w r8, 0(r2)
	loads.w r7, 4(r2)
	loads.w r5, 8(r2)
	loads.w r13, 12(r2)
	loads.w r19, 16(r2)
	loads.w r1, 20(r2)
	loads.w r24, 24(r2)
	loads.w r9, 28(r2)
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	loads.w r2, 16(r20)
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	and r17, r8, r12
	.loc	1 1316 19                       # parallel-rne.mlir:1316:19
	and r22, r8, r28
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	seteq r17, r17, r12
	.loc	1 1317 19                       # parallel-rne.mlir:1317:19
	setneq r22, r22, zero
	.loc	1 1318 19                       # parallel-rne.mlir:1318:19
	and r17, r17, r22
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	bneq r17, zero, .LBB0_852
# %bb.851:                              # %vector.body359
                                        #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r20)
	j .LBB0_853
.LBB0_852:                              #   in Loop: Header=BB0_850 Depth=3
	or r8, r8, r10
.LBB0_853:                              # %vector.body359
                                        #   in Loop: Header=BB0_850 Depth=3
	and r17, r7, r12
	and r22, r7, r28
	seteq r17, r17, r12
	setneq r22, r22, zero
	and r17, r17, r22
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	beq r17, zero, .LBB0_855
# %bb.854:                              #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r3, r7, r10
.LBB0_855:                              # %vector.body359
                                        #   in Loop: Header=BB0_850 Depth=3
	and r7, r5, r12
	and r17, r5, r28
	seteq r7, r7, r12
	setneq r17, r17, zero
	and r7, r7, r17
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	bneq r7, zero, .LBB0_857
# %bb.856:                              # %vector.body359
                                        #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 1024
	j .LBB0_858
.LBB0_857:                              #   in Loop: Header=BB0_850 Depth=3
	lui r17, 1024
	or r27, r5, r17
.LBB0_858:                              # %vector.body359
                                        #   in Loop: Header=BB0_850 Depth=3
	and r5, r13, r12
	and r7, r13, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	beq r5, zero, .LBB0_860
# %bb.859:                              #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r13, r17
.LBB0_860:                              # %vector.body359
                                        #   in Loop: Header=BB0_850 Depth=3
	and r5, r19, r12
	and r7, r19, r28
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	beq r5, zero, .LBB0_862
# %bb.861:                              #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r19, r17
.LBB0_862:                              # %vector.body359
                                        #   in Loop: Header=BB0_850 Depth=3
	and r5, r1, r12
	and r7, r1, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	beq r5, zero, .LBB0_864
# %bb.863:                              #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r1, r17
.LBB0_864:                              # %vector.body359
                                        #   in Loop: Header=BB0_850 Depth=3
	and r1, r24, r12
	and r5, r24, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	beq r1, zero, .LBB0_866
# %bb.865:                              #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r16, r24, r17
.LBB0_866:                              # %vector.body359
                                        #   in Loop: Header=BB0_850 Depth=3
	and r1, r9, r12
	and r5, r9, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	beq r1, zero, .LBB0_849
# %bb.867:                              #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r9, r17
	j .LBB0_849
.LBB0_868:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1301 7 is_stmt 1              # parallel-rne.mlir:1301:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1326 7                        # parallel-rne.mlir:1326:7
	addli r1, zero, 3
	bneq r13, r1, .LBB0_797
.LBB0_869:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 12
	mfence { lm, sm, gm }
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_871
.LBB0_870:                              # %middle.block357
                                        #   in Loop: Header=BB0_871 Depth=2
	.loc	1 1333 9                        # parallel-rne.mlir:1333:9
	addli r3, r30, -4176
	addli r5, r30, -4224
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_891
.LBB0_871:                              # %.preheader133
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_873 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4224
	addli r1, zero, 5
	zext_int2long r[25:26], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[1:2], r[2:3], r1
	addli r3, r30, -4136
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_873
.LBB0_872:                              # %vector.body350
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 1346 13 is_stmt 1             # parallel-rne.mlir:1346:13
	loadli.w r1,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1334 11                       # parallel-rne.mlir:1334:11
	addli.d r[25:26], r[25:26], 8
	.loc	1 1346 13                       # parallel-rne.mlir:1346:13
	add.s r1, r20, r1
	stores.w r4, 12(r1)
	.loc	1 1334 11                       # parallel-rne.mlir:1334:11
	setneq.d r4, r[25:26], r[14:15]
	.loc	1 1346 13                       # parallel-rne.mlir:1346:13
	stores.w r27, 8(r1)
	stores.w r3, 4(r1)
	stores.w r8, 0(r1)
	stores.w r18, 28(r1)
	stores.w r16, 24(r1)
	stores.w r6, 20(r1)
	stores.w r2, 16(r1)
	.loc	1 1334 11                       # parallel-rne.mlir:1334:11
	beq r4, zero, .LBB0_870
.LBB0_873:                              # %vector.body350
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_871 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1335 19                       # parallel-rne.mlir:1335:19
	addli r3, r30, -4136
	lui r10, 1024
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	add.ul r[1:2], r[25:26], r[1:2]
	slli r20, r1, 2
	add.s r2, r20, r11
	.loc	1 1336 19                       # parallel-rne.mlir:1336:19
	loads.w r4, 12(r20)
	loads.w r27, 8(r20)
	loads.w r3, 4(r20)
	loads.w r18, 28(r20)
	loads.w r16, 24(r20)
	loads.w r6, 20(r20)
	.loc	1 1335 19                       # parallel-rne.mlir:1335:19
	loads.w r8, 0(r2)
	loads.w r7, 4(r2)
	loads.w r5, 8(r2)
	loads.w r13, 12(r2)
	loads.w r19, 16(r2)
	loads.w r1, 20(r2)
	loads.w r24, 24(r2)
	loads.w r9, 28(r2)
	.loc	1 1336 19                       # parallel-rne.mlir:1336:19
	loads.w r2, 16(r20)
	.loc	1 1339 19                       # parallel-rne.mlir:1339:19
	and r17, r8, r12
	.loc	1 1341 19                       # parallel-rne.mlir:1341:19
	and r22, r8, r28
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	seteq r17, r17, r12
	.loc	1 1342 19                       # parallel-rne.mlir:1342:19
	setneq r22, r22, zero
	.loc	1 1343 19                       # parallel-rne.mlir:1343:19
	and r17, r17, r22
	.loc	1 1344 19                       # parallel-rne.mlir:1344:19
	bneq r17, zero, .LBB0_875
# %bb.874:                              # %vector.body350
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r20)
	j .LBB0_876
.LBB0_875:                              #   in Loop: Header=BB0_873 Depth=3
	or r8, r8, r10
.LBB0_876:                              # %vector.body350
                                        #   in Loop: Header=BB0_873 Depth=3
	and r17, r7, r12
	and r22, r7, r28
	seteq r17, r17, r12
	setneq r22, r22, zero
	and r17, r17, r22
	.loc	1 1344 19                       # parallel-rne.mlir:1344:19
	beq r17, zero, .LBB0_878
# %bb.877:                              #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r3, r7, r10
.LBB0_878:                              # %vector.body350
                                        #   in Loop: Header=BB0_873 Depth=3
	and r7, r5, r12
	and r17, r5, r28
	seteq r7, r7, r12
	setneq r17, r17, zero
	and r7, r7, r17
	.loc	1 1344 19                       # parallel-rne.mlir:1344:19
	bneq r7, zero, .LBB0_880
# %bb.879:                              # %vector.body350
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 1024
	j .LBB0_881
.LBB0_880:                              #   in Loop: Header=BB0_873 Depth=3
	lui r17, 1024
	or r27, r5, r17
.LBB0_881:                              # %vector.body350
                                        #   in Loop: Header=BB0_873 Depth=3
	and r5, r13, r12
	and r7, r13, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1344 19                       # parallel-rne.mlir:1344:19
	beq r5, zero, .LBB0_883
# %bb.882:                              #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r13, r17
.LBB0_883:                              # %vector.body350
                                        #   in Loop: Header=BB0_873 Depth=3
	and r5, r19, r12
	and r7, r19, r28
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1344 19                       # parallel-rne.mlir:1344:19
	beq r5, zero, .LBB0_885
# %bb.884:                              #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r19, r17
.LBB0_885:                              # %vector.body350
                                        #   in Loop: Header=BB0_873 Depth=3
	and r5, r1, r12
	and r7, r1, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1344 19                       # parallel-rne.mlir:1344:19
	beq r5, zero, .LBB0_887
# %bb.886:                              #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r1, r17
.LBB0_887:                              # %vector.body350
                                        #   in Loop: Header=BB0_873 Depth=3
	and r1, r24, r12
	and r5, r24, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1344 19                       # parallel-rne.mlir:1344:19
	beq r1, zero, .LBB0_889
# %bb.888:                              #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r16, r24, r17
.LBB0_889:                              # %vector.body350
                                        #   in Loop: Header=BB0_873 Depth=3
	and r1, r9, r12
	and r5, r9, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1344 19                       # parallel-rne.mlir:1344:19
	beq r1, zero, .LBB0_872
# %bb.890:                              #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r9, r17
	j .LBB0_872
.LBB0_891:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1326 7 is_stmt 1              # parallel-rne.mlir:1326:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1351 7                        # parallel-rne.mlir:1351:7
	bneq r13, r6, .LBB0_798
.LBB0_892:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 16
	mfence { lm, sm, gm }
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_894
.LBB0_893:                              # %middle.block348
                                        #   in Loop: Header=BB0_894 Depth=2
	.loc	1 1358 9                        # parallel-rne.mlir:1358:9
	addli r3, r30, -4168
	addli r5, r30, -4224
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_914
.LBB0_894:                              # %.preheader132
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_896 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4224
	addli r1, zero, 5
	zext_int2long r[25:26], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[1:2], r[2:3], r1
	addli r3, r30, -4136
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_896
.LBB0_895:                              # %vector.body341
                                        #   in Loop: Header=BB0_896 Depth=3
	.loc	1 1371 13 is_stmt 1             # parallel-rne.mlir:1371:13
	loadli.w r1,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1359 11                       # parallel-rne.mlir:1359:11
	addli.d r[25:26], r[25:26], 8
	.loc	1 1371 13                       # parallel-rne.mlir:1371:13
	add.s r1, r20, r1
	stores.w r4, 12(r1)
	.loc	1 1359 11                       # parallel-rne.mlir:1359:11
	setneq.d r4, r[25:26], r[14:15]
	.loc	1 1371 13                       # parallel-rne.mlir:1371:13
	stores.w r27, 8(r1)
	stores.w r3, 4(r1)
	stores.w r8, 0(r1)
	stores.w r18, 28(r1)
	stores.w r16, 24(r1)
	stores.w r6, 20(r1)
	stores.w r2, 16(r1)
	.loc	1 1359 11                       # parallel-rne.mlir:1359:11
	beq r4, zero, .LBB0_893
.LBB0_896:                              # %vector.body341
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_894 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1360 19                       # parallel-rne.mlir:1360:19
	addli r3, r30, -4136
	lui r10, 1024
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	add.ul r[1:2], r[25:26], r[1:2]
	slli r20, r1, 2
	add.s r2, r20, r11
	.loc	1 1361 19                       # parallel-rne.mlir:1361:19
	loads.w r4, 12(r20)
	loads.w r27, 8(r20)
	loads.w r3, 4(r20)
	loads.w r18, 28(r20)
	loads.w r16, 24(r20)
	loads.w r6, 20(r20)
	.loc	1 1360 19                       # parallel-rne.mlir:1360:19
	loads.w r8, 0(r2)
	loads.w r7, 4(r2)
	loads.w r5, 8(r2)
	loads.w r13, 12(r2)
	loads.w r19, 16(r2)
	loads.w r1, 20(r2)
	loads.w r24, 24(r2)
	loads.w r9, 28(r2)
	.loc	1 1361 19                       # parallel-rne.mlir:1361:19
	loads.w r2, 16(r20)
	.loc	1 1364 19                       # parallel-rne.mlir:1364:19
	and r17, r8, r12
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	and r22, r8, r28
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	seteq r17, r17, r12
	.loc	1 1367 19                       # parallel-rne.mlir:1367:19
	setneq r22, r22, zero
	.loc	1 1368 19                       # parallel-rne.mlir:1368:19
	and r17, r17, r22
	.loc	1 1369 19                       # parallel-rne.mlir:1369:19
	bneq r17, zero, .LBB0_898
# %bb.897:                              # %vector.body341
                                        #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r20)
	j .LBB0_899
.LBB0_898:                              #   in Loop: Header=BB0_896 Depth=3
	or r8, r8, r10
.LBB0_899:                              # %vector.body341
                                        #   in Loop: Header=BB0_896 Depth=3
	and r17, r7, r12
	and r22, r7, r28
	seteq r17, r17, r12
	setneq r22, r22, zero
	and r17, r17, r22
	.loc	1 1369 19                       # parallel-rne.mlir:1369:19
	beq r17, zero, .LBB0_901
# %bb.900:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r3, r7, r10
.LBB0_901:                              # %vector.body341
                                        #   in Loop: Header=BB0_896 Depth=3
	and r7, r5, r12
	and r17, r5, r28
	seteq r7, r7, r12
	setneq r17, r17, zero
	and r7, r7, r17
	.loc	1 1369 19                       # parallel-rne.mlir:1369:19
	bneq r7, zero, .LBB0_903
# %bb.902:                              # %vector.body341
                                        #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 1024
	j .LBB0_904
.LBB0_903:                              #   in Loop: Header=BB0_896 Depth=3
	lui r17, 1024
	or r27, r5, r17
.LBB0_904:                              # %vector.body341
                                        #   in Loop: Header=BB0_896 Depth=3
	and r5, r13, r12
	and r7, r13, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1369 19                       # parallel-rne.mlir:1369:19
	beq r5, zero, .LBB0_906
# %bb.905:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r13, r17
.LBB0_906:                              # %vector.body341
                                        #   in Loop: Header=BB0_896 Depth=3
	and r5, r19, r12
	and r7, r19, r28
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1369 19                       # parallel-rne.mlir:1369:19
	beq r5, zero, .LBB0_908
# %bb.907:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r19, r17
.LBB0_908:                              # %vector.body341
                                        #   in Loop: Header=BB0_896 Depth=3
	and r5, r1, r12
	and r7, r1, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1369 19                       # parallel-rne.mlir:1369:19
	beq r5, zero, .LBB0_910
# %bb.909:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r1, r17
.LBB0_910:                              # %vector.body341
                                        #   in Loop: Header=BB0_896 Depth=3
	and r1, r24, r12
	and r5, r24, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1369 19                       # parallel-rne.mlir:1369:19
	beq r1, zero, .LBB0_912
# %bb.911:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r16, r24, r17
.LBB0_912:                              # %vector.body341
                                        #   in Loop: Header=BB0_896 Depth=3
	and r1, r9, r12
	and r5, r9, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1369 19                       # parallel-rne.mlir:1369:19
	beq r1, zero, .LBB0_895
# %bb.913:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r9, r17
	j .LBB0_895
.LBB0_914:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1351 7 is_stmt 1              # parallel-rne.mlir:1351:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1376 7                        # parallel-rne.mlir:1376:7
	addli r1, zero, 5
	bneq r13, r1, .LBB0_799
.LBB0_915:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 20
	mfence { lm, sm, gm }
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_917
.LBB0_916:                              # %middle.block339
                                        #   in Loop: Header=BB0_917 Depth=2
	.loc	1 1383 9                        # parallel-rne.mlir:1383:9
	addli r3, r30, -4160
	addli r5, r30, -4224
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_937
.LBB0_917:                              # %.preheader131
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_919 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4224
	addli r1, zero, 5
	zext_int2long r[25:26], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[1:2], r[2:3], r1
	addli r3, r30, -4136
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_919
.LBB0_918:                              # %vector.body332
                                        #   in Loop: Header=BB0_919 Depth=3
	.loc	1 1396 13 is_stmt 1             # parallel-rne.mlir:1396:13
	loadli.w r1,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1384 11                       # parallel-rne.mlir:1384:11
	addli.d r[25:26], r[25:26], 8
	.loc	1 1396 13                       # parallel-rne.mlir:1396:13
	add.s r1, r20, r1
	stores.w r4, 12(r1)
	.loc	1 1384 11                       # parallel-rne.mlir:1384:11
	setneq.d r4, r[25:26], r[14:15]
	.loc	1 1396 13                       # parallel-rne.mlir:1396:13
	stores.w r27, 8(r1)
	stores.w r3, 4(r1)
	stores.w r8, 0(r1)
	stores.w r18, 28(r1)
	stores.w r16, 24(r1)
	stores.w r6, 20(r1)
	stores.w r2, 16(r1)
	.loc	1 1384 11                       # parallel-rne.mlir:1384:11
	beq r4, zero, .LBB0_916
.LBB0_919:                              # %vector.body332
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_917 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1385 19                       # parallel-rne.mlir:1385:19
	addli r3, r30, -4136
	lui r10, 1024
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	add.ul r[1:2], r[25:26], r[1:2]
	slli r20, r1, 2
	add.s r2, r20, r11
	.loc	1 1386 19                       # parallel-rne.mlir:1386:19
	loads.w r4, 12(r20)
	loads.w r27, 8(r20)
	loads.w r3, 4(r20)
	loads.w r18, 28(r20)
	loads.w r16, 24(r20)
	loads.w r6, 20(r20)
	.loc	1 1385 19                       # parallel-rne.mlir:1385:19
	loads.w r8, 0(r2)
	loads.w r7, 4(r2)
	loads.w r5, 8(r2)
	loads.w r13, 12(r2)
	loads.w r19, 16(r2)
	loads.w r1, 20(r2)
	loads.w r24, 24(r2)
	loads.w r9, 28(r2)
	.loc	1 1386 19                       # parallel-rne.mlir:1386:19
	loads.w r2, 16(r20)
	.loc	1 1389 19                       # parallel-rne.mlir:1389:19
	and r17, r8, r12
	.loc	1 1391 19                       # parallel-rne.mlir:1391:19
	and r22, r8, r28
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	seteq r17, r17, r12
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	setneq r22, r22, zero
	.loc	1 1393 19                       # parallel-rne.mlir:1393:19
	and r17, r17, r22
	.loc	1 1394 19                       # parallel-rne.mlir:1394:19
	bneq r17, zero, .LBB0_921
# %bb.920:                              # %vector.body332
                                        #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r20)
	j .LBB0_922
.LBB0_921:                              #   in Loop: Header=BB0_919 Depth=3
	or r8, r8, r10
.LBB0_922:                              # %vector.body332
                                        #   in Loop: Header=BB0_919 Depth=3
	and r17, r7, r12
	and r22, r7, r28
	seteq r17, r17, r12
	setneq r22, r22, zero
	and r17, r17, r22
	.loc	1 1394 19                       # parallel-rne.mlir:1394:19
	beq r17, zero, .LBB0_924
# %bb.923:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r3, r7, r10
.LBB0_924:                              # %vector.body332
                                        #   in Loop: Header=BB0_919 Depth=3
	and r7, r5, r12
	and r17, r5, r28
	seteq r7, r7, r12
	setneq r17, r17, zero
	and r7, r7, r17
	.loc	1 1394 19                       # parallel-rne.mlir:1394:19
	bneq r7, zero, .LBB0_926
# %bb.925:                              # %vector.body332
                                        #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 1024
	j .LBB0_927
.LBB0_926:                              #   in Loop: Header=BB0_919 Depth=3
	lui r17, 1024
	or r27, r5, r17
.LBB0_927:                              # %vector.body332
                                        #   in Loop: Header=BB0_919 Depth=3
	and r5, r13, r12
	and r7, r13, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1394 19                       # parallel-rne.mlir:1394:19
	beq r5, zero, .LBB0_929
# %bb.928:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r13, r17
.LBB0_929:                              # %vector.body332
                                        #   in Loop: Header=BB0_919 Depth=3
	and r5, r19, r12
	and r7, r19, r28
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1394 19                       # parallel-rne.mlir:1394:19
	beq r5, zero, .LBB0_931
# %bb.930:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r19, r17
.LBB0_931:                              # %vector.body332
                                        #   in Loop: Header=BB0_919 Depth=3
	and r5, r1, r12
	and r7, r1, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1394 19                       # parallel-rne.mlir:1394:19
	beq r5, zero, .LBB0_933
# %bb.932:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r1, r17
.LBB0_933:                              # %vector.body332
                                        #   in Loop: Header=BB0_919 Depth=3
	and r1, r24, r12
	and r5, r24, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1394 19                       # parallel-rne.mlir:1394:19
	beq r1, zero, .LBB0_935
# %bb.934:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r16, r24, r17
.LBB0_935:                              # %vector.body332
                                        #   in Loop: Header=BB0_919 Depth=3
	and r1, r9, r12
	and r5, r9, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1394 19                       # parallel-rne.mlir:1394:19
	beq r1, zero, .LBB0_918
# %bb.936:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r9, r17
	j .LBB0_918
.LBB0_937:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1376 7 is_stmt 1              # parallel-rne.mlir:1376:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1401 7                        # parallel-rne.mlir:1401:7
	addli r1, zero, 6
	bneq r13, r1, .LBB0_800
.LBB0_938:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 24
	mfence { lm, sm, gm }
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_940
.LBB0_939:                              # %middle.block330
                                        #   in Loop: Header=BB0_940 Depth=2
	.loc	1 1408 9                        # parallel-rne.mlir:1408:9
	addli r3, r30, -4152
	addli r5, r30, -4224
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_960
.LBB0_940:                              # %.preheader130
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_942 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4224
	addli r1, zero, 5
	zext_int2long r[25:26], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[1:2], r[2:3], r1
	addli r3, r30, -4136
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_942
.LBB0_941:                              # %vector.body323
                                        #   in Loop: Header=BB0_942 Depth=3
	.loc	1 1421 13 is_stmt 1             # parallel-rne.mlir:1421:13
	loadli.w r1,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1409 11                       # parallel-rne.mlir:1409:11
	addli.d r[25:26], r[25:26], 8
	.loc	1 1421 13                       # parallel-rne.mlir:1421:13
	add.s r1, r20, r1
	stores.w r4, 12(r1)
	.loc	1 1409 11                       # parallel-rne.mlir:1409:11
	setneq.d r4, r[25:26], r[14:15]
	.loc	1 1421 13                       # parallel-rne.mlir:1421:13
	stores.w r27, 8(r1)
	stores.w r3, 4(r1)
	stores.w r8, 0(r1)
	stores.w r18, 28(r1)
	stores.w r16, 24(r1)
	stores.w r6, 20(r1)
	stores.w r2, 16(r1)
	.loc	1 1409 11                       # parallel-rne.mlir:1409:11
	beq r4, zero, .LBB0_939
.LBB0_942:                              # %vector.body323
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_940 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1410 19                       # parallel-rne.mlir:1410:19
	addli r3, r30, -4136
	lui r10, 1024
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	add.ul r[1:2], r[25:26], r[1:2]
	slli r20, r1, 2
	add.s r2, r20, r11
	.loc	1 1411 19                       # parallel-rne.mlir:1411:19
	loads.w r4, 12(r20)
	loads.w r27, 8(r20)
	loads.w r3, 4(r20)
	loads.w r18, 28(r20)
	loads.w r16, 24(r20)
	loads.w r6, 20(r20)
	.loc	1 1410 19                       # parallel-rne.mlir:1410:19
	loads.w r8, 0(r2)
	loads.w r7, 4(r2)
	loads.w r5, 8(r2)
	loads.w r13, 12(r2)
	loads.w r19, 16(r2)
	loads.w r1, 20(r2)
	loads.w r24, 24(r2)
	loads.w r9, 28(r2)
	.loc	1 1411 19                       # parallel-rne.mlir:1411:19
	loads.w r2, 16(r20)
	.loc	1 1414 19                       # parallel-rne.mlir:1414:19
	and r17, r8, r12
	.loc	1 1416 19                       # parallel-rne.mlir:1416:19
	and r22, r8, r28
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	seteq r17, r17, r12
	.loc	1 1417 19                       # parallel-rne.mlir:1417:19
	setneq r22, r22, zero
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	and r17, r17, r22
	.loc	1 1419 19                       # parallel-rne.mlir:1419:19
	bneq r17, zero, .LBB0_944
# %bb.943:                              # %vector.body323
                                        #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r20)
	j .LBB0_945
.LBB0_944:                              #   in Loop: Header=BB0_942 Depth=3
	or r8, r8, r10
.LBB0_945:                              # %vector.body323
                                        #   in Loop: Header=BB0_942 Depth=3
	and r17, r7, r12
	and r22, r7, r28
	seteq r17, r17, r12
	setneq r22, r22, zero
	and r17, r17, r22
	.loc	1 1419 19                       # parallel-rne.mlir:1419:19
	beq r17, zero, .LBB0_947
# %bb.946:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r3, r7, r10
.LBB0_947:                              # %vector.body323
                                        #   in Loop: Header=BB0_942 Depth=3
	and r7, r5, r12
	and r17, r5, r28
	seteq r7, r7, r12
	setneq r17, r17, zero
	and r7, r7, r17
	.loc	1 1419 19                       # parallel-rne.mlir:1419:19
	bneq r7, zero, .LBB0_949
# %bb.948:                              # %vector.body323
                                        #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 1024
	j .LBB0_950
.LBB0_949:                              #   in Loop: Header=BB0_942 Depth=3
	lui r17, 1024
	or r27, r5, r17
.LBB0_950:                              # %vector.body323
                                        #   in Loop: Header=BB0_942 Depth=3
	and r5, r13, r12
	and r7, r13, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1419 19                       # parallel-rne.mlir:1419:19
	beq r5, zero, .LBB0_952
# %bb.951:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r13, r17
.LBB0_952:                              # %vector.body323
                                        #   in Loop: Header=BB0_942 Depth=3
	and r5, r19, r12
	and r7, r19, r28
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1419 19                       # parallel-rne.mlir:1419:19
	beq r5, zero, .LBB0_954
# %bb.953:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r19, r17
.LBB0_954:                              # %vector.body323
                                        #   in Loop: Header=BB0_942 Depth=3
	and r5, r1, r12
	and r7, r1, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1419 19                       # parallel-rne.mlir:1419:19
	beq r5, zero, .LBB0_956
# %bb.955:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r1, r17
.LBB0_956:                              # %vector.body323
                                        #   in Loop: Header=BB0_942 Depth=3
	and r1, r24, r12
	and r5, r24, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1419 19                       # parallel-rne.mlir:1419:19
	beq r1, zero, .LBB0_958
# %bb.957:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r16, r24, r17
.LBB0_958:                              # %vector.body323
                                        #   in Loop: Header=BB0_942 Depth=3
	and r1, r9, r12
	and r5, r9, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1419 19                       # parallel-rne.mlir:1419:19
	beq r1, zero, .LBB0_941
# %bb.959:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r9, r17
	j .LBB0_941
.LBB0_960:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1401 7 is_stmt 1              # parallel-rne.mlir:1401:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1426 7                        # parallel-rne.mlir:1426:7
	addli r1, zero, 7
	bneq r13, r1, .LBB0_984
.LBB0_961:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r1, zero, 28
	mfence { lm, sm, gm }
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	zext_int2long r[2:3], r1
	j .LBB0_963
.LBB0_962:                              # %middle.block321
                                        #   in Loop: Header=BB0_963 Depth=2
	.loc	1 1433 9                        # parallel-rne.mlir:1433:9
	addli r3, r30, -4144
	addli r5, r30, -4224
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_983
.LBB0_963:                              # %.preheader129
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_965 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r30, -4224
	addli r1, zero, 5
	zext_int2long r[25:26], zero
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sll.d r[1:2], r[2:3], r1
	addli r3, r30, -4136
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_965
.LBB0_964:                              # %vector.body314
                                        #   in Loop: Header=BB0_965 Depth=3
	.loc	1 1446 13 is_stmt 1             # parallel-rne.mlir:1446:13
	loadli.w r1,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1434 11                       # parallel-rne.mlir:1434:11
	addli.d r[25:26], r[25:26], 8
	.loc	1 1446 13                       # parallel-rne.mlir:1446:13
	add.s r1, r20, r1
	stores.w r4, 12(r1)
	.loc	1 1434 11                       # parallel-rne.mlir:1434:11
	setneq.d r4, r[25:26], r[14:15]
	.loc	1 1446 13                       # parallel-rne.mlir:1446:13
	stores.w r27, 8(r1)
	stores.w r3, 4(r1)
	stores.w r8, 0(r1)
	stores.w r18, 28(r1)
	stores.w r16, 24(r1)
	stores.w r6, 20(r1)
	stores.w r2, 16(r1)
	.loc	1 1434 11                       # parallel-rne.mlir:1434:11
	beq r4, zero, .LBB0_962
.LBB0_965:                              # %vector.body314
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_963 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1435 19                       # parallel-rne.mlir:1435:19
	addli r3, r30, -4136
	lui r10, 1024
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	add.ul r[1:2], r[25:26], r[1:2]
	slli r20, r1, 2
	add.s r2, r20, r11
	.loc	1 1436 19                       # parallel-rne.mlir:1436:19
	loads.w r4, 12(r20)
	loads.w r27, 8(r20)
	loads.w r3, 4(r20)
	loads.w r18, 28(r20)
	loads.w r16, 24(r20)
	loads.w r6, 20(r20)
	.loc	1 1435 19                       # parallel-rne.mlir:1435:19
	loads.w r8, 0(r2)
	loads.w r7, 4(r2)
	loads.w r5, 8(r2)
	loads.w r13, 12(r2)
	loads.w r19, 16(r2)
	loads.w r1, 20(r2)
	loads.w r24, 24(r2)
	loads.w r9, 28(r2)
	.loc	1 1436 19                       # parallel-rne.mlir:1436:19
	loads.w r2, 16(r20)
	.loc	1 1439 19                       # parallel-rne.mlir:1439:19
	and r17, r8, r12
	.loc	1 1441 19                       # parallel-rne.mlir:1441:19
	and r22, r8, r28
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	seteq r17, r17, r12
	.loc	1 1442 19                       # parallel-rne.mlir:1442:19
	setneq r22, r22, zero
	.loc	1 1443 19                       # parallel-rne.mlir:1443:19
	and r17, r17, r22
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	bneq r17, zero, .LBB0_967
# %bb.966:                              # %vector.body314
                                        #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r20)
	j .LBB0_968
.LBB0_967:                              #   in Loop: Header=BB0_965 Depth=3
	or r8, r8, r10
.LBB0_968:                              # %vector.body314
                                        #   in Loop: Header=BB0_965 Depth=3
	and r17, r7, r12
	and r22, r7, r28
	seteq r17, r17, r12
	setneq r22, r22, zero
	and r17, r17, r22
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	beq r17, zero, .LBB0_970
# %bb.969:                              #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r3, r7, r10
.LBB0_970:                              # %vector.body314
                                        #   in Loop: Header=BB0_965 Depth=3
	and r7, r5, r12
	and r17, r5, r28
	seteq r7, r7, r12
	setneq r17, r17, zero
	and r7, r7, r17
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	bneq r7, zero, .LBB0_972
# %bb.971:                              # %vector.body314
                                        #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 1024
	j .LBB0_973
.LBB0_972:                              #   in Loop: Header=BB0_965 Depth=3
	lui r17, 1024
	or r27, r5, r17
.LBB0_973:                              # %vector.body314
                                        #   in Loop: Header=BB0_965 Depth=3
	and r5, r13, r12
	and r7, r13, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	beq r5, zero, .LBB0_975
# %bb.974:                              #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r13, r17
.LBB0_975:                              # %vector.body314
                                        #   in Loop: Header=BB0_965 Depth=3
	and r5, r19, r12
	and r7, r19, r28
	loadli.w r11,  -4104(r30)               # 4-byte Folded Reload
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	beq r5, zero, .LBB0_977
# %bb.976:                              #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r19, r17
.LBB0_977:                              # %vector.body314
                                        #   in Loop: Header=BB0_965 Depth=3
	and r5, r1, r12
	and r7, r1, r28
	seteq r5, r5, r12
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	beq r5, zero, .LBB0_979
# %bb.978:                              #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r1, r17
.LBB0_979:                              # %vector.body314
                                        #   in Loop: Header=BB0_965 Depth=3
	and r1, r24, r12
	and r5, r24, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	beq r1, zero, .LBB0_981
# %bb.980:                              #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r16, r24, r17
.LBB0_981:                              # %vector.body314
                                        #   in Loop: Header=BB0_965 Depth=3
	and r1, r9, r12
	and r5, r9, r28
	seteq r1, r1, r12
	setneq r5, r5, zero
	and r1, r1, r5
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	beq r1, zero, .LBB0_964
# %bb.982:                              #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r9, r17
	j .LBB0_964
.LBB0_983:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1426 7 is_stmt 1              # parallel-rne.mlir:1426:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r27,  -4124(r30)               # 4-byte Folded Reload
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
.LBB0_984:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1451 7                        # parallel-rne.mlir:1451:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1452 7                        # parallel-rne.mlir:1452:7
	addli r1, zero, 3
	.loc	1 1451 7                        # parallel-rne.mlir:1451:7
	sync_core
	.loc	1 1452 7                        # parallel-rne.mlir:1452:7
	bneq r13, r1, .LBB0_986
# %bb.985:                              # %.critedge42
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 19
	.loc	1 1453 7 is_stmt 1              # parallel-rne.mlir:1453:7
	addli r2, zero, 41
	.loc	1 1452 7                        # parallel-rne.mlir:1452:7
	xsignal r1, 0
	.loc	1 1453 7                        # parallel-rne.mlir:1453:7
	xsignal r2, 0
	.loc	1 1454 7                        # parallel-rne.mlir:1454:7
	addli r2, zero, 42
	xsignal r2, 0
	.loc	1 1459 7                        # parallel-rne.mlir:1459:7
	xwait r1, 0
	.loc	1 1460 7                        # parallel-rne.mlir:1460:7
	addli r1, zero, 31
	xwait r1, 0
	.loc	1 1461 7                        # parallel-rne.mlir:1461:7
	addli r1, zero, 43
	xwait r1, 0
	.loc	1 1462 7                        # parallel-rne.mlir:1462:7
	addli r1, zero, 45
	xwait r1, 0
	j .LBB0_988
.LBB0_986:                              # %.critedge38
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1455 7                        # parallel-rne.mlir:1455:7
	addli r1, zero, 5
	bneq r13, r1, .LBB0_988
# %bb.987:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 42
	addli r4, zero, 2
	addli r5, zero, 1023
	.loc	1 1457 7                        # parallel-rne.mlir:1457:7
	addli r3, zero, 30
	.loc	1 1455 7                        # parallel-rne.mlir:1455:7
	xwait r1, 0
	lock zero, r4
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, r1, 0
	addli r1, zero, 1
	ew_cfg zero, r5, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	dsmadd r2, r2, r2, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	.loc	1 1457 7                        # parallel-rne.mlir:1457:7
	xwait r3, 0
	addli r3, zero, 46
	xwait r3, 0
	lock zero, r4
	lui r3, 258048
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r3, 0
	ew_cfg zero, r5, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, r1, 19
	loadli.w r1,  -4096(r30)                # 4-byte Folded Reload
	loadli.w r3,  -4120(r30)                # 4-byte Folded Reload
	dsmul r3, r1, r2, 0
	addli r1, zero, 29
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r1, 0
	addli r1, zero, 43
	xsignal r1, 0
	addli r1, zero, 45
	xsignal r1, 0
.LBB0_988:                              # %.critedge44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1464 7                        # parallel-rne.mlir:1464:7
	xfence
	.loc	1 1466 7                        # parallel-rne.mlir:1466:7
	addli r1, zero, 255
	.loc	1 1465 7                        # parallel-rne.mlir:1465:7
	mfence { lm, sm, gm }
	.loc	1 1466 7                        # parallel-rne.mlir:1466:7
	csr_set csr5, r1
	sync_core
	.loc	1 1467 7                        # parallel-rne.mlir:1467:7
	beq r13, zero, .LBB0_996
# %bb.989:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1513 7                        # parallel-rne.mlir:1513:7
	addli r1, zero, 1
	beq r13, r1, .LBB0_1028
.LBB0_990:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1559 7                        # parallel-rne.mlir:1559:7
	addli r1, zero, 2
	beq r13, r1, .LBB0_1060
.LBB0_991:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1605 7                        # parallel-rne.mlir:1605:7
	addli r1, zero, 3
	beq r13, r1, .LBB0_1092
.LBB0_992:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1651 7                        # parallel-rne.mlir:1651:7
	beq r13, r6, .LBB0_1124
.LBB0_993:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1697 7                        # parallel-rne.mlir:1697:7
	addli r1, zero, 5
	beq r13, r1, .LBB0_1156
.LBB0_994:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1743 7                        # parallel-rne.mlir:1743:7
	addli r1, zero, 6
	beq r13, r1, .LBB0_1188
.LBB0_995:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1789 7                        # parallel-rne.mlir:1789:7
	addli r1, zero, 7
	beq r13, r1, .LBB0_1220
	j .LBB0_1252
.LBB0_996:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	addli r3, r30, -4224
	.loc	1 1467 7 is_stmt 1              # parallel-rne.mlir:1467:7
	xfence
	mfence { lm, sm, gm }
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli.d r[2:3], r[1:2], 0
	j .LBB0_998
.LBB0_997:                              # %middle.block312
                                        #   in Loop: Header=BB0_998 Depth=2
	.loc	1 1474 9                        # parallel-rne.mlir:1474:9
	addli r3, r30, -4200
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_1027
.LBB0_998:                              # %.preheader128
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1000 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r4, r30, -4136
	sll.d r[8:9], r[2:3], r1
	addli r1, r30, -4224
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	load.d r[10:11], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_1000
.LBB0_999:                              # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 1475 11 is_stmt 1             # parallel-rne.mlir:1475:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 1508 13                       # parallel-rne.mlir:1508:13
	stores.w r1, 12(r16)
	stores.w r19, 8(r16)
	stores.w r20, 4(r16)
	stores.w r13, 0(r16)
	.loc	1 1475 11                       # parallel-rne.mlir:1475:11
	setneq.d r2, r[10:11], r[14:15]
	beq r2, zero, .LBB0_997
.LBB0_1000:                             # %vector.body306
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_998 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1476 19                       # parallel-rne.mlir:1476:19
	add.ul r[1:2], r[10:11], r[8:9]
	.loc	1 1478 19                       # parallel-rne.mlir:1478:19
	loadli.w r3,  -4120(r30)                # 4-byte Folded Reload
	.loc	1 1476 19                       # parallel-rne.mlir:1476:19
	slli r16, r1, 2
	loadli.w r1,  -4116(r30)                # 4-byte Folded Reload
	.loc	1 1477 19                       # parallel-rne.mlir:1477:19
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1478 19                       # parallel-rne.mlir:1478:19
	add.s r7, r16, r3
	.loc	1 1476 19                       # parallel-rne.mlir:1476:19
	add.s r1, r16, r1
	.loc	1 1477 19                       # parallel-rne.mlir:1477:19
	add.s r2, r16, r2
	.loc	1 1478 19                       # parallel-rne.mlir:1478:19
	loads.w r24, 4(r7)
	.loc	1 1477 19                       # parallel-rne.mlir:1477:19
	loads.w r17, 0(r2)
	.loc	1 1476 19                       # parallel-rne.mlir:1476:19
	loads.w r13, 0(r1)
	.loc	1 1477 19                       # parallel-rne.mlir:1477:19
	loads.w r5, 4(r2)
	loads.w r20, 8(r2)
	loads.w r19, 12(r2)
	.loc	1 1476 19                       # parallel-rne.mlir:1476:19
	loads.w r3, 4(r1)
	loads.w r4, 8(r1)
	loads.w r6, 12(r1)
	.loc	1 1478 19                       # parallel-rne.mlir:1478:19
	loads.w r1, 12(r7)
	.loc	1 1483 19                       # parallel-rne.mlir:1483:19
	and r2, r13, r21
	.loc	1 1481 19                       # parallel-rne.mlir:1481:19
	and r17, r17, r21
	.loc	1 1478 19                       # parallel-rne.mlir:1478:19
	loads.w r13, 8(r7)
	.loc	1 1484 19                       # parallel-rne.mlir:1484:19
	seteq r18, r2, r12
	.loc	1 1488 19                       # parallel-rne.mlir:1488:19
	seteq r26, r2, zero
	.loc	1 1485 19                       # parallel-rne.mlir:1485:19
	seteq r22, r17, zero
	.loc	1 1487 19                       # parallel-rne.mlir:1487:19
	seteq r25, r17, r12
	.loc	1 1493 19                       # parallel-rne.mlir:1493:19
	max.u r2, r2, r17
	setlt.u r2, r12, r2
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	and r17, r18, r22
	.loc	1 1489 19                       # parallel-rne.mlir:1489:19
	and r18, r26, r25
	.loc	1 1490 19                       # parallel-rne.mlir:1490:19
	or r17, r17, r18
	lui r18, 523264
	.loc	1 1494 19                       # parallel-rne.mlir:1494:19
	or r17, r2, r17
	lui r2, 523264
	.loc	1 1495 19                       # parallel-rne.mlir:1495:19
	bneq r17, zero, .LBB0_1002
# %bb.1001:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r7)
.LBB0_1002:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	and r3, r3, r21
	and r5, r5, r21
	seteq r7, r3, r12
	seteq r25, r3, zero
	seteq r17, r5, zero
	seteq r22, r5, r12
	max.u r3, r3, r5
	setlt.u r3, r12, r3
	and r5, r7, r17
	and r7, r25, r22
	or r5, r5, r7
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1495 19                       # parallel-rne.mlir:1495:19
	bneq r5, zero, .LBB0_1004
# %bb.1003:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r24, 0
.LBB0_1004:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	and r5, r20, r21
	and r4, r4, r21
	seteq r7, r4, r12
	seteq r22, r4, zero
	seteq r17, r5, zero
	seteq r20, r5, r12
	max.u r4, r4, r5
	setlt.u r4, r12, r4
	and r5, r7, r17
	and r7, r22, r20
	or r5, r5, r7
	or r5, r4, r5
	lui r4, 523264
	.loc	1 1495 19                       # parallel-rne.mlir:1495:19
	bneq r5, zero, .LBB0_1006
# %bb.1005:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
.LBB0_1006:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	and r5, r6, r21
	and r6, r19, r21
	seteq r7, r5, r12
	seteq r19, r5, zero
	seteq r13, r6, zero
	seteq r17, r6, r12
	max.u r5, r5, r6
	setlt.u r5, r12, r5
	and r6, r7, r13
	and r7, r19, r17
	or r6, r6, r7
	or r5, r5, r6
	.loc	1 1495 19                       # parallel-rne.mlir:1495:19
	bneq r5, zero, .LBB0_1008
# %bb.1007:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
.LBB0_1008:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 1496 19 is_stmt 1             # parallel-rne.mlir:1496:19
	and r6, r18, r21
	lui r17, 1024
	.loc	1 1498 19                       # parallel-rne.mlir:1498:19
	setlt.u r1, r12, r6
	.loc	1 1499 19                       # parallel-rne.mlir:1499:19
	bneq r1, zero, .LBB0_1010
# %bb.1009:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r1, r18, 0
	j .LBB0_1011
.LBB0_1010:                             #   in Loop: Header=BB0_1000 Depth=3
	or r1, r18, r17
.LBB0_1011:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	and r24, r4, r21
	setlt.u r5, r12, r24
	.loc	1 1499 19                       # parallel-rne.mlir:1499:19
	bneq r5, zero, .LBB0_1013
# %bb.1012:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_1014
.LBB0_1013:                             #   in Loop: Header=BB0_1000 Depth=3
	or r19, r4, r17
.LBB0_1014:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	and r5, r3, r21
	setlt.u r7, r12, r5
	.loc	1 1499 19                       # parallel-rne.mlir:1499:19
	bneq r7, zero, .LBB0_1016
# %bb.1015:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r3, 0
	j .LBB0_1017
.LBB0_1016:                             #   in Loop: Header=BB0_1000 Depth=3
	or r20, r3, r17
.LBB0_1017:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	and r7, r2, r21
	setlt.u r13, r12, r7
	.loc	1 1499 19                       # parallel-rne.mlir:1499:19
	bneq r13, zero, .LBB0_1019
# %bb.1018:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 1505 19 is_stmt 1             # parallel-rne.mlir:1505:19
	setlt.u r7, r23, r7
	.loc	1 1506 19                       # parallel-rne.mlir:1506:19
	beq r7, zero, .LBB0_1020
	j .LBB0_1021
.LBB0_1019:                             #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r2, r17
	.loc	1 1505 19 is_stmt 1             # parallel-rne.mlir:1505:19
	setlt.u r7, r23, r7
	.loc	1 1506 19                       # parallel-rne.mlir:1506:19
	bneq r7, zero, .LBB0_1021
.LBB0_1020:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	lui r7, 1048560
	add.s r2, r2, r27
	and r13, r2, r7
.LBB0_1021:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	setlt.u r2, r23, r5
	.loc	1 1506 19                       # parallel-rne.mlir:1506:19
	beq r2, zero, .LBB0_1024
# %bb.1022:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r24
	.loc	1 1506 19                       # parallel-rne.mlir:1506:19
	beq r2, zero, .LBB0_1025
.LBB0_1023:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r6
	.loc	1 1506 19                       # parallel-rne.mlir:1506:19
	bneq r2, zero, .LBB0_999
	j .LBB0_1026
.LBB0_1024:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	lui r3, 1048560
	add.s r2, r2, r27
	and r20, r2, r3
	setlt.u r2, r23, r24
	.loc	1 1506 19                       # parallel-rne.mlir:1506:19
	bneq r2, zero, .LBB0_1023
.LBB0_1025:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r27
	and r19, r2, r3
	setlt.u r2, r23, r6
	.loc	1 1506 19                       # parallel-rne.mlir:1506:19
	bneq r2, zero, .LBB0_999
.LBB0_1026:                             # %vector.body306
                                        #   in Loop: Header=BB0_1000 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r27
	and r1, r1, r2
	j .LBB0_999
.LBB0_1027:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1467 7 is_stmt 1              # parallel-rne.mlir:1467:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1513 7                        # parallel-rne.mlir:1513:7
	addli r1, zero, 1
	bneq r13, r1, .LBB0_990
.LBB0_1028:                             #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[2:3], r6
	mfence { lm, sm, gm }
	j .LBB0_1030
.LBB0_1029:                             # %middle.block304
                                        #   in Loop: Header=BB0_1030 Depth=2
	.loc	1 1520 9                        # parallel-rne.mlir:1520:9
	addli r3, r30, -4192
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_1059
.LBB0_1030:                             # %.preheader127
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1032 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r4, r30, -4136
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[2:3], r1
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_1032
.LBB0_1031:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 1521 11 is_stmt 1             # parallel-rne.mlir:1521:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 1554 13                       # parallel-rne.mlir:1554:13
	stores.w r1, 12(r16)
	stores.w r19, 8(r16)
	stores.w r20, 4(r16)
	stores.w r13, 0(r16)
	.loc	1 1521 11                       # parallel-rne.mlir:1521:11
	setneq.d r2, r[10:11], r[14:15]
	beq r2, zero, .LBB0_1029
.LBB0_1032:                             # %vector.body298
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1030 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1522 19                       # parallel-rne.mlir:1522:19
	add.ul r[1:2], r[10:11], r[8:9]
	.loc	1 1524 19                       # parallel-rne.mlir:1524:19
	loadli.w r3,  -4120(r30)                # 4-byte Folded Reload
	.loc	1 1522 19                       # parallel-rne.mlir:1522:19
	slli r16, r1, 2
	loadli.w r1,  -4116(r30)                # 4-byte Folded Reload
	.loc	1 1523 19                       # parallel-rne.mlir:1523:19
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1524 19                       # parallel-rne.mlir:1524:19
	add.s r7, r16, r3
	.loc	1 1522 19                       # parallel-rne.mlir:1522:19
	add.s r1, r16, r1
	.loc	1 1523 19                       # parallel-rne.mlir:1523:19
	add.s r2, r16, r2
	.loc	1 1524 19                       # parallel-rne.mlir:1524:19
	loads.w r24, 4(r7)
	.loc	1 1523 19                       # parallel-rne.mlir:1523:19
	loads.w r17, 0(r2)
	.loc	1 1522 19                       # parallel-rne.mlir:1522:19
	loads.w r13, 0(r1)
	.loc	1 1523 19                       # parallel-rne.mlir:1523:19
	loads.w r5, 4(r2)
	loads.w r20, 8(r2)
	loads.w r19, 12(r2)
	.loc	1 1522 19                       # parallel-rne.mlir:1522:19
	loads.w r3, 4(r1)
	loads.w r4, 8(r1)
	loads.w r6, 12(r1)
	.loc	1 1524 19                       # parallel-rne.mlir:1524:19
	loads.w r1, 12(r7)
	.loc	1 1529 19                       # parallel-rne.mlir:1529:19
	and r2, r13, r21
	.loc	1 1527 19                       # parallel-rne.mlir:1527:19
	and r17, r17, r21
	.loc	1 1524 19                       # parallel-rne.mlir:1524:19
	loads.w r13, 8(r7)
	.loc	1 1530 19                       # parallel-rne.mlir:1530:19
	seteq r18, r2, r12
	.loc	1 1534 19                       # parallel-rne.mlir:1534:19
	seteq r26, r2, zero
	.loc	1 1531 19                       # parallel-rne.mlir:1531:19
	seteq r22, r17, zero
	.loc	1 1533 19                       # parallel-rne.mlir:1533:19
	seteq r25, r17, r12
	.loc	1 1539 19                       # parallel-rne.mlir:1539:19
	max.u r2, r2, r17
	setlt.u r2, r12, r2
	.loc	1 1532 19                       # parallel-rne.mlir:1532:19
	and r17, r18, r22
	.loc	1 1535 19                       # parallel-rne.mlir:1535:19
	and r18, r26, r25
	.loc	1 1536 19                       # parallel-rne.mlir:1536:19
	or r17, r17, r18
	lui r18, 523264
	.loc	1 1540 19                       # parallel-rne.mlir:1540:19
	or r17, r2, r17
	lui r2, 523264
	.loc	1 1541 19                       # parallel-rne.mlir:1541:19
	bneq r17, zero, .LBB0_1034
# %bb.1033:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r7)
.LBB0_1034:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	and r3, r3, r21
	and r5, r5, r21
	seteq r7, r3, r12
	seteq r25, r3, zero
	seteq r17, r5, zero
	seteq r22, r5, r12
	max.u r3, r3, r5
	setlt.u r3, r12, r3
	and r5, r7, r17
	and r7, r25, r22
	or r5, r5, r7
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1541 19                       # parallel-rne.mlir:1541:19
	bneq r5, zero, .LBB0_1036
# %bb.1035:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r24, 0
.LBB0_1036:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	and r5, r20, r21
	and r4, r4, r21
	seteq r7, r4, r12
	seteq r22, r4, zero
	seteq r17, r5, zero
	seteq r20, r5, r12
	max.u r4, r4, r5
	setlt.u r4, r12, r4
	and r5, r7, r17
	and r7, r22, r20
	or r5, r5, r7
	or r5, r4, r5
	lui r4, 523264
	.loc	1 1541 19                       # parallel-rne.mlir:1541:19
	bneq r5, zero, .LBB0_1038
# %bb.1037:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
.LBB0_1038:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	and r5, r6, r21
	and r6, r19, r21
	seteq r7, r5, r12
	seteq r19, r5, zero
	seteq r13, r6, zero
	seteq r17, r6, r12
	max.u r5, r5, r6
	setlt.u r5, r12, r5
	and r6, r7, r13
	and r7, r19, r17
	or r6, r6, r7
	or r5, r5, r6
	.loc	1 1541 19                       # parallel-rne.mlir:1541:19
	bneq r5, zero, .LBB0_1040
# %bb.1039:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
.LBB0_1040:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 1542 19 is_stmt 1             # parallel-rne.mlir:1542:19
	and r6, r18, r21
	lui r17, 1024
	.loc	1 1544 19                       # parallel-rne.mlir:1544:19
	setlt.u r1, r12, r6
	.loc	1 1545 19                       # parallel-rne.mlir:1545:19
	bneq r1, zero, .LBB0_1042
# %bb.1041:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r1, r18, 0
	j .LBB0_1043
.LBB0_1042:                             #   in Loop: Header=BB0_1032 Depth=3
	or r1, r18, r17
.LBB0_1043:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	and r24, r4, r21
	setlt.u r5, r12, r24
	.loc	1 1545 19                       # parallel-rne.mlir:1545:19
	bneq r5, zero, .LBB0_1045
# %bb.1044:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_1046
.LBB0_1045:                             #   in Loop: Header=BB0_1032 Depth=3
	or r19, r4, r17
.LBB0_1046:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	and r5, r3, r21
	setlt.u r7, r12, r5
	.loc	1 1545 19                       # parallel-rne.mlir:1545:19
	bneq r7, zero, .LBB0_1048
# %bb.1047:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r3, 0
	j .LBB0_1049
.LBB0_1048:                             #   in Loop: Header=BB0_1032 Depth=3
	or r20, r3, r17
.LBB0_1049:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	and r7, r2, r21
	setlt.u r13, r12, r7
	.loc	1 1545 19                       # parallel-rne.mlir:1545:19
	bneq r13, zero, .LBB0_1051
# %bb.1050:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 1551 19 is_stmt 1             # parallel-rne.mlir:1551:19
	setlt.u r7, r23, r7
	.loc	1 1552 19                       # parallel-rne.mlir:1552:19
	beq r7, zero, .LBB0_1052
	j .LBB0_1053
.LBB0_1051:                             #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r2, r17
	.loc	1 1551 19 is_stmt 1             # parallel-rne.mlir:1551:19
	setlt.u r7, r23, r7
	.loc	1 1552 19                       # parallel-rne.mlir:1552:19
	bneq r7, zero, .LBB0_1053
.LBB0_1052:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	lui r7, 1048560
	add.s r2, r2, r27
	and r13, r2, r7
.LBB0_1053:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	setlt.u r2, r23, r5
	.loc	1 1552 19                       # parallel-rne.mlir:1552:19
	beq r2, zero, .LBB0_1056
# %bb.1054:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r24
	.loc	1 1552 19                       # parallel-rne.mlir:1552:19
	beq r2, zero, .LBB0_1057
.LBB0_1055:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r6
	.loc	1 1552 19                       # parallel-rne.mlir:1552:19
	bneq r2, zero, .LBB0_1031
	j .LBB0_1058
.LBB0_1056:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	lui r3, 1048560
	add.s r2, r2, r27
	and r20, r2, r3
	setlt.u r2, r23, r24
	.loc	1 1552 19                       # parallel-rne.mlir:1552:19
	bneq r2, zero, .LBB0_1055
.LBB0_1057:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r27
	and r19, r2, r3
	setlt.u r2, r23, r6
	.loc	1 1552 19                       # parallel-rne.mlir:1552:19
	bneq r2, zero, .LBB0_1031
.LBB0_1058:                             # %vector.body298
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r27
	and r1, r1, r2
	j .LBB0_1031
.LBB0_1059:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1513 7 is_stmt 1              # parallel-rne.mlir:1513:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1559 7                        # parallel-rne.mlir:1559:7
	addli r1, zero, 2
	bneq r13, r1, .LBB0_991
.LBB0_1060:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 1559 7                        # parallel-rne.mlir:1559:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_1062
.LBB0_1061:                             # %middle.block296
                                        #   in Loop: Header=BB0_1062 Depth=2
	.loc	1 1566 9 is_stmt 1              # parallel-rne.mlir:1566:9
	addli r3, r30, -4184
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_1091
.LBB0_1062:                             # %.preheader126
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1064 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r4, r30, -4136
	zext_int2long r[8:9], zero
	sll.d r[10:11], r[2:3], r1
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_1064
.LBB0_1063:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 1567 11 is_stmt 1             # parallel-rne.mlir:1567:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1600 13                       # parallel-rne.mlir:1600:13
	stores.w r1, 12(r16)
	stores.w r19, 8(r16)
	stores.w r20, 4(r16)
	stores.w r13, 0(r16)
	.loc	1 1567 11                       # parallel-rne.mlir:1567:11
	setneq.d r2, r[8:9], r[14:15]
	beq r2, zero, .LBB0_1061
.LBB0_1064:                             # %vector.body290
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1062 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1568 19                       # parallel-rne.mlir:1568:19
	add.ul r[1:2], r[8:9], r[10:11]
	.loc	1 1570 19                       # parallel-rne.mlir:1570:19
	loadli.w r3,  -4120(r30)                # 4-byte Folded Reload
	.loc	1 1568 19                       # parallel-rne.mlir:1568:19
	slli r16, r1, 2
	loadli.w r1,  -4116(r30)                # 4-byte Folded Reload
	.loc	1 1569 19                       # parallel-rne.mlir:1569:19
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1570 19                       # parallel-rne.mlir:1570:19
	add.s r7, r16, r3
	.loc	1 1568 19                       # parallel-rne.mlir:1568:19
	add.s r1, r16, r1
	.loc	1 1569 19                       # parallel-rne.mlir:1569:19
	add.s r2, r16, r2
	.loc	1 1570 19                       # parallel-rne.mlir:1570:19
	loads.w r24, 4(r7)
	.loc	1 1569 19                       # parallel-rne.mlir:1569:19
	loads.w r17, 0(r2)
	.loc	1 1568 19                       # parallel-rne.mlir:1568:19
	loads.w r13, 0(r1)
	.loc	1 1569 19                       # parallel-rne.mlir:1569:19
	loads.w r5, 4(r2)
	loads.w r20, 8(r2)
	loads.w r19, 12(r2)
	.loc	1 1568 19                       # parallel-rne.mlir:1568:19
	loads.w r3, 4(r1)
	loads.w r4, 8(r1)
	loads.w r6, 12(r1)
	.loc	1 1570 19                       # parallel-rne.mlir:1570:19
	loads.w r1, 12(r7)
	.loc	1 1575 19                       # parallel-rne.mlir:1575:19
	and r2, r13, r21
	.loc	1 1573 19                       # parallel-rne.mlir:1573:19
	and r17, r17, r21
	.loc	1 1570 19                       # parallel-rne.mlir:1570:19
	loads.w r13, 8(r7)
	.loc	1 1576 19                       # parallel-rne.mlir:1576:19
	seteq r18, r2, r12
	.loc	1 1580 19                       # parallel-rne.mlir:1580:19
	seteq r26, r2, zero
	.loc	1 1577 19                       # parallel-rne.mlir:1577:19
	seteq r22, r17, zero
	.loc	1 1579 19                       # parallel-rne.mlir:1579:19
	seteq r25, r17, r12
	.loc	1 1585 19                       # parallel-rne.mlir:1585:19
	max.u r2, r2, r17
	setlt.u r2, r12, r2
	.loc	1 1578 19                       # parallel-rne.mlir:1578:19
	and r17, r18, r22
	.loc	1 1581 19                       # parallel-rne.mlir:1581:19
	and r18, r26, r25
	.loc	1 1582 19                       # parallel-rne.mlir:1582:19
	or r17, r17, r18
	lui r18, 523264
	.loc	1 1586 19                       # parallel-rne.mlir:1586:19
	or r17, r2, r17
	lui r2, 523264
	.loc	1 1587 19                       # parallel-rne.mlir:1587:19
	bneq r17, zero, .LBB0_1066
# %bb.1065:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r7)
.LBB0_1066:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	and r3, r3, r21
	and r5, r5, r21
	seteq r7, r3, r12
	seteq r25, r3, zero
	seteq r17, r5, zero
	seteq r22, r5, r12
	max.u r3, r3, r5
	setlt.u r3, r12, r3
	and r5, r7, r17
	and r7, r25, r22
	or r5, r5, r7
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1587 19                       # parallel-rne.mlir:1587:19
	bneq r5, zero, .LBB0_1068
# %bb.1067:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r24, 0
.LBB0_1068:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	and r5, r20, r21
	and r4, r4, r21
	seteq r7, r4, r12
	seteq r22, r4, zero
	seteq r17, r5, zero
	seteq r20, r5, r12
	max.u r4, r4, r5
	setlt.u r4, r12, r4
	and r5, r7, r17
	and r7, r22, r20
	or r5, r5, r7
	or r5, r4, r5
	lui r4, 523264
	.loc	1 1587 19                       # parallel-rne.mlir:1587:19
	bneq r5, zero, .LBB0_1070
# %bb.1069:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
.LBB0_1070:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	and r5, r6, r21
	and r6, r19, r21
	seteq r7, r5, r12
	seteq r19, r5, zero
	seteq r13, r6, zero
	seteq r17, r6, r12
	max.u r5, r5, r6
	setlt.u r5, r12, r5
	and r6, r7, r13
	and r7, r19, r17
	or r6, r6, r7
	or r5, r5, r6
	.loc	1 1587 19                       # parallel-rne.mlir:1587:19
	bneq r5, zero, .LBB0_1072
# %bb.1071:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
.LBB0_1072:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 1588 19 is_stmt 1             # parallel-rne.mlir:1588:19
	and r6, r18, r21
	lui r17, 1024
	.loc	1 1590 19                       # parallel-rne.mlir:1590:19
	setlt.u r1, r12, r6
	.loc	1 1591 19                       # parallel-rne.mlir:1591:19
	bneq r1, zero, .LBB0_1074
# %bb.1073:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r1, r18, 0
	j .LBB0_1075
.LBB0_1074:                             #   in Loop: Header=BB0_1064 Depth=3
	or r1, r18, r17
.LBB0_1075:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	and r24, r4, r21
	setlt.u r5, r12, r24
	.loc	1 1591 19                       # parallel-rne.mlir:1591:19
	bneq r5, zero, .LBB0_1077
# %bb.1076:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_1078
.LBB0_1077:                             #   in Loop: Header=BB0_1064 Depth=3
	or r19, r4, r17
.LBB0_1078:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	and r5, r3, r21
	setlt.u r7, r12, r5
	.loc	1 1591 19                       # parallel-rne.mlir:1591:19
	bneq r7, zero, .LBB0_1080
# %bb.1079:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r3, 0
	j .LBB0_1081
.LBB0_1080:                             #   in Loop: Header=BB0_1064 Depth=3
	or r20, r3, r17
.LBB0_1081:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	and r7, r2, r21
	setlt.u r13, r12, r7
	.loc	1 1591 19                       # parallel-rne.mlir:1591:19
	bneq r13, zero, .LBB0_1083
# %bb.1082:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 1597 19 is_stmt 1             # parallel-rne.mlir:1597:19
	setlt.u r7, r23, r7
	.loc	1 1598 19                       # parallel-rne.mlir:1598:19
	beq r7, zero, .LBB0_1084
	j .LBB0_1085
.LBB0_1083:                             #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r2, r17
	.loc	1 1597 19 is_stmt 1             # parallel-rne.mlir:1597:19
	setlt.u r7, r23, r7
	.loc	1 1598 19                       # parallel-rne.mlir:1598:19
	bneq r7, zero, .LBB0_1085
.LBB0_1084:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	lui r7, 1048560
	add.s r2, r2, r27
	and r13, r2, r7
.LBB0_1085:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	setlt.u r2, r23, r5
	.loc	1 1598 19                       # parallel-rne.mlir:1598:19
	beq r2, zero, .LBB0_1088
# %bb.1086:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r24
	.loc	1 1598 19                       # parallel-rne.mlir:1598:19
	beq r2, zero, .LBB0_1089
.LBB0_1087:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r6
	.loc	1 1598 19                       # parallel-rne.mlir:1598:19
	bneq r2, zero, .LBB0_1063
	j .LBB0_1090
.LBB0_1088:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	lui r3, 1048560
	add.s r2, r2, r27
	and r20, r2, r3
	setlt.u r2, r23, r24
	.loc	1 1598 19                       # parallel-rne.mlir:1598:19
	bneq r2, zero, .LBB0_1087
.LBB0_1089:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r27
	and r19, r2, r3
	setlt.u r2, r23, r6
	.loc	1 1598 19                       # parallel-rne.mlir:1598:19
	bneq r2, zero, .LBB0_1063
.LBB0_1090:                             # %vector.body290
                                        #   in Loop: Header=BB0_1064 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r27
	and r1, r1, r2
	j .LBB0_1063
.LBB0_1091:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1559 7 is_stmt 1              # parallel-rne.mlir:1559:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1605 7                        # parallel-rne.mlir:1605:7
	addli r1, zero, 3
	bneq r13, r1, .LBB0_992
.LBB0_1092:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 1605 7                        # parallel-rne.mlir:1605:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_1094
.LBB0_1093:                             # %middle.block288
                                        #   in Loop: Header=BB0_1094 Depth=2
	.loc	1 1612 9 is_stmt 1              # parallel-rne.mlir:1612:9
	addli r3, r30, -4176
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_1123
.LBB0_1094:                             # %.preheader125
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1096 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r4, r30, -4136
	zext_int2long r[8:9], zero
	sll.d r[10:11], r[2:3], r1
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_1096
.LBB0_1095:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 1613 11 is_stmt 1             # parallel-rne.mlir:1613:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1646 13                       # parallel-rne.mlir:1646:13
	stores.w r1, 12(r16)
	stores.w r19, 8(r16)
	stores.w r20, 4(r16)
	stores.w r13, 0(r16)
	.loc	1 1613 11                       # parallel-rne.mlir:1613:11
	setneq.d r2, r[8:9], r[14:15]
	beq r2, zero, .LBB0_1093
.LBB0_1096:                             # %vector.body282
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1094 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1614 19                       # parallel-rne.mlir:1614:19
	add.ul r[1:2], r[8:9], r[10:11]
	.loc	1 1616 19                       # parallel-rne.mlir:1616:19
	loadli.w r3,  -4120(r30)                # 4-byte Folded Reload
	.loc	1 1614 19                       # parallel-rne.mlir:1614:19
	slli r16, r1, 2
	loadli.w r1,  -4116(r30)                # 4-byte Folded Reload
	.loc	1 1615 19                       # parallel-rne.mlir:1615:19
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1616 19                       # parallel-rne.mlir:1616:19
	add.s r7, r16, r3
	.loc	1 1614 19                       # parallel-rne.mlir:1614:19
	add.s r1, r16, r1
	.loc	1 1615 19                       # parallel-rne.mlir:1615:19
	add.s r2, r16, r2
	.loc	1 1616 19                       # parallel-rne.mlir:1616:19
	loads.w r24, 4(r7)
	.loc	1 1615 19                       # parallel-rne.mlir:1615:19
	loads.w r17, 0(r2)
	.loc	1 1614 19                       # parallel-rne.mlir:1614:19
	loads.w r13, 0(r1)
	.loc	1 1615 19                       # parallel-rne.mlir:1615:19
	loads.w r5, 4(r2)
	loads.w r20, 8(r2)
	loads.w r19, 12(r2)
	.loc	1 1614 19                       # parallel-rne.mlir:1614:19
	loads.w r3, 4(r1)
	loads.w r4, 8(r1)
	loads.w r6, 12(r1)
	.loc	1 1616 19                       # parallel-rne.mlir:1616:19
	loads.w r1, 12(r7)
	.loc	1 1621 19                       # parallel-rne.mlir:1621:19
	and r2, r13, r21
	.loc	1 1619 19                       # parallel-rne.mlir:1619:19
	and r17, r17, r21
	.loc	1 1616 19                       # parallel-rne.mlir:1616:19
	loads.w r13, 8(r7)
	.loc	1 1622 19                       # parallel-rne.mlir:1622:19
	seteq r18, r2, r12
	.loc	1 1626 19                       # parallel-rne.mlir:1626:19
	seteq r26, r2, zero
	.loc	1 1623 19                       # parallel-rne.mlir:1623:19
	seteq r22, r17, zero
	.loc	1 1625 19                       # parallel-rne.mlir:1625:19
	seteq r25, r17, r12
	.loc	1 1631 19                       # parallel-rne.mlir:1631:19
	max.u r2, r2, r17
	setlt.u r2, r12, r2
	.loc	1 1624 19                       # parallel-rne.mlir:1624:19
	and r17, r18, r22
	.loc	1 1627 19                       # parallel-rne.mlir:1627:19
	and r18, r26, r25
	.loc	1 1628 19                       # parallel-rne.mlir:1628:19
	or r17, r17, r18
	lui r18, 523264
	.loc	1 1632 19                       # parallel-rne.mlir:1632:19
	or r17, r2, r17
	lui r2, 523264
	.loc	1 1633 19                       # parallel-rne.mlir:1633:19
	bneq r17, zero, .LBB0_1098
# %bb.1097:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r7)
.LBB0_1098:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	and r3, r3, r21
	and r5, r5, r21
	seteq r7, r3, r12
	seteq r25, r3, zero
	seteq r17, r5, zero
	seteq r22, r5, r12
	max.u r3, r3, r5
	setlt.u r3, r12, r3
	and r5, r7, r17
	and r7, r25, r22
	or r5, r5, r7
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1633 19                       # parallel-rne.mlir:1633:19
	bneq r5, zero, .LBB0_1100
# %bb.1099:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r24, 0
.LBB0_1100:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	and r5, r20, r21
	and r4, r4, r21
	seteq r7, r4, r12
	seteq r22, r4, zero
	seteq r17, r5, zero
	seteq r20, r5, r12
	max.u r4, r4, r5
	setlt.u r4, r12, r4
	and r5, r7, r17
	and r7, r22, r20
	or r5, r5, r7
	or r5, r4, r5
	lui r4, 523264
	.loc	1 1633 19                       # parallel-rne.mlir:1633:19
	bneq r5, zero, .LBB0_1102
# %bb.1101:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
.LBB0_1102:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	and r5, r6, r21
	and r6, r19, r21
	seteq r7, r5, r12
	seteq r19, r5, zero
	seteq r13, r6, zero
	seteq r17, r6, r12
	max.u r5, r5, r6
	setlt.u r5, r12, r5
	and r6, r7, r13
	and r7, r19, r17
	or r6, r6, r7
	or r5, r5, r6
	.loc	1 1633 19                       # parallel-rne.mlir:1633:19
	bneq r5, zero, .LBB0_1104
# %bb.1103:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
.LBB0_1104:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 1634 19 is_stmt 1             # parallel-rne.mlir:1634:19
	and r6, r18, r21
	lui r17, 1024
	.loc	1 1636 19                       # parallel-rne.mlir:1636:19
	setlt.u r1, r12, r6
	.loc	1 1637 19                       # parallel-rne.mlir:1637:19
	bneq r1, zero, .LBB0_1106
# %bb.1105:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r1, r18, 0
	j .LBB0_1107
.LBB0_1106:                             #   in Loop: Header=BB0_1096 Depth=3
	or r1, r18, r17
.LBB0_1107:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	and r24, r4, r21
	setlt.u r5, r12, r24
	.loc	1 1637 19                       # parallel-rne.mlir:1637:19
	bneq r5, zero, .LBB0_1109
# %bb.1108:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_1110
.LBB0_1109:                             #   in Loop: Header=BB0_1096 Depth=3
	or r19, r4, r17
.LBB0_1110:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	and r5, r3, r21
	setlt.u r7, r12, r5
	.loc	1 1637 19                       # parallel-rne.mlir:1637:19
	bneq r7, zero, .LBB0_1112
# %bb.1111:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r3, 0
	j .LBB0_1113
.LBB0_1112:                             #   in Loop: Header=BB0_1096 Depth=3
	or r20, r3, r17
.LBB0_1113:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	and r7, r2, r21
	setlt.u r13, r12, r7
	.loc	1 1637 19                       # parallel-rne.mlir:1637:19
	bneq r13, zero, .LBB0_1115
# %bb.1114:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 1643 19 is_stmt 1             # parallel-rne.mlir:1643:19
	setlt.u r7, r23, r7
	.loc	1 1644 19                       # parallel-rne.mlir:1644:19
	beq r7, zero, .LBB0_1116
	j .LBB0_1117
.LBB0_1115:                             #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r2, r17
	.loc	1 1643 19 is_stmt 1             # parallel-rne.mlir:1643:19
	setlt.u r7, r23, r7
	.loc	1 1644 19                       # parallel-rne.mlir:1644:19
	bneq r7, zero, .LBB0_1117
.LBB0_1116:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	lui r7, 1048560
	add.s r2, r2, r27
	and r13, r2, r7
.LBB0_1117:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	setlt.u r2, r23, r5
	.loc	1 1644 19                       # parallel-rne.mlir:1644:19
	beq r2, zero, .LBB0_1120
# %bb.1118:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r24
	.loc	1 1644 19                       # parallel-rne.mlir:1644:19
	beq r2, zero, .LBB0_1121
.LBB0_1119:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r6
	.loc	1 1644 19                       # parallel-rne.mlir:1644:19
	bneq r2, zero, .LBB0_1095
	j .LBB0_1122
.LBB0_1120:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	lui r3, 1048560
	add.s r2, r2, r27
	and r20, r2, r3
	setlt.u r2, r23, r24
	.loc	1 1644 19                       # parallel-rne.mlir:1644:19
	bneq r2, zero, .LBB0_1119
.LBB0_1121:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r27
	and r19, r2, r3
	setlt.u r2, r23, r6
	.loc	1 1644 19                       # parallel-rne.mlir:1644:19
	bneq r2, zero, .LBB0_1095
.LBB0_1122:                             # %vector.body282
                                        #   in Loop: Header=BB0_1096 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r27
	and r1, r1, r2
	j .LBB0_1095
.LBB0_1123:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1605 7 is_stmt 1              # parallel-rne.mlir:1605:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1651 7                        # parallel-rne.mlir:1651:7
	bneq r13, r6, .LBB0_993
.LBB0_1124:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 1651 7                        # parallel-rne.mlir:1651:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_1126
.LBB0_1125:                             # %middle.block280
                                        #   in Loop: Header=BB0_1126 Depth=2
	.loc	1 1658 9 is_stmt 1              # parallel-rne.mlir:1658:9
	addli r3, r30, -4168
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_1155
.LBB0_1126:                             # %.preheader124
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1128 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r4, r30, -4136
	zext_int2long r[8:9], zero
	sll.d r[10:11], r[2:3], r1
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_1128
.LBB0_1127:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 1659 11 is_stmt 1             # parallel-rne.mlir:1659:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1692 13                       # parallel-rne.mlir:1692:13
	stores.w r1, 12(r16)
	stores.w r19, 8(r16)
	stores.w r20, 4(r16)
	stores.w r13, 0(r16)
	.loc	1 1659 11                       # parallel-rne.mlir:1659:11
	setneq.d r2, r[8:9], r[14:15]
	beq r2, zero, .LBB0_1125
.LBB0_1128:                             # %vector.body274
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1660 19                       # parallel-rne.mlir:1660:19
	add.ul r[1:2], r[8:9], r[10:11]
	.loc	1 1662 19                       # parallel-rne.mlir:1662:19
	loadli.w r3,  -4120(r30)                # 4-byte Folded Reload
	.loc	1 1660 19                       # parallel-rne.mlir:1660:19
	slli r16, r1, 2
	loadli.w r1,  -4116(r30)                # 4-byte Folded Reload
	.loc	1 1661 19                       # parallel-rne.mlir:1661:19
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1662 19                       # parallel-rne.mlir:1662:19
	add.s r7, r16, r3
	.loc	1 1660 19                       # parallel-rne.mlir:1660:19
	add.s r1, r16, r1
	.loc	1 1661 19                       # parallel-rne.mlir:1661:19
	add.s r2, r16, r2
	.loc	1 1662 19                       # parallel-rne.mlir:1662:19
	loads.w r24, 4(r7)
	.loc	1 1661 19                       # parallel-rne.mlir:1661:19
	loads.w r17, 0(r2)
	.loc	1 1660 19                       # parallel-rne.mlir:1660:19
	loads.w r13, 0(r1)
	.loc	1 1661 19                       # parallel-rne.mlir:1661:19
	loads.w r5, 4(r2)
	loads.w r20, 8(r2)
	loads.w r19, 12(r2)
	.loc	1 1660 19                       # parallel-rne.mlir:1660:19
	loads.w r3, 4(r1)
	loads.w r4, 8(r1)
	loads.w r6, 12(r1)
	.loc	1 1662 19                       # parallel-rne.mlir:1662:19
	loads.w r1, 12(r7)
	.loc	1 1667 19                       # parallel-rne.mlir:1667:19
	and r2, r13, r21
	.loc	1 1665 19                       # parallel-rne.mlir:1665:19
	and r17, r17, r21
	.loc	1 1662 19                       # parallel-rne.mlir:1662:19
	loads.w r13, 8(r7)
	.loc	1 1668 19                       # parallel-rne.mlir:1668:19
	seteq r18, r2, r12
	.loc	1 1672 19                       # parallel-rne.mlir:1672:19
	seteq r26, r2, zero
	.loc	1 1669 19                       # parallel-rne.mlir:1669:19
	seteq r22, r17, zero
	.loc	1 1671 19                       # parallel-rne.mlir:1671:19
	seteq r25, r17, r12
	.loc	1 1677 19                       # parallel-rne.mlir:1677:19
	max.u r2, r2, r17
	setlt.u r2, r12, r2
	.loc	1 1670 19                       # parallel-rne.mlir:1670:19
	and r17, r18, r22
	.loc	1 1673 19                       # parallel-rne.mlir:1673:19
	and r18, r26, r25
	.loc	1 1674 19                       # parallel-rne.mlir:1674:19
	or r17, r17, r18
	lui r18, 523264
	.loc	1 1678 19                       # parallel-rne.mlir:1678:19
	or r17, r2, r17
	lui r2, 523264
	.loc	1 1679 19                       # parallel-rne.mlir:1679:19
	bneq r17, zero, .LBB0_1130
# %bb.1129:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r7)
.LBB0_1130:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	and r3, r3, r21
	and r5, r5, r21
	seteq r7, r3, r12
	seteq r25, r3, zero
	seteq r17, r5, zero
	seteq r22, r5, r12
	max.u r3, r3, r5
	setlt.u r3, r12, r3
	and r5, r7, r17
	and r7, r25, r22
	or r5, r5, r7
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1679 19                       # parallel-rne.mlir:1679:19
	bneq r5, zero, .LBB0_1132
# %bb.1131:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r24, 0
.LBB0_1132:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	and r5, r20, r21
	and r4, r4, r21
	seteq r7, r4, r12
	seteq r22, r4, zero
	seteq r17, r5, zero
	seteq r20, r5, r12
	max.u r4, r4, r5
	setlt.u r4, r12, r4
	and r5, r7, r17
	and r7, r22, r20
	or r5, r5, r7
	or r5, r4, r5
	lui r4, 523264
	.loc	1 1679 19                       # parallel-rne.mlir:1679:19
	bneq r5, zero, .LBB0_1134
# %bb.1133:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
.LBB0_1134:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	and r5, r6, r21
	and r6, r19, r21
	seteq r7, r5, r12
	seteq r19, r5, zero
	seteq r13, r6, zero
	seteq r17, r6, r12
	max.u r5, r5, r6
	setlt.u r5, r12, r5
	and r6, r7, r13
	and r7, r19, r17
	or r6, r6, r7
	or r5, r5, r6
	.loc	1 1679 19                       # parallel-rne.mlir:1679:19
	bneq r5, zero, .LBB0_1136
# %bb.1135:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
.LBB0_1136:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 1680 19 is_stmt 1             # parallel-rne.mlir:1680:19
	and r6, r18, r21
	lui r17, 1024
	.loc	1 1682 19                       # parallel-rne.mlir:1682:19
	setlt.u r1, r12, r6
	.loc	1 1683 19                       # parallel-rne.mlir:1683:19
	bneq r1, zero, .LBB0_1138
# %bb.1137:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r1, r18, 0
	j .LBB0_1139
.LBB0_1138:                             #   in Loop: Header=BB0_1128 Depth=3
	or r1, r18, r17
.LBB0_1139:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	and r24, r4, r21
	setlt.u r5, r12, r24
	.loc	1 1683 19                       # parallel-rne.mlir:1683:19
	bneq r5, zero, .LBB0_1141
# %bb.1140:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_1142
.LBB0_1141:                             #   in Loop: Header=BB0_1128 Depth=3
	or r19, r4, r17
.LBB0_1142:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	and r5, r3, r21
	setlt.u r7, r12, r5
	.loc	1 1683 19                       # parallel-rne.mlir:1683:19
	bneq r7, zero, .LBB0_1144
# %bb.1143:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r3, 0
	j .LBB0_1145
.LBB0_1144:                             #   in Loop: Header=BB0_1128 Depth=3
	or r20, r3, r17
.LBB0_1145:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	and r7, r2, r21
	setlt.u r13, r12, r7
	.loc	1 1683 19                       # parallel-rne.mlir:1683:19
	bneq r13, zero, .LBB0_1147
# %bb.1146:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 1689 19 is_stmt 1             # parallel-rne.mlir:1689:19
	setlt.u r7, r23, r7
	.loc	1 1690 19                       # parallel-rne.mlir:1690:19
	beq r7, zero, .LBB0_1148
	j .LBB0_1149
.LBB0_1147:                             #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r2, r17
	.loc	1 1689 19 is_stmt 1             # parallel-rne.mlir:1689:19
	setlt.u r7, r23, r7
	.loc	1 1690 19                       # parallel-rne.mlir:1690:19
	bneq r7, zero, .LBB0_1149
.LBB0_1148:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	lui r7, 1048560
	add.s r2, r2, r27
	and r13, r2, r7
.LBB0_1149:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	setlt.u r2, r23, r5
	.loc	1 1690 19                       # parallel-rne.mlir:1690:19
	beq r2, zero, .LBB0_1152
# %bb.1150:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r24
	.loc	1 1690 19                       # parallel-rne.mlir:1690:19
	beq r2, zero, .LBB0_1153
.LBB0_1151:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r6
	.loc	1 1690 19                       # parallel-rne.mlir:1690:19
	bneq r2, zero, .LBB0_1127
	j .LBB0_1154
.LBB0_1152:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	lui r3, 1048560
	add.s r2, r2, r27
	and r20, r2, r3
	setlt.u r2, r23, r24
	.loc	1 1690 19                       # parallel-rne.mlir:1690:19
	bneq r2, zero, .LBB0_1151
.LBB0_1153:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r27
	and r19, r2, r3
	setlt.u r2, r23, r6
	.loc	1 1690 19                       # parallel-rne.mlir:1690:19
	bneq r2, zero, .LBB0_1127
.LBB0_1154:                             # %vector.body274
                                        #   in Loop: Header=BB0_1128 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r27
	and r1, r1, r2
	j .LBB0_1127
.LBB0_1155:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1651 7 is_stmt 1              # parallel-rne.mlir:1651:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1697 7                        # parallel-rne.mlir:1697:7
	addli r1, zero, 5
	bneq r13, r1, .LBB0_994
.LBB0_1156:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 1697 7                        # parallel-rne.mlir:1697:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_1158
.LBB0_1157:                             # %middle.block272
                                        #   in Loop: Header=BB0_1158 Depth=2
	.loc	1 1704 9 is_stmt 1              # parallel-rne.mlir:1704:9
	addli r3, r30, -4160
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_1187
.LBB0_1158:                             # %.preheader123
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1160 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r4, r30, -4136
	zext_int2long r[8:9], zero
	sll.d r[10:11], r[2:3], r1
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_1160
.LBB0_1159:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 1705 11 is_stmt 1             # parallel-rne.mlir:1705:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1738 13                       # parallel-rne.mlir:1738:13
	stores.w r1, 12(r16)
	stores.w r19, 8(r16)
	stores.w r20, 4(r16)
	stores.w r13, 0(r16)
	.loc	1 1705 11                       # parallel-rne.mlir:1705:11
	setneq.d r2, r[8:9], r[14:15]
	beq r2, zero, .LBB0_1157
.LBB0_1160:                             # %vector.body266
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	add.ul r[1:2], r[8:9], r[10:11]
	.loc	1 1708 19                       # parallel-rne.mlir:1708:19
	loadli.w r3,  -4120(r30)                # 4-byte Folded Reload
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	slli r16, r1, 2
	loadli.w r1,  -4116(r30)                # 4-byte Folded Reload
	.loc	1 1707 19                       # parallel-rne.mlir:1707:19
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1708 19                       # parallel-rne.mlir:1708:19
	add.s r7, r16, r3
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	add.s r1, r16, r1
	.loc	1 1707 19                       # parallel-rne.mlir:1707:19
	add.s r2, r16, r2
	.loc	1 1708 19                       # parallel-rne.mlir:1708:19
	loads.w r24, 4(r7)
	.loc	1 1707 19                       # parallel-rne.mlir:1707:19
	loads.w r17, 0(r2)
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	loads.w r13, 0(r1)
	.loc	1 1707 19                       # parallel-rne.mlir:1707:19
	loads.w r5, 4(r2)
	loads.w r20, 8(r2)
	loads.w r19, 12(r2)
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	loads.w r3, 4(r1)
	loads.w r4, 8(r1)
	loads.w r6, 12(r1)
	.loc	1 1708 19                       # parallel-rne.mlir:1708:19
	loads.w r1, 12(r7)
	.loc	1 1713 19                       # parallel-rne.mlir:1713:19
	and r2, r13, r21
	.loc	1 1711 19                       # parallel-rne.mlir:1711:19
	and r17, r17, r21
	.loc	1 1708 19                       # parallel-rne.mlir:1708:19
	loads.w r13, 8(r7)
	.loc	1 1714 19                       # parallel-rne.mlir:1714:19
	seteq r18, r2, r12
	.loc	1 1718 19                       # parallel-rne.mlir:1718:19
	seteq r26, r2, zero
	.loc	1 1715 19                       # parallel-rne.mlir:1715:19
	seteq r22, r17, zero
	.loc	1 1717 19                       # parallel-rne.mlir:1717:19
	seteq r25, r17, r12
	.loc	1 1723 19                       # parallel-rne.mlir:1723:19
	max.u r2, r2, r17
	setlt.u r2, r12, r2
	.loc	1 1716 19                       # parallel-rne.mlir:1716:19
	and r17, r18, r22
	.loc	1 1719 19                       # parallel-rne.mlir:1719:19
	and r18, r26, r25
	.loc	1 1720 19                       # parallel-rne.mlir:1720:19
	or r17, r17, r18
	lui r18, 523264
	.loc	1 1724 19                       # parallel-rne.mlir:1724:19
	or r17, r2, r17
	lui r2, 523264
	.loc	1 1725 19                       # parallel-rne.mlir:1725:19
	bneq r17, zero, .LBB0_1162
# %bb.1161:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r7)
.LBB0_1162:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	and r3, r3, r21
	and r5, r5, r21
	seteq r7, r3, r12
	seteq r25, r3, zero
	seteq r17, r5, zero
	seteq r22, r5, r12
	max.u r3, r3, r5
	setlt.u r3, r12, r3
	and r5, r7, r17
	and r7, r25, r22
	or r5, r5, r7
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1725 19                       # parallel-rne.mlir:1725:19
	bneq r5, zero, .LBB0_1164
# %bb.1163:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r24, 0
.LBB0_1164:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	and r5, r20, r21
	and r4, r4, r21
	seteq r7, r4, r12
	seteq r22, r4, zero
	seteq r17, r5, zero
	seteq r20, r5, r12
	max.u r4, r4, r5
	setlt.u r4, r12, r4
	and r5, r7, r17
	and r7, r22, r20
	or r5, r5, r7
	or r5, r4, r5
	lui r4, 523264
	.loc	1 1725 19                       # parallel-rne.mlir:1725:19
	bneq r5, zero, .LBB0_1166
# %bb.1165:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
.LBB0_1166:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	and r5, r6, r21
	and r6, r19, r21
	seteq r7, r5, r12
	seteq r19, r5, zero
	seteq r13, r6, zero
	seteq r17, r6, r12
	max.u r5, r5, r6
	setlt.u r5, r12, r5
	and r6, r7, r13
	and r7, r19, r17
	or r6, r6, r7
	or r5, r5, r6
	.loc	1 1725 19                       # parallel-rne.mlir:1725:19
	bneq r5, zero, .LBB0_1168
# %bb.1167:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
.LBB0_1168:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 1726 19 is_stmt 1             # parallel-rne.mlir:1726:19
	and r6, r18, r21
	lui r17, 1024
	.loc	1 1728 19                       # parallel-rne.mlir:1728:19
	setlt.u r1, r12, r6
	.loc	1 1729 19                       # parallel-rne.mlir:1729:19
	bneq r1, zero, .LBB0_1170
# %bb.1169:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r1, r18, 0
	j .LBB0_1171
.LBB0_1170:                             #   in Loop: Header=BB0_1160 Depth=3
	or r1, r18, r17
.LBB0_1171:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	and r24, r4, r21
	setlt.u r5, r12, r24
	.loc	1 1729 19                       # parallel-rne.mlir:1729:19
	bneq r5, zero, .LBB0_1173
# %bb.1172:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_1174
.LBB0_1173:                             #   in Loop: Header=BB0_1160 Depth=3
	or r19, r4, r17
.LBB0_1174:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	and r5, r3, r21
	setlt.u r7, r12, r5
	.loc	1 1729 19                       # parallel-rne.mlir:1729:19
	bneq r7, zero, .LBB0_1176
# %bb.1175:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r3, 0
	j .LBB0_1177
.LBB0_1176:                             #   in Loop: Header=BB0_1160 Depth=3
	or r20, r3, r17
.LBB0_1177:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	and r7, r2, r21
	setlt.u r13, r12, r7
	.loc	1 1729 19                       # parallel-rne.mlir:1729:19
	bneq r13, zero, .LBB0_1179
# %bb.1178:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 1735 19 is_stmt 1             # parallel-rne.mlir:1735:19
	setlt.u r7, r23, r7
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	beq r7, zero, .LBB0_1180
	j .LBB0_1181
.LBB0_1179:                             #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r2, r17
	.loc	1 1735 19 is_stmt 1             # parallel-rne.mlir:1735:19
	setlt.u r7, r23, r7
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	bneq r7, zero, .LBB0_1181
.LBB0_1180:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	lui r7, 1048560
	add.s r2, r2, r27
	and r13, r2, r7
.LBB0_1181:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	setlt.u r2, r23, r5
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	beq r2, zero, .LBB0_1184
# %bb.1182:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r24
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	beq r2, zero, .LBB0_1185
.LBB0_1183:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r6
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	bneq r2, zero, .LBB0_1159
	j .LBB0_1186
.LBB0_1184:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	lui r3, 1048560
	add.s r2, r2, r27
	and r20, r2, r3
	setlt.u r2, r23, r24
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	bneq r2, zero, .LBB0_1183
.LBB0_1185:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r27
	and r19, r2, r3
	setlt.u r2, r23, r6
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	bneq r2, zero, .LBB0_1159
.LBB0_1186:                             # %vector.body266
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r27
	and r1, r1, r2
	j .LBB0_1159
.LBB0_1187:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1697 7 is_stmt 1              # parallel-rne.mlir:1697:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1743 7                        # parallel-rne.mlir:1743:7
	addli r1, zero, 6
	bneq r13, r1, .LBB0_995
.LBB0_1188:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 1743 7                        # parallel-rne.mlir:1743:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_1190
.LBB0_1189:                             # %middle.block264
                                        #   in Loop: Header=BB0_1190 Depth=2
	.loc	1 1750 9 is_stmt 1              # parallel-rne.mlir:1750:9
	addli r3, r30, -4152
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_1219
.LBB0_1190:                             # %.preheader122
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1192 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r4, r30, -4136
	zext_int2long r[8:9], zero
	sll.d r[10:11], r[2:3], r1
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_1192
.LBB0_1191:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 1751 11 is_stmt 1             # parallel-rne.mlir:1751:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1784 13                       # parallel-rne.mlir:1784:13
	stores.w r1, 12(r16)
	stores.w r19, 8(r16)
	stores.w r20, 4(r16)
	stores.w r13, 0(r16)
	.loc	1 1751 11                       # parallel-rne.mlir:1751:11
	setneq.d r2, r[8:9], r[14:15]
	beq r2, zero, .LBB0_1189
.LBB0_1192:                             # %vector.body258
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1190 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1752 19                       # parallel-rne.mlir:1752:19
	add.ul r[1:2], r[8:9], r[10:11]
	.loc	1 1754 19                       # parallel-rne.mlir:1754:19
	loadli.w r3,  -4120(r30)                # 4-byte Folded Reload
	.loc	1 1752 19                       # parallel-rne.mlir:1752:19
	slli r16, r1, 2
	loadli.w r1,  -4116(r30)                # 4-byte Folded Reload
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1754 19                       # parallel-rne.mlir:1754:19
	add.s r7, r16, r3
	.loc	1 1752 19                       # parallel-rne.mlir:1752:19
	add.s r1, r16, r1
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	add.s r2, r16, r2
	.loc	1 1754 19                       # parallel-rne.mlir:1754:19
	loads.w r24, 4(r7)
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	loads.w r17, 0(r2)
	.loc	1 1752 19                       # parallel-rne.mlir:1752:19
	loads.w r13, 0(r1)
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	loads.w r5, 4(r2)
	loads.w r20, 8(r2)
	loads.w r19, 12(r2)
	.loc	1 1752 19                       # parallel-rne.mlir:1752:19
	loads.w r3, 4(r1)
	loads.w r4, 8(r1)
	loads.w r6, 12(r1)
	.loc	1 1754 19                       # parallel-rne.mlir:1754:19
	loads.w r1, 12(r7)
	.loc	1 1759 19                       # parallel-rne.mlir:1759:19
	and r2, r13, r21
	.loc	1 1757 19                       # parallel-rne.mlir:1757:19
	and r17, r17, r21
	.loc	1 1754 19                       # parallel-rne.mlir:1754:19
	loads.w r13, 8(r7)
	.loc	1 1760 19                       # parallel-rne.mlir:1760:19
	seteq r18, r2, r12
	.loc	1 1764 19                       # parallel-rne.mlir:1764:19
	seteq r26, r2, zero
	.loc	1 1761 19                       # parallel-rne.mlir:1761:19
	seteq r22, r17, zero
	.loc	1 1763 19                       # parallel-rne.mlir:1763:19
	seteq r25, r17, r12
	.loc	1 1769 19                       # parallel-rne.mlir:1769:19
	max.u r2, r2, r17
	setlt.u r2, r12, r2
	.loc	1 1762 19                       # parallel-rne.mlir:1762:19
	and r17, r18, r22
	.loc	1 1765 19                       # parallel-rne.mlir:1765:19
	and r18, r26, r25
	.loc	1 1766 19                       # parallel-rne.mlir:1766:19
	or r17, r17, r18
	lui r18, 523264
	.loc	1 1770 19                       # parallel-rne.mlir:1770:19
	or r17, r2, r17
	lui r2, 523264
	.loc	1 1771 19                       # parallel-rne.mlir:1771:19
	bneq r17, zero, .LBB0_1194
# %bb.1193:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r7)
.LBB0_1194:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	and r3, r3, r21
	and r5, r5, r21
	seteq r7, r3, r12
	seteq r25, r3, zero
	seteq r17, r5, zero
	seteq r22, r5, r12
	max.u r3, r3, r5
	setlt.u r3, r12, r3
	and r5, r7, r17
	and r7, r25, r22
	or r5, r5, r7
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1771 19                       # parallel-rne.mlir:1771:19
	bneq r5, zero, .LBB0_1196
# %bb.1195:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r24, 0
.LBB0_1196:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	and r5, r20, r21
	and r4, r4, r21
	seteq r7, r4, r12
	seteq r22, r4, zero
	seteq r17, r5, zero
	seteq r20, r5, r12
	max.u r4, r4, r5
	setlt.u r4, r12, r4
	and r5, r7, r17
	and r7, r22, r20
	or r5, r5, r7
	or r5, r4, r5
	lui r4, 523264
	.loc	1 1771 19                       # parallel-rne.mlir:1771:19
	bneq r5, zero, .LBB0_1198
# %bb.1197:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
.LBB0_1198:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	and r5, r6, r21
	and r6, r19, r21
	seteq r7, r5, r12
	seteq r19, r5, zero
	seteq r13, r6, zero
	seteq r17, r6, r12
	max.u r5, r5, r6
	setlt.u r5, r12, r5
	and r6, r7, r13
	and r7, r19, r17
	or r6, r6, r7
	or r5, r5, r6
	.loc	1 1771 19                       # parallel-rne.mlir:1771:19
	bneq r5, zero, .LBB0_1200
# %bb.1199:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
.LBB0_1200:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 1772 19 is_stmt 1             # parallel-rne.mlir:1772:19
	and r6, r18, r21
	lui r17, 1024
	.loc	1 1774 19                       # parallel-rne.mlir:1774:19
	setlt.u r1, r12, r6
	.loc	1 1775 19                       # parallel-rne.mlir:1775:19
	bneq r1, zero, .LBB0_1202
# %bb.1201:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r1, r18, 0
	j .LBB0_1203
.LBB0_1202:                             #   in Loop: Header=BB0_1192 Depth=3
	or r1, r18, r17
.LBB0_1203:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	and r24, r4, r21
	setlt.u r5, r12, r24
	.loc	1 1775 19                       # parallel-rne.mlir:1775:19
	bneq r5, zero, .LBB0_1205
# %bb.1204:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_1206
.LBB0_1205:                             #   in Loop: Header=BB0_1192 Depth=3
	or r19, r4, r17
.LBB0_1206:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	and r5, r3, r21
	setlt.u r7, r12, r5
	.loc	1 1775 19                       # parallel-rne.mlir:1775:19
	bneq r7, zero, .LBB0_1208
# %bb.1207:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r3, 0
	j .LBB0_1209
.LBB0_1208:                             #   in Loop: Header=BB0_1192 Depth=3
	or r20, r3, r17
.LBB0_1209:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	and r7, r2, r21
	setlt.u r13, r12, r7
	.loc	1 1775 19                       # parallel-rne.mlir:1775:19
	bneq r13, zero, .LBB0_1211
# %bb.1210:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 1781 19 is_stmt 1             # parallel-rne.mlir:1781:19
	setlt.u r7, r23, r7
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	beq r7, zero, .LBB0_1212
	j .LBB0_1213
.LBB0_1211:                             #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r2, r17
	.loc	1 1781 19 is_stmt 1             # parallel-rne.mlir:1781:19
	setlt.u r7, r23, r7
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	bneq r7, zero, .LBB0_1213
.LBB0_1212:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	lui r7, 1048560
	add.s r2, r2, r27
	and r13, r2, r7
.LBB0_1213:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	setlt.u r2, r23, r5
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	beq r2, zero, .LBB0_1216
# %bb.1214:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r24
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	beq r2, zero, .LBB0_1217
.LBB0_1215:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r6
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	bneq r2, zero, .LBB0_1191
	j .LBB0_1218
.LBB0_1216:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	lui r3, 1048560
	add.s r2, r2, r27
	and r20, r2, r3
	setlt.u r2, r23, r24
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	bneq r2, zero, .LBB0_1215
.LBB0_1217:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r27
	and r19, r2, r3
	setlt.u r2, r23, r6
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	bneq r2, zero, .LBB0_1191
.LBB0_1218:                             # %vector.body258
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r27
	and r1, r1, r2
	j .LBB0_1191
.LBB0_1219:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1743 7 is_stmt 1              # parallel-rne.mlir:1743:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
	.loc	1 1789 7                        # parallel-rne.mlir:1789:7
	addli r1, zero, 7
	bneq r13, r1, .LBB0_1252
.LBB0_1220:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 1789 7                        # parallel-rne.mlir:1789:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_1222
.LBB0_1221:                             # %middle.block
                                        #   in Loop: Header=BB0_1222 Depth=2
	.loc	1 1796 9 is_stmt 1              # parallel-rne.mlir:1796:9
	addli r3, r30, -4144
	addli r5, r30, -4136
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_1251
.LBB0_1222:                             # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1224 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	addli r4, r30, -4136
	zext_int2long r[8:9], zero
	sll.d r[10:11], r[2:3], r1
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_1224
.LBB0_1223:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 1797 11 is_stmt 1             # parallel-rne.mlir:1797:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1830 13                       # parallel-rne.mlir:1830:13
	stores.w r1, 12(r16)
	stores.w r19, 8(r16)
	stores.w r20, 4(r16)
	stores.w r13, 0(r16)
	.loc	1 1797 11                       # parallel-rne.mlir:1797:11
	setneq.d r2, r[8:9], r[14:15]
	beq r2, zero, .LBB0_1221
.LBB0_1224:                             # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1222 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1798 19                       # parallel-rne.mlir:1798:19
	add.ul r[1:2], r[8:9], r[10:11]
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	loadli.w r3,  -4120(r30)                # 4-byte Folded Reload
	.loc	1 1798 19                       # parallel-rne.mlir:1798:19
	slli r16, r1, 2
	loadli.w r1,  -4116(r30)                # 4-byte Folded Reload
	.loc	1 1799 19                       # parallel-rne.mlir:1799:19
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	add.s r7, r16, r3
	.loc	1 1798 19                       # parallel-rne.mlir:1798:19
	add.s r1, r16, r1
	.loc	1 1799 19                       # parallel-rne.mlir:1799:19
	add.s r2, r16, r2
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	loads.w r24, 4(r7)
	.loc	1 1799 19                       # parallel-rne.mlir:1799:19
	loads.w r17, 0(r2)
	.loc	1 1798 19                       # parallel-rne.mlir:1798:19
	loads.w r13, 0(r1)
	.loc	1 1799 19                       # parallel-rne.mlir:1799:19
	loads.w r5, 4(r2)
	loads.w r20, 8(r2)
	loads.w r19, 12(r2)
	.loc	1 1798 19                       # parallel-rne.mlir:1798:19
	loads.w r3, 4(r1)
	loads.w r4, 8(r1)
	loads.w r6, 12(r1)
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	loads.w r1, 12(r7)
	.loc	1 1805 19                       # parallel-rne.mlir:1805:19
	and r2, r13, r21
	.loc	1 1803 19                       # parallel-rne.mlir:1803:19
	and r17, r17, r21
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	loads.w r13, 8(r7)
	.loc	1 1806 19                       # parallel-rne.mlir:1806:19
	seteq r18, r2, r12
	.loc	1 1810 19                       # parallel-rne.mlir:1810:19
	seteq r26, r2, zero
	.loc	1 1807 19                       # parallel-rne.mlir:1807:19
	seteq r22, r17, zero
	.loc	1 1809 19                       # parallel-rne.mlir:1809:19
	seteq r25, r17, r12
	.loc	1 1815 19                       # parallel-rne.mlir:1815:19
	max.u r2, r2, r17
	setlt.u r2, r12, r2
	.loc	1 1808 19                       # parallel-rne.mlir:1808:19
	and r17, r18, r22
	.loc	1 1811 19                       # parallel-rne.mlir:1811:19
	and r18, r26, r25
	.loc	1 1812 19                       # parallel-rne.mlir:1812:19
	or r17, r17, r18
	lui r18, 523264
	.loc	1 1816 19                       # parallel-rne.mlir:1816:19
	or r17, r2, r17
	lui r2, 523264
	.loc	1 1817 19                       # parallel-rne.mlir:1817:19
	bneq r17, zero, .LBB0_1226
# %bb.1225:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r7)
.LBB0_1226:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	and r3, r3, r21
	and r5, r5, r21
	seteq r7, r3, r12
	seteq r25, r3, zero
	seteq r17, r5, zero
	seteq r22, r5, r12
	max.u r3, r3, r5
	setlt.u r3, r12, r3
	and r5, r7, r17
	and r7, r25, r22
	or r5, r5, r7
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1817 19                       # parallel-rne.mlir:1817:19
	bneq r5, zero, .LBB0_1228
# %bb.1227:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r24, 0
.LBB0_1228:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	and r5, r20, r21
	and r4, r4, r21
	seteq r7, r4, r12
	seteq r22, r4, zero
	seteq r17, r5, zero
	seteq r20, r5, r12
	max.u r4, r4, r5
	setlt.u r4, r12, r4
	and r5, r7, r17
	and r7, r22, r20
	or r5, r5, r7
	or r5, r4, r5
	lui r4, 523264
	.loc	1 1817 19                       # parallel-rne.mlir:1817:19
	bneq r5, zero, .LBB0_1230
# %bb.1229:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
.LBB0_1230:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	and r5, r6, r21
	and r6, r19, r21
	seteq r7, r5, r12
	seteq r19, r5, zero
	seteq r13, r6, zero
	seteq r17, r6, r12
	max.u r5, r5, r6
	setlt.u r5, r12, r5
	and r6, r7, r13
	and r7, r19, r17
	or r6, r6, r7
	or r5, r5, r6
	.loc	1 1817 19                       # parallel-rne.mlir:1817:19
	bneq r5, zero, .LBB0_1232
# %bb.1231:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
.LBB0_1232:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 1818 19 is_stmt 1             # parallel-rne.mlir:1818:19
	and r6, r18, r21
	lui r17, 1024
	.loc	1 1820 19                       # parallel-rne.mlir:1820:19
	setlt.u r1, r12, r6
	.loc	1 1821 19                       # parallel-rne.mlir:1821:19
	bneq r1, zero, .LBB0_1234
# %bb.1233:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r1, r18, 0
	j .LBB0_1235
.LBB0_1234:                             #   in Loop: Header=BB0_1224 Depth=3
	or r1, r18, r17
.LBB0_1235:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	and r24, r4, r21
	setlt.u r5, r12, r24
	.loc	1 1821 19                       # parallel-rne.mlir:1821:19
	bneq r5, zero, .LBB0_1237
# %bb.1236:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r4, 0
	j .LBB0_1238
.LBB0_1237:                             #   in Loop: Header=BB0_1224 Depth=3
	or r19, r4, r17
.LBB0_1238:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	and r5, r3, r21
	setlt.u r7, r12, r5
	.loc	1 1821 19                       # parallel-rne.mlir:1821:19
	bneq r7, zero, .LBB0_1240
# %bb.1239:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r3, 0
	j .LBB0_1241
.LBB0_1240:                             #   in Loop: Header=BB0_1224 Depth=3
	or r20, r3, r17
.LBB0_1241:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	and r7, r2, r21
	setlt.u r13, r12, r7
	.loc	1 1821 19                       # parallel-rne.mlir:1821:19
	bneq r13, zero, .LBB0_1243
# %bb.1242:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 1827 19 is_stmt 1             # parallel-rne.mlir:1827:19
	setlt.u r7, r23, r7
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	beq r7, zero, .LBB0_1244
	j .LBB0_1245
.LBB0_1243:                             #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r2, r17
	.loc	1 1827 19 is_stmt 1             # parallel-rne.mlir:1827:19
	setlt.u r7, r23, r7
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	bneq r7, zero, .LBB0_1245
.LBB0_1244:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	lui r7, 1048560
	add.s r2, r2, r27
	and r13, r2, r7
.LBB0_1245:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	setlt.u r2, r23, r5
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	beq r2, zero, .LBB0_1248
# %bb.1246:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r24
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	beq r2, zero, .LBB0_1249
.LBB0_1247:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r6
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	bneq r2, zero, .LBB0_1223
	j .LBB0_1250
.LBB0_1248:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	lui r3, 1048560
	add.s r2, r2, r27
	and r20, r2, r3
	setlt.u r2, r23, r24
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	bneq r2, zero, .LBB0_1247
.LBB0_1249:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r4, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r4, r2
	add.s r2, r2, r27
	and r19, r2, r3
	setlt.u r2, r23, r6
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	bneq r2, zero, .LBB0_1223
.LBB0_1250:                             # %vector.body
                                        #   in Loop: Header=BB0_1224 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r18, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r27
	and r1, r1, r2
	j .LBB0_1223
.LBB0_1251:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1789 7 is_stmt 1              # parallel-rne.mlir:1789:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r13
	addli r6, zero, 4
	addli r16, zero, 128
	loadli.w r22,  -4212(r30)               # 4-byte Folded Reload
.LBB0_1252:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1835 7                        # parallel-rne.mlir:1835:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1836 7                        # parallel-rne.mlir:1836:7
	addli r1, zero, 3
	.loc	1 1835 7                        # parallel-rne.mlir:1835:7
	sync_core
	.loc	1 1836 7                        # parallel-rne.mlir:1836:7
	beq r13, r1, .LBB0_5
# %bb.1253:                             # %.critedge48
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1847 7                        # parallel-rne.mlir:1847:7
	bneq r13, zero, .LBB0_7
# %bb.1254:                             #   in Loop: Header=BB0_8 Depth=1
	addli r6, r30, -4264
	loadli.w r1,  -4268(r30)                # 4-byte Folded Reload
	addli r3, zero, 16
	addli r7, r30, -4208
	addli r9, r30, -4248
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	sext_int2long r[1:2], r1
	sll.d r[3:4], r[4:5], r3
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	addli r7, zero, 20
	xwait r7, 0
	load.d r[7:8], 24(r30)
	min.sl r[5:6], r[1:2], r[5:6]
	addli.d r[5:6], r[5:6], 32
	add.ul r[3:4], r[7:8], r[3:4]
	load.d r[7:8], 0(r9)                    # 8-byte Folded Reload
	max.sl r[5:6], r[5:6], r[1:2]
	add.ul r[3:4], r[3:4], r[7:8]
	addli r7, zero, 1
	addli r8, zero, 64
	sub.sl r[1:2], r[5:6], r[1:2]
	addli r5, zero, 5
	addli r6, zero, 4
	lock zero, r5
	.loc	1 1843 13                       # parallel-rne.mlir:1843:13
	min.sl r[1:2], r[1:2], r[14:15]
	.loc	1 1847 7                        # parallel-rne.mlir:1847:7
	dma_cfg r7, r7, zero, 0
	dma_cfg zero, r7, zero, 1
	dma_cfg r4, zero, zero, 2
	dma_cfg r3, r8, r8, 3
	addli r3, r30, -4256
	load.d r[9:10], 0(r3)                   # 8-byte Folded Reload
	addli r3, r9, 31
	slli r4, r9, 1
	srli r3, r3, 5
	dma_cfg r8, r16, r3, 4
	andi r3, r4, 62
	addli r4, zero, 2048
	dma_cfg r4, r16, r1, 5
	addli r1, zero, 21
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	j .LBB0_6
.LBB0_1255:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 1
	lui r17, 1024
	.loc	1 383 7 is_stmt 1               # parallel-rne.mlir:383:7
	addli r1, zero, 5
	bneq r13, r1, .LBB0_240
# %bb.1256:                             #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 12
	addli r1, zero, 0
	xwait r3, 0
	addli r3, zero, 22
	xwait r3, 0
	addli r3, zero, 2
	lock zero, r3
	lui r3, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r3, r3, zero, 0
	addli r3, zero, 31
	ew_cfg zero, r3, zero, 2
	ew_cfg r4, zero, zero, 3
.LBB0_1257:                             #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	dsmadd r1, r1, r2, 0
	addli r1, r1, 128
	bneq r1, r5, .LBB0_1257
# %bb.1258:                             # %.thread117
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 2
	unlock r1
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 23
	xsignal r1, 0
	j .LBB0_240
.LBB0_1259:                             # %._crit_edge
	.loc	1 1849 5                        # parallel-rne.mlir:1849:5
	xsignal zero, 0
	bneq r13, zero, .LBB0_1261
# %bb.1260:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1849 5                        # parallel-rne.mlir:1849:5
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
.LBB0_1261:
	.loc	1 1850 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1850:5
	addli sp, sp, 4304
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
	.long	4368                            # 0x1110
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-xoty61fb" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
