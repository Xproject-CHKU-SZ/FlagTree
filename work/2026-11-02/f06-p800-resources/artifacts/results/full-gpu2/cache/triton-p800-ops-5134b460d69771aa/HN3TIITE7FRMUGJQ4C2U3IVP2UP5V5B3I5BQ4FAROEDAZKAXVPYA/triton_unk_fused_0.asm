	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-8fufno2a" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3248
	addli r2, zero, 1
.Ltmp0:
	.loc	1 40 5 prologue_end             # parallel-rne.mlir:40:5
	core_id r1
	core_id r12
	addli r30, sp, 3184
	xsignal_mode_cfg r2
	beq r1, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	.loc	1 40 5                          # parallel-rne.mlir:40:5
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
	.loc	1 40 5                          # parallel-rne.mlir:40:5
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
	addli r3, zero, 11
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 5
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	addli r2, zero, 9
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	addli r3, zero, 41
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 29
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 34
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 36
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 38
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 44
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 46
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
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 42 10 is_stmt 1               # parallel-rne.mlir:42:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -24(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -48(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -72(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -96(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -120(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -144(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -168(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -192(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -216(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -764(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -1408(r30)
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w zero, -2984(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w zero, -1960(r30)
	.loc	1 66 11                         # parallel-rne.mlir:66:11
	storeli.w zero, -3008(r30)
	.loc	1 67 11                         # parallel-rne.mlir:67:11
	storeli.w zero, -3032(r30)
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	mul.s r1, r2, r1
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	mul.s r3, r1, r3
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	addli r2, r2, -1
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r4, -20(r30)
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r4, -44(r30)
	storeli.w r4, -40(r30)
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
	storeli.w r4, -60(r30)
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r4, -92(r30)
	storeli.w r4, -88(r30)
	storeli.w r4, -84(r30)
	storeli.w r4, -80(r30)
	storeli.w r4, -76(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r4, -116(r30)
	storeli.w r4, -112(r30)
	storeli.w r4, -108(r30)
	storeli.w r4, -104(r30)
	storeli.w r4, -100(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r4, -140(r30)
	storeli.w r4, -136(r30)
	storeli.w r4, -132(r30)
	storeli.w r4, -128(r30)
	storeli.w r4, -124(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r4, -164(r30)
	storeli.w r4, -160(r30)
	storeli.w r4, -156(r30)
	storeli.w r4, -152(r30)
	storeli.w r4, -148(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r4, -188(r30)
	storeli.w r4, -184(r30)
	storeli.w r4, -180(r30)
	storeli.w r4, -176(r30)
	storeli.w r4, -172(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r4, -212(r30)
	storeli.w r4, -208(r30)
	storeli.w r4, -204(r30)
	storeli.w r4, -200(r30)
	storeli.w r4, -196(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
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
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r4, -1404(r30)
	storeli.w r4, -1400(r30)
	storeli.w r4, -1396(r30)
	storeli.w r4, -1392(r30)
	storeli.w r4, -1388(r30)
	storeli.w r4, -1384(r30)
	storeli.w r4, -1380(r30)
	storeli.w r4, -1376(r30)
	storeli.w r4, -1372(r30)
	storeli.w r4, -1368(r30)
	storeli.w r4, -1364(r30)
	storeli.w r4, -1360(r30)
	storeli.w r4, -1356(r30)
	storeli.w r4, -1352(r30)
	storeli.w r4, -1348(r30)
	storeli.w r4, -1344(r30)
	storeli.w r4, -1340(r30)
	storeli.w r4, -1336(r30)
	storeli.w r4, -1332(r30)
	storeli.w r4, -1328(r30)
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
	.loc	1 65 11                         # parallel-rne.mlir:65:11
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
	.loc	1 64 11                         # parallel-rne.mlir:64:11
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
	.loc	1 63 11                         # parallel-rne.mlir:63:11
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
	storeli.w r4, -1000(r30)
	storeli.w r4, -1004(r30)
	storeli.w r4, -1008(r30)
	storeli.w r4, -1012(r30)
	storeli.w r4, -1016(r30)
	storeli.w r4, -1020(r30)
	storeli.w r4, -1024(r30)
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
	.loc	1 65 11                         # parallel-rne.mlir:65:11
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
	.loc	1 66 11                         # parallel-rne.mlir:66:11
	storeli.w r4, -3004(r30)
	storeli.w r4, -3000(r30)
	storeli.w r4, -2996(r30)
	storeli.w r4, -2992(r30)
	storeli.w r4, -2988(r30)
	.loc	1 67 11                         # parallel-rne.mlir:67:11
	storeli.w r4, -3028(r30)
	storeli.w r4, -3024(r30)
	storeli.w r4, -3020(r30)
	storeli.w r4, -3016(r30)
	storeli.w r4, -3012(r30)
	.loc	1 48 10                         # parallel-rne.mlir:48:10
	mul.s r1, r2, r6
	.loc	1 49 10                         # parallel-rne.mlir:49:10
	fmac.s r2, r2, r6
	.loc	1 50 10                         # parallel-rne.mlir:50:10
	min.s r3, r2, r3
	.loc	1 68 5                          # parallel-rne.mlir:68:5
	ble.s r3, r1, .LBB0_1677
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 51 11 is_stmt 1               # parallel-rne.mlir:51:11
	addli r4, r30, -3144
	sext_int2long r[6:7], r1
	lui r1, 524287
	addli r8, zero, 1
	addli r9, zero, 5
	lui r27, 522240
	addli r26, zero, 13
	lui r16, 268288
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r2, 7
	ori r21, r1, 4095
	lui r1, 522239
	ori r22, r2, 4095
	lui r2, 355
	ori r23, r1, 4095
	ori r1, r2, 3328
	lui r2, 365
	storeli.w r1, -3148(r30)                # 4-byte Folded Spill
	lui r1, 360
	ori r1, r1, 3328
	storeli.w r1, -3152(r30)                # 4-byte Folded Spill
	ori r1, r2, 3328
	lui r2, 375
	storeli.w r1, -3156(r30)                # 4-byte Folded Spill
	lui r1, 370
	ori r1, r1, 3328
	storeli.w r1, -3160(r30)                # 4-byte Folded Spill
	ori r1, r2, 3328
	lui r2, 2047
	storeli.w r1, -3164(r30)                # 4-byte Folded Spill
	lui r1, 380
	ori r3, r2, 4095
	lui r2, 56
	ori r1, r1, 3328
	storeli.w r1, -3168(r30)                # 4-byte Folded Spill
	lui r1, 385
	ori r1, r1, 3328
	storeli.w r1, -3172(r30)                # 4-byte Folded Spill
	ori r1, r2, 2115
	lui r2, 259268
	storeli.w r1, -3176(r30)                # 4-byte Folded Spill
	lui r1, 250738
	ori r1, r1, 1811
	storeli.w r1, -3180(r30)                # 4-byte Folded Spill
	ori r1, r2, 554
	storeli.w r1, -3184(r30)                # 4-byte Folded Spill
	lui r1, 78
	ori r1, r1, 2048
	storeli.w r1, -3076(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge43.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1913 7                        # parallel-rne.mlir:1913:7
	addli r1, zero, 20
	xsignal r1, 0
	.loc	1 1914 7                        # parallel-rne.mlir:1914:7
	addli r1, zero, 32
	xsignal r1, 0
	.loc	1 1915 7                        # parallel-rne.mlir:1915:7
	addli r1, zero, 44
	xsignal r1, 0
	.loc	1 1916 7                        # parallel-rne.mlir:1916:7
	addli r1, zero, 46
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -3104
	.loc	1 68 5 is_stmt 1                # parallel-rne.mlir:68:5
	addli r4, r30, -3144
	addli r8, zero, 1
	addli r9, zero, 5
	addli r26, zero, 13
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[1:2]
	beq r1, zero, .LBB0_1677
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_47 Depth 3
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_69 Depth 2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #     Child Loop BB0_99 Depth 2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_101 Depth 3
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_136 Depth 3
                                        #       Child Loop BB0_131 Depth 3
                                        #     Child Loop BB0_159 Depth 2
                                        #       Child Loop BB0_166 Depth 3
                                        #       Child Loop BB0_161 Depth 3
                                        #     Child Loop BB0_189 Depth 2
                                        #       Child Loop BB0_196 Depth 3
                                        #       Child Loop BB0_191 Depth 3
                                        #     Child Loop BB0_219 Depth 2
                                        #       Child Loop BB0_226 Depth 3
                                        #       Child Loop BB0_221 Depth 3
                                        #     Child Loop BB0_249 Depth 2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_251 Depth 3
                                        #     Child Loop BB0_284 Depth 2
                                        #     Child Loop BB0_297 Depth 2
                                        #       Child Loop BB0_299 Depth 3
                                        #     Child Loop BB0_321 Depth 2
                                        #       Child Loop BB0_323 Depth 3
                                        #     Child Loop BB0_345 Depth 2
                                        #       Child Loop BB0_347 Depth 3
                                        #     Child Loop BB0_369 Depth 2
                                        #       Child Loop BB0_371 Depth 3
                                        #     Child Loop BB0_393 Depth 2
                                        #       Child Loop BB0_395 Depth 3
                                        #     Child Loop BB0_417 Depth 2
                                        #       Child Loop BB0_419 Depth 3
                                        #     Child Loop BB0_441 Depth 2
                                        #       Child Loop BB0_443 Depth 3
                                        #     Child Loop BB0_465 Depth 2
                                        #       Child Loop BB0_467 Depth 3
                                        #     Child Loop BB0_503 Depth 2
                                        #       Child Loop BB0_520 Depth 3
                                        #       Child Loop BB0_506 Depth 3
                                        #     Child Loop BB0_531 Depth 2
                                        #       Child Loop BB0_548 Depth 3
                                        #       Child Loop BB0_534 Depth 3
                                        #     Child Loop BB0_559 Depth 2
                                        #       Child Loop BB0_576 Depth 3
                                        #       Child Loop BB0_562 Depth 3
                                        #     Child Loop BB0_587 Depth 2
                                        #       Child Loop BB0_604 Depth 3
                                        #       Child Loop BB0_590 Depth 3
                                        #     Child Loop BB0_615 Depth 2
                                        #       Child Loop BB0_632 Depth 3
                                        #       Child Loop BB0_618 Depth 3
                                        #     Child Loop BB0_643 Depth 2
                                        #       Child Loop BB0_660 Depth 3
                                        #       Child Loop BB0_646 Depth 3
                                        #     Child Loop BB0_671 Depth 2
                                        #       Child Loop BB0_688 Depth 3
                                        #       Child Loop BB0_674 Depth 3
                                        #     Child Loop BB0_699 Depth 2
                                        #       Child Loop BB0_716 Depth 3
                                        #       Child Loop BB0_702 Depth 3
                                        #     Child Loop BB0_740 Depth 2
                                        #       Child Loop BB0_744 Depth 3
                                        #       Child Loop BB0_742 Depth 3
                                        #     Child Loop BB0_748 Depth 2
                                        #       Child Loop BB0_750 Depth 3
                                        #       Child Loop BB0_749 Depth 3
                                        #     Child Loop BB0_754 Depth 2
                                        #       Child Loop BB0_756 Depth 3
                                        #       Child Loop BB0_755 Depth 3
                                        #     Child Loop BB0_760 Depth 2
                                        #       Child Loop BB0_762 Depth 3
                                        #       Child Loop BB0_761 Depth 3
                                        #     Child Loop BB0_766 Depth 2
                                        #       Child Loop BB0_768 Depth 3
                                        #       Child Loop BB0_767 Depth 3
                                        #     Child Loop BB0_772 Depth 2
                                        #       Child Loop BB0_774 Depth 3
                                        #       Child Loop BB0_773 Depth 3
                                        #     Child Loop BB0_778 Depth 2
                                        #       Child Loop BB0_780 Depth 3
                                        #       Child Loop BB0_779 Depth 3
                                        #     Child Loop BB0_784 Depth 2
                                        #       Child Loop BB0_786 Depth 3
                                        #       Child Loop BB0_785 Depth 3
                                        #     Child Loop BB0_800 Depth 2
                                        #       Child Loop BB0_802 Depth 3
                                        #     Child Loop BB0_821 Depth 2
                                        #       Child Loop BB0_823 Depth 3
                                        #     Child Loop BB0_842 Depth 2
                                        #       Child Loop BB0_844 Depth 3
                                        #     Child Loop BB0_863 Depth 2
                                        #       Child Loop BB0_865 Depth 3
                                        #     Child Loop BB0_884 Depth 2
                                        #       Child Loop BB0_886 Depth 3
                                        #     Child Loop BB0_905 Depth 2
                                        #       Child Loop BB0_907 Depth 3
                                        #     Child Loop BB0_926 Depth 2
                                        #       Child Loop BB0_928 Depth 3
                                        #     Child Loop BB0_947 Depth 2
                                        #       Child Loop BB0_949 Depth 3
                                        #     Child Loop BB0_981 Depth 2
                                        #       Child Loop BB0_991 Depth 3
                                        #       Child Loop BB0_984 Depth 3
                                        #     Child Loop BB0_1017 Depth 2
                                        #       Child Loop BB0_1025 Depth 3
                                        #       Child Loop BB0_1019 Depth 3
                                        #     Child Loop BB0_1051 Depth 2
                                        #       Child Loop BB0_1059 Depth 3
                                        #       Child Loop BB0_1053 Depth 3
                                        #     Child Loop BB0_1085 Depth 2
                                        #       Child Loop BB0_1093 Depth 3
                                        #       Child Loop BB0_1087 Depth 3
                                        #     Child Loop BB0_1119 Depth 2
                                        #       Child Loop BB0_1127 Depth 3
                                        #       Child Loop BB0_1121 Depth 3
                                        #     Child Loop BB0_1153 Depth 2
                                        #       Child Loop BB0_1161 Depth 3
                                        #       Child Loop BB0_1155 Depth 3
                                        #     Child Loop BB0_1187 Depth 2
                                        #       Child Loop BB0_1195 Depth 3
                                        #       Child Loop BB0_1189 Depth 3
                                        #     Child Loop BB0_1221 Depth 2
                                        #       Child Loop BB0_1229 Depth 3
                                        #       Child Loop BB0_1223 Depth 3
                                        #     Child Loop BB0_1267 Depth 2
                                        #       Child Loop BB0_1288 Depth 3
                                        #       Child Loop BB0_1270 Depth 3
                                        #     Child Loop BB0_1318 Depth 2
                                        #       Child Loop BB0_1339 Depth 3
                                        #       Child Loop BB0_1321 Depth 3
                                        #     Child Loop BB0_1369 Depth 2
                                        #       Child Loop BB0_1390 Depth 3
                                        #       Child Loop BB0_1372 Depth 3
                                        #     Child Loop BB0_1420 Depth 2
                                        #       Child Loop BB0_1441 Depth 3
                                        #       Child Loop BB0_1423 Depth 3
                                        #     Child Loop BB0_1471 Depth 2
                                        #       Child Loop BB0_1492 Depth 3
                                        #       Child Loop BB0_1474 Depth 3
                                        #     Child Loop BB0_1522 Depth 2
                                        #       Child Loop BB0_1543 Depth 3
                                        #       Child Loop BB0_1525 Depth 3
                                        #     Child Loop BB0_1573 Depth 2
                                        #       Child Loop BB0_1594 Depth 3
                                        #       Child Loop BB0_1576 Depth 3
                                        #     Child Loop BB0_1625 Depth 2
                                        #       Child Loop BB0_1646 Depth 3
                                        #       Child Loop BB0_1628 Depth 3
	.loc	1 92 13                         # parallel-rne.mlir:92:13
	loadli.w r2,  -3032(r30)
	.loc	1 94 13                         # parallel-rne.mlir:94:13
	loadli.w r4,  -3008(r30)
	.loc	1 92 13                         # parallel-rne.mlir:92:13
	addli r1, r2, 1
	.loc	1 94 13                         # parallel-rne.mlir:94:13
	addli r5, r4, 1
	.loc	1 92 13                         # parallel-rne.mlir:92:13
	storeli.w r1, -3032(r30)
	.loc	1 95 7                          # parallel-rne.mlir:95:7
	addli r1, zero, 4
	.loc	1 94 13                         # parallel-rne.mlir:94:13
	storeli.w r5, -3008(r30)
	.loc	1 95 7                          # parallel-rne.mlir:95:7
	bneq r12, r1, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  48(r30)
	addli r10, r30, -3104
	mod.s r4, r4, r9
	mod.s r2, r2, r9
	addli r11, zero, 1
	addli r1, zero, 0
	addli r15, zero, 0
	store.d r[6:7], 0(r10)                  # 8-byte Folded Spill
	addli r10, zero, 8
	div.s r5, r6, r5
	loadli.w r6,  44(r30)
	.loc	1 113 15 is_stmt 1              # parallel-rne.mlir:113:15
	loadli.w r7,  -2984(r30)
	slli r4, r4, 12
	div.s r5, r5, r6
	addli r6, zero, 16
	div.s r6, r5, r6
	slli r9, r6, 3
	slli r6, r6, 4
	sub.s r8, r8, r9
	sub.s r6, r5, r6
	min.s r8, r8, r10
	slli r10, r2, 12
	lui r2, 5
	mod.s r5, r5, r8
	div.s r12, r6, r8
	add.s r6, r4, r2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r8,  -1960(r30)
	add.s r2, r9, r5
	slli r4, r12, 6
	slli r9, r2, 4
	storeli.w r4, -3056(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r12
	zext_int2long r[12:13], r2
	addli r2, r30, -3112
	storeli.w r9, -3132(r30)                # 4-byte Folded Spill
	addli r9, zero, 6
	sll.d r[4:5], r[4:5], r9
	addli r9, r30, -3128
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 11
	store.d r[12:13], 0(r9)                 # 8-byte Folded Spill
	.loc	1 96 7                          # parallel-rne.mlir:96:7
	sll.d r[4:5], r[4:5], r11
	sll.d r[17:18], r[12:13], r2
	load.d r[12:13], 8(r30)
	addli r2, r30, -3048
	add.ul r[4:5], r[12:13], r[4:5]
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	load.d r[4:5], 0(r30)
	addli r2, r30, -3040
	add.ul r[4:5], r[4:5], r[17:18]
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	addli r5, zero, 29
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r12, 10
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	lock zero, r18
	addli r13, zero, 64
	addli r17, zero, 5
	addli r14, zero, 7
	addli r15, zero, 8
	addli r4, zero, 9
	ori r12, r12, 64
	add.s r9, r9, r12
	addli r12, zero, 1
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r20, zero, 2
	dma_cfg r9, r19, r13, 3
	addli r20, zero, 128
	addli r9, zero, 16
	addli r19, zero, 2
	dma_cfg r20, r13, r12, 4
	dma_cfg r20, r20, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 13
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 12
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 11
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 21
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 22
	dma_cfg zero, zero, r14, 10
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
	addli r4, zero, 30
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r13, 3
	dma_cfg r20, zero, r12, 4
	dma_cfg r20, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r19, 0
.LBB0_12:                               # %.thread107
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	loadli.w r2,  -1408(r30)
	.loc	1 132 15                        # parallel-rne.mlir:132:15
	loadli.w r9,  -764(r30)
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	addli r2, r2, 1
	.loc	1 132 15                        # parallel-rne.mlir:132:15
	addli r9, r9, 1
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	storeli.w r2, -1408(r30)
	.loc	1 132 15                        # parallel-rne.mlir:132:15
	storeli.w r9, -764(r30)
.LBB0_13:                               # %.thread110
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 96 7                          # parallel-rne.mlir:96:7
	andi r2, r11, 1
	beq r2, zero, .LBB0_32
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 140 15                        # parallel-rne.mlir:140:15
	addli r1, r1, 1
	addli r15, zero, 1
	addli r11, zero, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	add.s r2, r7, r1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r9, zero, 255
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	add.s r24, r8, r1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r12, zero, 137
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r20
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r9, r2, r9
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r17, r24, r12
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, r2, 1
	storeli.w r2, -2984(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	lui r2, 10
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r12, r9, 11
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r9, r17, 11
	addli r17, r24, 1
	storeli.w r17, -1960(r30)
	add.s r2, r9, r2
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r17, zero, 2
	beq r20, r17, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[17:18], r15
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r15, zero, 1
	bneq r20, r15, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	addli r12, r30, -3040
	addli r25, zero, 6
	addli r4, zero, 13
	addli r13, zero, 64
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r28
	addli r26, zero, 3
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	load.d r[14:15], 0(r12)                 # 8-byte Folded Reload
	sll.d r[17:18], r[17:18], r25
	addli r12, zero, 136
	xwait r26, 0
	add.ul r[19:20], r[14:15], r[17:18]
	addli r18, zero, 4
	blt.s r12, r24, .LBB0_11
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r17, zero, 5
	addli r15, zero, 1
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r12, zero, 2
	addli r14, zero, 21
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 7
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 8
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 9
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 11
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 12
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 22
	dma_cfg zero, zero, r14, 10
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
	addli r4, zero, 30
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r13, 3
	addli r13, zero, 128
	dma_cfg r13, zero, r15, 4
	dma_cfg r13, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r15, zero, 2
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	addli r9, zero, 5
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r28
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xwait r15, 0
	xwait r9, 0
	lock zero, zero
	addli r9, zero, 16
	ds_cfg r15, zero, 0
	addli r15, zero, 32
	ds_cfg r15, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r9, zero, 13
	shuffle_batch r12, r2, r15, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	loadli.w r2,  -1408(r30)
	addli r4, zero, 160
	.loc	1 132 15                        # parallel-rne.mlir:132:15
	loadli.w r24,  -764(r30)
	.loc	1 136 9                         # parallel-rne.mlir:136:9
	addli r13, zero, 7
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	mod.s r9, r2, r4
	.loc	1 132 15                        # parallel-rne.mlir:132:15
	addli r4, zero, 136
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	addli r2, r2, 1
	.loc	1 132 15                        # parallel-rne.mlir:132:15
	mod.s r19, r24, r4
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	storeli.w r2, -1408(r30)
	.loc	1 132 15                        # parallel-rne.mlir:132:15
	loadli.w r2,  -3076(r30)                # 4-byte Folded Reload
	.loc	1 130 15                        # parallel-rne.mlir:130:15
	slli r15, r9, 13
	.loc	1 132 15                        # parallel-rne.mlir:132:15
	slli r9, r19, 13
	addli r19, r24, 1
	add.s r2, r9, r2
	storeli.w r19, -764(r30)
	.loc	1 136 9                         # parallel-rne.mlir:136:9
	beq r20, r13, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r25, zero, 64
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r28
	.loc	1 136 9                         # parallel-rne.mlir:136:9
	addli r13, zero, 6
	bneq r20, r13, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	addli r4, r30, -3048
	sll.d r[17:18], r[17:18], r26
	addli r26, zero, 7
	load.d r[12:13], 0(r4)                  # 8-byte Folded Reload
	addli r4, zero, 13
	xwait r26, 0
	add.ul r[19:20], r[12:13], r[17:18]
	addli r12, zero, 135
	blt.s r12, r24, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r17, zero, 5
	addli r15, zero, 1
	addli r18, zero, 2
	.loc	1 136 9                         # parallel-rne.mlir:136:9
	addli r12, zero, 3
	addli r13, zero, 256
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 4
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 8
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 9
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 11
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 12
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 14
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 15
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 16
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 17
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 18
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 19
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 20
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 21
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 22
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 23
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 24
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 25
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 26
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 27
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 28
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 30
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 31
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 128
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r25, 3
	dma_cfg r12, zero, r18, 4
	addli r12, zero, 32
	dma_cfg r13, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r12, 78
	addli r15, zero, 4
	addli r13, zero, 64
	addli r18, zero, 2
	addli r14, zero, 128
	addli r17, zero, 5
	ori r12, r12, 2112
	.loc	1 136 9                         # parallel-rne.mlir:136:9
	lock zero, r15
	add.s r9, r9, r12
	addli r12, zero, 1
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r20, zero, 2
	dma_cfg r9, r19, r13, 3
	addli r19, zero, 32
	addli r20, zero, 256
	addli r9, zero, 3
	dma_cfg r14, r13, r18, 4
	dma_cfg r20, r20, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r26, 10
	addli r26, zero, 13
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 21
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 22
	dma_cfg zero, zero, r9, 10
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
	addli r4, zero, 30
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r13, 3
	dma_cfg r14, zero, r18, 4
	dma_cfg r20, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r15, 0
	.loc	1 137 9 is_stmt 1               # parallel-rne.mlir:137:9
	j .LBB0_13
.LBB0_25:                               #   in Loop: Header=BB0_15 Depth=2
	addli r9, zero, 6
	addli r4, zero, 9
	addli r12, zero, 64
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r28
	.loc	1 137 9                         # parallel-rne.mlir:137:9
	xwait r9, 0
	addli r9, zero, 2
	xwait r4, 0
	lock zero, zero
	ds_cfg r9, zero, 0
	addli r9, zero, 32
	ds_cfg r12, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r12, zero, 13
	shuffle_coa r15, r2, r9, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_13
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 4
	.loc	1 139 9 is_stmt 1               # parallel-rne.mlir:139:9
	bneq r20, r2, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r2, 0
	addli r2, zero, 8
	addli r9, zero, 1
	addli r17, zero, 32
	xwait r2, 0
	addli r2, zero, 16
	lock zero, r9
	mm_cfg r25, r17, r2, 0
	addli r2, zero, 2
	mm_cfg r2, r2, r9, 2
	beq r1, zero, .LBB0_30
# %bb.28:                               # %.preheader184
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r6, r12, r15, 8
	j .LBB0_31
.LBB0_29:                               # %.thread110.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 96 7                          # parallel-rne.mlir:96:7
	andi r2, r11, 1
	bneq r2, zero, .LBB0_14
	j .LBB0_34
.LBB0_30:                               # %.preheader183
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 139 9                         # parallel-rne.mlir:139:9
	mm r6, r12, r15, 8
.LBB0_31:                               # %.thread110.thread252
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 1
	addli r9, zero, 5
	addli r4, zero, 9
	unlock r2
	.loc	1 96 7                          # parallel-rne.mlir:96:7
	andi r2, r11, 1
	.loc	1 139 9                         # parallel-rne.mlir:139:9
	xsignal r9, 0
	xsignal r4, 0
	bneq r2, zero, .LBB0_14
	j .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	addli r1, zero, 4
	bneq r28, r1, .LBB0_34
.LBB0_33:                               # %.thread253
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_34:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 157 13                        # parallel-rne.mlir:157:13
	loadli.w r1,  -216(r30)
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	loadli.w r2,  -192(r30)
	storeli.w r1, -3048(r30)                # 4-byte Folded Spill
	.loc	1 157 13                        # parallel-rne.mlir:157:13
	addli r1, r1, 1
	storeli.w r2, -3092(r30)                # 4-byte Folded Spill
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	addli r2, r2, 1
	.loc	1 157 13                        # parallel-rne.mlir:157:13
	storeli.w r1, -216(r30)
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	addli r1, zero, 3
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	storeli.w r2, -192(r30)
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	bneq r28, r1, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r1, zero, 21
	xwait r1, 0
.LBB0_36:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	addli r1, zero, 255
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	xfence
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	addli r4, r30, -3040
	addli r28, zero, 64
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	mfence { lm, sm, gm }
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	csr_set csr5, r1
	addli r1, zero, 63
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r2
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	sync_core
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	beq r2, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 197 7                         # parallel-rne.mlir:197:7
	addli r1, zero, 1
	beq r2, r1, .LBB0_67
	j .LBB0_96
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	xfence
	addli r1, zero, 1
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	j .LBB0_40
.LBB0_39:                               # %middle.block904
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 176 9                         # parallel-rne.mlir:176:9
	andi r2, r1, 1
	zext_int2long r[4:5], r28
	addli r1, zero, 0
	beq r2, zero, .LBB0_66
.LBB0_40:                               # %vector.memcheck896
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_47 Depth 3
                                        #       Child Loop BB0_42 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 177 11 is_stmt 1              # parallel-rne.mlir:177:11
	beq r10, r6, .LBB0_42
	j .LBB0_47
.LBB0_41:                               # %scalar.ph898
                                        #   in Loop: Header=BB0_42 Depth=3
	addli r13, r30, -3040
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	add.s r2, r10, r2
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	stores.w r7, 0(r2)
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	setlt.ul r8, r[11:12], r[8:9]
	addli.d r[11:12], r[11:12], 1
	beq r8, zero, .LBB0_39
.LBB0_42:                               # %scalar.ph898
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r7, r6, r2
	loads.w r8, 0(r7)
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r9, r8, r21
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	setlt.u r7, r27, r9
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r7, zero, .LBB0_44
# %bb.43:                               # %scalar.ph898
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r9, r23, r9
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r9, zero, .LBB0_41
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r8, r7
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r9, r23, r9
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r9, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph898
                                        #   in Loop: Header=BB0_42 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	lui r8, 1048560
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_41
.LBB0_46:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 177 11 is_stmt 1              # parallel-rne.mlir:177:11
	addli.d r[11:12], r[11:12], 4
	zext_int2long r[8:9], r28
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	add.s r2, r10, r2
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	seteq.d r8, r[11:12], r[8:9]
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	stores.w r7, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	bneq r8, zero, .LBB0_39
.LBB0_47:                               # %vector.body900
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r20, r6, r2
	loads.w r9, 12(r20)
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r15, r9, r21
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	setlt.u r7, r27, r15
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r7, zero, .LBB0_49
# %bb.48:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	lui r7, 1024
	or r7, r9, r7
.LBB0_50:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	loads.w r25, 8(r20)
	and r18, r25, r21
	setlt.u r8, r27, r18
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r8, zero, .LBB0_52
# %bb.51:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r25, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_47 Depth=3
	lui r8, 1024
	or r17, r25, r8
.LBB0_53:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	loads.w r24, 4(r20)
	and r8, r24, r21
	setlt.u r13, r27, r8
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r13, zero, .LBB0_55
# %bb.54:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r24, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_47 Depth=3
	lui r13, 1024
	or r19, r24, r13
.LBB0_56:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	loads.w r28, 0(r20)
	and r13, r28, r21
	setlt.u r14, r27, r13
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r14, zero, .LBB0_58
# %bb.57:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r13, r23, r13
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r13, zero, .LBB0_59
	j .LBB0_60
.LBB0_58:                               #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r20, r28, r14
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r13, r23, r13
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r13, zero, .LBB0_60
.LBB0_59:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r28, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r28, r13
	add.s r13, r13, r22
	and r20, r13, r14
.LBB0_60:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r8, r23, r8
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r8, zero, .LBB0_62
# %bb.61:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r24, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r24, r8
	add.s r8, r8, r22
	and r19, r8, r13
.LBB0_62:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r8, r23, r18
	addli r28, zero, 64
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r8, zero, .LBB0_64
# %bb.63:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r22
	and r17, r8, r13
.LBB0_64:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r8, r23, r15
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r8, zero, .LBB0_46
# %bb.65:                               # %vector.body900
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r9, 16
	lui r8, 1048560
	andi r7, r7, 1
	add.s r7, r9, r7
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_46
.LBB0_66:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r2
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	mfence { sm }
	.loc	1 197 7                         # parallel-rne.mlir:197:7
	addli r1, zero, 1
	bneq r2, r1, .LBB0_96
.LBB0_67:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	.loc	1 197 7                         # parallel-rne.mlir:197:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_69
.LBB0_68:                               # %middle.block895
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 205 9 is_stmt 1               # parallel-rne.mlir:205:9
	andi r2, r1, 1
	addli r1, zero, 192
	zext_int2long r[4:5], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_95
.LBB0_69:                               # %vector.memcheck887
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_71 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 206 11 is_stmt 1              # parallel-rne.mlir:206:11
	beq r10, r6, .LBB0_71
	j .LBB0_76
.LBB0_70:                               # %scalar.ph889
                                        #   in Loop: Header=BB0_71 Depth=3
	addli r13, r30, -3040
	.loc	1 221 13                        # parallel-rne.mlir:221:13
	add.s r2, r10, r2
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	.loc	1 221 13                        # parallel-rne.mlir:221:13
	stores.w r7, 0(r2)
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	setlt.ul r8, r[11:12], r[8:9]
	addli.d r[11:12], r[11:12], 1
	beq r8, zero, .LBB0_68
.LBB0_71:                               # %scalar.ph889
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r7, r6, r2
	loads.w r8, 0(r7)
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	and r9, r8, r21
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	setlt.u r7, r27, r9
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r7, zero, .LBB0_73
# %bb.72:                               # %scalar.ph889
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r9, r23, r9
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r9, zero, .LBB0_70
	j .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r8, r7
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r9, r23, r9
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r9, zero, .LBB0_70
.LBB0_74:                               # %scalar.ph889
                                        #   in Loop: Header=BB0_71 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	lui r8, 1048560
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_70
.LBB0_75:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 206 11 is_stmt 1              # parallel-rne.mlir:206:11
	addli.d r[11:12], r[11:12], 4
	zext_int2long r[8:9], r28
	.loc	1 221 13                        # parallel-rne.mlir:221:13
	add.s r2, r10, r2
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	seteq.d r8, r[11:12], r[8:9]
	.loc	1 221 13                        # parallel-rne.mlir:221:13
	stores.w r7, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	bneq r8, zero, .LBB0_68
.LBB0_76:                               # %vector.body891
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r20, r6, r2
	loads.w r9, 12(r20)
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	and r15, r9, r21
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	setlt.u r7, r27, r15
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r7, zero, .LBB0_78
# %bb.77:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	lui r7, 1024
	or r7, r9, r7
.LBB0_79:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r25, 8(r20)
	and r18, r25, r21
	setlt.u r8, r27, r18
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r8, zero, .LBB0_81
# %bb.80:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r25, 0
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_76 Depth=3
	lui r8, 1024
	or r17, r25, r8
.LBB0_82:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r24, 4(r20)
	and r8, r24, r21
	setlt.u r13, r27, r8
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r13, zero, .LBB0_84
# %bb.83:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r24, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_76 Depth=3
	lui r13, 1024
	or r19, r24, r13
.LBB0_85:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r28, 0(r20)
	and r13, r28, r21
	setlt.u r14, r27, r13
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r14, zero, .LBB0_87
# %bb.86:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r13, r23, r13
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	beq r13, zero, .LBB0_88
	j .LBB0_89
.LBB0_87:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r20, r28, r14
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r13, r23, r13
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r13, zero, .LBB0_89
.LBB0_88:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r28, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r28, r13
	add.s r13, r13, r22
	and r20, r13, r14
.LBB0_89:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	setlt.u r8, r23, r8
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r8, zero, .LBB0_91
# %bb.90:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r24, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r24, r8
	add.s r8, r8, r22
	and r19, r8, r13
.LBB0_91:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	setlt.u r8, r23, r18
	addli r28, zero, 64
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r8, zero, .LBB0_93
# %bb.92:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r22
	and r17, r8, r13
.LBB0_93:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	setlt.u r8, r23, r15
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r8, zero, .LBB0_75
# %bb.94:                               # %vector.body891
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r9, 16
	lui r8, 1048560
	andi r7, r7, 1
	add.s r7, r9, r7
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_75
.LBB0_95:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 197 7 is_stmt 1               # parallel-rne.mlir:197:7
	mfence { sm }
.LBB0_96:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 226 7                         # parallel-rne.mlir:226:7
	core_id r1
	addli r2, zero, 2
	bneq r1, r2, .LBB0_126
# %bb.97:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 226 7                         # parallel-rne.mlir:226:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_99
.LBB0_98:                               # %middle.block886
                                        #   in Loop: Header=BB0_99 Depth=2
	.loc	1 234 9 is_stmt 1               # parallel-rne.mlir:234:9
	andi r2, r1, 1
	addli r1, zero, 320
	zext_int2long r[4:5], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_125
.LBB0_99:                               # %vector.memcheck878
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_101 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 235 11 is_stmt 1              # parallel-rne.mlir:235:11
	beq r10, r6, .LBB0_101
	j .LBB0_106
.LBB0_100:                              # %scalar.ph880
                                        #   in Loop: Header=BB0_101 Depth=3
	addli r13, r30, -3040
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	add.s r2, r10, r2
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	stores.w r7, 0(r2)
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	setlt.ul r8, r[11:12], r[8:9]
	addli.d r[11:12], r[11:12], 1
	beq r8, zero, .LBB0_98
.LBB0_101:                              # %scalar.ph880
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r7, r6, r2
	loads.w r8, 0(r7)
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r9, r8, r21
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	setlt.u r7, r27, r9
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r7, zero, .LBB0_103
# %bb.102:                              # %scalar.ph880
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r9, r23, r9
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r9, zero, .LBB0_100
	j .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r8, r7
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r9, r23, r9
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r9, zero, .LBB0_100
.LBB0_104:                              # %scalar.ph880
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	lui r8, 1048560
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_100
.LBB0_105:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 235 11 is_stmt 1              # parallel-rne.mlir:235:11
	addli.d r[11:12], r[11:12], 4
	zext_int2long r[8:9], r28
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	add.s r2, r10, r2
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	seteq.d r8, r[11:12], r[8:9]
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	stores.w r7, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	bneq r8, zero, .LBB0_98
.LBB0_106:                              # %vector.body882
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r20, r6, r2
	loads.w r9, 12(r20)
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r15, r9, r21
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	setlt.u r7, r27, r15
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r7, zero, .LBB0_108
# %bb.107:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=3
	lui r7, 1024
	or r7, r9, r7
.LBB0_109:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	loads.w r25, 8(r20)
	and r18, r25, r21
	setlt.u r8, r27, r18
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r8, zero, .LBB0_111
# %bb.110:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r25, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_106 Depth=3
	lui r8, 1024
	or r17, r25, r8
.LBB0_112:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	loads.w r24, 4(r20)
	and r8, r24, r21
	setlt.u r13, r27, r8
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r13, zero, .LBB0_114
# %bb.113:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r24, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_106 Depth=3
	lui r13, 1024
	or r19, r24, r13
.LBB0_115:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	loads.w r28, 0(r20)
	and r13, r28, r21
	setlt.u r14, r27, r13
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r14, zero, .LBB0_117
# %bb.116:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r13, r23, r13
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r13, zero, .LBB0_118
	j .LBB0_119
.LBB0_117:                              #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r20, r28, r14
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r13, r23, r13
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r13, zero, .LBB0_119
.LBB0_118:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r28, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r28, r13
	add.s r13, r13, r22
	and r20, r13, r14
.LBB0_119:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r8, r23, r8
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r8, zero, .LBB0_121
# %bb.120:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r24, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r24, r8
	add.s r8, r8, r22
	and r19, r8, r13
.LBB0_121:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r8, r23, r18
	addli r28, zero, 64
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r8, zero, .LBB0_123
# %bb.122:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r22
	and r17, r8, r13
.LBB0_123:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r8, r23, r15
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r8, zero, .LBB0_105
# %bb.124:                              # %vector.body882
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r9, 16
	lui r8, 1048560
	andi r7, r7, 1
	add.s r7, r9, r7
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_105
.LBB0_125:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 226 7 is_stmt 1               # parallel-rne.mlir:226:7
	mfence { sm }
.LBB0_126:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	core_id r1
	addli r2, zero, 3
	bneq r1, r2, .LBB0_156
# %bb.127:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 384
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_129
.LBB0_128:                              # %middle.block877
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 263 9 is_stmt 1               # parallel-rne.mlir:263:9
	andi r2, r1, 1
	addli r1, zero, 448
	zext_int2long r[4:5], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_155
.LBB0_129:                              # %vector.memcheck869
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_136 Depth 3
                                        #       Child Loop BB0_131 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 264 11 is_stmt 1              # parallel-rne.mlir:264:11
	beq r10, r6, .LBB0_131
	j .LBB0_136
.LBB0_130:                              # %scalar.ph871
                                        #   in Loop: Header=BB0_131 Depth=3
	addli r13, r30, -3040
	.loc	1 279 13                        # parallel-rne.mlir:279:13
	add.s r2, r10, r2
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	.loc	1 279 13                        # parallel-rne.mlir:279:13
	stores.w r7, 0(r2)
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	setlt.ul r8, r[11:12], r[8:9]
	addli.d r[11:12], r[11:12], 1
	beq r8, zero, .LBB0_128
.LBB0_131:                              # %scalar.ph871
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r7, r6, r2
	loads.w r8, 0(r7)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r9, r8, r21
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	setlt.u r7, r27, r9
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r7, zero, .LBB0_133
# %bb.132:                              # %scalar.ph871
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r9, r23, r9
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r9, zero, .LBB0_130
	j .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r8, r7
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r9, r23, r9
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r9, zero, .LBB0_130
.LBB0_134:                              # %scalar.ph871
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	lui r8, 1048560
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_130
.LBB0_135:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 264 11 is_stmt 1              # parallel-rne.mlir:264:11
	addli.d r[11:12], r[11:12], 4
	zext_int2long r[8:9], r28
	.loc	1 279 13                        # parallel-rne.mlir:279:13
	add.s r2, r10, r2
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	seteq.d r8, r[11:12], r[8:9]
	.loc	1 279 13                        # parallel-rne.mlir:279:13
	stores.w r7, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	bneq r8, zero, .LBB0_128
.LBB0_136:                              # %vector.body873
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r20, r6, r2
	loads.w r9, 12(r20)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r15, r9, r21
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	setlt.u r7, r27, r15
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r7, zero, .LBB0_138
# %bb.137:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	j .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_136 Depth=3
	lui r7, 1024
	or r7, r9, r7
.LBB0_139:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	loads.w r25, 8(r20)
	and r18, r25, r21
	setlt.u r8, r27, r18
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r8, zero, .LBB0_141
# %bb.140:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r25, 0
	j .LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_136 Depth=3
	lui r8, 1024
	or r17, r25, r8
.LBB0_142:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	loads.w r24, 4(r20)
	and r8, r24, r21
	setlt.u r13, r27, r8
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r13, zero, .LBB0_144
# %bb.143:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r24, 0
	j .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_136 Depth=3
	lui r13, 1024
	or r19, r24, r13
.LBB0_145:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	loads.w r28, 0(r20)
	and r13, r28, r21
	setlt.u r14, r27, r13
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r14, zero, .LBB0_147
# %bb.146:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r13, r23, r13
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	beq r13, zero, .LBB0_148
	j .LBB0_149
.LBB0_147:                              #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r20, r28, r14
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r13, r23, r13
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r13, zero, .LBB0_149
.LBB0_148:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r28, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r28, r13
	add.s r13, r13, r22
	and r20, r13, r14
.LBB0_149:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	setlt.u r8, r23, r8
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r8, zero, .LBB0_151
# %bb.150:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r24, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r24, r8
	add.s r8, r8, r22
	and r19, r8, r13
.LBB0_151:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	setlt.u r8, r23, r18
	addli r28, zero, 64
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r8, zero, .LBB0_153
# %bb.152:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r22
	and r17, r8, r13
.LBB0_153:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	setlt.u r8, r23, r15
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r8, zero, .LBB0_135
# %bb.154:                              # %vector.body873
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r9, 16
	lui r8, 1048560
	andi r7, r7, 1
	add.s r7, r9, r7
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_135
.LBB0_155:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 255 7 is_stmt 1               # parallel-rne.mlir:255:7
	mfence { sm }
.LBB0_156:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 284 7                         # parallel-rne.mlir:284:7
	core_id r1
	addli r2, zero, 4
	bneq r1, r2, .LBB0_186
# %bb.157:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 512
	.loc	1 284 7                         # parallel-rne.mlir:284:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_159
.LBB0_158:                              # %middle.block868
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 292 9 is_stmt 1               # parallel-rne.mlir:292:9
	andi r2, r1, 1
	addli r1, zero, 576
	zext_int2long r[4:5], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_185
.LBB0_159:                              # %vector.memcheck860
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_166 Depth 3
                                        #       Child Loop BB0_161 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 293 11 is_stmt 1              # parallel-rne.mlir:293:11
	beq r10, r6, .LBB0_161
	j .LBB0_166
.LBB0_160:                              # %scalar.ph862
                                        #   in Loop: Header=BB0_161 Depth=3
	addli r13, r30, -3040
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	add.s r2, r10, r2
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	stores.w r7, 0(r2)
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	setlt.ul r8, r[11:12], r[8:9]
	addli.d r[11:12], r[11:12], 1
	beq r8, zero, .LBB0_158
.LBB0_161:                              # %scalar.ph862
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r7, r6, r2
	loads.w r8, 0(r7)
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	and r9, r8, r21
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	setlt.u r7, r27, r9
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r7, zero, .LBB0_163
# %bb.162:                              # %scalar.ph862
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r9, r23, r9
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r9, zero, .LBB0_160
	j .LBB0_164
.LBB0_163:                              #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r8, r7
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r9, r23, r9
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r9, zero, .LBB0_160
.LBB0_164:                              # %scalar.ph862
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	lui r8, 1048560
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_160
.LBB0_165:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 293 11 is_stmt 1              # parallel-rne.mlir:293:11
	addli.d r[11:12], r[11:12], 4
	zext_int2long r[8:9], r28
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	add.s r2, r10, r2
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	seteq.d r8, r[11:12], r[8:9]
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	stores.w r7, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	bneq r8, zero, .LBB0_158
.LBB0_166:                              # %vector.body864
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r20, r6, r2
	loads.w r9, 12(r20)
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	and r15, r9, r21
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	setlt.u r7, r27, r15
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r7, zero, .LBB0_168
# %bb.167:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	j .LBB0_169
.LBB0_168:                              #   in Loop: Header=BB0_166 Depth=3
	lui r7, 1024
	or r7, r9, r7
.LBB0_169:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	loads.w r25, 8(r20)
	and r18, r25, r21
	setlt.u r8, r27, r18
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r8, zero, .LBB0_171
# %bb.170:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r25, 0
	j .LBB0_172
.LBB0_171:                              #   in Loop: Header=BB0_166 Depth=3
	lui r8, 1024
	or r17, r25, r8
.LBB0_172:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	loads.w r24, 4(r20)
	and r8, r24, r21
	setlt.u r13, r27, r8
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r13, zero, .LBB0_174
# %bb.173:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r24, 0
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_166 Depth=3
	lui r13, 1024
	or r19, r24, r13
.LBB0_175:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	loads.w r28, 0(r20)
	and r13, r28, r21
	setlt.u r14, r27, r13
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r14, zero, .LBB0_177
# %bb.176:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r13, r23, r13
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r13, zero, .LBB0_178
	j .LBB0_179
.LBB0_177:                              #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r20, r28, r14
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r13, r23, r13
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r13, zero, .LBB0_179
.LBB0_178:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r28, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r28, r13
	add.s r13, r13, r22
	and r20, r13, r14
.LBB0_179:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	setlt.u r8, r23, r8
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r8, zero, .LBB0_181
# %bb.180:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r24, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r24, r8
	add.s r8, r8, r22
	and r19, r8, r13
.LBB0_181:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	setlt.u r8, r23, r18
	addli r28, zero, 64
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r8, zero, .LBB0_183
# %bb.182:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r22
	and r17, r8, r13
.LBB0_183:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	setlt.u r8, r23, r15
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r8, zero, .LBB0_165
# %bb.184:                              # %vector.body864
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r9, 16
	lui r8, 1048560
	andi r7, r7, 1
	add.s r7, r9, r7
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_165
.LBB0_185:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 284 7 is_stmt 1               # parallel-rne.mlir:284:7
	mfence { sm }
.LBB0_186:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 313 7                         # parallel-rne.mlir:313:7
	core_id r1
	addli r2, zero, 5
	bneq r1, r2, .LBB0_216
# %bb.187:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 640
	.loc	1 313 7                         # parallel-rne.mlir:313:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_189
.LBB0_188:                              # %middle.block859
                                        #   in Loop: Header=BB0_189 Depth=2
	.loc	1 321 9 is_stmt 1               # parallel-rne.mlir:321:9
	andi r2, r1, 1
	addli r1, zero, 704
	zext_int2long r[4:5], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_215
.LBB0_189:                              # %vector.memcheck851
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_196 Depth 3
                                        #       Child Loop BB0_191 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 322 11 is_stmt 1              # parallel-rne.mlir:322:11
	beq r10, r6, .LBB0_191
	j .LBB0_196
.LBB0_190:                              # %scalar.ph853
                                        #   in Loop: Header=BB0_191 Depth=3
	addli r13, r30, -3040
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	add.s r2, r10, r2
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	stores.w r7, 0(r2)
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	setlt.ul r8, r[11:12], r[8:9]
	addli.d r[11:12], r[11:12], 1
	beq r8, zero, .LBB0_188
.LBB0_191:                              # %scalar.ph853
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r7, r6, r2
	loads.w r8, 0(r7)
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r9, r8, r21
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	setlt.u r7, r27, r9
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r7, zero, .LBB0_193
# %bb.192:                              # %scalar.ph853
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r9, r23, r9
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r9, zero, .LBB0_190
	j .LBB0_194
.LBB0_193:                              #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r8, r7
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r9, r23, r9
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r9, zero, .LBB0_190
.LBB0_194:                              # %scalar.ph853
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	lui r8, 1048560
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_190
.LBB0_195:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 322 11 is_stmt 1              # parallel-rne.mlir:322:11
	addli.d r[11:12], r[11:12], 4
	zext_int2long r[8:9], r28
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	add.s r2, r10, r2
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	seteq.d r8, r[11:12], r[8:9]
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	stores.w r7, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	bneq r8, zero, .LBB0_188
.LBB0_196:                              # %vector.body855
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r20, r6, r2
	loads.w r9, 12(r20)
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r15, r9, r21
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	setlt.u r7, r27, r15
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r7, zero, .LBB0_198
# %bb.197:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_196 Depth=3
	lui r7, 1024
	or r7, r9, r7
.LBB0_199:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r25, 8(r20)
	and r18, r25, r21
	setlt.u r8, r27, r18
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r8, zero, .LBB0_201
# %bb.200:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r25, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_196 Depth=3
	lui r8, 1024
	or r17, r25, r8
.LBB0_202:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r24, 4(r20)
	and r8, r24, r21
	setlt.u r13, r27, r8
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r13, zero, .LBB0_204
# %bb.203:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r24, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_196 Depth=3
	lui r13, 1024
	or r19, r24, r13
.LBB0_205:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r28, 0(r20)
	and r13, r28, r21
	setlt.u r14, r27, r13
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r14, zero, .LBB0_207
# %bb.206:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r13, r23, r13
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r13, zero, .LBB0_208
	j .LBB0_209
.LBB0_207:                              #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r20, r28, r14
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r13, r23, r13
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r13, zero, .LBB0_209
.LBB0_208:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r28, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r28, r13
	add.s r13, r13, r22
	and r20, r13, r14
.LBB0_209:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	setlt.u r8, r23, r8
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r8, zero, .LBB0_211
# %bb.210:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r24, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r24, r8
	add.s r8, r8, r22
	and r19, r8, r13
.LBB0_211:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	setlt.u r8, r23, r18
	addli r28, zero, 64
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r8, zero, .LBB0_213
# %bb.212:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r22
	and r17, r8, r13
.LBB0_213:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	setlt.u r8, r23, r15
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r8, zero, .LBB0_195
# %bb.214:                              # %vector.body855
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r9, 16
	lui r8, 1048560
	andi r7, r7, 1
	add.s r7, r9, r7
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_195
.LBB0_215:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 313 7 is_stmt 1               # parallel-rne.mlir:313:7
	mfence { sm }
.LBB0_216:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 342 7                         # parallel-rne.mlir:342:7
	core_id r1
	addli r2, zero, 6
	bneq r1, r2, .LBB0_246
# %bb.217:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 768
	.loc	1 342 7                         # parallel-rne.mlir:342:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_219
.LBB0_218:                              # %middle.block850
                                        #   in Loop: Header=BB0_219 Depth=2
	.loc	1 350 9 is_stmt 1               # parallel-rne.mlir:350:9
	andi r2, r1, 1
	addli r1, zero, 832
	zext_int2long r[4:5], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_245
.LBB0_219:                              # %vector.memcheck842
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_226 Depth 3
                                        #       Child Loop BB0_221 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 351 11 is_stmt 1              # parallel-rne.mlir:351:11
	beq r10, r6, .LBB0_221
	j .LBB0_226
.LBB0_220:                              # %scalar.ph844
                                        #   in Loop: Header=BB0_221 Depth=3
	addli r13, r30, -3040
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	add.s r2, r10, r2
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r7, 0(r2)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	setlt.ul r8, r[11:12], r[8:9]
	addli.d r[11:12], r[11:12], 1
	beq r8, zero, .LBB0_218
.LBB0_221:                              # %scalar.ph844
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_219 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r7, r6, r2
	loads.w r8, 0(r7)
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	and r9, r8, r21
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	setlt.u r7, r27, r9
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r7, zero, .LBB0_223
# %bb.222:                              # %scalar.ph844
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r9, r23, r9
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_220
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r8, r7
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r9, r23, r9
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_220
.LBB0_224:                              # %scalar.ph844
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	lui r8, 1048560
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_220
.LBB0_225:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 351 11 is_stmt 1              # parallel-rne.mlir:351:11
	addli.d r[11:12], r[11:12], 4
	zext_int2long r[8:9], r28
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	add.s r2, r10, r2
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	seteq.d r8, r[11:12], r[8:9]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r7, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	bneq r8, zero, .LBB0_218
.LBB0_226:                              # %vector.body846
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_219 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r20, r6, r2
	loads.w r9, 12(r20)
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	and r15, r9, r21
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	setlt.u r7, r27, r15
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r7, zero, .LBB0_228
# %bb.227:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	j .LBB0_229
.LBB0_228:                              #   in Loop: Header=BB0_226 Depth=3
	lui r7, 1024
	or r7, r9, r7
.LBB0_229:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r25, 8(r20)
	and r18, r25, r21
	setlt.u r8, r27, r18
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r8, zero, .LBB0_231
# %bb.230:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r25, 0
	j .LBB0_232
.LBB0_231:                              #   in Loop: Header=BB0_226 Depth=3
	lui r8, 1024
	or r17, r25, r8
.LBB0_232:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r24, 4(r20)
	and r8, r24, r21
	setlt.u r13, r27, r8
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r13, zero, .LBB0_234
# %bb.233:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r24, 0
	j .LBB0_235
.LBB0_234:                              #   in Loop: Header=BB0_226 Depth=3
	lui r13, 1024
	or r19, r24, r13
.LBB0_235:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r28, 0(r20)
	and r13, r28, r21
	setlt.u r14, r27, r13
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r14, zero, .LBB0_237
# %bb.236:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r13, r23, r13
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r13, zero, .LBB0_238
	j .LBB0_239
.LBB0_237:                              #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r20, r28, r14
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r13, r23, r13
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r13, zero, .LBB0_239
.LBB0_238:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r28, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r28, r13
	add.s r13, r13, r22
	and r20, r13, r14
.LBB0_239:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	setlt.u r8, r23, r8
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r8, zero, .LBB0_241
# %bb.240:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r24, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r24, r8
	add.s r8, r8, r22
	and r19, r8, r13
.LBB0_241:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	setlt.u r8, r23, r18
	addli r28, zero, 64
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r8, zero, .LBB0_243
# %bb.242:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r22
	and r17, r8, r13
.LBB0_243:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	setlt.u r8, r23, r15
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r8, zero, .LBB0_225
# %bb.244:                              # %vector.body846
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r9, 16
	lui r8, 1048560
	andi r7, r7, 1
	add.s r7, r9, r7
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_225
.LBB0_245:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 342 7 is_stmt 1               # parallel-rne.mlir:342:7
	mfence { sm }
.LBB0_246:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	core_id r1
	addli r2, zero, 7
	bneq r1, r2, .LBB0_276
# %bb.247:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 896
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_249
.LBB0_248:                              # %middle.block841
                                        #   in Loop: Header=BB0_249 Depth=2
	.loc	1 379 9 is_stmt 1               # parallel-rne.mlir:379:9
	andi r2, r1, 1
	addli r1, zero, 960
	zext_int2long r[4:5], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_275
.LBB0_249:                              # %vector.memcheck833
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_251 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 380 11 is_stmt 1              # parallel-rne.mlir:380:11
	beq r10, r6, .LBB0_251
	j .LBB0_256
.LBB0_250:                              # %scalar.ph835
                                        #   in Loop: Header=BB0_251 Depth=3
	addli r13, r30, -3040
	.loc	1 395 13                        # parallel-rne.mlir:395:13
	add.s r2, r10, r2
	.loc	1 380 11                        # parallel-rne.mlir:380:11
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	.loc	1 395 13                        # parallel-rne.mlir:395:13
	stores.w r7, 0(r2)
	.loc	1 380 11                        # parallel-rne.mlir:380:11
	setlt.ul r8, r[11:12], r[8:9]
	addli.d r[11:12], r[11:12], 1
	beq r8, zero, .LBB0_248
.LBB0_251:                              # %scalar.ph835
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r7, r6, r2
	loads.w r8, 0(r7)
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	and r9, r8, r21
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	setlt.u r7, r27, r9
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r7, zero, .LBB0_253
# %bb.252:                              # %scalar.ph835
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 392 19 is_stmt 1              # parallel-rne.mlir:392:19
	setlt.u r9, r23, r9
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r9, zero, .LBB0_250
	j .LBB0_254
.LBB0_253:                              #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r8, r7
	.loc	1 392 19 is_stmt 1              # parallel-rne.mlir:392:19
	setlt.u r9, r23, r9
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r9, zero, .LBB0_250
.LBB0_254:                              # %scalar.ph835
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	lui r8, 1048560
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_250
.LBB0_255:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 380 11 is_stmt 1              # parallel-rne.mlir:380:11
	addli.d r[11:12], r[11:12], 4
	zext_int2long r[8:9], r28
	.loc	1 395 13                        # parallel-rne.mlir:395:13
	add.s r2, r10, r2
	.loc	1 380 11                        # parallel-rne.mlir:380:11
	seteq.d r8, r[11:12], r[8:9]
	.loc	1 395 13                        # parallel-rne.mlir:395:13
	stores.w r7, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 380 11                        # parallel-rne.mlir:380:11
	bneq r8, zero, .LBB0_248
.LBB0_256:                              # %vector.body837
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	add.ul r[7:8], r[11:12], r[4:5]
	slli r2, r7, 2
	add.s r20, r6, r2
	loads.w r9, 12(r20)
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	and r15, r9, r21
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	setlt.u r7, r27, r15
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r7, zero, .LBB0_258
# %bb.257:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	j .LBB0_259
.LBB0_258:                              #   in Loop: Header=BB0_256 Depth=3
	lui r7, 1024
	or r7, r9, r7
.LBB0_259:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r25, 8(r20)
	and r18, r25, r21
	setlt.u r8, r27, r18
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r8, zero, .LBB0_261
# %bb.260:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r25, 0
	j .LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_256 Depth=3
	lui r8, 1024
	or r17, r25, r8
.LBB0_262:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r24, 4(r20)
	and r8, r24, r21
	setlt.u r13, r27, r8
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r13, zero, .LBB0_264
# %bb.263:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r24, 0
	j .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_256 Depth=3
	lui r13, 1024
	or r19, r24, r13
.LBB0_265:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r28, 0(r20)
	and r13, r28, r21
	setlt.u r14, r27, r13
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r14, zero, .LBB0_267
# %bb.266:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r28, 0
	.loc	1 392 19 is_stmt 1              # parallel-rne.mlir:392:19
	setlt.u r13, r23, r13
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	beq r13, zero, .LBB0_268
	j .LBB0_269
.LBB0_267:                              #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r20, r28, r14
	.loc	1 392 19 is_stmt 1              # parallel-rne.mlir:392:19
	setlt.u r13, r23, r13
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r13, zero, .LBB0_269
.LBB0_268:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r28, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r28, r13
	add.s r13, r13, r22
	and r20, r13, r14
.LBB0_269:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	setlt.u r8, r23, r8
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r8, zero, .LBB0_271
# %bb.270:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r24, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r24, r8
	add.s r8, r8, r22
	and r19, r8, r13
.LBB0_271:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	setlt.u r8, r23, r18
	addli r28, zero, 64
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r8, zero, .LBB0_273
# %bb.272:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r25, 16
	lui r13, 1048560
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r22
	and r17, r8, r13
.LBB0_273:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	setlt.u r8, r23, r15
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	bneq r8, zero, .LBB0_255
# %bb.274:                              # %vector.body837
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r9, 16
	lui r8, 1048560
	andi r7, r7, 1
	add.s r7, r9, r7
	add.s r7, r7, r22
	and r7, r7, r8
	j .LBB0_255
.LBB0_275:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	mfence { sm }
.LBB0_276:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3056(r30)                # 4-byte Folded Reload
	zext_int2long r[6:7], r28
	zext_int2long r[1:2], r1
	min.ul r[4:5], r[1:2], r[6:7]
	addli.d r[4:5], r[4:5], 64
	max.ul r[4:5], r[4:5], r[1:2]
	sub.sl r[1:2], r[4:5], r[1:2]
	addli r4, r30, -3056
	store.d r[6:7], 0(r4)                   # 8-byte Folded Spill
	min.ul r[1:2], r[1:2], r[6:7]
	.loc	1 400 7 is_stmt 1               # parallel-rne.mlir:400:7
	addli r4, r30, -3120
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	addli r1, zero, 255
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r4
	.loc	1 400 7                         # parallel-rne.mlir:400:7
	csr_set csr5, r1
	.loc	1 401 7                         # parallel-rne.mlir:401:7
	addli r1, zero, 3
	.loc	1 400 7                         # parallel-rne.mlir:400:7
	sync_core
	.loc	1 401 7                         # parallel-rne.mlir:401:7
	bneq r4, r1, .LBB0_278
# %bb.277:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	addli r1, zero, 12
	xsignal r1, 0
	.loc	1 407 13                        # parallel-rne.mlir:407:13
	loadli.w r1,  -168(r30)
	addli r2, r1, 1
	storeli.w r2, -168(r30)
	.loc	1 409 7                         # parallel-rne.mlir:409:7
	xwait r26, 0
	addli r2, zero, 29
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 410 7                         # parallel-rne.mlir:410:7
	xwait r2, 0
	j .LBB0_287
.LBB0_278:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r6,  -3048(r30)                # 4-byte Folded Reload
	addli r5, zero, 5
	addli r7, zero, 1
	mod.s r1, r6, r5
	slli r2, r1, 8
	lui r1, 350
	ori r1, r1, 2048
	add.s r1, r2, r1
	.loc	1 404 7 is_stmt 1               # parallel-rne.mlir:404:7
	bneq r4, r7, .LBB0_282
# %bb.279:                              #   in Loop: Header=BB0_8 Depth=1
	addli r8, r30, -3112
	addli r12, zero, 23
	load.d r[4:5], 0(r8)                    # 8-byte Folded Reload
	load.d r[8:9], 16(r30)
	xwait r12, 0
	sll.d r[4:5], r[4:5], r7
	add.ul r[4:5], r[8:9], r[4:5]
	addli r9, zero, 4
	blt.s r9, r6, .LBB0_281
# %bb.280:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 5
	addli r11, zero, 2
	.loc	1 404 7                         # parallel-rne.mlir:404:7
	addli r6, zero, 3
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 6
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
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
	addli r6, zero, 14
	dma_cfg zero, zero, r26, 10
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
	addli r6, zero, 21
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 22
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 24
	dma_cfg zero, zero, r12, 10
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
	addli r6, zero, 128
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r28, 3
	dma_cfg r6, zero, r11, 4
	addli r6, zero, 256
	dma_cfg r6, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
.LBB0_281:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r6, 350
	.loc	1 404 7                         # parallel-rne.mlir:404:7
	lock zero, r9
	addli r8, zero, 128
	addli r11, zero, 256
	dma_cfg r7, r7, zero, 0
	ori r6, r6, 2112
	dma_cfg zero, r5, zero, 2
	add.s r2, r2, r6
	addli r6, r30, -3120
	load.d r[13:14], 0(r6)                  # 8-byte Folded Reload
	dma_cfg r2, r4, r28, 3
	addli r5, zero, 2
	addli r6, r13, 31
	slli r4, r13, 1
	srli r2, r6, 5
	andi r4, r4, 62
	addli r6, zero, 5
	dma_cfg r8, r28, r2, 4
	dma_cfg r11, r8, r7, 5
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 3
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 6
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 22
	dma_cfg zero, zero, r6, 10
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
	addli r5, zero, 14
	dma_cfg zero, zero, r26, 10
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 404 7                         # parallel-rne.mlir:404:7
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
	addli r5, zero, 24
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r12, 10
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r28, 3
	dma_cfg r8, zero, r2, 4
	dma_cfg r11, zero, r7, 5
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r9, 0
	j .LBB0_286
.LBB0_282:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 13
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 405 7                         # parallel-rne.mlir:405:7
	bneq r26, r5, .LBB0_286
# %bb.283:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 12
	addli r2, zero, 0
	addli r5, zero, 23
	addli r7, zero, 4096
	xwait r4, 0
	addli r4, zero, 22
	xwait r4, 0
	addli r4, zero, 2
	lock zero, r4
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 63
	ew_cfg zero, r4, zero, 2
	addli r4, zero, 1
	ew_cfg r4, zero, zero, 3
.LBB0_284:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r10, r2
	addli r2, r2, 256
	dsmadd r4, r4, r1, 0
	bneq r2, r7, .LBB0_284
# %bb.285:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 2
	unlock r1
	xsignal r6, 0
	xsignal r5, 0
.LBB0_286:                              # %.thread113
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 407 13                        # parallel-rne.mlir:407:13
	loadli.w r1,  -168(r30)
	addli r2, r1, 1
	storeli.w r2, -168(r30)
.LBB0_287:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	.loc	1 412 7                         # parallel-rne.mlir:412:7
	xfence
	.loc	1 413 7                         # parallel-rne.mlir:413:7
	mfence { lm, sm, gm }
	.loc	1 407 13                        # parallel-rne.mlir:407:13
	mod.s r1, r1, r2
	loadli.w r2,  -3148(r30)                # 4-byte Folded Reload
	slli r1, r1, 12
	add.s r20, r1, r2
	.loc	1 414 7                         # parallel-rne.mlir:414:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 415 7                         # parallel-rne.mlir:415:7
	beq r26, zero, .LBB0_295
# %bb.288:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	addli r1, zero, 1
	beq r26, r1, .LBB0_319
.LBB0_289:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	addli r1, zero, 2
	beq r26, r1, .LBB0_343
.LBB0_290:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 502 7                         # parallel-rne.mlir:502:7
	addli r1, zero, 3
	beq r26, r1, .LBB0_367
.LBB0_291:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 531 7                         # parallel-rne.mlir:531:7
	addli r1, zero, 4
	beq r26, r1, .LBB0_391
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	addli r1, zero, 5
	beq r26, r1, .LBB0_415
.LBB0_293:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 6
	.loc	1 589 7 is_stmt 1               # parallel-rne.mlir:589:7
	beq r26, r1, .LBB0_439
.LBB0_294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	addli r1, zero, 7
	beq r26, r1, .LBB0_463
	j .LBB0_487
.LBB0_295:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 415 7                         # parallel-rne.mlir:415:7
	xfence
	zext_int2long r[5:6], zero
	addli r14, zero, 1
	addli r1, r30, -3048
	mfence { lm, sm, gm }
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	j .LBB0_297
.LBB0_296:                              # %middle.block832
                                        #   in Loop: Header=BB0_297 Depth=2
	.loc	1 423 9                         # parallel-rne.mlir:423:9
	andi r1, r14, 1
	addli.d r[5:6], r[12:13], 0
	addli r14, zero, 0
	beq r1, zero, .LBB0_318
.LBB0_297:                              # %vector.ph827
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_299 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -3048
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	j .LBB0_299
.LBB0_298:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	.loc	1 424 11 is_stmt 1              # parallel-rne.mlir:424:11
	addli.d r[7:8], r[7:8], 4
	zext_int2long r[12:13], r28
	.loc	1 439 13                        # parallel-rne.mlir:439:13
	add.s r9, r20, r9
	.loc	1 424 11                        # parallel-rne.mlir:424:11
	setneq.d r4, r[7:8], r[12:13]
	.loc	1 439 13                        # parallel-rne.mlir:439:13
	stores.w r11, 12(r9)
	stores.w r15, 8(r9)
	stores.w r1, 4(r9)
	stores.w r2, 0(r9)
	.loc	1 424 11                        # parallel-rne.mlir:424:11
	beq r4, zero, .LBB0_296
.LBB0_299:                              # %vector.body828
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_297 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	add.ul r[1:2], r[7:8], r[5:6]
	slli r9, r1, 2
	add.s r1, r10, r9
	loads.w r12, 12(r1)
	loads.w r24, 0(r1)
	loads.w r25, 4(r1)
	loads.w r19, 8(r1)
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	and r17, r12, r21
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	setlt.u r1, r27, r17
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_301
# %bb.300:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_302
.LBB0_301:                              #   in Loop: Header=BB0_299 Depth=3
	lui r1, 1024
	or r11, r12, r1
.LBB0_302:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	and r18, r19, r21
	setlt.u r1, r27, r18
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_304
# %bb.303:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r19, 0
	j .LBB0_305
.LBB0_304:                              #   in Loop: Header=BB0_299 Depth=3
	lui r1, 1024
	or r15, r19, r1
.LBB0_305:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	and r4, r25, r21
	setlt.u r1, r27, r4
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r1, zero, .LBB0_307
# %bb.306:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r25, 0
	j .LBB0_308
.LBB0_307:                              #   in Loop: Header=BB0_299 Depth=3
	lui r1, 1024
	or r1, r25, r1
.LBB0_308:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	and r13, r24, r21
	setlt.u r2, r27, r13
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	bneq r2, zero, .LBB0_310
# %bb.309:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r24, 0
	.loc	1 436 19 is_stmt 1              # parallel-rne.mlir:436:19
	setlt.u r13, r23, r13
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r13, zero, .LBB0_311
	j .LBB0_312
.LBB0_310:                              #   in Loop: Header=BB0_299 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r24, r2
	.loc	1 436 19 is_stmt 1              # parallel-rne.mlir:436:19
	setlt.u r13, r23, r13
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r13, zero, .LBB0_312
.LBB0_311:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r24, 16
	lui r13, 1048560
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r22
	and r2, r2, r13
.LBB0_312:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	setlt.u r4, r23, r4
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r4, zero, .LBB0_315
# %bb.313:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r18
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	beq r4, zero, .LBB0_316
.LBB0_314:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r17
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r4, zero, .LBB0_298
	j .LBB0_317
.LBB0_315:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r25, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r22
	and r1, r1, r4
	setlt.u r4, r23, r18
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r4, zero, .LBB0_314
.LBB0_316:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	lui r13, 1048560
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r22
	and r15, r4, r13
	setlt.u r4, r23, r17
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	bneq r4, zero, .LBB0_298
.LBB0_317:                              # %vector.body828
                                        #   in Loop: Header=BB0_299 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r11, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r22
	and r11, r4, r11
	j .LBB0_298
.LBB0_318:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 415 7 is_stmt 1               # parallel-rne.mlir:415:7
	mfence { sm }
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	addli r1, zero, 1
	bneq r26, r1, .LBB0_289
.LBB0_319:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 128
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_321
.LBB0_320:                              # %middle.block823
                                        #   in Loop: Header=BB0_321 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 192
	.loc	1 452 9 is_stmt 1               # parallel-rne.mlir:452:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[4:5], r2
	beq r1, zero, .LBB0_342
.LBB0_321:                              # %vector.ph818
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_323 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_323
.LBB0_322:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	.loc	1 453 11 is_stmt 1              # parallel-rne.mlir:453:11
	addli.d r[6:7], r[6:7], 4
	zext_int2long r[12:13], r28
	.loc	1 468 13                        # parallel-rne.mlir:468:13
	add.s r2, r20, r2
	.loc	1 453 11                        # parallel-rne.mlir:453:11
	setneq.d r1, r[6:7], r[12:13]
	.loc	1 468 13                        # parallel-rne.mlir:468:13
	stores.w r8, 12(r2)
	stores.w r11, 8(r2)
	stores.w r17, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 453 11                        # parallel-rne.mlir:453:11
	beq r1, zero, .LBB0_320
.LBB0_323:                              # %vector.body819
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_321 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 454 19                        # parallel-rne.mlir:454:19
	add.ul r[1:2], r[6:7], r[4:5]
	slli r2, r1, 2
	add.s r1, r10, r2
	loads.w r9, 12(r1)
	loads.w r24, 0(r1)
	loads.w r19, 4(r1)
	loads.w r15, 8(r1)
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	and r12, r9, r21
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	setlt.u r1, r27, r12
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r1, zero, .LBB0_325
# %bb.324:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_326
.LBB0_325:                              #   in Loop: Header=BB0_323 Depth=3
	lui r1, 1024
	or r8, r9, r1
.LBB0_326:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	and r18, r15, r21
	setlt.u r1, r27, r18
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r1, zero, .LBB0_328
# %bb.327:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_329
.LBB0_328:                              #   in Loop: Header=BB0_323 Depth=3
	lui r1, 1024
	or r11, r15, r1
.LBB0_329:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	and r1, r19, r21
	setlt.u r13, r27, r1
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r13, zero, .LBB0_331
# %bb.330:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_332
.LBB0_331:                              #   in Loop: Header=BB0_323 Depth=3
	lui r13, 1024
	or r17, r19, r13
.LBB0_332:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	and r13, r24, r21
	setlt.u r14, r27, r13
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r14, zero, .LBB0_334
# %bb.333:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 465 19 is_stmt 1              # parallel-rne.mlir:465:19
	setlt.u r13, r23, r13
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	beq r13, zero, .LBB0_335
	j .LBB0_336
.LBB0_334:                              #   in Loop: Header=BB0_323 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r25, r24, r14
	.loc	1 465 19 is_stmt 1              # parallel-rne.mlir:465:19
	setlt.u r13, r23, r13
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	bneq r13, zero, .LBB0_336
.LBB0_335:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r22
	and r25, r13, r14
.LBB0_336:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	setlt.u r1, r23, r1
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	beq r1, zero, .LBB0_339
# %bb.337:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	beq r1, zero, .LBB0_340
.LBB0_338:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r12
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	bneq r1, zero, .LBB0_322
	j .LBB0_341
.LBB0_339:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	lui r13, 1048560
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r22
	and r17, r1, r13
	setlt.u r1, r23, r18
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	bneq r1, zero, .LBB0_338
.LBB0_340:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	lui r11, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r11, r1, r11
	setlt.u r1, r23, r12
	.loc	1 466 19                        # parallel-rne.mlir:466:19
	bneq r1, zero, .LBB0_322
.LBB0_341:                              # %vector.body819
                                        #   in Loop: Header=BB0_323 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r22
	and r8, r1, r8
	j .LBB0_322
.LBB0_342:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	mfence { sm }
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	addli r1, zero, 2
	bneq r26, r1, .LBB0_290
.LBB0_343:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_345
.LBB0_344:                              # %middle.block814
                                        #   in Loop: Header=BB0_345 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 320
	.loc	1 481 9 is_stmt 1               # parallel-rne.mlir:481:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[4:5], r2
	beq r1, zero, .LBB0_366
.LBB0_345:                              # %vector.ph809
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_347 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_347
.LBB0_346:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	.loc	1 482 11 is_stmt 1              # parallel-rne.mlir:482:11
	addli.d r[6:7], r[6:7], 4
	zext_int2long r[12:13], r28
	.loc	1 497 13                        # parallel-rne.mlir:497:13
	add.s r2, r20, r2
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	setneq.d r1, r[6:7], r[12:13]
	.loc	1 497 13                        # parallel-rne.mlir:497:13
	stores.w r8, 12(r2)
	stores.w r11, 8(r2)
	stores.w r17, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 482 11                        # parallel-rne.mlir:482:11
	beq r1, zero, .LBB0_344
.LBB0_347:                              # %vector.body810
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_345 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	add.ul r[1:2], r[6:7], r[4:5]
	slli r2, r1, 2
	add.s r1, r10, r2
	loads.w r9, 12(r1)
	loads.w r24, 0(r1)
	loads.w r19, 4(r1)
	loads.w r15, 8(r1)
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	and r12, r9, r21
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	setlt.u r1, r27, r12
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	bneq r1, zero, .LBB0_349
# %bb.348:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_350
.LBB0_349:                              #   in Loop: Header=BB0_347 Depth=3
	lui r1, 1024
	or r8, r9, r1
.LBB0_350:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	and r18, r15, r21
	setlt.u r1, r27, r18
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	bneq r1, zero, .LBB0_352
# %bb.351:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_353
.LBB0_352:                              #   in Loop: Header=BB0_347 Depth=3
	lui r1, 1024
	or r11, r15, r1
.LBB0_353:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	and r1, r19, r21
	setlt.u r13, r27, r1
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	bneq r13, zero, .LBB0_355
# %bb.354:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_356
.LBB0_355:                              #   in Loop: Header=BB0_347 Depth=3
	lui r13, 1024
	or r17, r19, r13
.LBB0_356:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	and r13, r24, r21
	setlt.u r14, r27, r13
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	bneq r14, zero, .LBB0_358
# %bb.357:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 494 19 is_stmt 1              # parallel-rne.mlir:494:19
	setlt.u r13, r23, r13
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	beq r13, zero, .LBB0_359
	j .LBB0_360
.LBB0_358:                              #   in Loop: Header=BB0_347 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r25, r24, r14
	.loc	1 494 19 is_stmt 1              # parallel-rne.mlir:494:19
	setlt.u r13, r23, r13
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	bneq r13, zero, .LBB0_360
.LBB0_359:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r22
	and r25, r13, r14
.LBB0_360:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	setlt.u r1, r23, r1
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	beq r1, zero, .LBB0_363
# %bb.361:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	beq r1, zero, .LBB0_364
.LBB0_362:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r12
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	bneq r1, zero, .LBB0_346
	j .LBB0_365
.LBB0_363:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	lui r13, 1048560
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r22
	and r17, r1, r13
	setlt.u r1, r23, r18
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	bneq r1, zero, .LBB0_362
.LBB0_364:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	lui r11, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r11, r1, r11
	setlt.u r1, r23, r12
	.loc	1 495 19                        # parallel-rne.mlir:495:19
	bneq r1, zero, .LBB0_346
.LBB0_365:                              # %vector.body810
                                        #   in Loop: Header=BB0_347 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r22
	and r8, r1, r8
	j .LBB0_346
.LBB0_366:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	mfence { sm }
	.loc	1 502 7                         # parallel-rne.mlir:502:7
	addli r1, zero, 3
	bneq r26, r1, .LBB0_291
.LBB0_367:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 384
	.loc	1 502 7                         # parallel-rne.mlir:502:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_369
.LBB0_368:                              # %middle.block805
                                        #   in Loop: Header=BB0_369 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 448
	.loc	1 510 9 is_stmt 1               # parallel-rne.mlir:510:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[4:5], r2
	beq r1, zero, .LBB0_390
.LBB0_369:                              # %vector.ph800
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_371 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_371
.LBB0_370:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 511 11 is_stmt 1              # parallel-rne.mlir:511:11
	addli.d r[6:7], r[6:7], 4
	zext_int2long r[12:13], r28
	.loc	1 526 13                        # parallel-rne.mlir:526:13
	add.s r2, r20, r2
	.loc	1 511 11                        # parallel-rne.mlir:511:11
	setneq.d r1, r[6:7], r[12:13]
	.loc	1 526 13                        # parallel-rne.mlir:526:13
	stores.w r8, 12(r2)
	stores.w r11, 8(r2)
	stores.w r17, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 511 11                        # parallel-rne.mlir:511:11
	beq r1, zero, .LBB0_368
.LBB0_371:                              # %vector.body801
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_369 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	add.ul r[1:2], r[6:7], r[4:5]
	slli r2, r1, 2
	add.s r1, r10, r2
	loads.w r9, 12(r1)
	loads.w r24, 0(r1)
	loads.w r19, 4(r1)
	loads.w r15, 8(r1)
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	and r12, r9, r21
	.loc	1 516 19                        # parallel-rne.mlir:516:19
	setlt.u r1, r27, r12
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r1, zero, .LBB0_373
# %bb.372:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_374
.LBB0_373:                              #   in Loop: Header=BB0_371 Depth=3
	lui r1, 1024
	or r8, r9, r1
.LBB0_374:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	and r18, r15, r21
	setlt.u r1, r27, r18
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r1, zero, .LBB0_376
# %bb.375:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_377
.LBB0_376:                              #   in Loop: Header=BB0_371 Depth=3
	lui r1, 1024
	or r11, r15, r1
.LBB0_377:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	and r1, r19, r21
	setlt.u r13, r27, r1
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r13, zero, .LBB0_379
# %bb.378:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_380
.LBB0_379:                              #   in Loop: Header=BB0_371 Depth=3
	lui r13, 1024
	or r17, r19, r13
.LBB0_380:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	and r13, r24, r21
	setlt.u r14, r27, r13
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r14, zero, .LBB0_382
# %bb.381:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 523 19 is_stmt 1              # parallel-rne.mlir:523:19
	setlt.u r13, r23, r13
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	beq r13, zero, .LBB0_383
	j .LBB0_384
.LBB0_382:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r25, r24, r14
	.loc	1 523 19 is_stmt 1              # parallel-rne.mlir:523:19
	setlt.u r13, r23, r13
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	bneq r13, zero, .LBB0_384
.LBB0_383:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r22
	and r25, r13, r14
.LBB0_384:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	setlt.u r1, r23, r1
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	beq r1, zero, .LBB0_387
# %bb.385:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	beq r1, zero, .LBB0_388
.LBB0_386:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r12
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	bneq r1, zero, .LBB0_370
	j .LBB0_389
.LBB0_387:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	lui r13, 1048560
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r22
	and r17, r1, r13
	setlt.u r1, r23, r18
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	bneq r1, zero, .LBB0_386
.LBB0_388:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	lui r11, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r11, r1, r11
	setlt.u r1, r23, r12
	.loc	1 524 19                        # parallel-rne.mlir:524:19
	bneq r1, zero, .LBB0_370
.LBB0_389:                              # %vector.body801
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r22
	and r8, r1, r8
	j .LBB0_370
.LBB0_390:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 502 7                         # parallel-rne.mlir:502:7
	mfence { sm }
	.loc	1 531 7                         # parallel-rne.mlir:531:7
	addli r1, zero, 4
	bneq r26, r1, .LBB0_292
.LBB0_391:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 512
	.loc	1 531 7                         # parallel-rne.mlir:531:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_393
.LBB0_392:                              # %middle.block796
                                        #   in Loop: Header=BB0_393 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 576
	.loc	1 539 9 is_stmt 1               # parallel-rne.mlir:539:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[4:5], r2
	beq r1, zero, .LBB0_414
.LBB0_393:                              # %vector.ph791
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_395 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_395
.LBB0_394:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 540 11 is_stmt 1              # parallel-rne.mlir:540:11
	addli.d r[6:7], r[6:7], 4
	zext_int2long r[12:13], r28
	.loc	1 555 13                        # parallel-rne.mlir:555:13
	add.s r2, r20, r2
	.loc	1 540 11                        # parallel-rne.mlir:540:11
	setneq.d r1, r[6:7], r[12:13]
	.loc	1 555 13                        # parallel-rne.mlir:555:13
	stores.w r8, 12(r2)
	stores.w r11, 8(r2)
	stores.w r17, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 540 11                        # parallel-rne.mlir:540:11
	beq r1, zero, .LBB0_392
.LBB0_395:                              # %vector.body792
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_393 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	add.ul r[1:2], r[6:7], r[4:5]
	slli r2, r1, 2
	add.s r1, r10, r2
	loads.w r9, 12(r1)
	loads.w r24, 0(r1)
	loads.w r19, 4(r1)
	loads.w r15, 8(r1)
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	and r12, r9, r21
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	setlt.u r1, r27, r12
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r1, zero, .LBB0_397
# %bb.396:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_398
.LBB0_397:                              #   in Loop: Header=BB0_395 Depth=3
	lui r1, 1024
	or r8, r9, r1
.LBB0_398:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	and r18, r15, r21
	setlt.u r1, r27, r18
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r1, zero, .LBB0_400
# %bb.399:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_401
.LBB0_400:                              #   in Loop: Header=BB0_395 Depth=3
	lui r1, 1024
	or r11, r15, r1
.LBB0_401:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	and r1, r19, r21
	setlt.u r13, r27, r1
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r13, zero, .LBB0_403
# %bb.402:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_404
.LBB0_403:                              #   in Loop: Header=BB0_395 Depth=3
	lui r13, 1024
	or r17, r19, r13
.LBB0_404:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	and r13, r24, r21
	setlt.u r14, r27, r13
	.loc	1 546 19                        # parallel-rne.mlir:546:19
	bneq r14, zero, .LBB0_406
# %bb.405:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 552 19 is_stmt 1              # parallel-rne.mlir:552:19
	setlt.u r13, r23, r13
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r13, zero, .LBB0_407
	j .LBB0_408
.LBB0_406:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r25, r24, r14
	.loc	1 552 19 is_stmt 1              # parallel-rne.mlir:552:19
	setlt.u r13, r23, r13
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r13, zero, .LBB0_408
.LBB0_407:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r22
	and r25, r13, r14
.LBB0_408:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	setlt.u r1, r23, r1
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r1, zero, .LBB0_411
# %bb.409:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	beq r1, zero, .LBB0_412
.LBB0_410:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r12
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r1, zero, .LBB0_394
	j .LBB0_413
.LBB0_411:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	lui r13, 1048560
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r22
	and r17, r1, r13
	setlt.u r1, r23, r18
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r1, zero, .LBB0_410
.LBB0_412:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	lui r11, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r11, r1, r11
	setlt.u r1, r23, r12
	.loc	1 553 19                        # parallel-rne.mlir:553:19
	bneq r1, zero, .LBB0_394
.LBB0_413:                              # %vector.body792
                                        #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r22
	and r8, r1, r8
	j .LBB0_394
.LBB0_414:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 531 7                         # parallel-rne.mlir:531:7
	mfence { sm }
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	addli r1, zero, 5
	bneq r26, r1, .LBB0_293
.LBB0_415:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 640
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_417
.LBB0_416:                              # %middle.block787
                                        #   in Loop: Header=BB0_417 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 704
	.loc	1 568 9 is_stmt 1               # parallel-rne.mlir:568:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[4:5], r2
	beq r1, zero, .LBB0_438
.LBB0_417:                              # %vector.ph782
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_419 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_419
.LBB0_418:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 569 11 is_stmt 1              # parallel-rne.mlir:569:11
	addli.d r[6:7], r[6:7], 4
	zext_int2long r[12:13], r28
	.loc	1 584 13                        # parallel-rne.mlir:584:13
	add.s r2, r20, r2
	.loc	1 569 11                        # parallel-rne.mlir:569:11
	setneq.d r1, r[6:7], r[12:13]
	.loc	1 584 13                        # parallel-rne.mlir:584:13
	stores.w r8, 12(r2)
	stores.w r11, 8(r2)
	stores.w r17, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 569 11                        # parallel-rne.mlir:569:11
	beq r1, zero, .LBB0_416
.LBB0_419:                              # %vector.body783
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_417 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	add.ul r[1:2], r[6:7], r[4:5]
	slli r2, r1, 2
	add.s r1, r10, r2
	loads.w r9, 12(r1)
	loads.w r24, 0(r1)
	loads.w r19, 4(r1)
	loads.w r15, 8(r1)
	.loc	1 572 19                        # parallel-rne.mlir:572:19
	and r12, r9, r21
	.loc	1 574 19                        # parallel-rne.mlir:574:19
	setlt.u r1, r27, r12
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r1, zero, .LBB0_421
# %bb.420:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_422
.LBB0_421:                              #   in Loop: Header=BB0_419 Depth=3
	lui r1, 1024
	or r8, r9, r1
.LBB0_422:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	and r18, r15, r21
	setlt.u r1, r27, r18
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r1, zero, .LBB0_424
# %bb.423:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_425
.LBB0_424:                              #   in Loop: Header=BB0_419 Depth=3
	lui r1, 1024
	or r11, r15, r1
.LBB0_425:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	and r1, r19, r21
	setlt.u r13, r27, r1
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r13, zero, .LBB0_427
# %bb.426:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_428
.LBB0_427:                              #   in Loop: Header=BB0_419 Depth=3
	lui r13, 1024
	or r17, r19, r13
.LBB0_428:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	and r13, r24, r21
	setlt.u r14, r27, r13
	.loc	1 575 19                        # parallel-rne.mlir:575:19
	bneq r14, zero, .LBB0_430
# %bb.429:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 581 19 is_stmt 1              # parallel-rne.mlir:581:19
	setlt.u r13, r23, r13
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	beq r13, zero, .LBB0_431
	j .LBB0_432
.LBB0_430:                              #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r25, r24, r14
	.loc	1 581 19 is_stmt 1              # parallel-rne.mlir:581:19
	setlt.u r13, r23, r13
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r13, zero, .LBB0_432
.LBB0_431:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r22
	and r25, r13, r14
.LBB0_432:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	setlt.u r1, r23, r1
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	beq r1, zero, .LBB0_435
# %bb.433:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	beq r1, zero, .LBB0_436
.LBB0_434:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r12
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r1, zero, .LBB0_418
	j .LBB0_437
.LBB0_435:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	lui r13, 1048560
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r22
	and r17, r1, r13
	setlt.u r1, r23, r18
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r1, zero, .LBB0_434
.LBB0_436:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	lui r11, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r11, r1, r11
	setlt.u r1, r23, r12
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	bneq r1, zero, .LBB0_418
.LBB0_437:                              # %vector.body783
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r22
	and r8, r1, r8
	j .LBB0_418
.LBB0_438:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 560 7                         # parallel-rne.mlir:560:7
	mfence { sm }
	addli r1, zero, 6
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	bneq r26, r1, .LBB0_294
.LBB0_439:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 768
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_441
.LBB0_440:                              # %middle.block778
                                        #   in Loop: Header=BB0_441 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 832
	.loc	1 597 9 is_stmt 1               # parallel-rne.mlir:597:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[4:5], r2
	beq r1, zero, .LBB0_462
.LBB0_441:                              # %vector.ph773
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_443 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_443
.LBB0_442:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 598 11 is_stmt 1              # parallel-rne.mlir:598:11
	addli.d r[6:7], r[6:7], 4
	zext_int2long r[12:13], r28
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	add.s r2, r20, r2
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	setneq.d r1, r[6:7], r[12:13]
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	stores.w r8, 12(r2)
	stores.w r11, 8(r2)
	stores.w r17, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	beq r1, zero, .LBB0_440
.LBB0_443:                              # %vector.body774
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_441 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	add.ul r[1:2], r[6:7], r[4:5]
	slli r2, r1, 2
	add.s r1, r10, r2
	loads.w r9, 12(r1)
	loads.w r24, 0(r1)
	loads.w r19, 4(r1)
	loads.w r15, 8(r1)
	.loc	1 601 19                        # parallel-rne.mlir:601:19
	and r12, r9, r21
	.loc	1 603 19                        # parallel-rne.mlir:603:19
	setlt.u r1, r27, r12
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r1, zero, .LBB0_445
# %bb.444:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_446
.LBB0_445:                              #   in Loop: Header=BB0_443 Depth=3
	lui r1, 1024
	or r8, r9, r1
.LBB0_446:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	and r18, r15, r21
	setlt.u r1, r27, r18
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r1, zero, .LBB0_448
# %bb.447:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_449
.LBB0_448:                              #   in Loop: Header=BB0_443 Depth=3
	lui r1, 1024
	or r11, r15, r1
.LBB0_449:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	and r1, r19, r21
	setlt.u r13, r27, r1
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r13, zero, .LBB0_451
# %bb.450:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_452
.LBB0_451:                              #   in Loop: Header=BB0_443 Depth=3
	lui r13, 1024
	or r17, r19, r13
.LBB0_452:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	and r13, r24, r21
	setlt.u r14, r27, r13
	.loc	1 604 19                        # parallel-rne.mlir:604:19
	bneq r14, zero, .LBB0_454
# %bb.453:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 610 19 is_stmt 1              # parallel-rne.mlir:610:19
	setlt.u r13, r23, r13
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	beq r13, zero, .LBB0_455
	j .LBB0_456
.LBB0_454:                              #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r25, r24, r14
	.loc	1 610 19 is_stmt 1              # parallel-rne.mlir:610:19
	setlt.u r13, r23, r13
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r13, zero, .LBB0_456
.LBB0_455:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r22
	and r25, r13, r14
.LBB0_456:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	setlt.u r1, r23, r1
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	beq r1, zero, .LBB0_459
# %bb.457:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	beq r1, zero, .LBB0_460
.LBB0_458:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r12
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r1, zero, .LBB0_442
	j .LBB0_461
.LBB0_459:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	lui r13, 1048560
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r22
	and r17, r1, r13
	setlt.u r1, r23, r18
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r1, zero, .LBB0_458
.LBB0_460:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	lui r11, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r11, r1, r11
	setlt.u r1, r23, r12
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	bneq r1, zero, .LBB0_442
.LBB0_461:                              # %vector.body774
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r22
	and r8, r1, r8
	j .LBB0_442
.LBB0_462:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	mfence { sm }
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	addli r1, zero, 7
	bneq r26, r1, .LBB0_487
.LBB0_463:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 896
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_465
.LBB0_464:                              # %middle.block769
                                        #   in Loop: Header=BB0_465 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 960
	.loc	1 626 9 is_stmt 1               # parallel-rne.mlir:626:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[4:5], r2
	beq r1, zero, .LBB0_486
.LBB0_465:                              # %vector.ph764
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_467 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[6:7], zero
	j .LBB0_467
.LBB0_466:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 627 11 is_stmt 1              # parallel-rne.mlir:627:11
	addli.d r[6:7], r[6:7], 4
	zext_int2long r[12:13], r28
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	add.s r2, r20, r2
	.loc	1 627 11                        # parallel-rne.mlir:627:11
	setneq.d r1, r[6:7], r[12:13]
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	stores.w r8, 12(r2)
	stores.w r11, 8(r2)
	stores.w r17, 4(r2)
	stores.w r25, 0(r2)
	.loc	1 627 11                        # parallel-rne.mlir:627:11
	beq r1, zero, .LBB0_464
.LBB0_467:                              # %vector.body765
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_465 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 628 19                        # parallel-rne.mlir:628:19
	add.ul r[1:2], r[6:7], r[4:5]
	slli r2, r1, 2
	add.s r1, r10, r2
	loads.w r9, 12(r1)
	loads.w r24, 0(r1)
	loads.w r19, 4(r1)
	loads.w r15, 8(r1)
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	and r12, r9, r21
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	setlt.u r1, r27, r12
	.loc	1 633 19                        # parallel-rne.mlir:633:19
	bneq r1, zero, .LBB0_469
# %bb.468:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_470
.LBB0_469:                              #   in Loop: Header=BB0_467 Depth=3
	lui r1, 1024
	or r8, r9, r1
.LBB0_470:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	and r18, r15, r21
	setlt.u r1, r27, r18
	.loc	1 633 19                        # parallel-rne.mlir:633:19
	bneq r1, zero, .LBB0_472
# %bb.471:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_473
.LBB0_472:                              #   in Loop: Header=BB0_467 Depth=3
	lui r1, 1024
	or r11, r15, r1
.LBB0_473:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	and r1, r19, r21
	setlt.u r13, r27, r1
	.loc	1 633 19                        # parallel-rne.mlir:633:19
	bneq r13, zero, .LBB0_475
# %bb.474:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r19, 0
	j .LBB0_476
.LBB0_475:                              #   in Loop: Header=BB0_467 Depth=3
	lui r13, 1024
	or r17, r19, r13
.LBB0_476:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	and r13, r24, r21
	setlt.u r14, r27, r13
	.loc	1 633 19                        # parallel-rne.mlir:633:19
	bneq r14, zero, .LBB0_478
# %bb.477:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r24, 0
	.loc	1 639 19 is_stmt 1              # parallel-rne.mlir:639:19
	setlt.u r13, r23, r13
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	beq r13, zero, .LBB0_479
	j .LBB0_480
.LBB0_478:                              #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r25, r24, r14
	.loc	1 639 19 is_stmt 1              # parallel-rne.mlir:639:19
	setlt.u r13, r23, r13
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	bneq r13, zero, .LBB0_480
.LBB0_479:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r24, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r24, r13
	add.s r13, r13, r22
	and r25, r13, r14
.LBB0_480:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	setlt.u r1, r23, r1
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	beq r1, zero, .LBB0_483
# %bb.481:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	beq r1, zero, .LBB0_484
.LBB0_482:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r12
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	bneq r1, zero, .LBB0_466
	j .LBB0_485
.LBB0_483:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r19, 16
	lui r13, 1048560
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r22
	and r17, r1, r13
	setlt.u r1, r23, r18
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	bneq r1, zero, .LBB0_482
.LBB0_484:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	lui r11, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r11, r1, r11
	setlt.u r1, r23, r12
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	bneq r1, zero, .LBB0_466
.LBB0_485:                              # %vector.body765
                                        #   in Loop: Header=BB0_467 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r22
	and r8, r1, r8
	j .LBB0_466
.LBB0_486:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	mfence { sm }
.LBB0_487:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 647 7                         # parallel-rne.mlir:647:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 648 7                         # parallel-rne.mlir:648:7
	addli r1, zero, 3
	.loc	1 647 7                         # parallel-rne.mlir:647:7
	sync_core
	.loc	1 648 7                         # parallel-rne.mlir:648:7
	bneq r26, r1, .LBB0_489
# %bb.488:                              # %.critedge11.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 14
	addli r5, zero, 5
	xsignal r1, 0
	.loc	1 649 7                         # parallel-rne.mlir:649:7
	addli r1, zero, 26
	xsignal r1, 0
	.loc	1 650 7                         # parallel-rne.mlir:650:7
	addli r1, zero, 27
	xsignal r1, 0
	.loc	1 651 7                         # parallel-rne.mlir:651:7
	addli r1, zero, 30
	xsignal r1, 0
	.loc	1 652 7                         # parallel-rne.mlir:652:7
	addli r1, zero, 24
	xsignal r1, 0
	.loc	1 654 13                        # parallel-rne.mlir:654:13
	loadli.w r1,  -144(r30)
	loadli.w r4,  -3152(r30)                # 4-byte Folded Reload
	mod.s r2, r1, r5
	addli r1, r1, 1
	storeli.w r1, -144(r30)
	slli r2, r2, 12
	add.s r2, r2, r4
	storeli.w r2, -3048(r30)                # 4-byte Folded Spill
	j .LBB0_491
.LBB0_489:                              # %.critedge11
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -144(r30)
	addli r5, zero, 5
	loadli.w r4,  -3152(r30)                # 4-byte Folded Reload
	mod.s r2, r1, r5
	addli r1, r1, 1
	storeli.w r1, -144(r30)
	slli r2, r2, 12
	add.s r2, r2, r4
	.loc	1 655 7                         # parallel-rne.mlir:655:7
	storeli.w r2, -3048(r30)                # 4-byte Folded Spill
	bneq r26, r5, .LBB0_491
# %bb.490:                              # %.thread119
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	addli r6, zero, 2
	addli r8, zero, 511
	lui r7, 260096
	xwait r1, 0
	addli r1, zero, 32
	xwait r1, 0
	lock zero, r6
	lui r1, 258048
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r8, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, zero, 19
	hp_ssmul r2, r20, r20, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r1, 0
	.loc	1 657 13                        # parallel-rne.mlir:657:13
	loadli.w r1,  -120(r30)
	mod.s r2, r1, r5
	addli r1, r1, 1
	storeli.w r1, -120(r30)
	.loc	1 658 7                         # parallel-rne.mlir:658:7
	addli r1, zero, 26
	xwait r1, 0
	.loc	1 657 13                        # parallel-rne.mlir:657:13
	slli r1, r2, 12
	.loc	1 658 7                         # parallel-rne.mlir:658:7
	addli r2, zero, 34
	xwait r2, 0
	.loc	1 657 13                        # parallel-rne.mlir:657:13
	loadli.w r2,  -3156(r30)                # 4-byte Folded Reload
	.loc	1 658 7                         # parallel-rne.mlir:658:7
	lock zero, r6
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	.loc	1 657 13                        # parallel-rne.mlir:657:13
	add.s r4, r1, r2
	.loc	1 658 7                         # parallel-rne.mlir:658:7
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, r6, 19
	dsmul r4, r20, r20, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	.loc	1 660 13                        # parallel-rne.mlir:660:13
	loadli.w r1,  -96(r30)
	mod.s r2, r1, r5
	addli r1, r1, 1
	storeli.w r1, -96(r30)
	slli r1, r2, 12
	.loc	1 661 7                         # parallel-rne.mlir:661:7
	addli r2, zero, 27
	xwait r2, 0
	.loc	1 660 13                        # parallel-rne.mlir:660:13
	loadli.w r2,  -3160(r30)                # 4-byte Folded Reload
	add.s r11, r1, r2
	.loc	1 661 7                         # parallel-rne.mlir:661:7
	addli r1, zero, 36
	xwait r1, 0
	lock zero, r6
	addli r1, zero, 25
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, r6, 19
	dsmul r11, r4, r20, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r1, 0
	addli r1, zero, 33
	xsignal r1, 0
	addli r1, zero, 35
	xsignal r1, 0
	j .LBB0_493
.LBB0_491:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 657 13                        # parallel-rne.mlir:657:13
	loadli.w r1,  -120(r30)
	.loc	1 660 13                        # parallel-rne.mlir:660:13
	loadli.w r2,  -96(r30)
	.loc	1 657 13                        # parallel-rne.mlir:657:13
	mod.s r4, r1, r5
	.loc	1 660 13                        # parallel-rne.mlir:660:13
	mod.s r5, r2, r5
	.loc	1 657 13                        # parallel-rne.mlir:657:13
	addli r1, r1, 1
	.loc	1 660 13                        # parallel-rne.mlir:660:13
	addli r2, r2, 1
	.loc	1 657 13                        # parallel-rne.mlir:657:13
	storeli.w r1, -120(r30)
	.loc	1 660 13                        # parallel-rne.mlir:660:13
	storeli.w r2, -96(r30)
	.loc	1 657 13                        # parallel-rne.mlir:657:13
	slli r1, r4, 12
	loadli.w r4,  -3156(r30)                # 4-byte Folded Reload
	.loc	1 660 13                        # parallel-rne.mlir:660:13
	slli r5, r5, 12
	.loc	1 657 13                        # parallel-rne.mlir:657:13
	add.s r4, r1, r4
	.loc	1 660 13                        # parallel-rne.mlir:660:13
	loadli.w r1,  -3160(r30)                # 4-byte Folded Reload
	add.s r11, r5, r1
	.loc	1 663 7                         # parallel-rne.mlir:663:7
	addli r1, zero, 3
	bneq r26, r1, .LBB0_493
# %bb.492:                              # %.critedge13
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	.loc	1 664 7                         # parallel-rne.mlir:664:7
	addli r1, zero, 25
	xwait r1, 0
	.loc	1 665 7                         # parallel-rne.mlir:665:7
	addli r1, zero, 33
	xwait r1, 0
	.loc	1 666 7                         # parallel-rne.mlir:666:7
	addli r1, zero, 35
	xwait r1, 0
.LBB0_493:                              # %.critedge15
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 670 7                         # parallel-rne.mlir:670:7
	addli r1, zero, 255
	.loc	1 668 7                         # parallel-rne.mlir:668:7
	xfence
	.loc	1 669 7                         # parallel-rne.mlir:669:7
	mfence { lm, sm, gm }
	.loc	1 670 7                         # parallel-rne.mlir:670:7
	csr_set csr5, r1
	sub.s r1, r10, r4
	storeli.w r1, -3072(r30)                # 4-byte Folded Spill
	sub.s r1, r10, r11
	storeli.w r1, -3088(r30)                # 4-byte Folded Spill
	sync_core
	.loc	1 671 7                         # parallel-rne.mlir:671:7
	beq r26, zero, .LBB0_501
# %bb.494:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 707 7                         # parallel-rne.mlir:707:7
	addli r1, zero, 1
	beq r26, r1, .LBB0_529
.LBB0_495:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 743 7                         # parallel-rne.mlir:743:7
	addli r1, zero, 2
	beq r26, r1, .LBB0_557
.LBB0_496:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	addli r1, zero, 3
	beq r26, r1, .LBB0_585
.LBB0_497:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	addli r1, zero, 4
	beq r26, r1, .LBB0_613
.LBB0_498:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 851 7                         # parallel-rne.mlir:851:7
	addli r1, zero, 5
	beq r26, r1, .LBB0_641
.LBB0_499:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 887 7                         # parallel-rne.mlir:887:7
	addli r1, zero, 6
	beq r26, r1, .LBB0_669
.LBB0_500:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	.loc	1 923 7 is_stmt 1               # parallel-rne.mlir:923:7
	beq r26, r1, .LBB0_697
	j .LBB0_725
.LBB0_501:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3072(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3088(r30)                # 4-byte Folded Reload
	addli r26, zero, 1
	zext_int2long r[5:6], zero
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 671 7 is_stmt 1               # parallel-rne.mlir:671:7
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_503
.LBB0_502:                              # %middle.block760
                                        #   in Loop: Header=BB0_503 Depth=2
	.loc	1 679 9                         # parallel-rne.mlir:679:9
	andi r1, r26, 1
	zext_int2long r[5:6], r28
	addli r26, zero, 0
	beq r1, zero, .LBB0_528
.LBB0_503:                              # %vector.memcheck746
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_520 Depth 3
                                        #       Child Loop BB0_506 Depth 3
	.loc	1 680 11                        # parallel-rne.mlir:680:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_518
# %bb.504:                              # %scalar.ph752.preheader
                                        #   in Loop: Header=BB0_503 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_506
.LBB0_505:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	.loc	1 680 11                        # parallel-rne.mlir:680:11
	addli r9, r30, -3040
	.loc	1 702 13 is_stmt 1              # parallel-rne.mlir:702:13
	add.s r7, r10, r7
	.loc	1 680 11                        # parallel-rne.mlir:680:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 702 13                        # parallel-rne.mlir:702:13
	stores.w r8, 0(r7)
	.loc	1 680 11                        # parallel-rne.mlir:680:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_502
.LBB0_506:                              # %scalar.ph752
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_503 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	add.ul r[7:8], r[1:2], r[5:6]
	lui r17, 523264
	slli r7, r7, 2
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	add.s r8, r20, r7
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	add.s r9, r11, r7
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	loads.w r8, 0(r8)
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	loads.w r13, 0(r9)
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	beq r9, r27, .LBB0_508
# %bb.507:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r13, 0
.LBB0_508:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	add.s r12, r4, r7
	loads.w r12, 0(r12)
	and r15, r12, r21
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r15, zero, .LBB0_516
# %bb.509:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r9, zero, .LBB0_517
.LBB0_510:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	beq r15, r27, .LBB0_512
.LBB0_511:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
.LBB0_512:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	setlt.u r12, r27, r9
	lui r9, 523264
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r12, zero, .LBB0_514
# %bb.513:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_514:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	setlt.u r12, r27, r15
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r12, zero, .LBB0_505
# %bb.515:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_505
.LBB0_516:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	addli r17, r13, 0
	lui r13, 523264
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	beq r9, zero, .LBB0_510
.LBB0_517:                              # %scalar.ph752
                                        #   in Loop: Header=BB0_506 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r15, r27, .LBB0_511
	j .LBB0_512
.LBB0_518:                              # %vector.body754.preheader
                                        #   in Loop: Header=BB0_503 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_520
.LBB0_519:                              # %vector.body754
                                        #   in Loop: Header=BB0_520 Depth=3
	.loc	1 680 11 is_stmt 1              # parallel-rne.mlir:680:11
	addli.d r[1:2], r[1:2], 4
	zext_int2long r[12:13], r28
	.loc	1 702 13                        # parallel-rne.mlir:702:13
	add.s r9, r10, r9
	.loc	1 680 11                        # parallel-rne.mlir:680:11
	seteq.d r12, r[1:2], r[12:13]
	.loc	1 702 13                        # parallel-rne.mlir:702:13
	stores.w r15, 12(r9)
	stores.w r18, 8(r9)
	stores.w r7, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 680 11                        # parallel-rne.mlir:680:11
	bneq r12, zero, .LBB0_502
.LBB0_520:                              # %vector.body754
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_503 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r9, r7, 2
	add.s r17, r4, r9
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	add.s r19, r20, r9
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	add.s r25, r11, r9
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	loads.w r7, 0(r17)
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	loads.w r8, 0(r19)
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	and r7, r7, r21
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	and r8, r8, r21
	.loc	1 689 19                        # parallel-rne.mlir:689:19
	seteq r13, r7, r27
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	seteq r18, r7, zero
	.loc	1 690 19                        # parallel-rne.mlir:690:19
	seteq r14, r8, zero
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	seteq r15, r8, r27
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	max.u r7, r7, r8
	setlt.u r7, r27, r7
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	and r8, r13, r14
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	and r13, r18, r15
	lui r15, 523264
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	or r8, r8, r13
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	or r7, r7, r8
	lui r8, 523264
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r7, zero, .LBB0_522
# %bb.521:                              # %vector.body754
                                        #   in Loop: Header=BB0_520 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r25)
.LBB0_522:                              # %vector.body754
                                        #   in Loop: Header=BB0_520 Depth=3
	loads.w r7, 4(r17)
	loads.w r13, 4(r19)
	and r7, r7, r21
	and r13, r13, r21
	seteq r14, r7, r27
	seteq r28, r7, zero
	seteq r18, r13, zero
	seteq r24, r13, r27
	max.u r7, r7, r13
	setlt.u r7, r27, r7
	and r13, r14, r18
	and r14, r28, r24
	or r13, r13, r14
	or r13, r7, r13
	lui r7, 523264
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r13, zero, .LBB0_524
# %bb.523:                              # %vector.body754
                                        #   in Loop: Header=BB0_520 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r25)
.LBB0_524:                              # %vector.body754
                                        #   in Loop: Header=BB0_520 Depth=3
	loads.w r13, 8(r17)
	loads.w r14, 8(r19)
	and r13, r13, r21
	and r14, r14, r21
	seteq r18, r13, r27
	seteq r12, r13, zero
	seteq r28, r14, r27
	seteq r24, r14, zero
	max.u r13, r13, r14
	setlt.u r13, r27, r13
	and r14, r18, r24
	and r12, r12, r28
	lui r18, 523264
	or r12, r14, r12
	or r12, r13, r12
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r12, zero, .LBB0_526
# %bb.525:                              # %vector.body754
                                        #   in Loop: Header=BB0_520 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r25)
.LBB0_526:                              # %vector.body754
                                        #   in Loop: Header=BB0_520 Depth=3
	loads.w r12, 12(r17)
	loads.w r13, 12(r19)
	addli r28, zero, 64
	and r12, r12, r21
	and r13, r13, r21
	seteq r14, r12, r27
	seteq r24, r12, zero
	seteq r17, r13, zero
	seteq r19, r13, r27
	max.u r12, r12, r13
	setlt.u r12, r27, r12
	and r13, r14, r17
	and r14, r24, r19
	or r13, r13, r14
	or r12, r12, r13
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	bneq r12, zero, .LBB0_519
# %bb.527:                              # %vector.body754
                                        #   in Loop: Header=BB0_520 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r25)
	j .LBB0_519
.LBB0_528:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 671 7                         # parallel-rne.mlir:671:7
	mfence { sm }
	.loc	1 707 7                         # parallel-rne.mlir:707:7
	addli r1, zero, 1
	bneq r26, r1, .LBB0_495
.LBB0_529:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3072(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3088(r30)                # 4-byte Folded Reload
	addli r26, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 707 7                         # parallel-rne.mlir:707:7
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 128
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_531
.LBB0_530:                              # %middle.block745
                                        #   in Loop: Header=BB0_531 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 192
	.loc	1 715 9 is_stmt 1               # parallel-rne.mlir:715:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_556
.LBB0_531:                              # %vector.memcheck731
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_548 Depth 3
                                        #       Child Loop BB0_534 Depth 3
	.loc	1 716 11                        # parallel-rne.mlir:716:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_546
# %bb.532:                              # %scalar.ph737.preheader
                                        #   in Loop: Header=BB0_531 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_534
.LBB0_533:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 716 11                        # parallel-rne.mlir:716:11
	addli r9, r30, -3040
	.loc	1 738 13 is_stmt 1              # parallel-rne.mlir:738:13
	add.s r7, r10, r7
	.loc	1 716 11                        # parallel-rne.mlir:716:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 738 13                        # parallel-rne.mlir:738:13
	stores.w r8, 0(r7)
	.loc	1 716 11                        # parallel-rne.mlir:716:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_530
.LBB0_534:                              # %scalar.ph737
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_531 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	add.ul r[7:8], r[1:2], r[5:6]
	lui r17, 523264
	slli r7, r7, 2
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	add.s r8, r20, r7
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	add.s r9, r11, r7
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	loads.w r8, 0(r8)
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	loads.w r13, 0(r9)
	.loc	1 722 19                        # parallel-rne.mlir:722:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	beq r9, r27, .LBB0_536
# %bb.535:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r13, 0
.LBB0_536:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	add.s r12, r4, r7
	loads.w r12, 0(r12)
	and r15, r12, r21
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	bneq r15, zero, .LBB0_544
# %bb.537:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	bneq r9, zero, .LBB0_545
.LBB0_538:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	beq r15, r27, .LBB0_540
.LBB0_539:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
.LBB0_540:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	setlt.u r12, r27, r9
	lui r9, 523264
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	bneq r12, zero, .LBB0_542
# %bb.541:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_542:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	setlt.u r12, r27, r15
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	bneq r12, zero, .LBB0_533
# %bb.543:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_533
.LBB0_544:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	addli r17, r13, 0
	lui r13, 523264
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	beq r9, zero, .LBB0_538
.LBB0_545:                              # %scalar.ph737
                                        #   in Loop: Header=BB0_534 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	bneq r15, r27, .LBB0_539
	j .LBB0_540
.LBB0_546:                              # %vector.body739.preheader
                                        #   in Loop: Header=BB0_531 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_548
.LBB0_547:                              # %vector.body739
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 716 11 is_stmt 1              # parallel-rne.mlir:716:11
	addli.d r[1:2], r[1:2], 4
	zext_int2long r[12:13], r13
	.loc	1 738 13                        # parallel-rne.mlir:738:13
	add.s r9, r10, r9
	.loc	1 716 11                        # parallel-rne.mlir:716:11
	seteq.d r12, r[1:2], r[12:13]
	.loc	1 738 13                        # parallel-rne.mlir:738:13
	stores.w r15, 12(r9)
	stores.w r18, 8(r9)
	stores.w r7, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 716 11                        # parallel-rne.mlir:716:11
	bneq r12, zero, .LBB0_530
.LBB0_548:                              # %vector.body739
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_531 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r9, r7, 2
	add.s r17, r4, r9
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	add.s r19, r20, r9
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	add.s r25, r11, r9
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	loads.w r7, 0(r17)
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	loads.w r8, 0(r19)
	.loc	1 724 19                        # parallel-rne.mlir:724:19
	and r7, r7, r21
	.loc	1 722 19                        # parallel-rne.mlir:722:19
	and r8, r8, r21
	.loc	1 725 19                        # parallel-rne.mlir:725:19
	seteq r13, r7, r27
	.loc	1 729 19                        # parallel-rne.mlir:729:19
	seteq r18, r7, zero
	.loc	1 726 19                        # parallel-rne.mlir:726:19
	seteq r14, r8, zero
	.loc	1 728 19                        # parallel-rne.mlir:728:19
	seteq r15, r8, r27
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	max.u r7, r7, r8
	setlt.u r7, r27, r7
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	and r8, r13, r14
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	and r13, r18, r15
	lui r15, 523264
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	or r8, r8, r13
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	or r7, r7, r8
	lui r8, 523264
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	bneq r7, zero, .LBB0_550
# %bb.549:                              # %vector.body739
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r25)
.LBB0_550:                              # %vector.body739
                                        #   in Loop: Header=BB0_548 Depth=3
	loads.w r7, 4(r17)
	loads.w r13, 4(r19)
	and r7, r7, r21
	and r13, r13, r21
	seteq r14, r7, r27
	seteq r28, r7, zero
	seteq r18, r13, zero
	seteq r24, r13, r27
	max.u r7, r7, r13
	setlt.u r7, r27, r7
	and r13, r14, r18
	and r14, r28, r24
	or r13, r13, r14
	or r13, r7, r13
	lui r7, 523264
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	bneq r13, zero, .LBB0_552
# %bb.551:                              # %vector.body739
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r25)
.LBB0_552:                              # %vector.body739
                                        #   in Loop: Header=BB0_548 Depth=3
	loads.w r13, 8(r17)
	loads.w r14, 8(r19)
	and r13, r13, r21
	and r14, r14, r21
	seteq r18, r13, r27
	seteq r12, r13, zero
	seteq r28, r14, r27
	seteq r24, r14, zero
	max.u r13, r13, r14
	setlt.u r13, r27, r13
	and r14, r18, r24
	and r12, r12, r28
	lui r18, 523264
	or r12, r14, r12
	or r12, r13, r12
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	bneq r12, zero, .LBB0_554
# %bb.553:                              # %vector.body739
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r25)
.LBB0_554:                              # %vector.body739
                                        #   in Loop: Header=BB0_548 Depth=3
	loads.w r12, 12(r17)
	loads.w r13, 12(r19)
	and r12, r12, r21
	and r13, r13, r21
	seteq r14, r12, r27
	seteq r24, r12, zero
	seteq r17, r13, zero
	seteq r19, r13, r27
	max.u r12, r12, r13
	setlt.u r12, r27, r12
	and r13, r14, r17
	and r14, r24, r19
	or r13, r13, r14
	or r12, r12, r13
	addli r13, zero, 64
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	bneq r12, zero, .LBB0_547
# %bb.555:                              # %vector.body739
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r25)
	j .LBB0_547
.LBB0_556:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 707 7                         # parallel-rne.mlir:707:7
	mfence { sm }
	.loc	1 743 7                         # parallel-rne.mlir:743:7
	addli r1, zero, 2
	bneq r26, r1, .LBB0_496
.LBB0_557:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3072(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3088(r30)                # 4-byte Folded Reload
	addli r26, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 743 7                         # parallel-rne.mlir:743:7
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 256
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_559
.LBB0_558:                              # %middle.block730
                                        #   in Loop: Header=BB0_559 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 320
	.loc	1 751 9 is_stmt 1               # parallel-rne.mlir:751:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_584
.LBB0_559:                              # %vector.memcheck716
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_576 Depth 3
                                        #       Child Loop BB0_562 Depth 3
	.loc	1 752 11                        # parallel-rne.mlir:752:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_574
# %bb.560:                              # %scalar.ph722.preheader
                                        #   in Loop: Header=BB0_559 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_562
.LBB0_561:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 752 11                        # parallel-rne.mlir:752:11
	addli r9, r30, -3040
	.loc	1 774 13 is_stmt 1              # parallel-rne.mlir:774:13
	add.s r7, r10, r7
	.loc	1 752 11                        # parallel-rne.mlir:752:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 774 13                        # parallel-rne.mlir:774:13
	stores.w r8, 0(r7)
	.loc	1 752 11                        # parallel-rne.mlir:752:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_558
.LBB0_562:                              # %scalar.ph722
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_559 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	add.ul r[7:8], r[1:2], r[5:6]
	lui r17, 523264
	slli r7, r7, 2
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	add.s r8, r20, r7
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	add.s r9, r11, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	loads.w r8, 0(r8)
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	loads.w r13, 0(r9)
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	beq r9, r27, .LBB0_564
# %bb.563:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r13, 0
.LBB0_564:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	add.s r12, r4, r7
	loads.w r12, 0(r12)
	and r15, r12, r21
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r15, zero, .LBB0_572
# %bb.565:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r9, zero, .LBB0_573
.LBB0_566:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	beq r15, r27, .LBB0_568
.LBB0_567:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
.LBB0_568:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	setlt.u r12, r27, r9
	lui r9, 523264
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r12, zero, .LBB0_570
# %bb.569:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_570:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	setlt.u r12, r27, r15
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r12, zero, .LBB0_561
# %bb.571:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_561
.LBB0_572:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	addli r17, r13, 0
	lui r13, 523264
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	beq r9, zero, .LBB0_566
.LBB0_573:                              # %scalar.ph722
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r15, r27, .LBB0_567
	j .LBB0_568
.LBB0_574:                              # %vector.body724.preheader
                                        #   in Loop: Header=BB0_559 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_576
.LBB0_575:                              # %vector.body724
                                        #   in Loop: Header=BB0_576 Depth=3
	.loc	1 752 11 is_stmt 1              # parallel-rne.mlir:752:11
	addli.d r[1:2], r[1:2], 4
	zext_int2long r[12:13], r13
	.loc	1 774 13                        # parallel-rne.mlir:774:13
	add.s r9, r10, r9
	.loc	1 752 11                        # parallel-rne.mlir:752:11
	seteq.d r12, r[1:2], r[12:13]
	.loc	1 774 13                        # parallel-rne.mlir:774:13
	stores.w r15, 12(r9)
	stores.w r18, 8(r9)
	stores.w r7, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 752 11                        # parallel-rne.mlir:752:11
	bneq r12, zero, .LBB0_558
.LBB0_576:                              # %vector.body724
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_559 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r9, r7, 2
	add.s r17, r4, r9
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	add.s r19, r20, r9
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	add.s r25, r11, r9
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	loads.w r7, 0(r17)
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	loads.w r8, 0(r19)
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	and r7, r7, r21
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	and r8, r8, r21
	.loc	1 761 19                        # parallel-rne.mlir:761:19
	seteq r13, r7, r27
	.loc	1 765 19                        # parallel-rne.mlir:765:19
	seteq r18, r7, zero
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	seteq r14, r8, zero
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	seteq r15, r8, r27
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	max.u r7, r7, r8
	setlt.u r7, r27, r7
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	and r8, r13, r14
	.loc	1 766 19                        # parallel-rne.mlir:766:19
	and r13, r18, r15
	lui r15, 523264
	.loc	1 767 19                        # parallel-rne.mlir:767:19
	or r8, r8, r13
	.loc	1 771 19                        # parallel-rne.mlir:771:19
	or r7, r7, r8
	lui r8, 523264
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r7, zero, .LBB0_578
# %bb.577:                              # %vector.body724
                                        #   in Loop: Header=BB0_576 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r25)
.LBB0_578:                              # %vector.body724
                                        #   in Loop: Header=BB0_576 Depth=3
	loads.w r7, 4(r17)
	loads.w r13, 4(r19)
	and r7, r7, r21
	and r13, r13, r21
	seteq r14, r7, r27
	seteq r28, r7, zero
	seteq r18, r13, zero
	seteq r24, r13, r27
	max.u r7, r7, r13
	setlt.u r7, r27, r7
	and r13, r14, r18
	and r14, r28, r24
	or r13, r13, r14
	or r13, r7, r13
	lui r7, 523264
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r13, zero, .LBB0_580
# %bb.579:                              # %vector.body724
                                        #   in Loop: Header=BB0_576 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r25)
.LBB0_580:                              # %vector.body724
                                        #   in Loop: Header=BB0_576 Depth=3
	loads.w r13, 8(r17)
	loads.w r14, 8(r19)
	and r13, r13, r21
	and r14, r14, r21
	seteq r18, r13, r27
	seteq r12, r13, zero
	seteq r28, r14, r27
	seteq r24, r14, zero
	max.u r13, r13, r14
	setlt.u r13, r27, r13
	and r14, r18, r24
	and r12, r12, r28
	lui r18, 523264
	or r12, r14, r12
	or r12, r13, r12
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r12, zero, .LBB0_582
# %bb.581:                              # %vector.body724
                                        #   in Loop: Header=BB0_576 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r25)
.LBB0_582:                              # %vector.body724
                                        #   in Loop: Header=BB0_576 Depth=3
	loads.w r12, 12(r17)
	loads.w r13, 12(r19)
	and r12, r12, r21
	and r13, r13, r21
	seteq r14, r12, r27
	seteq r24, r12, zero
	seteq r17, r13, zero
	seteq r19, r13, r27
	max.u r12, r12, r13
	setlt.u r12, r27, r12
	and r13, r14, r17
	and r14, r24, r19
	or r13, r13, r14
	or r12, r12, r13
	addli r13, zero, 64
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	bneq r12, zero, .LBB0_575
# %bb.583:                              # %vector.body724
                                        #   in Loop: Header=BB0_576 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r25)
	j .LBB0_575
.LBB0_584:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 743 7                         # parallel-rne.mlir:743:7
	mfence { sm }
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	addli r1, zero, 3
	bneq r26, r1, .LBB0_497
.LBB0_585:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3072(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3088(r30)                # 4-byte Folded Reload
	addli r26, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 384
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_587
.LBB0_586:                              # %middle.block715
                                        #   in Loop: Header=BB0_587 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 448
	.loc	1 787 9 is_stmt 1               # parallel-rne.mlir:787:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_612
.LBB0_587:                              # %vector.memcheck701
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_604 Depth 3
                                        #       Child Loop BB0_590 Depth 3
	.loc	1 788 11                        # parallel-rne.mlir:788:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_602
# %bb.588:                              # %scalar.ph707.preheader
                                        #   in Loop: Header=BB0_587 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_590
.LBB0_589:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 788 11                        # parallel-rne.mlir:788:11
	addli r9, r30, -3040
	.loc	1 810 13 is_stmt 1              # parallel-rne.mlir:810:13
	add.s r7, r10, r7
	.loc	1 788 11                        # parallel-rne.mlir:788:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 810 13                        # parallel-rne.mlir:810:13
	stores.w r8, 0(r7)
	.loc	1 788 11                        # parallel-rne.mlir:788:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_586
.LBB0_590:                              # %scalar.ph707
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_587 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	add.ul r[7:8], r[1:2], r[5:6]
	lui r17, 523264
	slli r7, r7, 2
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	add.s r8, r20, r7
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	add.s r9, r11, r7
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	loads.w r8, 0(r8)
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	loads.w r13, 0(r9)
	.loc	1 794 19                        # parallel-rne.mlir:794:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	beq r9, r27, .LBB0_592
# %bb.591:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r13, 0
.LBB0_592:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	add.s r12, r4, r7
	loads.w r12, 0(r12)
	and r15, r12, r21
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r15, zero, .LBB0_600
# %bb.593:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r9, zero, .LBB0_601
.LBB0_594:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	beq r15, r27, .LBB0_596
.LBB0_595:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
.LBB0_596:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	setlt.u r12, r27, r9
	lui r9, 523264
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r12, zero, .LBB0_598
# %bb.597:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_598:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	setlt.u r12, r27, r15
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r12, zero, .LBB0_589
# %bb.599:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_589
.LBB0_600:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	addli r17, r13, 0
	lui r13, 523264
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	beq r9, zero, .LBB0_594
.LBB0_601:                              # %scalar.ph707
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r15, r27, .LBB0_595
	j .LBB0_596
.LBB0_602:                              # %vector.body709.preheader
                                        #   in Loop: Header=BB0_587 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_604
.LBB0_603:                              # %vector.body709
                                        #   in Loop: Header=BB0_604 Depth=3
	.loc	1 788 11 is_stmt 1              # parallel-rne.mlir:788:11
	addli.d r[1:2], r[1:2], 4
	zext_int2long r[12:13], r13
	.loc	1 810 13                        # parallel-rne.mlir:810:13
	add.s r9, r10, r9
	.loc	1 788 11                        # parallel-rne.mlir:788:11
	seteq.d r12, r[1:2], r[12:13]
	.loc	1 810 13                        # parallel-rne.mlir:810:13
	stores.w r15, 12(r9)
	stores.w r18, 8(r9)
	stores.w r7, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 788 11                        # parallel-rne.mlir:788:11
	bneq r12, zero, .LBB0_586
.LBB0_604:                              # %vector.body709
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_587 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r9, r7, 2
	add.s r17, r4, r9
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	add.s r19, r20, r9
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	add.s r25, r11, r9
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	loads.w r7, 0(r17)
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	loads.w r8, 0(r19)
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	and r7, r7, r21
	.loc	1 794 19                        # parallel-rne.mlir:794:19
	and r8, r8, r21
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	seteq r13, r7, r27
	.loc	1 801 19                        # parallel-rne.mlir:801:19
	seteq r18, r7, zero
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	seteq r14, r8, zero
	.loc	1 800 19                        # parallel-rne.mlir:800:19
	seteq r15, r8, r27
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	max.u r7, r7, r8
	setlt.u r7, r27, r7
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	and r8, r13, r14
	.loc	1 802 19                        # parallel-rne.mlir:802:19
	and r13, r18, r15
	lui r15, 523264
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	or r8, r8, r13
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	or r7, r7, r8
	lui r8, 523264
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r7, zero, .LBB0_606
# %bb.605:                              # %vector.body709
                                        #   in Loop: Header=BB0_604 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r25)
.LBB0_606:                              # %vector.body709
                                        #   in Loop: Header=BB0_604 Depth=3
	loads.w r7, 4(r17)
	loads.w r13, 4(r19)
	and r7, r7, r21
	and r13, r13, r21
	seteq r14, r7, r27
	seteq r28, r7, zero
	seteq r18, r13, zero
	seteq r24, r13, r27
	max.u r7, r7, r13
	setlt.u r7, r27, r7
	and r13, r14, r18
	and r14, r28, r24
	or r13, r13, r14
	or r13, r7, r13
	lui r7, 523264
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r13, zero, .LBB0_608
# %bb.607:                              # %vector.body709
                                        #   in Loop: Header=BB0_604 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r25)
.LBB0_608:                              # %vector.body709
                                        #   in Loop: Header=BB0_604 Depth=3
	loads.w r13, 8(r17)
	loads.w r14, 8(r19)
	and r13, r13, r21
	and r14, r14, r21
	seteq r18, r13, r27
	seteq r12, r13, zero
	seteq r28, r14, r27
	seteq r24, r14, zero
	max.u r13, r13, r14
	setlt.u r13, r27, r13
	and r14, r18, r24
	and r12, r12, r28
	lui r18, 523264
	or r12, r14, r12
	or r12, r13, r12
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r12, zero, .LBB0_610
# %bb.609:                              # %vector.body709
                                        #   in Loop: Header=BB0_604 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r25)
.LBB0_610:                              # %vector.body709
                                        #   in Loop: Header=BB0_604 Depth=3
	loads.w r12, 12(r17)
	loads.w r13, 12(r19)
	and r12, r12, r21
	and r13, r13, r21
	seteq r14, r12, r27
	seteq r24, r12, zero
	seteq r17, r13, zero
	seteq r19, r13, r27
	max.u r12, r12, r13
	setlt.u r12, r27, r12
	and r13, r14, r17
	and r14, r24, r19
	or r13, r13, r14
	or r12, r12, r13
	addli r13, zero, 64
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	bneq r12, zero, .LBB0_603
# %bb.611:                              # %vector.body709
                                        #   in Loop: Header=BB0_604 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r25)
	j .LBB0_603
.LBB0_612:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	mfence { sm }
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	addli r1, zero, 4
	bneq r26, r1, .LBB0_498
.LBB0_613:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3072(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3088(r30)                # 4-byte Folded Reload
	addli r26, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 512
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_615
.LBB0_614:                              # %middle.block700
                                        #   in Loop: Header=BB0_615 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 576
	.loc	1 823 9 is_stmt 1               # parallel-rne.mlir:823:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_640
.LBB0_615:                              # %vector.memcheck686
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_632 Depth 3
                                        #       Child Loop BB0_618 Depth 3
	.loc	1 824 11                        # parallel-rne.mlir:824:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_630
# %bb.616:                              # %scalar.ph692.preheader
                                        #   in Loop: Header=BB0_615 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_618
.LBB0_617:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	.loc	1 824 11                        # parallel-rne.mlir:824:11
	addli r9, r30, -3040
	.loc	1 846 13 is_stmt 1              # parallel-rne.mlir:846:13
	add.s r7, r10, r7
	.loc	1 824 11                        # parallel-rne.mlir:824:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 846 13                        # parallel-rne.mlir:846:13
	stores.w r8, 0(r7)
	.loc	1 824 11                        # parallel-rne.mlir:824:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_614
.LBB0_618:                              # %scalar.ph692
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_615 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	add.ul r[7:8], r[1:2], r[5:6]
	lui r17, 523264
	slli r7, r7, 2
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	add.s r8, r20, r7
	.loc	1 827 19                        # parallel-rne.mlir:827:19
	add.s r9, r11, r7
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	loads.w r8, 0(r8)
	.loc	1 827 19                        # parallel-rne.mlir:827:19
	loads.w r13, 0(r9)
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	beq r9, r27, .LBB0_620
# %bb.619:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r13, 0
.LBB0_620:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	add.s r12, r4, r7
	loads.w r12, 0(r12)
	and r15, r12, r21
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	bneq r15, zero, .LBB0_628
# %bb.621:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	bneq r9, zero, .LBB0_629
.LBB0_622:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	beq r15, r27, .LBB0_624
.LBB0_623:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
.LBB0_624:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	setlt.u r12, r27, r9
	lui r9, 523264
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	bneq r12, zero, .LBB0_626
# %bb.625:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_626:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	setlt.u r12, r27, r15
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	bneq r12, zero, .LBB0_617
# %bb.627:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_617
.LBB0_628:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	addli r17, r13, 0
	lui r13, 523264
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	beq r9, zero, .LBB0_622
.LBB0_629:                              # %scalar.ph692
                                        #   in Loop: Header=BB0_618 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	bneq r15, r27, .LBB0_623
	j .LBB0_624
.LBB0_630:                              # %vector.body694.preheader
                                        #   in Loop: Header=BB0_615 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_632
.LBB0_631:                              # %vector.body694
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 824 11 is_stmt 1              # parallel-rne.mlir:824:11
	addli.d r[1:2], r[1:2], 4
	zext_int2long r[12:13], r13
	.loc	1 846 13                        # parallel-rne.mlir:846:13
	add.s r9, r10, r9
	.loc	1 824 11                        # parallel-rne.mlir:824:11
	seteq.d r12, r[1:2], r[12:13]
	.loc	1 846 13                        # parallel-rne.mlir:846:13
	stores.w r15, 12(r9)
	stores.w r18, 8(r9)
	stores.w r7, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 824 11                        # parallel-rne.mlir:824:11
	bneq r12, zero, .LBB0_614
.LBB0_632:                              # %vector.body694
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_615 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r9, r7, 2
	add.s r17, r4, r9
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	add.s r19, r20, r9
	.loc	1 827 19                        # parallel-rne.mlir:827:19
	add.s r25, r11, r9
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	loads.w r7, 0(r17)
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	loads.w r8, 0(r19)
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	and r7, r7, r21
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	and r8, r8, r21
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	seteq r13, r7, r27
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	seteq r18, r7, zero
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	seteq r14, r8, zero
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	seteq r15, r8, r27
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	max.u r7, r7, r8
	setlt.u r7, r27, r7
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	and r8, r13, r14
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	and r13, r18, r15
	lui r15, 523264
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	or r8, r8, r13
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	or r7, r7, r8
	lui r8, 523264
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	bneq r7, zero, .LBB0_634
# %bb.633:                              # %vector.body694
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r25)
.LBB0_634:                              # %vector.body694
                                        #   in Loop: Header=BB0_632 Depth=3
	loads.w r7, 4(r17)
	loads.w r13, 4(r19)
	and r7, r7, r21
	and r13, r13, r21
	seteq r14, r7, r27
	seteq r28, r7, zero
	seteq r18, r13, zero
	seteq r24, r13, r27
	max.u r7, r7, r13
	setlt.u r7, r27, r7
	and r13, r14, r18
	and r14, r28, r24
	or r13, r13, r14
	or r13, r7, r13
	lui r7, 523264
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	bneq r13, zero, .LBB0_636
# %bb.635:                              # %vector.body694
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r25)
.LBB0_636:                              # %vector.body694
                                        #   in Loop: Header=BB0_632 Depth=3
	loads.w r13, 8(r17)
	loads.w r14, 8(r19)
	and r13, r13, r21
	and r14, r14, r21
	seteq r18, r13, r27
	seteq r12, r13, zero
	seteq r28, r14, r27
	seteq r24, r14, zero
	max.u r13, r13, r14
	setlt.u r13, r27, r13
	and r14, r18, r24
	and r12, r12, r28
	lui r18, 523264
	or r12, r14, r12
	or r12, r13, r12
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	bneq r12, zero, .LBB0_638
# %bb.637:                              # %vector.body694
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r25)
.LBB0_638:                              # %vector.body694
                                        #   in Loop: Header=BB0_632 Depth=3
	loads.w r12, 12(r17)
	loads.w r13, 12(r19)
	and r12, r12, r21
	and r13, r13, r21
	seteq r14, r12, r27
	seteq r24, r12, zero
	seteq r17, r13, zero
	seteq r19, r13, r27
	max.u r12, r12, r13
	setlt.u r12, r27, r12
	and r13, r14, r17
	and r14, r24, r19
	or r13, r13, r14
	or r12, r12, r13
	addli r13, zero, 64
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	bneq r12, zero, .LBB0_631
# %bb.639:                              # %vector.body694
                                        #   in Loop: Header=BB0_632 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r25)
	j .LBB0_631
.LBB0_640:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	mfence { sm }
	.loc	1 851 7                         # parallel-rne.mlir:851:7
	addli r1, zero, 5
	bneq r26, r1, .LBB0_499
.LBB0_641:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3072(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3088(r30)                # 4-byte Folded Reload
	addli r26, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 851 7                         # parallel-rne.mlir:851:7
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 640
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_643
.LBB0_642:                              # %middle.block685
                                        #   in Loop: Header=BB0_643 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 704
	.loc	1 859 9 is_stmt 1               # parallel-rne.mlir:859:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_668
.LBB0_643:                              # %vector.memcheck671
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_660 Depth 3
                                        #       Child Loop BB0_646 Depth 3
	.loc	1 860 11                        # parallel-rne.mlir:860:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_658
# %bb.644:                              # %scalar.ph677.preheader
                                        #   in Loop: Header=BB0_643 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_646
.LBB0_645:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 860 11                        # parallel-rne.mlir:860:11
	addli r9, r30, -3040
	.loc	1 882 13 is_stmt 1              # parallel-rne.mlir:882:13
	add.s r7, r10, r7
	.loc	1 860 11                        # parallel-rne.mlir:860:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 882 13                        # parallel-rne.mlir:882:13
	stores.w r8, 0(r7)
	.loc	1 860 11                        # parallel-rne.mlir:860:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_642
.LBB0_646:                              # %scalar.ph677
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_643 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	add.ul r[7:8], r[1:2], r[5:6]
	lui r17, 523264
	slli r7, r7, 2
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	add.s r8, r20, r7
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	add.s r9, r11, r7
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	loads.w r8, 0(r8)
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	loads.w r13, 0(r9)
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	beq r9, r27, .LBB0_648
# %bb.647:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r13, 0
.LBB0_648:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	add.s r12, r4, r7
	loads.w r12, 0(r12)
	and r15, r12, r21
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	bneq r15, zero, .LBB0_656
# %bb.649:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	bneq r9, zero, .LBB0_657
.LBB0_650:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	beq r15, r27, .LBB0_652
.LBB0_651:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
.LBB0_652:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	setlt.u r12, r27, r9
	lui r9, 523264
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	bneq r12, zero, .LBB0_654
# %bb.653:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_654:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	setlt.u r12, r27, r15
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	bneq r12, zero, .LBB0_645
# %bb.655:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_645
.LBB0_656:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	addli r17, r13, 0
	lui r13, 523264
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	beq r9, zero, .LBB0_650
.LBB0_657:                              # %scalar.ph677
                                        #   in Loop: Header=BB0_646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	bneq r15, r27, .LBB0_651
	j .LBB0_652
.LBB0_658:                              # %vector.body679.preheader
                                        #   in Loop: Header=BB0_643 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_660
.LBB0_659:                              # %vector.body679
                                        #   in Loop: Header=BB0_660 Depth=3
	.loc	1 860 11 is_stmt 1              # parallel-rne.mlir:860:11
	addli.d r[1:2], r[1:2], 4
	zext_int2long r[12:13], r13
	.loc	1 882 13                        # parallel-rne.mlir:882:13
	add.s r9, r10, r9
	.loc	1 860 11                        # parallel-rne.mlir:860:11
	seteq.d r12, r[1:2], r[12:13]
	.loc	1 882 13                        # parallel-rne.mlir:882:13
	stores.w r15, 12(r9)
	stores.w r18, 8(r9)
	stores.w r7, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 860 11                        # parallel-rne.mlir:860:11
	bneq r12, zero, .LBB0_642
.LBB0_660:                              # %vector.body679
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_643 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r9, r7, 2
	add.s r17, r4, r9
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	add.s r19, r20, r9
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	add.s r25, r11, r9
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	loads.w r7, 0(r17)
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	loads.w r8, 0(r19)
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	and r7, r7, r21
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	and r8, r8, r21
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	seteq r13, r7, r27
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	seteq r18, r7, zero
	.loc	1 870 19                        # parallel-rne.mlir:870:19
	seteq r14, r8, zero
	.loc	1 872 19                        # parallel-rne.mlir:872:19
	seteq r15, r8, r27
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	max.u r7, r7, r8
	setlt.u r7, r27, r7
	.loc	1 871 19                        # parallel-rne.mlir:871:19
	and r8, r13, r14
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	and r13, r18, r15
	lui r15, 523264
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	or r8, r8, r13
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	or r7, r7, r8
	lui r8, 523264
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	bneq r7, zero, .LBB0_662
# %bb.661:                              # %vector.body679
                                        #   in Loop: Header=BB0_660 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r25)
.LBB0_662:                              # %vector.body679
                                        #   in Loop: Header=BB0_660 Depth=3
	loads.w r7, 4(r17)
	loads.w r13, 4(r19)
	and r7, r7, r21
	and r13, r13, r21
	seteq r14, r7, r27
	seteq r28, r7, zero
	seteq r18, r13, zero
	seteq r24, r13, r27
	max.u r7, r7, r13
	setlt.u r7, r27, r7
	and r13, r14, r18
	and r14, r28, r24
	or r13, r13, r14
	or r13, r7, r13
	lui r7, 523264
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	bneq r13, zero, .LBB0_664
# %bb.663:                              # %vector.body679
                                        #   in Loop: Header=BB0_660 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r25)
.LBB0_664:                              # %vector.body679
                                        #   in Loop: Header=BB0_660 Depth=3
	loads.w r13, 8(r17)
	loads.w r14, 8(r19)
	and r13, r13, r21
	and r14, r14, r21
	seteq r18, r13, r27
	seteq r12, r13, zero
	seteq r28, r14, r27
	seteq r24, r14, zero
	max.u r13, r13, r14
	setlt.u r13, r27, r13
	and r14, r18, r24
	and r12, r12, r28
	lui r18, 523264
	or r12, r14, r12
	or r12, r13, r12
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	bneq r12, zero, .LBB0_666
# %bb.665:                              # %vector.body679
                                        #   in Loop: Header=BB0_660 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r25)
.LBB0_666:                              # %vector.body679
                                        #   in Loop: Header=BB0_660 Depth=3
	loads.w r12, 12(r17)
	loads.w r13, 12(r19)
	and r12, r12, r21
	and r13, r13, r21
	seteq r14, r12, r27
	seteq r24, r12, zero
	seteq r17, r13, zero
	seteq r19, r13, r27
	max.u r12, r12, r13
	setlt.u r12, r27, r12
	and r13, r14, r17
	and r14, r24, r19
	or r13, r13, r14
	or r12, r12, r13
	addli r13, zero, 64
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	bneq r12, zero, .LBB0_659
# %bb.667:                              # %vector.body679
                                        #   in Loop: Header=BB0_660 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r25)
	j .LBB0_659
.LBB0_668:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 851 7                         # parallel-rne.mlir:851:7
	mfence { sm }
	.loc	1 887 7                         # parallel-rne.mlir:887:7
	addli r1, zero, 6
	bneq r26, r1, .LBB0_500
.LBB0_669:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3072(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3088(r30)                # 4-byte Folded Reload
	addli r26, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 887 7                         # parallel-rne.mlir:887:7
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 768
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_671
.LBB0_670:                              # %middle.block670
                                        #   in Loop: Header=BB0_671 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 832
	.loc	1 895 9 is_stmt 1               # parallel-rne.mlir:895:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_696
.LBB0_671:                              # %vector.memcheck656
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_688 Depth 3
                                        #       Child Loop BB0_674 Depth 3
	.loc	1 896 11                        # parallel-rne.mlir:896:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_686
# %bb.672:                              # %scalar.ph662.preheader
                                        #   in Loop: Header=BB0_671 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_674
.LBB0_673:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 896 11                        # parallel-rne.mlir:896:11
	addli r9, r30, -3040
	.loc	1 918 13 is_stmt 1              # parallel-rne.mlir:918:13
	add.s r7, r10, r7
	.loc	1 896 11                        # parallel-rne.mlir:896:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 918 13                        # parallel-rne.mlir:918:13
	stores.w r8, 0(r7)
	.loc	1 896 11                        # parallel-rne.mlir:896:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_670
.LBB0_674:                              # %scalar.ph662
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_671 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 897 19                        # parallel-rne.mlir:897:19
	add.ul r[7:8], r[1:2], r[5:6]
	lui r17, 523264
	slli r7, r7, 2
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	add.s r8, r20, r7
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	add.s r9, r11, r7
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	loads.w r8, 0(r8)
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	loads.w r13, 0(r9)
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	beq r9, r27, .LBB0_676
# %bb.675:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r13, 0
.LBB0_676:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	add.s r12, r4, r7
	loads.w r12, 0(r12)
	and r15, r12, r21
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r15, zero, .LBB0_684
# %bb.677:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r9, zero, .LBB0_685
.LBB0_678:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	beq r15, r27, .LBB0_680
.LBB0_679:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
.LBB0_680:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	setlt.u r12, r27, r9
	lui r9, 523264
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r12, zero, .LBB0_682
# %bb.681:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_682:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	setlt.u r12, r27, r15
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r12, zero, .LBB0_673
# %bb.683:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_673
.LBB0_684:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	addli r17, r13, 0
	lui r13, 523264
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	beq r9, zero, .LBB0_678
.LBB0_685:                              # %scalar.ph662
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r15, r27, .LBB0_679
	j .LBB0_680
.LBB0_686:                              # %vector.body664.preheader
                                        #   in Loop: Header=BB0_671 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_688
.LBB0_687:                              # %vector.body664
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 896 11 is_stmt 1              # parallel-rne.mlir:896:11
	addli.d r[1:2], r[1:2], 4
	zext_int2long r[12:13], r13
	.loc	1 918 13                        # parallel-rne.mlir:918:13
	add.s r9, r10, r9
	.loc	1 896 11                        # parallel-rne.mlir:896:11
	seteq.d r12, r[1:2], r[12:13]
	.loc	1 918 13                        # parallel-rne.mlir:918:13
	stores.w r15, 12(r9)
	stores.w r18, 8(r9)
	stores.w r7, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 896 11                        # parallel-rne.mlir:896:11
	bneq r12, zero, .LBB0_670
.LBB0_688:                              # %vector.body664
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_671 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 897 19                        # parallel-rne.mlir:897:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r9, r7, 2
	add.s r17, r4, r9
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	add.s r19, r20, r9
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	add.s r25, r11, r9
	.loc	1 897 19                        # parallel-rne.mlir:897:19
	loads.w r7, 0(r17)
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	loads.w r8, 0(r19)
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	and r7, r7, r21
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	and r8, r8, r21
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	seteq r13, r7, r27
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	seteq r18, r7, zero
	.loc	1 906 19                        # parallel-rne.mlir:906:19
	seteq r14, r8, zero
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	seteq r15, r8, r27
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	max.u r7, r7, r8
	setlt.u r7, r27, r7
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	and r8, r13, r14
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	and r13, r18, r15
	lui r15, 523264
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	or r8, r8, r13
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	or r7, r7, r8
	lui r8, 523264
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r7, zero, .LBB0_690
# %bb.689:                              # %vector.body664
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r25)
.LBB0_690:                              # %vector.body664
                                        #   in Loop: Header=BB0_688 Depth=3
	loads.w r7, 4(r17)
	loads.w r13, 4(r19)
	and r7, r7, r21
	and r13, r13, r21
	seteq r14, r7, r27
	seteq r28, r7, zero
	seteq r18, r13, zero
	seteq r24, r13, r27
	max.u r7, r7, r13
	setlt.u r7, r27, r7
	and r13, r14, r18
	and r14, r28, r24
	or r13, r13, r14
	or r13, r7, r13
	lui r7, 523264
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r13, zero, .LBB0_692
# %bb.691:                              # %vector.body664
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r25)
.LBB0_692:                              # %vector.body664
                                        #   in Loop: Header=BB0_688 Depth=3
	loads.w r13, 8(r17)
	loads.w r14, 8(r19)
	and r13, r13, r21
	and r14, r14, r21
	seteq r18, r13, r27
	seteq r12, r13, zero
	seteq r28, r14, r27
	seteq r24, r14, zero
	max.u r13, r13, r14
	setlt.u r13, r27, r13
	and r14, r18, r24
	and r12, r12, r28
	lui r18, 523264
	or r12, r14, r12
	or r12, r13, r12
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r12, zero, .LBB0_694
# %bb.693:                              # %vector.body664
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r25)
.LBB0_694:                              # %vector.body664
                                        #   in Loop: Header=BB0_688 Depth=3
	loads.w r12, 12(r17)
	loads.w r13, 12(r19)
	and r12, r12, r21
	and r13, r13, r21
	seteq r14, r12, r27
	seteq r24, r12, zero
	seteq r17, r13, zero
	seteq r19, r13, r27
	max.u r12, r12, r13
	setlt.u r12, r27, r12
	and r13, r14, r17
	and r14, r24, r19
	or r13, r13, r14
	or r12, r12, r13
	addli r13, zero, 64
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	bneq r12, zero, .LBB0_687
# %bb.695:                              # %vector.body664
                                        #   in Loop: Header=BB0_688 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r25)
	j .LBB0_687
.LBB0_696:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 887 7                         # parallel-rne.mlir:887:7
	mfence { sm }
	addli r1, zero, 7
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	bneq r26, r1, .LBB0_725
.LBB0_697:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3072(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3088(r30)                # 4-byte Folded Reload
	addli r26, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 896
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_699
.LBB0_698:                              # %middle.block655
                                        #   in Loop: Header=BB0_699 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 960
	.loc	1 931 9 is_stmt 1               # parallel-rne.mlir:931:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_724
.LBB0_699:                              # %vector.memcheck641
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_716 Depth 3
                                        #       Child Loop BB0_702 Depth 3
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_714
# %bb.700:                              # %scalar.ph647.preheader
                                        #   in Loop: Header=BB0_699 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_702
.LBB0_701:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	addli r9, r30, -3040
	.loc	1 954 13 is_stmt 1              # parallel-rne.mlir:954:13
	add.s r7, r10, r7
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 954 13                        # parallel-rne.mlir:954:13
	stores.w r8, 0(r7)
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_698
.LBB0_702:                              # %scalar.ph647
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_699 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	add.ul r[7:8], r[1:2], r[5:6]
	lui r17, 523264
	slli r7, r7, 2
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	add.s r8, r20, r7
	.loc	1 935 19                        # parallel-rne.mlir:935:19
	add.s r9, r11, r7
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	loads.w r8, 0(r8)
	.loc	1 935 19                        # parallel-rne.mlir:935:19
	loads.w r13, 0(r9)
	.loc	1 938 19                        # parallel-rne.mlir:938:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	beq r9, r27, .LBB0_704
# %bb.703:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r13, 0
.LBB0_704:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	add.s r12, r4, r7
	loads.w r12, 0(r12)
	and r15, r12, r21
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	bneq r15, zero, .LBB0_712
# %bb.705:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	bneq r9, zero, .LBB0_713
.LBB0_706:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	beq r15, r27, .LBB0_708
.LBB0_707:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
.LBB0_708:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	setlt.u r12, r27, r9
	lui r9, 523264
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	bneq r12, zero, .LBB0_710
# %bb.709:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_710:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	setlt.u r12, r27, r15
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	bneq r12, zero, .LBB0_701
# %bb.711:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_701
.LBB0_712:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	addli r17, r13, 0
	lui r13, 523264
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	beq r9, zero, .LBB0_706
.LBB0_713:                              # %scalar.ph647
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	bneq r15, r27, .LBB0_707
	j .LBB0_708
.LBB0_714:                              # %vector.body649.preheader
                                        #   in Loop: Header=BB0_699 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_716
.LBB0_715:                              # %vector.body649
                                        #   in Loop: Header=BB0_716 Depth=3
	.loc	1 932 11 is_stmt 1              # parallel-rne.mlir:932:11
	addli.d r[1:2], r[1:2], 4
	zext_int2long r[12:13], r13
	.loc	1 954 13                        # parallel-rne.mlir:954:13
	add.s r9, r10, r9
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	seteq.d r12, r[1:2], r[12:13]
	.loc	1 954 13                        # parallel-rne.mlir:954:13
	stores.w r15, 12(r9)
	stores.w r18, 8(r9)
	stores.w r7, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 932 11                        # parallel-rne.mlir:932:11
	bneq r12, zero, .LBB0_698
.LBB0_716:                              # %vector.body649
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_699 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r9, r7, 2
	add.s r17, r4, r9
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	add.s r19, r20, r9
	.loc	1 935 19                        # parallel-rne.mlir:935:19
	add.s r25, r11, r9
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	loads.w r7, 0(r17)
	.loc	1 934 19                        # parallel-rne.mlir:934:19
	loads.w r8, 0(r19)
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	and r7, r7, r21
	.loc	1 938 19                        # parallel-rne.mlir:938:19
	and r8, r8, r21
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	seteq r13, r7, r27
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	seteq r18, r7, zero
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	seteq r14, r8, zero
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	seteq r15, r8, r27
	.loc	1 950 19                        # parallel-rne.mlir:950:19
	max.u r7, r7, r8
	setlt.u r7, r27, r7
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	and r8, r13, r14
	.loc	1 946 19                        # parallel-rne.mlir:946:19
	and r13, r18, r15
	lui r15, 523264
	.loc	1 947 19                        # parallel-rne.mlir:947:19
	or r8, r8, r13
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	or r7, r7, r8
	lui r8, 523264
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	bneq r7, zero, .LBB0_718
# %bb.717:                              # %vector.body649
                                        #   in Loop: Header=BB0_716 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r25)
.LBB0_718:                              # %vector.body649
                                        #   in Loop: Header=BB0_716 Depth=3
	loads.w r7, 4(r17)
	loads.w r13, 4(r19)
	and r7, r7, r21
	and r13, r13, r21
	seteq r14, r7, r27
	seteq r28, r7, zero
	seteq r18, r13, zero
	seteq r24, r13, r27
	max.u r7, r7, r13
	setlt.u r7, r27, r7
	and r13, r14, r18
	and r14, r28, r24
	or r13, r13, r14
	or r13, r7, r13
	lui r7, 523264
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	bneq r13, zero, .LBB0_720
# %bb.719:                              # %vector.body649
                                        #   in Loop: Header=BB0_716 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r25)
.LBB0_720:                              # %vector.body649
                                        #   in Loop: Header=BB0_716 Depth=3
	loads.w r13, 8(r17)
	loads.w r14, 8(r19)
	and r13, r13, r21
	and r14, r14, r21
	seteq r18, r13, r27
	seteq r12, r13, zero
	seteq r28, r14, r27
	seteq r24, r14, zero
	max.u r13, r13, r14
	setlt.u r13, r27, r13
	and r14, r18, r24
	and r12, r12, r28
	lui r18, 523264
	or r12, r14, r12
	or r12, r13, r12
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	bneq r12, zero, .LBB0_722
# %bb.721:                              # %vector.body649
                                        #   in Loop: Header=BB0_716 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 8(r25)
.LBB0_722:                              # %vector.body649
                                        #   in Loop: Header=BB0_716 Depth=3
	loads.w r12, 12(r17)
	loads.w r13, 12(r19)
	and r12, r12, r21
	and r13, r13, r21
	seteq r14, r12, r27
	seteq r24, r12, zero
	seteq r17, r13, zero
	seteq r19, r13, r27
	max.u r12, r12, r13
	setlt.u r12, r27, r12
	and r13, r14, r17
	and r14, r24, r19
	or r13, r13, r14
	or r12, r12, r13
	addli r13, zero, 64
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	bneq r12, zero, .LBB0_715
# %bb.723:                              # %vector.body649
                                        #   in Loop: Header=BB0_716 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r25)
	j .LBB0_715
.LBB0_724:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	mfence { sm }
.LBB0_725:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 959 7                         # parallel-rne.mlir:959:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 960 7                         # parallel-rne.mlir:960:7
	addli r1, zero, 3
	.loc	1 959 7                         # parallel-rne.mlir:959:7
	sync_core
	.loc	1 960 7                         # parallel-rne.mlir:960:7
	bneq r26, r1, .LBB0_727
# %bb.726:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 15
	addli r4, zero, 5
	addli r28, zero, 64
	xsignal r1, 0
	.loc	1 961 7                         # parallel-rne.mlir:961:7
	addli r1, zero, 28
	xsignal r1, 0
	.loc	1 962 7                         # parallel-rne.mlir:962:7
	addli r1, zero, 34
	xsignal r1, 0
	.loc	1 963 7                         # parallel-rne.mlir:963:7
	addli r1, zero, 36
	xsignal r1, 0
	.loc	1 965 13                        # parallel-rne.mlir:965:13
	loadli.w r1,  -72(r30)
	mod.s r2, r1, r4
	addli r1, r1, 1
	storeli.w r1, -72(r30)
	loadli.w r1,  -3164(r30)                # 4-byte Folded Reload
	slli r2, r2, 12
	add.s r11, r2, r1
	.loc	1 969 7                         # parallel-rne.mlir:969:7
	addli r1, zero, 37
	xwait r1, 0
	.loc	1 970 7                         # parallel-rne.mlir:970:7
	addli r1, zero, 41
	xwait r1, 0
	j .LBB0_730
.LBB0_727:                              # %.critedge19
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 965 13                        # parallel-rne.mlir:965:13
	loadli.w r1,  -72(r30)
	addli r4, zero, 5
	loadli.w r5,  -3164(r30)                # 4-byte Folded Reload
	addli r28, zero, 64
	mod.s r2, r1, r4
	addli r1, r1, 1
	storeli.w r1, -72(r30)
	slli r2, r2, 12
	add.s r11, r2, r5
	.loc	1 966 7                         # parallel-rne.mlir:966:7
	bneq r26, r4, .LBB0_729
# %bb.728:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 15
	addli r2, zero, 2
	lui r4, 260096
	xwait r1, 0
	addli r1, zero, 28
	xwait r1, 0
	addli r1, zero, 38
	xwait r1, 0
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -3180(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r4, r1, zero, 0
	addli r4, zero, 511
	addli r1, zero, 16
	ew_cfg zero, r4, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, r2, 19
	dsmadd r11, r20, r10, 0
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r1, 0
	.loc	1 967 7                         # parallel-rne.mlir:967:7
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -3184(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 37
	ew_cfg zero, r4, zero, 2
	addli r4, zero, 5
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	hp_ssmul r11, r11, r11, 0
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r1, 0
	.loc	1 966 7                         # parallel-rne.mlir:966:7
	j .LBB0_730
.LBB0_729:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 5
.LBB0_730:                              # %.critedge23
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -3092(r30)                # 4-byte Folded Reload
	lui r2, 350
	.loc	1 972 7 is_stmt 1               # parallel-rne.mlir:972:7
	xfence
	.loc	1 973 7                         # parallel-rne.mlir:973:7
	mfence { lm, sm, gm }
	ori r2, r2, 3328
	mod.s r1, r1, r4
	slli r1, r1, 12
	add.s r4, r1, r2
	.loc	1 974 7                         # parallel-rne.mlir:974:7
	addli r1, zero, 255
	csr_set csr5, r1
	sub.s r1, r4, r11
	storeli.w r1, -3072(r30)                # 4-byte Folded Spill
	sync_core
	.loc	1 975 7                         # parallel-rne.mlir:975:7
	beq r26, zero, .LBB0_738
# %bb.731:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 992 7                         # parallel-rne.mlir:992:7
	addli r1, zero, 1
	beq r26, r1, .LBB0_746
.LBB0_732:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1009 7                        # parallel-rne.mlir:1009:7
	addli r1, zero, 2
	beq r26, r1, .LBB0_752
.LBB0_733:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	addli r1, zero, 3
	beq r26, r1, .LBB0_758
.LBB0_734:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	addli r1, zero, 4
	beq r26, r1, .LBB0_764
.LBB0_735:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1060 7                        # parallel-rne.mlir:1060:7
	addli r1, zero, 5
	beq r26, r1, .LBB0_770
.LBB0_736:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1077 7                        # parallel-rne.mlir:1077:7
	addli r1, zero, 6
	beq r26, r1, .LBB0_776
.LBB0_737:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	.loc	1 1094 7 is_stmt 1              # parallel-rne.mlir:1094:7
	beq r26, r1, .LBB0_782
	j .LBB0_788
.LBB0_738:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -3072(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	addli r5, zero, 1
	zext_int2long r[6:7], zero
	setlt.u r1, r2, r1
	.loc	1 975 7 is_stmt 1               # parallel-rne.mlir:975:7
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_740
.LBB0_739:                              # %middle.block640
                                        #   in Loop: Header=BB0_740 Depth=2
	.loc	1 983 9                         # parallel-rne.mlir:983:9
	andi r1, r5, 1
	zext_int2long r[6:7], r28
	addli r5, zero, 0
	beq r1, zero, .LBB0_745
.LBB0_740:                              # %vector.memcheck631
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_744 Depth 3
                                        #       Child Loop BB0_742 Depth 3
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_743
# %bb.741:                              # %scalar.ph633.preheader
                                        #   in Loop: Header=BB0_740 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
.LBB0_742:                              # %scalar.ph633
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_740 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 985 19 is_stmt 1              # parallel-rne.mlir:985:19
	add.ul r[1:2], r[8:9], r[6:7]
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	addli r14, r30, -3040
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	slli r1, r1, 2
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	load.d r[12:13], 0(r14)                 # 8-byte Folded Reload
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	add.s r2, r11, r1
	.loc	1 987 13                        # parallel-rne.mlir:987:13
	add.s r1, r4, r1
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	setlt.ul r12, r[8:9], r[12:13]
	addli.d r[8:9], r[8:9], 1
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	loads.w r2, 0(r2)
	.loc	1 987 13                        # parallel-rne.mlir:987:13
	stores.w r2, 0(r1)
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	bneq r12, zero, .LBB0_742
	j .LBB0_739
.LBB0_743:                              # %vector.body635.preheader
                                        #   in Loop: Header=BB0_740 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
.LBB0_744:                              # %vector.body635
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_740 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 985 19 is_stmt 1              # parallel-rne.mlir:985:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	addli.d r[8:9], r[8:9], 8
	zext_int2long r[1:2], r28
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	slli r12, r12, 2
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	seteq.d r1, r[8:9], r[1:2]
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	add.s r13, r11, r12
	.loc	1 987 13                        # parallel-rne.mlir:987:13
	add.s r12, r4, r12
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	loads.w r14, 12(r13)
	loads.w r15, 8(r13)
	loads.w r17, 4(r13)
	loads.w r18, 0(r13)
	loads.w r19, 28(r13)
	loads.w r24, 24(r13)
	loads.w r25, 20(r13)
	loads.w r13, 16(r13)
	.loc	1 987 13                        # parallel-rne.mlir:987:13
	stores.w r14, 12(r12)
	stores.w r15, 8(r12)
	stores.w r17, 4(r12)
	stores.w r18, 0(r12)
	stores.w r19, 28(r12)
	stores.w r24, 24(r12)
	stores.w r25, 20(r12)
	stores.w r13, 16(r12)
	.loc	1 984 11                        # parallel-rne.mlir:984:11
	beq r1, zero, .LBB0_744
	j .LBB0_739
.LBB0_745:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 975 7                         # parallel-rne.mlir:975:7
	mfence { sm }
	.loc	1 992 7                         # parallel-rne.mlir:992:7
	addli r1, zero, 1
	bneq r26, r1, .LBB0_732
.LBB0_746:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -3072(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 992 7                         # parallel-rne.mlir:992:7
	xfence
	addli r5, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 128
	zext_int2long r[6:7], r1
	j .LBB0_748
.LBB0_747:                              # %middle.block630
                                        #   in Loop: Header=BB0_748 Depth=2
	.loc	1 1000 9 is_stmt 1              # parallel-rne.mlir:1000:9
	andi r1, r5, 1
	addli r5, zero, 192
	zext_int2long r[6:7], r5
	addli r5, zero, 0
	beq r1, zero, .LBB0_751
.LBB0_748:                              # %vector.memcheck621
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_750 Depth 3
                                        #       Child Loop BB0_749 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[8:9], zero
	.loc	1 1001 11 is_stmt 1             # parallel-rne.mlir:1001:11
	beq r2, zero, .LBB0_750
.LBB0_749:                              # %scalar.ph623
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_748 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1001 11                       # parallel-rne.mlir:1001:11
	addli r15, r30, -3040
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	slli r1, r12, 2
	.loc	1 1001 11                       # parallel-rne.mlir:1001:11
	load.d r[13:14], 0(r15)                 # 8-byte Folded Reload
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	add.s r12, r11, r1
	.loc	1 1004 13                       # parallel-rne.mlir:1004:13
	add.s r1, r4, r1
	.loc	1 1001 11                       # parallel-rne.mlir:1001:11
	setlt.ul r13, r[8:9], r[13:14]
	addli.d r[8:9], r[8:9], 1
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	loads.w r12, 0(r12)
	.loc	1 1004 13                       # parallel-rne.mlir:1004:13
	stores.w r12, 0(r1)
	.loc	1 1001 11                       # parallel-rne.mlir:1001:11
	bneq r13, zero, .LBB0_749
	j .LBB0_747
.LBB0_750:                              # %vector.body625
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_748 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1001 11                       # parallel-rne.mlir:1001:11
	addli.d r[8:9], r[8:9], 8
	zext_int2long r[25:26], r28
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	slli r1, r12, 2
	add.s r12, r11, r1
	.loc	1 1004 13                       # parallel-rne.mlir:1004:13
	add.s r1, r4, r1
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	loads.w r13, 12(r12)
	loads.w r14, 8(r12)
	loads.w r15, 4(r12)
	loads.w r17, 0(r12)
	loads.w r18, 28(r12)
	loads.w r19, 24(r12)
	loads.w r24, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 1004 13                       # parallel-rne.mlir:1004:13
	stores.w r13, 12(r1)
	.loc	1 1001 11                       # parallel-rne.mlir:1001:11
	seteq.d r13, r[8:9], r[25:26]
	.loc	1 1004 13                       # parallel-rne.mlir:1004:13
	stores.w r14, 8(r1)
	stores.w r15, 4(r1)
	stores.w r17, 0(r1)
	stores.w r18, 28(r1)
	stores.w r19, 24(r1)
	stores.w r24, 20(r1)
	stores.w r12, 16(r1)
	.loc	1 1001 11                       # parallel-rne.mlir:1001:11
	beq r13, zero, .LBB0_750
	j .LBB0_747
.LBB0_751:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 992 7                         # parallel-rne.mlir:992:7
	mfence { sm }
	.loc	1 1009 7                        # parallel-rne.mlir:1009:7
	addli r1, zero, 2
	bneq r26, r1, .LBB0_733
.LBB0_752:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -3072(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1009 7                        # parallel-rne.mlir:1009:7
	xfence
	addli r5, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 256
	zext_int2long r[6:7], r1
	j .LBB0_754
.LBB0_753:                              # %middle.block620
                                        #   in Loop: Header=BB0_754 Depth=2
	.loc	1 1017 9 is_stmt 1              # parallel-rne.mlir:1017:9
	andi r1, r5, 1
	addli r5, zero, 320
	zext_int2long r[6:7], r5
	addli r5, zero, 0
	beq r1, zero, .LBB0_757
.LBB0_754:                              # %vector.memcheck611
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_756 Depth 3
                                        #       Child Loop BB0_755 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[8:9], zero
	.loc	1 1018 11 is_stmt 1             # parallel-rne.mlir:1018:11
	beq r2, zero, .LBB0_756
.LBB0_755:                              # %scalar.ph613
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_754 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1018 11                       # parallel-rne.mlir:1018:11
	addli r15, r30, -3040
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	slli r1, r12, 2
	.loc	1 1018 11                       # parallel-rne.mlir:1018:11
	load.d r[13:14], 0(r15)                 # 8-byte Folded Reload
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	add.s r12, r11, r1
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	add.s r1, r4, r1
	.loc	1 1018 11                       # parallel-rne.mlir:1018:11
	setlt.ul r13, r[8:9], r[13:14]
	addli.d r[8:9], r[8:9], 1
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	loads.w r12, 0(r12)
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	stores.w r12, 0(r1)
	.loc	1 1018 11                       # parallel-rne.mlir:1018:11
	bneq r13, zero, .LBB0_755
	j .LBB0_753
.LBB0_756:                              # %vector.body615
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_754 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1018 11                       # parallel-rne.mlir:1018:11
	addli.d r[8:9], r[8:9], 8
	zext_int2long r[25:26], r28
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	slli r1, r12, 2
	add.s r12, r11, r1
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	add.s r1, r4, r1
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	loads.w r13, 12(r12)
	loads.w r14, 8(r12)
	loads.w r15, 4(r12)
	loads.w r17, 0(r12)
	loads.w r18, 28(r12)
	loads.w r19, 24(r12)
	loads.w r24, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	stores.w r13, 12(r1)
	.loc	1 1018 11                       # parallel-rne.mlir:1018:11
	seteq.d r13, r[8:9], r[25:26]
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	stores.w r14, 8(r1)
	stores.w r15, 4(r1)
	stores.w r17, 0(r1)
	stores.w r18, 28(r1)
	stores.w r19, 24(r1)
	stores.w r24, 20(r1)
	stores.w r12, 16(r1)
	.loc	1 1018 11                       # parallel-rne.mlir:1018:11
	beq r13, zero, .LBB0_756
	j .LBB0_753
.LBB0_757:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1009 7                        # parallel-rne.mlir:1009:7
	mfence { sm }
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	addli r1, zero, 3
	bneq r26, r1, .LBB0_734
.LBB0_758:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -3072(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	xfence
	addli r5, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 384
	zext_int2long r[6:7], r1
	j .LBB0_760
.LBB0_759:                              # %middle.block610
                                        #   in Loop: Header=BB0_760 Depth=2
	.loc	1 1034 9 is_stmt 1              # parallel-rne.mlir:1034:9
	andi r1, r5, 1
	addli r5, zero, 448
	zext_int2long r[6:7], r5
	addli r5, zero, 0
	beq r1, zero, .LBB0_763
.LBB0_760:                              # %vector.memcheck601
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_762 Depth 3
                                        #       Child Loop BB0_761 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[8:9], zero
	.loc	1 1035 11 is_stmt 1             # parallel-rne.mlir:1035:11
	beq r2, zero, .LBB0_762
.LBB0_761:                              # %scalar.ph603
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_760 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1036 19                       # parallel-rne.mlir:1036:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1035 11                       # parallel-rne.mlir:1035:11
	addli r15, r30, -3040
	.loc	1 1036 19                       # parallel-rne.mlir:1036:19
	slli r1, r12, 2
	.loc	1 1035 11                       # parallel-rne.mlir:1035:11
	load.d r[13:14], 0(r15)                 # 8-byte Folded Reload
	.loc	1 1036 19                       # parallel-rne.mlir:1036:19
	add.s r12, r11, r1
	.loc	1 1038 13                       # parallel-rne.mlir:1038:13
	add.s r1, r4, r1
	.loc	1 1035 11                       # parallel-rne.mlir:1035:11
	setlt.ul r13, r[8:9], r[13:14]
	addli.d r[8:9], r[8:9], 1
	.loc	1 1036 19                       # parallel-rne.mlir:1036:19
	loads.w r12, 0(r12)
	.loc	1 1038 13                       # parallel-rne.mlir:1038:13
	stores.w r12, 0(r1)
	.loc	1 1035 11                       # parallel-rne.mlir:1035:11
	bneq r13, zero, .LBB0_761
	j .LBB0_759
.LBB0_762:                              # %vector.body605
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_760 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1036 19                       # parallel-rne.mlir:1036:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1035 11                       # parallel-rne.mlir:1035:11
	addli.d r[8:9], r[8:9], 8
	zext_int2long r[25:26], r28
	.loc	1 1036 19                       # parallel-rne.mlir:1036:19
	slli r1, r12, 2
	add.s r12, r11, r1
	.loc	1 1038 13                       # parallel-rne.mlir:1038:13
	add.s r1, r4, r1
	.loc	1 1036 19                       # parallel-rne.mlir:1036:19
	loads.w r13, 12(r12)
	loads.w r14, 8(r12)
	loads.w r15, 4(r12)
	loads.w r17, 0(r12)
	loads.w r18, 28(r12)
	loads.w r19, 24(r12)
	loads.w r24, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 1038 13                       # parallel-rne.mlir:1038:13
	stores.w r13, 12(r1)
	.loc	1 1035 11                       # parallel-rne.mlir:1035:11
	seteq.d r13, r[8:9], r[25:26]
	.loc	1 1038 13                       # parallel-rne.mlir:1038:13
	stores.w r14, 8(r1)
	stores.w r15, 4(r1)
	stores.w r17, 0(r1)
	stores.w r18, 28(r1)
	stores.w r19, 24(r1)
	stores.w r24, 20(r1)
	stores.w r12, 16(r1)
	.loc	1 1035 11                       # parallel-rne.mlir:1035:11
	beq r13, zero, .LBB0_762
	j .LBB0_759
.LBB0_763:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	mfence { sm }
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	addli r1, zero, 4
	bneq r26, r1, .LBB0_735
.LBB0_764:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -3072(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	xfence
	addli r5, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 512
	zext_int2long r[6:7], r1
	j .LBB0_766
.LBB0_765:                              # %middle.block600
                                        #   in Loop: Header=BB0_766 Depth=2
	.loc	1 1051 9 is_stmt 1              # parallel-rne.mlir:1051:9
	andi r1, r5, 1
	addli r5, zero, 576
	zext_int2long r[6:7], r5
	addli r5, zero, 0
	beq r1, zero, .LBB0_769
.LBB0_766:                              # %vector.memcheck591
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_768 Depth 3
                                        #       Child Loop BB0_767 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[8:9], zero
	.loc	1 1052 11 is_stmt 1             # parallel-rne.mlir:1052:11
	beq r2, zero, .LBB0_768
.LBB0_767:                              # %scalar.ph593
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_766 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	addli r15, r30, -3040
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	slli r1, r12, 2
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	load.d r[13:14], 0(r15)                 # 8-byte Folded Reload
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	add.s r12, r11, r1
	.loc	1 1055 13                       # parallel-rne.mlir:1055:13
	add.s r1, r4, r1
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	setlt.ul r13, r[8:9], r[13:14]
	addli.d r[8:9], r[8:9], 1
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	loads.w r12, 0(r12)
	.loc	1 1055 13                       # parallel-rne.mlir:1055:13
	stores.w r12, 0(r1)
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	bneq r13, zero, .LBB0_767
	j .LBB0_765
.LBB0_768:                              # %vector.body595
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_766 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	addli.d r[8:9], r[8:9], 8
	zext_int2long r[25:26], r28
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	slli r1, r12, 2
	add.s r12, r11, r1
	.loc	1 1055 13                       # parallel-rne.mlir:1055:13
	add.s r1, r4, r1
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	loads.w r13, 12(r12)
	loads.w r14, 8(r12)
	loads.w r15, 4(r12)
	loads.w r17, 0(r12)
	loads.w r18, 28(r12)
	loads.w r19, 24(r12)
	loads.w r24, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 1055 13                       # parallel-rne.mlir:1055:13
	stores.w r13, 12(r1)
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	seteq.d r13, r[8:9], r[25:26]
	.loc	1 1055 13                       # parallel-rne.mlir:1055:13
	stores.w r14, 8(r1)
	stores.w r15, 4(r1)
	stores.w r17, 0(r1)
	stores.w r18, 28(r1)
	stores.w r19, 24(r1)
	stores.w r24, 20(r1)
	stores.w r12, 16(r1)
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	beq r13, zero, .LBB0_768
	j .LBB0_765
.LBB0_769:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	mfence { sm }
	.loc	1 1060 7                        # parallel-rne.mlir:1060:7
	addli r1, zero, 5
	bneq r26, r1, .LBB0_736
.LBB0_770:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -3072(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1060 7                        # parallel-rne.mlir:1060:7
	xfence
	addli r5, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 640
	zext_int2long r[6:7], r1
	j .LBB0_772
.LBB0_771:                              # %middle.block590
                                        #   in Loop: Header=BB0_772 Depth=2
	.loc	1 1068 9 is_stmt 1              # parallel-rne.mlir:1068:9
	andi r1, r5, 1
	addli r5, zero, 704
	zext_int2long r[6:7], r5
	addli r5, zero, 0
	beq r1, zero, .LBB0_775
.LBB0_772:                              # %vector.memcheck581
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_774 Depth 3
                                        #       Child Loop BB0_773 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[8:9], zero
	.loc	1 1069 11 is_stmt 1             # parallel-rne.mlir:1069:11
	beq r2, zero, .LBB0_774
.LBB0_773:                              # %scalar.ph583
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_772 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1070 19                       # parallel-rne.mlir:1070:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1069 11                       # parallel-rne.mlir:1069:11
	addli r15, r30, -3040
	.loc	1 1070 19                       # parallel-rne.mlir:1070:19
	slli r1, r12, 2
	.loc	1 1069 11                       # parallel-rne.mlir:1069:11
	load.d r[13:14], 0(r15)                 # 8-byte Folded Reload
	.loc	1 1070 19                       # parallel-rne.mlir:1070:19
	add.s r12, r11, r1
	.loc	1 1072 13                       # parallel-rne.mlir:1072:13
	add.s r1, r4, r1
	.loc	1 1069 11                       # parallel-rne.mlir:1069:11
	setlt.ul r13, r[8:9], r[13:14]
	addli.d r[8:9], r[8:9], 1
	.loc	1 1070 19                       # parallel-rne.mlir:1070:19
	loads.w r12, 0(r12)
	.loc	1 1072 13                       # parallel-rne.mlir:1072:13
	stores.w r12, 0(r1)
	.loc	1 1069 11                       # parallel-rne.mlir:1069:11
	bneq r13, zero, .LBB0_773
	j .LBB0_771
.LBB0_774:                              # %vector.body585
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_772 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1070 19                       # parallel-rne.mlir:1070:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1069 11                       # parallel-rne.mlir:1069:11
	addli.d r[8:9], r[8:9], 8
	zext_int2long r[25:26], r28
	.loc	1 1070 19                       # parallel-rne.mlir:1070:19
	slli r1, r12, 2
	add.s r12, r11, r1
	.loc	1 1072 13                       # parallel-rne.mlir:1072:13
	add.s r1, r4, r1
	.loc	1 1070 19                       # parallel-rne.mlir:1070:19
	loads.w r13, 12(r12)
	loads.w r14, 8(r12)
	loads.w r15, 4(r12)
	loads.w r17, 0(r12)
	loads.w r18, 28(r12)
	loads.w r19, 24(r12)
	loads.w r24, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 1072 13                       # parallel-rne.mlir:1072:13
	stores.w r13, 12(r1)
	.loc	1 1069 11                       # parallel-rne.mlir:1069:11
	seteq.d r13, r[8:9], r[25:26]
	.loc	1 1072 13                       # parallel-rne.mlir:1072:13
	stores.w r14, 8(r1)
	stores.w r15, 4(r1)
	stores.w r17, 0(r1)
	stores.w r18, 28(r1)
	stores.w r19, 24(r1)
	stores.w r24, 20(r1)
	stores.w r12, 16(r1)
	.loc	1 1069 11                       # parallel-rne.mlir:1069:11
	beq r13, zero, .LBB0_774
	j .LBB0_771
.LBB0_775:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1060 7                        # parallel-rne.mlir:1060:7
	mfence { sm }
	.loc	1 1077 7                        # parallel-rne.mlir:1077:7
	addli r1, zero, 6
	bneq r26, r1, .LBB0_737
.LBB0_776:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -3072(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1077 7                        # parallel-rne.mlir:1077:7
	xfence
	addli r5, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r2, r1
	addli r1, zero, 768
	zext_int2long r[6:7], r1
	j .LBB0_778
.LBB0_777:                              # %middle.block580
                                        #   in Loop: Header=BB0_778 Depth=2
	.loc	1 1085 9 is_stmt 1              # parallel-rne.mlir:1085:9
	andi r1, r5, 1
	addli r5, zero, 832
	zext_int2long r[6:7], r5
	addli r5, zero, 0
	beq r1, zero, .LBB0_781
.LBB0_778:                              # %vector.memcheck571
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_780 Depth 3
                                        #       Child Loop BB0_779 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[8:9], zero
	.loc	1 1086 11 is_stmt 1             # parallel-rne.mlir:1086:11
	beq r2, zero, .LBB0_780
.LBB0_779:                              # %scalar.ph573
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_778 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1086 11                       # parallel-rne.mlir:1086:11
	addli r15, r30, -3040
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	slli r1, r12, 2
	.loc	1 1086 11                       # parallel-rne.mlir:1086:11
	load.d r[13:14], 0(r15)                 # 8-byte Folded Reload
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	add.s r12, r11, r1
	.loc	1 1089 13                       # parallel-rne.mlir:1089:13
	add.s r1, r4, r1
	.loc	1 1086 11                       # parallel-rne.mlir:1086:11
	setlt.ul r13, r[8:9], r[13:14]
	addli.d r[8:9], r[8:9], 1
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	loads.w r12, 0(r12)
	.loc	1 1089 13                       # parallel-rne.mlir:1089:13
	stores.w r12, 0(r1)
	.loc	1 1086 11                       # parallel-rne.mlir:1086:11
	bneq r13, zero, .LBB0_779
	j .LBB0_777
.LBB0_780:                              # %vector.body575
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_778 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	add.ul r[12:13], r[8:9], r[6:7]
	.loc	1 1086 11                       # parallel-rne.mlir:1086:11
	addli.d r[8:9], r[8:9], 8
	zext_int2long r[25:26], r28
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	slli r1, r12, 2
	add.s r12, r11, r1
	.loc	1 1089 13                       # parallel-rne.mlir:1089:13
	add.s r1, r4, r1
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	loads.w r13, 12(r12)
	loads.w r14, 8(r12)
	loads.w r15, 4(r12)
	loads.w r17, 0(r12)
	loads.w r18, 28(r12)
	loads.w r19, 24(r12)
	loads.w r24, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 1089 13                       # parallel-rne.mlir:1089:13
	stores.w r13, 12(r1)
	.loc	1 1086 11                       # parallel-rne.mlir:1086:11
	seteq.d r13, r[8:9], r[25:26]
	.loc	1 1089 13                       # parallel-rne.mlir:1089:13
	stores.w r14, 8(r1)
	stores.w r15, 4(r1)
	stores.w r17, 0(r1)
	stores.w r18, 28(r1)
	stores.w r19, 24(r1)
	stores.w r24, 20(r1)
	stores.w r12, 16(r1)
	.loc	1 1086 11                       # parallel-rne.mlir:1086:11
	beq r13, zero, .LBB0_780
	j .LBB0_777
.LBB0_781:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1077 7                        # parallel-rne.mlir:1077:7
	mfence { sm }
	addli r1, zero, 7
	.loc	1 1094 7                        # parallel-rne.mlir:1094:7
	bneq r26, r1, .LBB0_788
.LBB0_782:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -3072(r30)                # 4-byte Folded Reload
	addli r1, zero, 32
	addli r5, zero, 896
	.loc	1 1094 7                        # parallel-rne.mlir:1094:7
	xfence
	addli r28, zero, 64
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r5
	setlt.u r1, r2, r1
	addli r2, zero, 1
	j .LBB0_784
.LBB0_783:                              # %middle.block570
                                        #   in Loop: Header=BB0_784 Depth=2
	.loc	1 1102 9 is_stmt 1              # parallel-rne.mlir:1102:9
	andi r7, r2, 1
	addli r2, zero, 960
	zext_int2long r[5:6], r2
	addli r2, zero, 0
	beq r7, zero, .LBB0_787
.LBB0_784:                              # %vector.memcheck561
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_786 Depth 3
                                        #       Child Loop BB0_785 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[7:8], zero
	.loc	1 1103 11 is_stmt 1             # parallel-rne.mlir:1103:11
	beq r1, zero, .LBB0_786
.LBB0_785:                              # %scalar.ph563
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_784 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	add.ul r[12:13], r[7:8], r[5:6]
	.loc	1 1103 11                       # parallel-rne.mlir:1103:11
	addli r15, r30, -3040
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	slli r9, r12, 2
	.loc	1 1103 11                       # parallel-rne.mlir:1103:11
	load.d r[13:14], 0(r15)                 # 8-byte Folded Reload
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	add.s r12, r11, r9
	.loc	1 1106 13                       # parallel-rne.mlir:1106:13
	add.s r9, r4, r9
	.loc	1 1103 11                       # parallel-rne.mlir:1103:11
	setlt.ul r13, r[7:8], r[13:14]
	addli.d r[7:8], r[7:8], 1
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	loads.w r12, 0(r12)
	.loc	1 1106 13                       # parallel-rne.mlir:1106:13
	stores.w r12, 0(r9)
	.loc	1 1103 11                       # parallel-rne.mlir:1103:11
	bneq r13, zero, .LBB0_785
	j .LBB0_783
.LBB0_786:                              # %vector.body565
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_784 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	add.ul r[12:13], r[7:8], r[5:6]
	.loc	1 1103 11                       # parallel-rne.mlir:1103:11
	addli.d r[7:8], r[7:8], 8
	zext_int2long r[25:26], r28
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	slli r9, r12, 2
	add.s r12, r11, r9
	.loc	1 1106 13                       # parallel-rne.mlir:1106:13
	add.s r9, r4, r9
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	loads.w r13, 12(r12)
	loads.w r14, 8(r12)
	loads.w r15, 4(r12)
	loads.w r17, 0(r12)
	loads.w r18, 28(r12)
	loads.w r19, 24(r12)
	loads.w r24, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 1106 13                       # parallel-rne.mlir:1106:13
	stores.w r13, 12(r9)
	.loc	1 1103 11                       # parallel-rne.mlir:1103:11
	seteq.d r13, r[7:8], r[25:26]
	.loc	1 1106 13                       # parallel-rne.mlir:1106:13
	stores.w r14, 8(r9)
	stores.w r15, 4(r9)
	stores.w r17, 0(r9)
	stores.w r18, 28(r9)
	stores.w r19, 24(r9)
	stores.w r24, 20(r9)
	stores.w r12, 16(r9)
	.loc	1 1103 11                       # parallel-rne.mlir:1103:11
	beq r13, zero, .LBB0_786
	j .LBB0_783
.LBB0_787:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1094 7                        # parallel-rne.mlir:1094:7
	mfence { sm }
.LBB0_788:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1111 7                        # parallel-rne.mlir:1111:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1112 7                        # parallel-rne.mlir:1112:7
	addli r1, zero, 3
	.loc	1 1111 7                        # parallel-rne.mlir:1111:7
	sync_core
	.loc	1 1112 7                        # parallel-rne.mlir:1112:7
	bneq r26, r1, .LBB0_790
# %bb.789:                              # %.critedge25
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 38
	addli r2, zero, 39
	xsignal r1, 0
	.loc	1 1115 7                        # parallel-rne.mlir:1115:7
	addli r1, zero, 16
	.loc	1 1113 7                        # parallel-rne.mlir:1113:7
	xsignal r2, 0
	.loc	1 1115 7                        # parallel-rne.mlir:1115:7
	xwait r1, 0
	.loc	1 1116 7                        # parallel-rne.mlir:1116:7
	xwait r2, 0
.LBB0_790:                              # %.critedge27
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1118 7                        # parallel-rne.mlir:1118:7
	xfence
	.loc	1 1120 7                        # parallel-rne.mlir:1120:7
	addli r1, zero, 255
	addli r28, zero, 64
	.loc	1 1119 7                        # parallel-rne.mlir:1119:7
	mfence { lm, sm, gm }
	.loc	1 1120 7                        # parallel-rne.mlir:1120:7
	csr_set csr5, r1
	sync_core
	.loc	1 1121 7                        # parallel-rne.mlir:1121:7
	beq r26, zero, .LBB0_798
# %bb.791:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1143 7                        # parallel-rne.mlir:1143:7
	addli r1, zero, 1
	beq r26, r1, .LBB0_819
.LBB0_792:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1165 7                        # parallel-rne.mlir:1165:7
	addli r1, zero, 2
	beq r26, r1, .LBB0_840
.LBB0_793:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1187 7                        # parallel-rne.mlir:1187:7
	addli r1, zero, 3
	beq r26, r1, .LBB0_861
.LBB0_794:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1209 7                        # parallel-rne.mlir:1209:7
	addli r1, zero, 4
	beq r26, r1, .LBB0_882
.LBB0_795:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1231 7                        # parallel-rne.mlir:1231:7
	addli r1, zero, 5
	beq r26, r1, .LBB0_903
.LBB0_796:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1253 7                        # parallel-rne.mlir:1253:7
	addli r1, zero, 6
	beq r26, r1, .LBB0_924
.LBB0_797:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	.loc	1 1275 7 is_stmt 1              # parallel-rne.mlir:1275:7
	beq r26, r1, .LBB0_945
	j .LBB0_966
.LBB0_798:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1121 7                        # parallel-rne.mlir:1121:7
	xfence
	zext_int2long r[13:14], zero
	addli r18, zero, 1
	addli r1, r30, -3064
	mfence { lm, sm, gm }
	store.d r[13:14], 0(r1)                 # 8-byte Folded Spill
	j .LBB0_800
.LBB0_799:                              # %middle.block560
                                        #   in Loop: Header=BB0_800 Depth=2
	.loc	1 1129 9                        # parallel-rne.mlir:1129:9
	andi r1, r18, 1
	addli.d r[13:14], r[6:7], 0
	addli r18, zero, 0
	beq r1, zero, .LBB0_818
.LBB0_800:                              # %vector.ph554
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_802 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -3064
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_802
.LBB0_801:                              # %vector.body555
                                        #   in Loop: Header=BB0_802 Depth=3
	.loc	1 1138 13 is_stmt 1             # parallel-rne.mlir:1138:13
	add.s r8, r10, r8
	.loc	1 1130 11                       # parallel-rne.mlir:1130:11
	addli.d r[11:12], r[11:12], 8
	zext_int2long r[6:7], r28
	.loc	1 1138 13                       # parallel-rne.mlir:1138:13
	stores.w r5, 12(r8)
	.loc	1 1130 11                       # parallel-rne.mlir:1130:11
	setneq.d r5, r[11:12], r[6:7]
	.loc	1 1138 13                       # parallel-rne.mlir:1138:13
	stores.w r2, 8(r8)
	stores.w r1, 4(r8)
	stores.w r15, 0(r8)
	stores.w r25, 28(r8)
	stores.w r19, 24(r8)
	stores.w r17, 20(r8)
	stores.w r9, 16(r8)
	.loc	1 1130 11                       # parallel-rne.mlir:1130:11
	beq r5, zero, .LBB0_799
.LBB0_802:                              # %vector.body555
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_800 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1131 19                       # parallel-rne.mlir:1131:19
	add.ul r[1:2], r[11:12], r[13:14]
	slli r8, r1, 2
	add.s r6, r4, r8
	loads.w r15, 0(r6)
	loads.w r5, 12(r6)
	loads.w r2, 8(r6)
	loads.w r1, 4(r6)
	loads.w r25, 28(r6)
	loads.w r19, 24(r6)
	loads.w r17, 20(r6)
	loads.w r9, 16(r6)
	.loc	1 1134 19                       # parallel-rne.mlir:1134:19
	and r6, r15, r21
	.loc	1 1135 19                       # parallel-rne.mlir:1135:19
	setlt.u r6, r16, r6
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	beq r6, zero, .LBB0_804
# %bb.803:                              #   in Loop: Header=BB0_802 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 524288
	and r6, r15, r6
	or r15, r6, r16
.LBB0_804:                              # %vector.body555
                                        #   in Loop: Header=BB0_802 Depth=3
	and r6, r1, r21
	setlt.u r6, r16, r6
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	beq r6, zero, .LBB0_806
# %bb.805:                              #   in Loop: Header=BB0_802 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 524288
	and r1, r1, r6
	or r1, r1, r16
.LBB0_806:                              # %vector.body555
                                        #   in Loop: Header=BB0_802 Depth=3
	and r6, r2, r21
	setlt.u r6, r16, r6
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	beq r6, zero, .LBB0_808
# %bb.807:                              #   in Loop: Header=BB0_802 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 524288
	and r2, r2, r6
	or r2, r2, r16
.LBB0_808:                              # %vector.body555
                                        #   in Loop: Header=BB0_802 Depth=3
	and r6, r5, r21
	setlt.u r6, r16, r6
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	beq r6, zero, .LBB0_810
# %bb.809:                              #   in Loop: Header=BB0_802 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 524288
	and r5, r5, r6
	or r5, r5, r16
.LBB0_810:                              # %vector.body555
                                        #   in Loop: Header=BB0_802 Depth=3
	and r6, r9, r21
	setlt.u r6, r16, r6
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	beq r6, zero, .LBB0_812
# %bb.811:                              #   in Loop: Header=BB0_802 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 524288
	and r6, r9, r6
	or r9, r6, r16
.LBB0_812:                              # %vector.body555
                                        #   in Loop: Header=BB0_802 Depth=3
	and r6, r17, r21
	setlt.u r6, r16, r6
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	beq r6, zero, .LBB0_814
# %bb.813:                              #   in Loop: Header=BB0_802 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 524288
	and r6, r17, r6
	or r17, r6, r16
.LBB0_814:                              # %vector.body555
                                        #   in Loop: Header=BB0_802 Depth=3
	and r6, r19, r21
	setlt.u r6, r16, r6
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	beq r6, zero, .LBB0_816
# %bb.815:                              #   in Loop: Header=BB0_802 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 524288
	and r6, r19, r6
	or r19, r6, r16
.LBB0_816:                              # %vector.body555
                                        #   in Loop: Header=BB0_802 Depth=3
	and r6, r25, r21
	setlt.u r6, r16, r6
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	beq r6, zero, .LBB0_801
# %bb.817:                              #   in Loop: Header=BB0_802 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 524288
	and r6, r25, r6
	or r25, r6, r16
	j .LBB0_801
.LBB0_818:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1121 7 is_stmt 1              # parallel-rne.mlir:1121:7
	mfence { sm }
	.loc	1 1143 7                        # parallel-rne.mlir:1143:7
	addli r1, zero, 1
	bneq r26, r1, .LBB0_792
.LBB0_819:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 128
	.loc	1 1143 7                        # parallel-rne.mlir:1143:7
	xfence
	addli r18, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_821
.LBB0_820:                              # %middle.block550
                                        #   in Loop: Header=BB0_821 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 192
	.loc	1 1151 9 is_stmt 1              # parallel-rne.mlir:1151:9
	andi r1, r18, 1
	addli r18, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_839
.LBB0_821:                              # %vector.ph544
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_823 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	j .LBB0_823
.LBB0_822:                              # %vector.body545
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 1160 13 is_stmt 1             # parallel-rne.mlir:1160:13
	add.s r8, r10, r8
	.loc	1 1152 11                       # parallel-rne.mlir:1152:11
	addli.d r[11:12], r[11:12], 8
	zext_int2long r[13:14], r28
	.loc	1 1160 13                       # parallel-rne.mlir:1160:13
	stores.w r1, 12(r8)
	.loc	1 1152 11                       # parallel-rne.mlir:1152:11
	setneq.d r1, r[11:12], r[13:14]
	.loc	1 1160 13                       # parallel-rne.mlir:1160:13
	stores.w r25, 8(r8)
	stores.w r19, 4(r8)
	stores.w r2, 0(r8)
	stores.w r17, 28(r8)
	stores.w r15, 24(r8)
	stores.w r9, 20(r8)
	stores.w r7, 16(r8)
	.loc	1 1152 11                       # parallel-rne.mlir:1152:11
	beq r1, zero, .LBB0_820
.LBB0_823:                              # %vector.body545
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_821 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1153 19                       # parallel-rne.mlir:1153:19
	add.ul r[1:2], r[11:12], r[5:6]
	slli r8, r1, 2
	add.s r7, r4, r8
	loads.w r2, 0(r7)
	loads.w r1, 12(r7)
	loads.w r25, 8(r7)
	loads.w r19, 4(r7)
	loads.w r17, 28(r7)
	loads.w r15, 24(r7)
	loads.w r9, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1156 19                       # parallel-rne.mlir:1156:19
	and r13, r2, r21
	.loc	1 1157 19                       # parallel-rne.mlir:1157:19
	setlt.u r13, r16, r13
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	beq r13, zero, .LBB0_825
# %bb.824:                              #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r2, r2, r13
	or r2, r2, r16
.LBB0_825:                              # %vector.body545
                                        #   in Loop: Header=BB0_823 Depth=3
	and r13, r19, r21
	setlt.u r13, r16, r13
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	beq r13, zero, .LBB0_827
# %bb.826:                              #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r19, r13
	or r19, r13, r16
.LBB0_827:                              # %vector.body545
                                        #   in Loop: Header=BB0_823 Depth=3
	and r13, r25, r21
	setlt.u r13, r16, r13
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	beq r13, zero, .LBB0_829
# %bb.828:                              #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r25, r13
	or r25, r13, r16
.LBB0_829:                              # %vector.body545
                                        #   in Loop: Header=BB0_823 Depth=3
	and r13, r1, r21
	setlt.u r13, r16, r13
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	beq r13, zero, .LBB0_831
# %bb.830:                              #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r1, r1, r13
	or r1, r1, r16
.LBB0_831:                              # %vector.body545
                                        #   in Loop: Header=BB0_823 Depth=3
	and r13, r7, r21
	setlt.u r13, r16, r13
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	beq r13, zero, .LBB0_833
# %bb.832:                              #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r7, r7, r13
	or r7, r7, r16
.LBB0_833:                              # %vector.body545
                                        #   in Loop: Header=BB0_823 Depth=3
	and r13, r9, r21
	setlt.u r13, r16, r13
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	beq r13, zero, .LBB0_835
# %bb.834:                              #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r9, r9, r13
	or r9, r9, r16
.LBB0_835:                              # %vector.body545
                                        #   in Loop: Header=BB0_823 Depth=3
	and r13, r15, r21
	setlt.u r13, r16, r13
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	beq r13, zero, .LBB0_837
# %bb.836:                              #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r15, r13
	or r15, r13, r16
.LBB0_837:                              # %vector.body545
                                        #   in Loop: Header=BB0_823 Depth=3
	and r13, r17, r21
	setlt.u r13, r16, r13
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	beq r13, zero, .LBB0_822
# %bb.838:                              #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r17, r13
	or r17, r13, r16
	j .LBB0_822
.LBB0_839:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1143 7 is_stmt 1              # parallel-rne.mlir:1143:7
	mfence { sm }
	.loc	1 1165 7                        # parallel-rne.mlir:1165:7
	addli r1, zero, 2
	bneq r26, r1, .LBB0_793
.LBB0_840:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 1165 7                        # parallel-rne.mlir:1165:7
	xfence
	addli r18, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_842
.LBB0_841:                              # %middle.block540
                                        #   in Loop: Header=BB0_842 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 320
	.loc	1 1173 9 is_stmt 1              # parallel-rne.mlir:1173:9
	andi r1, r18, 1
	addli r18, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_860
.LBB0_842:                              # %vector.ph534
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_844 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	j .LBB0_844
.LBB0_843:                              # %vector.body535
                                        #   in Loop: Header=BB0_844 Depth=3
	.loc	1 1182 13 is_stmt 1             # parallel-rne.mlir:1182:13
	add.s r8, r10, r8
	.loc	1 1174 11                       # parallel-rne.mlir:1174:11
	addli.d r[11:12], r[11:12], 8
	zext_int2long r[13:14], r28
	.loc	1 1182 13                       # parallel-rne.mlir:1182:13
	stores.w r1, 12(r8)
	.loc	1 1174 11                       # parallel-rne.mlir:1174:11
	setneq.d r1, r[11:12], r[13:14]
	.loc	1 1182 13                       # parallel-rne.mlir:1182:13
	stores.w r25, 8(r8)
	stores.w r19, 4(r8)
	stores.w r2, 0(r8)
	stores.w r17, 28(r8)
	stores.w r15, 24(r8)
	stores.w r9, 20(r8)
	stores.w r7, 16(r8)
	.loc	1 1174 11                       # parallel-rne.mlir:1174:11
	beq r1, zero, .LBB0_841
.LBB0_844:                              # %vector.body535
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_842 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1175 19                       # parallel-rne.mlir:1175:19
	add.ul r[1:2], r[11:12], r[5:6]
	slli r8, r1, 2
	add.s r7, r4, r8
	loads.w r2, 0(r7)
	loads.w r1, 12(r7)
	loads.w r25, 8(r7)
	loads.w r19, 4(r7)
	loads.w r17, 28(r7)
	loads.w r15, 24(r7)
	loads.w r9, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1178 19                       # parallel-rne.mlir:1178:19
	and r13, r2, r21
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	setlt.u r13, r16, r13
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	beq r13, zero, .LBB0_846
# %bb.845:                              #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r2, r2, r13
	or r2, r2, r16
.LBB0_846:                              # %vector.body535
                                        #   in Loop: Header=BB0_844 Depth=3
	and r13, r19, r21
	setlt.u r13, r16, r13
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	beq r13, zero, .LBB0_848
# %bb.847:                              #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r19, r13
	or r19, r13, r16
.LBB0_848:                              # %vector.body535
                                        #   in Loop: Header=BB0_844 Depth=3
	and r13, r25, r21
	setlt.u r13, r16, r13
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	beq r13, zero, .LBB0_850
# %bb.849:                              #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r25, r13
	or r25, r13, r16
.LBB0_850:                              # %vector.body535
                                        #   in Loop: Header=BB0_844 Depth=3
	and r13, r1, r21
	setlt.u r13, r16, r13
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	beq r13, zero, .LBB0_852
# %bb.851:                              #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r1, r1, r13
	or r1, r1, r16
.LBB0_852:                              # %vector.body535
                                        #   in Loop: Header=BB0_844 Depth=3
	and r13, r7, r21
	setlt.u r13, r16, r13
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	beq r13, zero, .LBB0_854
# %bb.853:                              #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r7, r7, r13
	or r7, r7, r16
.LBB0_854:                              # %vector.body535
                                        #   in Loop: Header=BB0_844 Depth=3
	and r13, r9, r21
	setlt.u r13, r16, r13
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	beq r13, zero, .LBB0_856
# %bb.855:                              #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r9, r9, r13
	or r9, r9, r16
.LBB0_856:                              # %vector.body535
                                        #   in Loop: Header=BB0_844 Depth=3
	and r13, r15, r21
	setlt.u r13, r16, r13
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	beq r13, zero, .LBB0_858
# %bb.857:                              #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r15, r13
	or r15, r13, r16
.LBB0_858:                              # %vector.body535
                                        #   in Loop: Header=BB0_844 Depth=3
	and r13, r17, r21
	setlt.u r13, r16, r13
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	beq r13, zero, .LBB0_843
# %bb.859:                              #   in Loop: Header=BB0_844 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r17, r13
	or r17, r13, r16
	j .LBB0_843
.LBB0_860:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1165 7 is_stmt 1              # parallel-rne.mlir:1165:7
	mfence { sm }
	.loc	1 1187 7                        # parallel-rne.mlir:1187:7
	addli r1, zero, 3
	bneq r26, r1, .LBB0_794
.LBB0_861:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 384
	.loc	1 1187 7                        # parallel-rne.mlir:1187:7
	xfence
	addli r18, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_863
.LBB0_862:                              # %middle.block530
                                        #   in Loop: Header=BB0_863 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 448
	.loc	1 1195 9 is_stmt 1              # parallel-rne.mlir:1195:9
	andi r1, r18, 1
	addli r18, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_881
.LBB0_863:                              # %vector.ph524
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_865 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	j .LBB0_865
.LBB0_864:                              # %vector.body525
                                        #   in Loop: Header=BB0_865 Depth=3
	.loc	1 1204 13 is_stmt 1             # parallel-rne.mlir:1204:13
	add.s r8, r10, r8
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	addli.d r[11:12], r[11:12], 8
	zext_int2long r[13:14], r28
	.loc	1 1204 13                       # parallel-rne.mlir:1204:13
	stores.w r1, 12(r8)
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	setneq.d r1, r[11:12], r[13:14]
	.loc	1 1204 13                       # parallel-rne.mlir:1204:13
	stores.w r25, 8(r8)
	stores.w r19, 4(r8)
	stores.w r2, 0(r8)
	stores.w r17, 28(r8)
	stores.w r15, 24(r8)
	stores.w r9, 20(r8)
	stores.w r7, 16(r8)
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	beq r1, zero, .LBB0_862
.LBB0_865:                              # %vector.body525
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_863 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.ul r[1:2], r[11:12], r[5:6]
	slli r8, r1, 2
	add.s r7, r4, r8
	loads.w r2, 0(r7)
	loads.w r1, 12(r7)
	loads.w r25, 8(r7)
	loads.w r19, 4(r7)
	loads.w r17, 28(r7)
	loads.w r15, 24(r7)
	loads.w r9, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1200 19                       # parallel-rne.mlir:1200:19
	and r13, r2, r21
	.loc	1 1201 19                       # parallel-rne.mlir:1201:19
	setlt.u r13, r16, r13
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	beq r13, zero, .LBB0_867
# %bb.866:                              #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r2, r2, r13
	or r2, r2, r16
.LBB0_867:                              # %vector.body525
                                        #   in Loop: Header=BB0_865 Depth=3
	and r13, r19, r21
	setlt.u r13, r16, r13
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	beq r13, zero, .LBB0_869
# %bb.868:                              #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r19, r13
	or r19, r13, r16
.LBB0_869:                              # %vector.body525
                                        #   in Loop: Header=BB0_865 Depth=3
	and r13, r25, r21
	setlt.u r13, r16, r13
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	beq r13, zero, .LBB0_871
# %bb.870:                              #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r25, r13
	or r25, r13, r16
.LBB0_871:                              # %vector.body525
                                        #   in Loop: Header=BB0_865 Depth=3
	and r13, r1, r21
	setlt.u r13, r16, r13
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	beq r13, zero, .LBB0_873
# %bb.872:                              #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r1, r1, r13
	or r1, r1, r16
.LBB0_873:                              # %vector.body525
                                        #   in Loop: Header=BB0_865 Depth=3
	and r13, r7, r21
	setlt.u r13, r16, r13
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	beq r13, zero, .LBB0_875
# %bb.874:                              #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r7, r7, r13
	or r7, r7, r16
.LBB0_875:                              # %vector.body525
                                        #   in Loop: Header=BB0_865 Depth=3
	and r13, r9, r21
	setlt.u r13, r16, r13
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	beq r13, zero, .LBB0_877
# %bb.876:                              #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r9, r9, r13
	or r9, r9, r16
.LBB0_877:                              # %vector.body525
                                        #   in Loop: Header=BB0_865 Depth=3
	and r13, r15, r21
	setlt.u r13, r16, r13
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	beq r13, zero, .LBB0_879
# %bb.878:                              #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r15, r13
	or r15, r13, r16
.LBB0_879:                              # %vector.body525
                                        #   in Loop: Header=BB0_865 Depth=3
	and r13, r17, r21
	setlt.u r13, r16, r13
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	beq r13, zero, .LBB0_864
# %bb.880:                              #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r17, r13
	or r17, r13, r16
	j .LBB0_864
.LBB0_881:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1187 7 is_stmt 1              # parallel-rne.mlir:1187:7
	mfence { sm }
	.loc	1 1209 7                        # parallel-rne.mlir:1209:7
	addli r1, zero, 4
	bneq r26, r1, .LBB0_795
.LBB0_882:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 512
	.loc	1 1209 7                        # parallel-rne.mlir:1209:7
	xfence
	addli r18, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_884
.LBB0_883:                              # %middle.block520
                                        #   in Loop: Header=BB0_884 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 576
	.loc	1 1217 9 is_stmt 1              # parallel-rne.mlir:1217:9
	andi r1, r18, 1
	addli r18, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_902
.LBB0_884:                              # %vector.ph514
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_886 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	j .LBB0_886
.LBB0_885:                              # %vector.body515
                                        #   in Loop: Header=BB0_886 Depth=3
	.loc	1 1226 13 is_stmt 1             # parallel-rne.mlir:1226:13
	add.s r8, r10, r8
	.loc	1 1218 11                       # parallel-rne.mlir:1218:11
	addli.d r[11:12], r[11:12], 8
	zext_int2long r[13:14], r28
	.loc	1 1226 13                       # parallel-rne.mlir:1226:13
	stores.w r1, 12(r8)
	.loc	1 1218 11                       # parallel-rne.mlir:1218:11
	setneq.d r1, r[11:12], r[13:14]
	.loc	1 1226 13                       # parallel-rne.mlir:1226:13
	stores.w r25, 8(r8)
	stores.w r19, 4(r8)
	stores.w r2, 0(r8)
	stores.w r17, 28(r8)
	stores.w r15, 24(r8)
	stores.w r9, 20(r8)
	stores.w r7, 16(r8)
	.loc	1 1218 11                       # parallel-rne.mlir:1218:11
	beq r1, zero, .LBB0_883
.LBB0_886:                              # %vector.body515
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_884 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1219 19                       # parallel-rne.mlir:1219:19
	add.ul r[1:2], r[11:12], r[5:6]
	slli r8, r1, 2
	add.s r7, r4, r8
	loads.w r2, 0(r7)
	loads.w r1, 12(r7)
	loads.w r25, 8(r7)
	loads.w r19, 4(r7)
	loads.w r17, 28(r7)
	loads.w r15, 24(r7)
	loads.w r9, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	and r13, r2, r21
	.loc	1 1223 19                       # parallel-rne.mlir:1223:19
	setlt.u r13, r16, r13
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	beq r13, zero, .LBB0_888
# %bb.887:                              #   in Loop: Header=BB0_886 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r2, r2, r13
	or r2, r2, r16
.LBB0_888:                              # %vector.body515
                                        #   in Loop: Header=BB0_886 Depth=3
	and r13, r19, r21
	setlt.u r13, r16, r13
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	beq r13, zero, .LBB0_890
# %bb.889:                              #   in Loop: Header=BB0_886 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r19, r13
	or r19, r13, r16
.LBB0_890:                              # %vector.body515
                                        #   in Loop: Header=BB0_886 Depth=3
	and r13, r25, r21
	setlt.u r13, r16, r13
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	beq r13, zero, .LBB0_892
# %bb.891:                              #   in Loop: Header=BB0_886 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r25, r13
	or r25, r13, r16
.LBB0_892:                              # %vector.body515
                                        #   in Loop: Header=BB0_886 Depth=3
	and r13, r1, r21
	setlt.u r13, r16, r13
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	beq r13, zero, .LBB0_894
# %bb.893:                              #   in Loop: Header=BB0_886 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r1, r1, r13
	or r1, r1, r16
.LBB0_894:                              # %vector.body515
                                        #   in Loop: Header=BB0_886 Depth=3
	and r13, r7, r21
	setlt.u r13, r16, r13
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	beq r13, zero, .LBB0_896
# %bb.895:                              #   in Loop: Header=BB0_886 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r7, r7, r13
	or r7, r7, r16
.LBB0_896:                              # %vector.body515
                                        #   in Loop: Header=BB0_886 Depth=3
	and r13, r9, r21
	setlt.u r13, r16, r13
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	beq r13, zero, .LBB0_898
# %bb.897:                              #   in Loop: Header=BB0_886 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r9, r9, r13
	or r9, r9, r16
.LBB0_898:                              # %vector.body515
                                        #   in Loop: Header=BB0_886 Depth=3
	and r13, r15, r21
	setlt.u r13, r16, r13
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	beq r13, zero, .LBB0_900
# %bb.899:                              #   in Loop: Header=BB0_886 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r15, r13
	or r15, r13, r16
.LBB0_900:                              # %vector.body515
                                        #   in Loop: Header=BB0_886 Depth=3
	and r13, r17, r21
	setlt.u r13, r16, r13
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	beq r13, zero, .LBB0_885
# %bb.901:                              #   in Loop: Header=BB0_886 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r17, r13
	or r17, r13, r16
	j .LBB0_885
.LBB0_902:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1209 7 is_stmt 1              # parallel-rne.mlir:1209:7
	mfence { sm }
	.loc	1 1231 7                        # parallel-rne.mlir:1231:7
	addli r1, zero, 5
	bneq r26, r1, .LBB0_796
.LBB0_903:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 640
	.loc	1 1231 7                        # parallel-rne.mlir:1231:7
	xfence
	addli r18, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_905
.LBB0_904:                              # %middle.block510
                                        #   in Loop: Header=BB0_905 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 704
	.loc	1 1239 9 is_stmt 1              # parallel-rne.mlir:1239:9
	andi r1, r18, 1
	addli r18, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_923
.LBB0_905:                              # %vector.ph504
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_907 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	j .LBB0_907
.LBB0_906:                              # %vector.body505
                                        #   in Loop: Header=BB0_907 Depth=3
	.loc	1 1248 13 is_stmt 1             # parallel-rne.mlir:1248:13
	add.s r8, r10, r8
	.loc	1 1240 11                       # parallel-rne.mlir:1240:11
	addli.d r[11:12], r[11:12], 8
	zext_int2long r[13:14], r28
	.loc	1 1248 13                       # parallel-rne.mlir:1248:13
	stores.w r1, 12(r8)
	.loc	1 1240 11                       # parallel-rne.mlir:1240:11
	setneq.d r1, r[11:12], r[13:14]
	.loc	1 1248 13                       # parallel-rne.mlir:1248:13
	stores.w r25, 8(r8)
	stores.w r19, 4(r8)
	stores.w r2, 0(r8)
	stores.w r17, 28(r8)
	stores.w r15, 24(r8)
	stores.w r9, 20(r8)
	stores.w r7, 16(r8)
	.loc	1 1240 11                       # parallel-rne.mlir:1240:11
	beq r1, zero, .LBB0_904
.LBB0_907:                              # %vector.body505
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_905 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1241 19                       # parallel-rne.mlir:1241:19
	add.ul r[1:2], r[11:12], r[5:6]
	slli r8, r1, 2
	add.s r7, r4, r8
	loads.w r2, 0(r7)
	loads.w r1, 12(r7)
	loads.w r25, 8(r7)
	loads.w r19, 4(r7)
	loads.w r17, 28(r7)
	loads.w r15, 24(r7)
	loads.w r9, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1244 19                       # parallel-rne.mlir:1244:19
	and r13, r2, r21
	.loc	1 1245 19                       # parallel-rne.mlir:1245:19
	setlt.u r13, r16, r13
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	beq r13, zero, .LBB0_909
# %bb.908:                              #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r2, r2, r13
	or r2, r2, r16
.LBB0_909:                              # %vector.body505
                                        #   in Loop: Header=BB0_907 Depth=3
	and r13, r19, r21
	setlt.u r13, r16, r13
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	beq r13, zero, .LBB0_911
# %bb.910:                              #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r19, r13
	or r19, r13, r16
.LBB0_911:                              # %vector.body505
                                        #   in Loop: Header=BB0_907 Depth=3
	and r13, r25, r21
	setlt.u r13, r16, r13
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	beq r13, zero, .LBB0_913
# %bb.912:                              #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r25, r13
	or r25, r13, r16
.LBB0_913:                              # %vector.body505
                                        #   in Loop: Header=BB0_907 Depth=3
	and r13, r1, r21
	setlt.u r13, r16, r13
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	beq r13, zero, .LBB0_915
# %bb.914:                              #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r1, r1, r13
	or r1, r1, r16
.LBB0_915:                              # %vector.body505
                                        #   in Loop: Header=BB0_907 Depth=3
	and r13, r7, r21
	setlt.u r13, r16, r13
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	beq r13, zero, .LBB0_917
# %bb.916:                              #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r7, r7, r13
	or r7, r7, r16
.LBB0_917:                              # %vector.body505
                                        #   in Loop: Header=BB0_907 Depth=3
	and r13, r9, r21
	setlt.u r13, r16, r13
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	beq r13, zero, .LBB0_919
# %bb.918:                              #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r9, r9, r13
	or r9, r9, r16
.LBB0_919:                              # %vector.body505
                                        #   in Loop: Header=BB0_907 Depth=3
	and r13, r15, r21
	setlt.u r13, r16, r13
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	beq r13, zero, .LBB0_921
# %bb.920:                              #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r15, r13
	or r15, r13, r16
.LBB0_921:                              # %vector.body505
                                        #   in Loop: Header=BB0_907 Depth=3
	and r13, r17, r21
	setlt.u r13, r16, r13
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	beq r13, zero, .LBB0_906
# %bb.922:                              #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r17, r13
	or r17, r13, r16
	j .LBB0_906
.LBB0_923:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1231 7 is_stmt 1              # parallel-rne.mlir:1231:7
	mfence { sm }
	.loc	1 1253 7                        # parallel-rne.mlir:1253:7
	addli r1, zero, 6
	bneq r26, r1, .LBB0_797
.LBB0_924:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 768
	.loc	1 1253 7                        # parallel-rne.mlir:1253:7
	xfence
	addli r18, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_926
.LBB0_925:                              # %middle.block500
                                        #   in Loop: Header=BB0_926 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 832
	.loc	1 1261 9 is_stmt 1              # parallel-rne.mlir:1261:9
	andi r1, r18, 1
	addli r18, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_944
.LBB0_926:                              # %vector.ph494
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_928 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	j .LBB0_928
.LBB0_927:                              # %vector.body495
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 1270 13 is_stmt 1             # parallel-rne.mlir:1270:13
	add.s r8, r10, r8
	.loc	1 1262 11                       # parallel-rne.mlir:1262:11
	addli.d r[11:12], r[11:12], 8
	zext_int2long r[13:14], r28
	.loc	1 1270 13                       # parallel-rne.mlir:1270:13
	stores.w r1, 12(r8)
	.loc	1 1262 11                       # parallel-rne.mlir:1262:11
	setneq.d r1, r[11:12], r[13:14]
	.loc	1 1270 13                       # parallel-rne.mlir:1270:13
	stores.w r25, 8(r8)
	stores.w r19, 4(r8)
	stores.w r2, 0(r8)
	stores.w r17, 28(r8)
	stores.w r15, 24(r8)
	stores.w r9, 20(r8)
	stores.w r7, 16(r8)
	.loc	1 1262 11                       # parallel-rne.mlir:1262:11
	beq r1, zero, .LBB0_925
.LBB0_928:                              # %vector.body495
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_926 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1263 19                       # parallel-rne.mlir:1263:19
	add.ul r[1:2], r[11:12], r[5:6]
	slli r8, r1, 2
	add.s r7, r4, r8
	loads.w r2, 0(r7)
	loads.w r1, 12(r7)
	loads.w r25, 8(r7)
	loads.w r19, 4(r7)
	loads.w r17, 28(r7)
	loads.w r15, 24(r7)
	loads.w r9, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	and r13, r2, r21
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	setlt.u r13, r16, r13
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	beq r13, zero, .LBB0_930
# %bb.929:                              #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r2, r2, r13
	or r2, r2, r16
.LBB0_930:                              # %vector.body495
                                        #   in Loop: Header=BB0_928 Depth=3
	and r13, r19, r21
	setlt.u r13, r16, r13
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	beq r13, zero, .LBB0_932
# %bb.931:                              #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r19, r13
	or r19, r13, r16
.LBB0_932:                              # %vector.body495
                                        #   in Loop: Header=BB0_928 Depth=3
	and r13, r25, r21
	setlt.u r13, r16, r13
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	beq r13, zero, .LBB0_934
# %bb.933:                              #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r25, r13
	or r25, r13, r16
.LBB0_934:                              # %vector.body495
                                        #   in Loop: Header=BB0_928 Depth=3
	and r13, r1, r21
	setlt.u r13, r16, r13
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	beq r13, zero, .LBB0_936
# %bb.935:                              #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r1, r1, r13
	or r1, r1, r16
.LBB0_936:                              # %vector.body495
                                        #   in Loop: Header=BB0_928 Depth=3
	and r13, r7, r21
	setlt.u r13, r16, r13
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	beq r13, zero, .LBB0_938
# %bb.937:                              #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r7, r7, r13
	or r7, r7, r16
.LBB0_938:                              # %vector.body495
                                        #   in Loop: Header=BB0_928 Depth=3
	and r13, r9, r21
	setlt.u r13, r16, r13
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	beq r13, zero, .LBB0_940
# %bb.939:                              #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r9, r9, r13
	or r9, r9, r16
.LBB0_940:                              # %vector.body495
                                        #   in Loop: Header=BB0_928 Depth=3
	and r13, r15, r21
	setlt.u r13, r16, r13
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	beq r13, zero, .LBB0_942
# %bb.941:                              #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r15, r13
	or r15, r13, r16
.LBB0_942:                              # %vector.body495
                                        #   in Loop: Header=BB0_928 Depth=3
	and r13, r17, r21
	setlt.u r13, r16, r13
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	beq r13, zero, .LBB0_927
# %bb.943:                              #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r17, r13
	or r17, r13, r16
	j .LBB0_927
.LBB0_944:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1253 7 is_stmt 1              # parallel-rne.mlir:1253:7
	mfence { sm }
	addli r1, zero, 7
	.loc	1 1275 7                        # parallel-rne.mlir:1275:7
	bneq r26, r1, .LBB0_966
.LBB0_945:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 896
	.loc	1 1275 7                        # parallel-rne.mlir:1275:7
	xfence
	addli r18, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_947
.LBB0_946:                              # %middle.block490
                                        #   in Loop: Header=BB0_947 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 960
	.loc	1 1283 9 is_stmt 1              # parallel-rne.mlir:1283:9
	andi r1, r18, 1
	addli r18, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_965
.LBB0_947:                              # %vector.ph484
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_949 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	j .LBB0_949
.LBB0_948:                              # %vector.body485
                                        #   in Loop: Header=BB0_949 Depth=3
	.loc	1 1292 13 is_stmt 1             # parallel-rne.mlir:1292:13
	add.s r8, r10, r8
	.loc	1 1284 11                       # parallel-rne.mlir:1284:11
	addli.d r[11:12], r[11:12], 8
	zext_int2long r[13:14], r28
	.loc	1 1292 13                       # parallel-rne.mlir:1292:13
	stores.w r1, 12(r8)
	.loc	1 1284 11                       # parallel-rne.mlir:1284:11
	setneq.d r1, r[11:12], r[13:14]
	.loc	1 1292 13                       # parallel-rne.mlir:1292:13
	stores.w r25, 8(r8)
	stores.w r19, 4(r8)
	stores.w r2, 0(r8)
	stores.w r17, 28(r8)
	stores.w r15, 24(r8)
	stores.w r9, 20(r8)
	stores.w r7, 16(r8)
	.loc	1 1284 11                       # parallel-rne.mlir:1284:11
	beq r1, zero, .LBB0_946
.LBB0_949:                              # %vector.body485
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_947 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1285 19                       # parallel-rne.mlir:1285:19
	add.ul r[1:2], r[11:12], r[5:6]
	slli r8, r1, 2
	add.s r7, r4, r8
	loads.w r2, 0(r7)
	loads.w r1, 12(r7)
	loads.w r25, 8(r7)
	loads.w r19, 4(r7)
	loads.w r17, 28(r7)
	loads.w r15, 24(r7)
	loads.w r9, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	and r13, r2, r21
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	setlt.u r13, r16, r13
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r13, zero, .LBB0_951
# %bb.950:                              #   in Loop: Header=BB0_949 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r2, r2, r13
	or r2, r2, r16
.LBB0_951:                              # %vector.body485
                                        #   in Loop: Header=BB0_949 Depth=3
	and r13, r19, r21
	setlt.u r13, r16, r13
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r13, zero, .LBB0_953
# %bb.952:                              #   in Loop: Header=BB0_949 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r19, r13
	or r19, r13, r16
.LBB0_953:                              # %vector.body485
                                        #   in Loop: Header=BB0_949 Depth=3
	and r13, r25, r21
	setlt.u r13, r16, r13
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r13, zero, .LBB0_955
# %bb.954:                              #   in Loop: Header=BB0_949 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r25, r13
	or r25, r13, r16
.LBB0_955:                              # %vector.body485
                                        #   in Loop: Header=BB0_949 Depth=3
	and r13, r1, r21
	setlt.u r13, r16, r13
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r13, zero, .LBB0_957
# %bb.956:                              #   in Loop: Header=BB0_949 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r1, r1, r13
	or r1, r1, r16
.LBB0_957:                              # %vector.body485
                                        #   in Loop: Header=BB0_949 Depth=3
	and r13, r7, r21
	setlt.u r13, r16, r13
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r13, zero, .LBB0_959
# %bb.958:                              #   in Loop: Header=BB0_949 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r7, r7, r13
	or r7, r7, r16
.LBB0_959:                              # %vector.body485
                                        #   in Loop: Header=BB0_949 Depth=3
	and r13, r9, r21
	setlt.u r13, r16, r13
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r13, zero, .LBB0_961
# %bb.960:                              #   in Loop: Header=BB0_949 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r9, r9, r13
	or r9, r9, r16
.LBB0_961:                              # %vector.body485
                                        #   in Loop: Header=BB0_949 Depth=3
	and r13, r15, r21
	setlt.u r13, r16, r13
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r13, zero, .LBB0_963
# %bb.962:                              #   in Loop: Header=BB0_949 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r15, r13
	or r15, r13, r16
.LBB0_963:                              # %vector.body485
                                        #   in Loop: Header=BB0_949 Depth=3
	and r13, r17, r21
	setlt.u r13, r16, r13
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r13, zero, .LBB0_948
# %bb.964:                              #   in Loop: Header=BB0_949 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 524288
	and r13, r17, r13
	or r17, r13, r16
	j .LBB0_948
.LBB0_965:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1275 7 is_stmt 1              # parallel-rne.mlir:1275:7
	mfence { sm }
.LBB0_966:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1297 7                        # parallel-rne.mlir:1297:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1298 7                        # parallel-rne.mlir:1298:7
	addli r1, zero, 3
	.loc	1 1297 7                        # parallel-rne.mlir:1297:7
	sync_core
	.loc	1 1298 7                        # parallel-rne.mlir:1298:7
	bneq r26, r1, .LBB0_968
# %bb.967:                              # %.critedge31
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 17
	addli r5, zero, 40
	xsignal r1, 0
	.loc	1 1299 7                        # parallel-rne.mlir:1299:7
	xsignal r5, 0
	.loc	1 1302 13                       # parallel-rne.mlir:1302:13
	loadli.w r1,  -48(r30)
	addli r2, r1, 1
	storeli.w r2, -48(r30)
	.loc	1 1304 7                        # parallel-rne.mlir:1304:7
	addli r2, zero, 18
	xwait r2, 0
	.loc	1 1306 7                        # parallel-rne.mlir:1306:7
	addli r2, zero, 44
	.loc	1 1305 7                        # parallel-rne.mlir:1305:7
	xwait r5, 0
	.loc	1 1306 7                        # parallel-rne.mlir:1306:7
	xwait r2, 0
	j .LBB0_971
.LBB0_968:                              # %.critedge29
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1300 7                        # parallel-rne.mlir:1300:7
	addli r1, zero, 5
	bneq r26, r1, .LBB0_970
# %bb.969:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 17
	addli r2, zero, 2
	xwait r1, 0
	lock zero, r2
	addli r1, zero, 511
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 3
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	ew_cfg r1, zero, zero, 10
	addli r1, zero, 1
	loadli.w r5,  -3176(r30)                # 4-byte Folded Reload
	ew_cfg r2, r1, r5, 11
	addli r1, zero, 4
	lui r5, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r1, r5, 14
	addli r1, zero, 18
	ew_cfg zero, zero, zero, 15
	sslut r10, r10, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r1, 0
.LBB0_970:                              # %.thread121
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1302 13                       # parallel-rne.mlir:1302:13
	loadli.w r1,  -48(r30)
	addli r2, r1, 1
	storeli.w r2, -48(r30)
.LBB0_971:                              # %.critedge32
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	.loc	1 1308 7                        # parallel-rne.mlir:1308:7
	xfence
	.loc	1 1309 7                        # parallel-rne.mlir:1309:7
	mfence { lm, sm, gm }
	.loc	1 1302 13                       # parallel-rne.mlir:1302:13
	mod.s r1, r1, r2
	loadli.w r2,  -3168(r30)                # 4-byte Folded Reload
	slli r1, r1, 12
	add.s r11, r1, r2
	.loc	1 1310 7                        # parallel-rne.mlir:1310:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 1311 7                        # parallel-rne.mlir:1311:7
	beq r26, zero, .LBB0_979
# %bb.972:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1337 7                        # parallel-rne.mlir:1337:7
	addli r1, zero, 1
	beq r26, r1, .LBB0_1015
.LBB0_973:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1363 7                        # parallel-rne.mlir:1363:7
	addli r1, zero, 2
	beq r26, r1, .LBB0_1049
.LBB0_974:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1389 7                        # parallel-rne.mlir:1389:7
	addli r1, zero, 3
	beq r26, r1, .LBB0_1083
.LBB0_975:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1415 7                        # parallel-rne.mlir:1415:7
	addli r1, zero, 4
	beq r26, r1, .LBB0_1117
.LBB0_976:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1441 7                        # parallel-rne.mlir:1441:7
	addli r1, zero, 5
	beq r26, r1, .LBB0_1151
.LBB0_977:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1467 7                        # parallel-rne.mlir:1467:7
	addli r1, zero, 6
	beq r26, r1, .LBB0_1185
.LBB0_978:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 7
	.loc	1 1493 7 is_stmt 1              # parallel-rne.mlir:1493:7
	beq r26, r5, .LBB0_1219
	j .LBB0_1253
.LBB0_979:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1311 7                        # parallel-rne.mlir:1311:7
	xfence
	addli r26, zero, 1
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_981
.LBB0_980:                              # %middle.block480
                                        #   in Loop: Header=BB0_981 Depth=2
	.loc	1 1319 9                        # parallel-rne.mlir:1319:9
	andi r5, r26, 1
	zext_int2long r[1:2], r28
	addli r26, zero, 0
	beq r5, zero, .LBB0_1014
.LBB0_981:                              # %vector.memcheck467
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_991 Depth 3
                                        #       Child Loop BB0_984 Depth 3
	.loc	1 1320 11                       # parallel-rne.mlir:1320:11
	bneq r11, r4, .LBB0_988
# %bb.982:                              # %scalar.ph471.preheader
                                        #   in Loop: Header=BB0_981 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_984
.LBB0_983:                              # %scalar.ph471
                                        #   in Loop: Header=BB0_984 Depth=3
	.loc	1 1320 11                       # parallel-rne.mlir:1320:11
	addli r9, r30, -3040
	.loc	1 1332 13 is_stmt 1             # parallel-rne.mlir:1332:13
	add.s r7, r11, r7
	.loc	1 1320 11                       # parallel-rne.mlir:1320:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 1332 13                       # parallel-rne.mlir:1332:13
	stores.w r8, 0(r7)
	.loc	1 1320 11                       # parallel-rne.mlir:1320:11
	setlt.ul r9, r[5:6], r[12:13]
	addli.d r[5:6], r[5:6], 1
	beq r9, zero, .LBB0_980
.LBB0_984:                              # %scalar.ph471
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_981 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1321 19                       # parallel-rne.mlir:1321:19
	add.ul r[7:8], r[5:6], r[1:2]
	slli r7, r7, 2
	add.s r8, r4, r7
	loads.w r12, 0(r8)
	.loc	1 1322 19                       # parallel-rne.mlir:1322:19
	add.s r8, r10, r7
	loads.w r9, 0(r8)
	.loc	1 1327 19                       # parallel-rne.mlir:1327:19
	and r8, r12, r3
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	bneq r8, zero, .LBB0_986
# %bb.985:                              # %scalar.ph471
                                        #   in Loop: Header=BB0_984 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r12, r12, r27
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	beq r12, r27, .LBB0_983
	j .LBB0_987
.LBB0_986:                              #   in Loop: Header=BB0_984 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	and r12, r12, r27
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	beq r12, r27, .LBB0_983
.LBB0_987:                              # %scalar.ph471
                                        #   in Loop: Header=BB0_984 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_983
.LBB0_988:                              # %vector.body473.preheader
                                        #   in Loop: Header=BB0_981 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_991
.LBB0_989:                              # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	loads.w r15, 28(r25)
.LBB0_990:                              # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 1332 13 is_stmt 1             # parallel-rne.mlir:1332:13
	add.s r12, r11, r12
	.loc	1 1320 11                       # parallel-rne.mlir:1320:11
	addli.d r[6:7], r[6:7], 8
	zext_int2long r[13:14], r28
	.loc	1 1332 13                       # parallel-rne.mlir:1332:13
	stores.w r9, 12(r12)
	.loc	1 1320 11                       # parallel-rne.mlir:1320:11
	seteq.d r9, r[6:7], r[13:14]
	.loc	1 1332 13                       # parallel-rne.mlir:1332:13
	stores.w r8, 8(r12)
	stores.w r19, 4(r12)
	stores.w r17, 0(r12)
	stores.w r15, 28(r12)
	stores.w r24, 24(r12)
	stores.w r18, 20(r12)
	stores.w r5, 16(r12)
	.loc	1 1320 11                       # parallel-rne.mlir:1320:11
	bneq r9, zero, .LBB0_980
.LBB0_991:                              # %vector.body473
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_981 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1321 19                       # parallel-rne.mlir:1321:19
	add.ul r[8:9], r[6:7], r[1:2]
	slli r12, r8, 2
	add.s r15, r4, r12
	.loc	1 1322 19                       # parallel-rne.mlir:1322:19
	add.s r25, r10, r12
	.loc	1 1321 19                       # parallel-rne.mlir:1321:19
	loads.w r5, 0(r15)
	.loc	1 1325 19                       # parallel-rne.mlir:1325:19
	and r8, r5, r27
	.loc	1 1327 19                       # parallel-rne.mlir:1327:19
	and r9, r5, r3
	.loc	1 1326 19                       # parallel-rne.mlir:1326:19
	seteq r8, r8, r27
	.loc	1 1328 19                       # parallel-rne.mlir:1328:19
	setneq r9, r9, zero
	.loc	1 1329 19                       # parallel-rne.mlir:1329:19
	and r8, r8, r9
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	bneq r8, zero, .LBB0_993
# %bb.992:                              # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r17, 0(r25)
	j .LBB0_994
.LBB0_993:                              #   in Loop: Header=BB0_991 Depth=3
	lui r8, 1024
	or r17, r5, r8
.LBB0_994:                              # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	loads.w r5, 4(r15)
	and r8, r5, r27
	and r9, r5, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	bneq r8, zero, .LBB0_996
# %bb.995:                              # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r25)
	j .LBB0_997
.LBB0_996:                              #   in Loop: Header=BB0_991 Depth=3
	lui r8, 1024
	or r19, r5, r8
.LBB0_997:                              # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	loads.w r5, 8(r15)
	and r8, r5, r27
	and r9, r5, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	bneq r8, zero, .LBB0_999
# %bb.998:                              # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r25)
	j .LBB0_1000
.LBB0_999:                              #   in Loop: Header=BB0_991 Depth=3
	lui r8, 1024
	or r8, r5, r8
.LBB0_1000:                             # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	loads.w r5, 12(r15)
	and r9, r5, r27
	and r13, r5, r3
	seteq r9, r9, r27
	setneq r13, r13, zero
	and r9, r9, r13
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	bneq r9, zero, .LBB0_1002
# %bb.1001:                             # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r25)
	j .LBB0_1003
.LBB0_1002:                             #   in Loop: Header=BB0_991 Depth=3
	lui r9, 1024
	or r9, r5, r9
.LBB0_1003:                             # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	loads.w r5, 16(r15)
	and r13, r5, r27
	and r14, r5, r3
	seteq r13, r13, r27
	setneq r14, r14, zero
	and r13, r13, r14
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	bneq r13, zero, .LBB0_1005
# %bb.1004:                             # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 16(r25)
	j .LBB0_1006
.LBB0_1005:                             #   in Loop: Header=BB0_991 Depth=3
	lui r13, 1024
	or r5, r5, r13
.LBB0_1006:                             # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	loads.w r13, 20(r15)
	and r14, r13, r27
	and r18, r13, r3
	seteq r14, r14, r27
	setneq r18, r18, zero
	and r14, r14, r18
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	bneq r14, zero, .LBB0_1008
# %bb.1007:                             # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r25)
	j .LBB0_1009
.LBB0_1008:                             #   in Loop: Header=BB0_991 Depth=3
	lui r14, 1024
	or r18, r13, r14
.LBB0_1009:                             # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	loads.w r13, 24(r15)
	and r14, r13, r27
	and r24, r13, r3
	seteq r14, r14, r27
	setneq r24, r24, zero
	and r14, r14, r24
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	bneq r14, zero, .LBB0_1011
# %bb.1010:                             # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r25)
	j .LBB0_1012
.LBB0_1011:                             #   in Loop: Header=BB0_991 Depth=3
	lui r14, 1024
	or r24, r13, r14
.LBB0_1012:                             # %vector.body473
                                        #   in Loop: Header=BB0_991 Depth=3
	loads.w r13, 28(r15)
	and r14, r13, r27
	and r15, r13, r3
	seteq r14, r14, r27
	setneq r15, r15, zero
	and r14, r14, r15
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	beq r14, zero, .LBB0_989
# %bb.1013:                             #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r15, r13, r14
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	j .LBB0_990
.LBB0_1014:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1311 7                        # parallel-rne.mlir:1311:7
	mfence { sm }
	.loc	1 1337 7                        # parallel-rne.mlir:1337:7
	addli r1, zero, 1
	bneq r26, r1, .LBB0_973
.LBB0_1015:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 128
	.loc	1 1337 7                        # parallel-rne.mlir:1337:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_1017
.LBB0_1016:                             # %middle.block466
                                        #   in Loop: Header=BB0_1017 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 192
	.loc	1 1345 9 is_stmt 1              # parallel-rne.mlir:1345:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_1048
.LBB0_1017:                             # %vector.memcheck453
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1025 Depth 3
                                        #       Child Loop BB0_1019 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[1:2], zero
	.loc	1 1346 11 is_stmt 1             # parallel-rne.mlir:1346:11
	beq r11, r4, .LBB0_1019
	j .LBB0_1025
.LBB0_1018:                             # %scalar.ph457
                                        #   in Loop: Header=BB0_1019 Depth=3
	addli r9, r30, -3040
	.loc	1 1358 13                       # parallel-rne.mlir:1358:13
	add.s r7, r11, r7
	.loc	1 1346 11                       # parallel-rne.mlir:1346:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 1358 13                       # parallel-rne.mlir:1358:13
	stores.w r8, 0(r7)
	.loc	1 1346 11                       # parallel-rne.mlir:1346:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_1016
.LBB0_1019:                             # %scalar.ph457
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1017 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1347 19                       # parallel-rne.mlir:1347:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r4, r7
	loads.w r12, 0(r8)
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	add.s r8, r10, r7
	loads.w r9, 0(r8)
	.loc	1 1353 19                       # parallel-rne.mlir:1353:19
	and r8, r12, r3
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	bneq r8, zero, .LBB0_1021
# %bb.1020:                             # %scalar.ph457
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r12, r12, r27
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	beq r12, r27, .LBB0_1018
	j .LBB0_1022
.LBB0_1021:                             #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	and r12, r12, r27
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	beq r12, r27, .LBB0_1018
.LBB0_1022:                             # %scalar.ph457
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1018
.LBB0_1023:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	loads.w r15, 28(r25)
.LBB0_1024:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 1358 13 is_stmt 1             # parallel-rne.mlir:1358:13
	add.s r12, r11, r12
	.loc	1 1346 11                       # parallel-rne.mlir:1346:11
	addli.d r[1:2], r[1:2], 8
	zext_int2long r[13:14], r28
	.loc	1 1358 13                       # parallel-rne.mlir:1358:13
	stores.w r9, 12(r12)
	.loc	1 1346 11                       # parallel-rne.mlir:1346:11
	seteq.d r9, r[1:2], r[13:14]
	.loc	1 1358 13                       # parallel-rne.mlir:1358:13
	stores.w r8, 8(r12)
	stores.w r19, 4(r12)
	stores.w r17, 0(r12)
	stores.w r15, 28(r12)
	stores.w r24, 24(r12)
	stores.w r18, 20(r12)
	stores.w r7, 16(r12)
	.loc	1 1346 11                       # parallel-rne.mlir:1346:11
	bneq r9, zero, .LBB0_1016
.LBB0_1025:                             # %vector.body459
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1017 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1347 19                       # parallel-rne.mlir:1347:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r12, r7, 2
	add.s r15, r4, r12
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	add.s r25, r10, r12
	.loc	1 1347 19                       # parallel-rne.mlir:1347:19
	loads.w r7, 0(r15)
	.loc	1 1351 19                       # parallel-rne.mlir:1351:19
	and r8, r7, r27
	.loc	1 1353 19                       # parallel-rne.mlir:1353:19
	and r9, r7, r3
	.loc	1 1352 19                       # parallel-rne.mlir:1352:19
	seteq r8, r8, r27
	.loc	1 1354 19                       # parallel-rne.mlir:1354:19
	setneq r9, r9, zero
	.loc	1 1355 19                       # parallel-rne.mlir:1355:19
	and r8, r8, r9
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	bneq r8, zero, .LBB0_1027
# %bb.1026:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r17, 0(r25)
	j .LBB0_1028
.LBB0_1027:                             #   in Loop: Header=BB0_1025 Depth=3
	lui r8, 1024
	or r17, r7, r8
.LBB0_1028:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	loads.w r7, 4(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	bneq r8, zero, .LBB0_1030
# %bb.1029:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r25)
	j .LBB0_1031
.LBB0_1030:                             #   in Loop: Header=BB0_1025 Depth=3
	lui r8, 1024
	or r19, r7, r8
.LBB0_1031:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	loads.w r7, 8(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	bneq r8, zero, .LBB0_1033
# %bb.1032:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r25)
	j .LBB0_1034
.LBB0_1033:                             #   in Loop: Header=BB0_1025 Depth=3
	lui r8, 1024
	or r8, r7, r8
.LBB0_1034:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	loads.w r7, 12(r15)
	and r9, r7, r27
	and r13, r7, r3
	seteq r9, r9, r27
	setneq r13, r13, zero
	and r9, r9, r13
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	bneq r9, zero, .LBB0_1036
# %bb.1035:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r25)
	j .LBB0_1037
.LBB0_1036:                             #   in Loop: Header=BB0_1025 Depth=3
	lui r9, 1024
	or r9, r7, r9
.LBB0_1037:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	loads.w r7, 16(r15)
	and r13, r7, r27
	and r14, r7, r3
	seteq r13, r13, r27
	setneq r14, r14, zero
	and r13, r13, r14
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	bneq r13, zero, .LBB0_1039
# %bb.1038:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 16(r25)
	j .LBB0_1040
.LBB0_1039:                             #   in Loop: Header=BB0_1025 Depth=3
	lui r13, 1024
	or r7, r7, r13
.LBB0_1040:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	loads.w r13, 20(r15)
	and r14, r13, r27
	and r18, r13, r3
	seteq r14, r14, r27
	setneq r18, r18, zero
	and r14, r14, r18
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	bneq r14, zero, .LBB0_1042
# %bb.1041:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r25)
	j .LBB0_1043
.LBB0_1042:                             #   in Loop: Header=BB0_1025 Depth=3
	lui r14, 1024
	or r18, r13, r14
.LBB0_1043:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	loads.w r13, 24(r15)
	and r14, r13, r27
	and r24, r13, r3
	seteq r14, r14, r27
	setneq r24, r24, zero
	and r14, r14, r24
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	bneq r14, zero, .LBB0_1045
# %bb.1044:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r25)
	j .LBB0_1046
.LBB0_1045:                             #   in Loop: Header=BB0_1025 Depth=3
	lui r14, 1024
	or r24, r13, r14
.LBB0_1046:                             # %vector.body459
                                        #   in Loop: Header=BB0_1025 Depth=3
	loads.w r13, 28(r15)
	and r14, r13, r27
	and r15, r13, r3
	seteq r14, r14, r27
	setneq r15, r15, zero
	and r14, r14, r15
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	beq r14, zero, .LBB0_1023
# %bb.1047:                             #   in Loop: Header=BB0_1025 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r15, r13, r14
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	j .LBB0_1024
.LBB0_1048:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1337 7                        # parallel-rne.mlir:1337:7
	mfence { sm }
	.loc	1 1363 7                        # parallel-rne.mlir:1363:7
	addli r1, zero, 2
	bneq r26, r1, .LBB0_974
.LBB0_1049:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 1363 7                        # parallel-rne.mlir:1363:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_1051
.LBB0_1050:                             # %middle.block452
                                        #   in Loop: Header=BB0_1051 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 320
	.loc	1 1371 9 is_stmt 1              # parallel-rne.mlir:1371:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_1082
.LBB0_1051:                             # %vector.memcheck439
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1059 Depth 3
                                        #       Child Loop BB0_1053 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[1:2], zero
	.loc	1 1372 11 is_stmt 1             # parallel-rne.mlir:1372:11
	beq r11, r4, .LBB0_1053
	j .LBB0_1059
.LBB0_1052:                             # %scalar.ph443
                                        #   in Loop: Header=BB0_1053 Depth=3
	addli r9, r30, -3040
	.loc	1 1384 13                       # parallel-rne.mlir:1384:13
	add.s r7, r11, r7
	.loc	1 1372 11                       # parallel-rne.mlir:1372:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 1384 13                       # parallel-rne.mlir:1384:13
	stores.w r8, 0(r7)
	.loc	1 1372 11                       # parallel-rne.mlir:1372:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_1050
.LBB0_1053:                             # %scalar.ph443
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1051 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r4, r7
	loads.w r12, 0(r8)
	.loc	1 1374 19                       # parallel-rne.mlir:1374:19
	add.s r8, r10, r7
	loads.w r9, 0(r8)
	.loc	1 1379 19                       # parallel-rne.mlir:1379:19
	and r8, r12, r3
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	bneq r8, zero, .LBB0_1055
# %bb.1054:                             # %scalar.ph443
                                        #   in Loop: Header=BB0_1053 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r12, r12, r27
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	beq r12, r27, .LBB0_1052
	j .LBB0_1056
.LBB0_1055:                             #   in Loop: Header=BB0_1053 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	and r12, r12, r27
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	beq r12, r27, .LBB0_1052
.LBB0_1056:                             # %scalar.ph443
                                        #   in Loop: Header=BB0_1053 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1052
.LBB0_1057:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	loads.w r15, 28(r25)
.LBB0_1058:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 1384 13 is_stmt 1             # parallel-rne.mlir:1384:13
	add.s r12, r11, r12
	.loc	1 1372 11                       # parallel-rne.mlir:1372:11
	addli.d r[1:2], r[1:2], 8
	zext_int2long r[13:14], r28
	.loc	1 1384 13                       # parallel-rne.mlir:1384:13
	stores.w r9, 12(r12)
	.loc	1 1372 11                       # parallel-rne.mlir:1372:11
	seteq.d r9, r[1:2], r[13:14]
	.loc	1 1384 13                       # parallel-rne.mlir:1384:13
	stores.w r8, 8(r12)
	stores.w r19, 4(r12)
	stores.w r17, 0(r12)
	stores.w r15, 28(r12)
	stores.w r24, 24(r12)
	stores.w r18, 20(r12)
	stores.w r7, 16(r12)
	.loc	1 1372 11                       # parallel-rne.mlir:1372:11
	bneq r9, zero, .LBB0_1050
.LBB0_1059:                             # %vector.body445
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1051 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r12, r7, 2
	add.s r15, r4, r12
	.loc	1 1374 19                       # parallel-rne.mlir:1374:19
	add.s r25, r10, r12
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	loads.w r7, 0(r15)
	.loc	1 1377 19                       # parallel-rne.mlir:1377:19
	and r8, r7, r27
	.loc	1 1379 19                       # parallel-rne.mlir:1379:19
	and r9, r7, r3
	.loc	1 1378 19                       # parallel-rne.mlir:1378:19
	seteq r8, r8, r27
	.loc	1 1380 19                       # parallel-rne.mlir:1380:19
	setneq r9, r9, zero
	.loc	1 1381 19                       # parallel-rne.mlir:1381:19
	and r8, r8, r9
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	bneq r8, zero, .LBB0_1061
# %bb.1060:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r17, 0(r25)
	j .LBB0_1062
.LBB0_1061:                             #   in Loop: Header=BB0_1059 Depth=3
	lui r8, 1024
	or r17, r7, r8
.LBB0_1062:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	loads.w r7, 4(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	bneq r8, zero, .LBB0_1064
# %bb.1063:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r25)
	j .LBB0_1065
.LBB0_1064:                             #   in Loop: Header=BB0_1059 Depth=3
	lui r8, 1024
	or r19, r7, r8
.LBB0_1065:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	loads.w r7, 8(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	bneq r8, zero, .LBB0_1067
# %bb.1066:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r25)
	j .LBB0_1068
.LBB0_1067:                             #   in Loop: Header=BB0_1059 Depth=3
	lui r8, 1024
	or r8, r7, r8
.LBB0_1068:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	loads.w r7, 12(r15)
	and r9, r7, r27
	and r13, r7, r3
	seteq r9, r9, r27
	setneq r13, r13, zero
	and r9, r9, r13
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	bneq r9, zero, .LBB0_1070
# %bb.1069:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r25)
	j .LBB0_1071
.LBB0_1070:                             #   in Loop: Header=BB0_1059 Depth=3
	lui r9, 1024
	or r9, r7, r9
.LBB0_1071:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	loads.w r7, 16(r15)
	and r13, r7, r27
	and r14, r7, r3
	seteq r13, r13, r27
	setneq r14, r14, zero
	and r13, r13, r14
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	bneq r13, zero, .LBB0_1073
# %bb.1072:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 16(r25)
	j .LBB0_1074
.LBB0_1073:                             #   in Loop: Header=BB0_1059 Depth=3
	lui r13, 1024
	or r7, r7, r13
.LBB0_1074:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	loads.w r13, 20(r15)
	and r14, r13, r27
	and r18, r13, r3
	seteq r14, r14, r27
	setneq r18, r18, zero
	and r14, r14, r18
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	bneq r14, zero, .LBB0_1076
# %bb.1075:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r25)
	j .LBB0_1077
.LBB0_1076:                             #   in Loop: Header=BB0_1059 Depth=3
	lui r14, 1024
	or r18, r13, r14
.LBB0_1077:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	loads.w r13, 24(r15)
	and r14, r13, r27
	and r24, r13, r3
	seteq r14, r14, r27
	setneq r24, r24, zero
	and r14, r14, r24
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	bneq r14, zero, .LBB0_1079
# %bb.1078:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r25)
	j .LBB0_1080
.LBB0_1079:                             #   in Loop: Header=BB0_1059 Depth=3
	lui r14, 1024
	or r24, r13, r14
.LBB0_1080:                             # %vector.body445
                                        #   in Loop: Header=BB0_1059 Depth=3
	loads.w r13, 28(r15)
	and r14, r13, r27
	and r15, r13, r3
	seteq r14, r14, r27
	setneq r15, r15, zero
	and r14, r14, r15
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	beq r14, zero, .LBB0_1057
# %bb.1081:                             #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r15, r13, r14
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	j .LBB0_1058
.LBB0_1082:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1363 7                        # parallel-rne.mlir:1363:7
	mfence { sm }
	.loc	1 1389 7                        # parallel-rne.mlir:1389:7
	addli r1, zero, 3
	bneq r26, r1, .LBB0_975
.LBB0_1083:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 384
	.loc	1 1389 7                        # parallel-rne.mlir:1389:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_1085
.LBB0_1084:                             # %middle.block438
                                        #   in Loop: Header=BB0_1085 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 448
	.loc	1 1397 9 is_stmt 1              # parallel-rne.mlir:1397:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_1116
.LBB0_1085:                             # %vector.memcheck425
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1093 Depth 3
                                        #       Child Loop BB0_1087 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[1:2], zero
	.loc	1 1398 11 is_stmt 1             # parallel-rne.mlir:1398:11
	beq r11, r4, .LBB0_1087
	j .LBB0_1093
.LBB0_1086:                             # %scalar.ph429
                                        #   in Loop: Header=BB0_1087 Depth=3
	addli r9, r30, -3040
	.loc	1 1410 13                       # parallel-rne.mlir:1410:13
	add.s r7, r11, r7
	.loc	1 1398 11                       # parallel-rne.mlir:1398:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 1410 13                       # parallel-rne.mlir:1410:13
	stores.w r8, 0(r7)
	.loc	1 1398 11                       # parallel-rne.mlir:1398:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_1084
.LBB0_1087:                             # %scalar.ph429
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1085 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1399 19                       # parallel-rne.mlir:1399:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r4, r7
	loads.w r12, 0(r8)
	.loc	1 1400 19                       # parallel-rne.mlir:1400:19
	add.s r8, r10, r7
	loads.w r9, 0(r8)
	.loc	1 1405 19                       # parallel-rne.mlir:1405:19
	and r8, r12, r3
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	bneq r8, zero, .LBB0_1089
# %bb.1088:                             # %scalar.ph429
                                        #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r12, r12, r27
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	beq r12, r27, .LBB0_1086
	j .LBB0_1090
.LBB0_1089:                             #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	and r12, r12, r27
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	beq r12, r27, .LBB0_1086
.LBB0_1090:                             # %scalar.ph429
                                        #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1086
.LBB0_1091:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	loads.w r15, 28(r25)
.LBB0_1092:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	.loc	1 1410 13 is_stmt 1             # parallel-rne.mlir:1410:13
	add.s r12, r11, r12
	.loc	1 1398 11                       # parallel-rne.mlir:1398:11
	addli.d r[1:2], r[1:2], 8
	zext_int2long r[13:14], r28
	.loc	1 1410 13                       # parallel-rne.mlir:1410:13
	stores.w r9, 12(r12)
	.loc	1 1398 11                       # parallel-rne.mlir:1398:11
	seteq.d r9, r[1:2], r[13:14]
	.loc	1 1410 13                       # parallel-rne.mlir:1410:13
	stores.w r8, 8(r12)
	stores.w r19, 4(r12)
	stores.w r17, 0(r12)
	stores.w r15, 28(r12)
	stores.w r24, 24(r12)
	stores.w r18, 20(r12)
	stores.w r7, 16(r12)
	.loc	1 1398 11                       # parallel-rne.mlir:1398:11
	bneq r9, zero, .LBB0_1084
.LBB0_1093:                             # %vector.body431
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1085 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1399 19                       # parallel-rne.mlir:1399:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r12, r7, 2
	add.s r15, r4, r12
	.loc	1 1400 19                       # parallel-rne.mlir:1400:19
	add.s r25, r10, r12
	.loc	1 1399 19                       # parallel-rne.mlir:1399:19
	loads.w r7, 0(r15)
	.loc	1 1403 19                       # parallel-rne.mlir:1403:19
	and r8, r7, r27
	.loc	1 1405 19                       # parallel-rne.mlir:1405:19
	and r9, r7, r3
	.loc	1 1404 19                       # parallel-rne.mlir:1404:19
	seteq r8, r8, r27
	.loc	1 1406 19                       # parallel-rne.mlir:1406:19
	setneq r9, r9, zero
	.loc	1 1407 19                       # parallel-rne.mlir:1407:19
	and r8, r8, r9
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	bneq r8, zero, .LBB0_1095
# %bb.1094:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r17, 0(r25)
	j .LBB0_1096
.LBB0_1095:                             #   in Loop: Header=BB0_1093 Depth=3
	lui r8, 1024
	or r17, r7, r8
.LBB0_1096:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	loads.w r7, 4(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	bneq r8, zero, .LBB0_1098
# %bb.1097:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r25)
	j .LBB0_1099
.LBB0_1098:                             #   in Loop: Header=BB0_1093 Depth=3
	lui r8, 1024
	or r19, r7, r8
.LBB0_1099:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	loads.w r7, 8(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	bneq r8, zero, .LBB0_1101
# %bb.1100:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r25)
	j .LBB0_1102
.LBB0_1101:                             #   in Loop: Header=BB0_1093 Depth=3
	lui r8, 1024
	or r8, r7, r8
.LBB0_1102:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	loads.w r7, 12(r15)
	and r9, r7, r27
	and r13, r7, r3
	seteq r9, r9, r27
	setneq r13, r13, zero
	and r9, r9, r13
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	bneq r9, zero, .LBB0_1104
# %bb.1103:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r25)
	j .LBB0_1105
.LBB0_1104:                             #   in Loop: Header=BB0_1093 Depth=3
	lui r9, 1024
	or r9, r7, r9
.LBB0_1105:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	loads.w r7, 16(r15)
	and r13, r7, r27
	and r14, r7, r3
	seteq r13, r13, r27
	setneq r14, r14, zero
	and r13, r13, r14
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	bneq r13, zero, .LBB0_1107
# %bb.1106:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 16(r25)
	j .LBB0_1108
.LBB0_1107:                             #   in Loop: Header=BB0_1093 Depth=3
	lui r13, 1024
	or r7, r7, r13
.LBB0_1108:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	loads.w r13, 20(r15)
	and r14, r13, r27
	and r18, r13, r3
	seteq r14, r14, r27
	setneq r18, r18, zero
	and r14, r14, r18
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	bneq r14, zero, .LBB0_1110
# %bb.1109:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r25)
	j .LBB0_1111
.LBB0_1110:                             #   in Loop: Header=BB0_1093 Depth=3
	lui r14, 1024
	or r18, r13, r14
.LBB0_1111:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	loads.w r13, 24(r15)
	and r14, r13, r27
	and r24, r13, r3
	seteq r14, r14, r27
	setneq r24, r24, zero
	and r14, r14, r24
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	bneq r14, zero, .LBB0_1113
# %bb.1112:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r25)
	j .LBB0_1114
.LBB0_1113:                             #   in Loop: Header=BB0_1093 Depth=3
	lui r14, 1024
	or r24, r13, r14
.LBB0_1114:                             # %vector.body431
                                        #   in Loop: Header=BB0_1093 Depth=3
	loads.w r13, 28(r15)
	and r14, r13, r27
	and r15, r13, r3
	seteq r14, r14, r27
	setneq r15, r15, zero
	and r14, r14, r15
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	beq r14, zero, .LBB0_1091
# %bb.1115:                             #   in Loop: Header=BB0_1093 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r15, r13, r14
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	j .LBB0_1092
.LBB0_1116:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1389 7                        # parallel-rne.mlir:1389:7
	mfence { sm }
	.loc	1 1415 7                        # parallel-rne.mlir:1415:7
	addli r1, zero, 4
	bneq r26, r1, .LBB0_976
.LBB0_1117:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 512
	.loc	1 1415 7                        # parallel-rne.mlir:1415:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_1119
.LBB0_1118:                             # %middle.block424
                                        #   in Loop: Header=BB0_1119 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 576
	.loc	1 1423 9 is_stmt 1              # parallel-rne.mlir:1423:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_1150
.LBB0_1119:                             # %vector.memcheck411
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1127 Depth 3
                                        #       Child Loop BB0_1121 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[1:2], zero
	.loc	1 1424 11 is_stmt 1             # parallel-rne.mlir:1424:11
	beq r11, r4, .LBB0_1121
	j .LBB0_1127
.LBB0_1120:                             # %scalar.ph415
                                        #   in Loop: Header=BB0_1121 Depth=3
	addli r9, r30, -3040
	.loc	1 1436 13                       # parallel-rne.mlir:1436:13
	add.s r7, r11, r7
	.loc	1 1424 11                       # parallel-rne.mlir:1424:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 1436 13                       # parallel-rne.mlir:1436:13
	stores.w r8, 0(r7)
	.loc	1 1424 11                       # parallel-rne.mlir:1424:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_1118
.LBB0_1121:                             # %scalar.ph415
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1119 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1425 19                       # parallel-rne.mlir:1425:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r4, r7
	loads.w r12, 0(r8)
	.loc	1 1426 19                       # parallel-rne.mlir:1426:19
	add.s r8, r10, r7
	loads.w r9, 0(r8)
	.loc	1 1431 19                       # parallel-rne.mlir:1431:19
	and r8, r12, r3
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	bneq r8, zero, .LBB0_1123
# %bb.1122:                             # %scalar.ph415
                                        #   in Loop: Header=BB0_1121 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r12, r12, r27
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	beq r12, r27, .LBB0_1120
	j .LBB0_1124
.LBB0_1123:                             #   in Loop: Header=BB0_1121 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	and r12, r12, r27
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	beq r12, r27, .LBB0_1120
.LBB0_1124:                             # %scalar.ph415
                                        #   in Loop: Header=BB0_1121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1120
.LBB0_1125:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	loads.w r15, 28(r25)
.LBB0_1126:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	.loc	1 1436 13 is_stmt 1             # parallel-rne.mlir:1436:13
	add.s r12, r11, r12
	.loc	1 1424 11                       # parallel-rne.mlir:1424:11
	addli.d r[1:2], r[1:2], 8
	zext_int2long r[13:14], r28
	.loc	1 1436 13                       # parallel-rne.mlir:1436:13
	stores.w r9, 12(r12)
	.loc	1 1424 11                       # parallel-rne.mlir:1424:11
	seteq.d r9, r[1:2], r[13:14]
	.loc	1 1436 13                       # parallel-rne.mlir:1436:13
	stores.w r8, 8(r12)
	stores.w r19, 4(r12)
	stores.w r17, 0(r12)
	stores.w r15, 28(r12)
	stores.w r24, 24(r12)
	stores.w r18, 20(r12)
	stores.w r7, 16(r12)
	.loc	1 1424 11                       # parallel-rne.mlir:1424:11
	bneq r9, zero, .LBB0_1118
.LBB0_1127:                             # %vector.body417
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1119 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1425 19                       # parallel-rne.mlir:1425:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r12, r7, 2
	add.s r15, r4, r12
	.loc	1 1426 19                       # parallel-rne.mlir:1426:19
	add.s r25, r10, r12
	.loc	1 1425 19                       # parallel-rne.mlir:1425:19
	loads.w r7, 0(r15)
	.loc	1 1429 19                       # parallel-rne.mlir:1429:19
	and r8, r7, r27
	.loc	1 1431 19                       # parallel-rne.mlir:1431:19
	and r9, r7, r3
	.loc	1 1430 19                       # parallel-rne.mlir:1430:19
	seteq r8, r8, r27
	.loc	1 1432 19                       # parallel-rne.mlir:1432:19
	setneq r9, r9, zero
	.loc	1 1433 19                       # parallel-rne.mlir:1433:19
	and r8, r8, r9
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	bneq r8, zero, .LBB0_1129
# %bb.1128:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r17, 0(r25)
	j .LBB0_1130
.LBB0_1129:                             #   in Loop: Header=BB0_1127 Depth=3
	lui r8, 1024
	or r17, r7, r8
.LBB0_1130:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	loads.w r7, 4(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	bneq r8, zero, .LBB0_1132
# %bb.1131:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r25)
	j .LBB0_1133
.LBB0_1132:                             #   in Loop: Header=BB0_1127 Depth=3
	lui r8, 1024
	or r19, r7, r8
.LBB0_1133:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	loads.w r7, 8(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	bneq r8, zero, .LBB0_1135
# %bb.1134:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r25)
	j .LBB0_1136
.LBB0_1135:                             #   in Loop: Header=BB0_1127 Depth=3
	lui r8, 1024
	or r8, r7, r8
.LBB0_1136:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	loads.w r7, 12(r15)
	and r9, r7, r27
	and r13, r7, r3
	seteq r9, r9, r27
	setneq r13, r13, zero
	and r9, r9, r13
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	bneq r9, zero, .LBB0_1138
# %bb.1137:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r25)
	j .LBB0_1139
.LBB0_1138:                             #   in Loop: Header=BB0_1127 Depth=3
	lui r9, 1024
	or r9, r7, r9
.LBB0_1139:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	loads.w r7, 16(r15)
	and r13, r7, r27
	and r14, r7, r3
	seteq r13, r13, r27
	setneq r14, r14, zero
	and r13, r13, r14
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	bneq r13, zero, .LBB0_1141
# %bb.1140:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 16(r25)
	j .LBB0_1142
.LBB0_1141:                             #   in Loop: Header=BB0_1127 Depth=3
	lui r13, 1024
	or r7, r7, r13
.LBB0_1142:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	loads.w r13, 20(r15)
	and r14, r13, r27
	and r18, r13, r3
	seteq r14, r14, r27
	setneq r18, r18, zero
	and r14, r14, r18
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	bneq r14, zero, .LBB0_1144
# %bb.1143:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r25)
	j .LBB0_1145
.LBB0_1144:                             #   in Loop: Header=BB0_1127 Depth=3
	lui r14, 1024
	or r18, r13, r14
.LBB0_1145:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	loads.w r13, 24(r15)
	and r14, r13, r27
	and r24, r13, r3
	seteq r14, r14, r27
	setneq r24, r24, zero
	and r14, r14, r24
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	bneq r14, zero, .LBB0_1147
# %bb.1146:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r25)
	j .LBB0_1148
.LBB0_1147:                             #   in Loop: Header=BB0_1127 Depth=3
	lui r14, 1024
	or r24, r13, r14
.LBB0_1148:                             # %vector.body417
                                        #   in Loop: Header=BB0_1127 Depth=3
	loads.w r13, 28(r15)
	and r14, r13, r27
	and r15, r13, r3
	seteq r14, r14, r27
	setneq r15, r15, zero
	and r14, r14, r15
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	beq r14, zero, .LBB0_1125
# %bb.1149:                             #   in Loop: Header=BB0_1127 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r15, r13, r14
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	j .LBB0_1126
.LBB0_1150:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1415 7                        # parallel-rne.mlir:1415:7
	mfence { sm }
	.loc	1 1441 7                        # parallel-rne.mlir:1441:7
	addli r1, zero, 5
	bneq r26, r1, .LBB0_977
.LBB0_1151:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 640
	.loc	1 1441 7                        # parallel-rne.mlir:1441:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_1153
.LBB0_1152:                             # %middle.block410
                                        #   in Loop: Header=BB0_1153 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 704
	.loc	1 1449 9 is_stmt 1              # parallel-rne.mlir:1449:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_1184
.LBB0_1153:                             # %vector.memcheck397
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1161 Depth 3
                                        #       Child Loop BB0_1155 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[1:2], zero
	.loc	1 1450 11 is_stmt 1             # parallel-rne.mlir:1450:11
	beq r11, r4, .LBB0_1155
	j .LBB0_1161
.LBB0_1154:                             # %scalar.ph401
                                        #   in Loop: Header=BB0_1155 Depth=3
	addli r9, r30, -3040
	.loc	1 1462 13                       # parallel-rne.mlir:1462:13
	add.s r7, r11, r7
	.loc	1 1450 11                       # parallel-rne.mlir:1450:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 1462 13                       # parallel-rne.mlir:1462:13
	stores.w r8, 0(r7)
	.loc	1 1450 11                       # parallel-rne.mlir:1450:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_1152
.LBB0_1155:                             # %scalar.ph401
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1451 19                       # parallel-rne.mlir:1451:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r4, r7
	loads.w r12, 0(r8)
	.loc	1 1452 19                       # parallel-rne.mlir:1452:19
	add.s r8, r10, r7
	loads.w r9, 0(r8)
	.loc	1 1457 19                       # parallel-rne.mlir:1457:19
	and r8, r12, r3
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	bneq r8, zero, .LBB0_1157
# %bb.1156:                             # %scalar.ph401
                                        #   in Loop: Header=BB0_1155 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r12, r12, r27
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	beq r12, r27, .LBB0_1154
	j .LBB0_1158
.LBB0_1157:                             #   in Loop: Header=BB0_1155 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	and r12, r12, r27
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	beq r12, r27, .LBB0_1154
.LBB0_1158:                             # %scalar.ph401
                                        #   in Loop: Header=BB0_1155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1154
.LBB0_1159:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r15, 28(r25)
.LBB0_1160:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 1462 13 is_stmt 1             # parallel-rne.mlir:1462:13
	add.s r12, r11, r12
	.loc	1 1450 11                       # parallel-rne.mlir:1450:11
	addli.d r[1:2], r[1:2], 8
	zext_int2long r[13:14], r28
	.loc	1 1462 13                       # parallel-rne.mlir:1462:13
	stores.w r9, 12(r12)
	.loc	1 1450 11                       # parallel-rne.mlir:1450:11
	seteq.d r9, r[1:2], r[13:14]
	.loc	1 1462 13                       # parallel-rne.mlir:1462:13
	stores.w r8, 8(r12)
	stores.w r19, 4(r12)
	stores.w r17, 0(r12)
	stores.w r15, 28(r12)
	stores.w r24, 24(r12)
	stores.w r18, 20(r12)
	stores.w r7, 16(r12)
	.loc	1 1450 11                       # parallel-rne.mlir:1450:11
	bneq r9, zero, .LBB0_1152
.LBB0_1161:                             # %vector.body403
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1451 19                       # parallel-rne.mlir:1451:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r12, r7, 2
	add.s r15, r4, r12
	.loc	1 1452 19                       # parallel-rne.mlir:1452:19
	add.s r25, r10, r12
	.loc	1 1451 19                       # parallel-rne.mlir:1451:19
	loads.w r7, 0(r15)
	.loc	1 1455 19                       # parallel-rne.mlir:1455:19
	and r8, r7, r27
	.loc	1 1457 19                       # parallel-rne.mlir:1457:19
	and r9, r7, r3
	.loc	1 1456 19                       # parallel-rne.mlir:1456:19
	seteq r8, r8, r27
	.loc	1 1458 19                       # parallel-rne.mlir:1458:19
	setneq r9, r9, zero
	.loc	1 1459 19                       # parallel-rne.mlir:1459:19
	and r8, r8, r9
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	bneq r8, zero, .LBB0_1163
# %bb.1162:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r17, 0(r25)
	j .LBB0_1164
.LBB0_1163:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r8, 1024
	or r17, r7, r8
.LBB0_1164:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r7, 4(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	bneq r8, zero, .LBB0_1166
# %bb.1165:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r25)
	j .LBB0_1167
.LBB0_1166:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r8, 1024
	or r19, r7, r8
.LBB0_1167:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r7, 8(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	bneq r8, zero, .LBB0_1169
# %bb.1168:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r25)
	j .LBB0_1170
.LBB0_1169:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r8, 1024
	or r8, r7, r8
.LBB0_1170:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r7, 12(r15)
	and r9, r7, r27
	and r13, r7, r3
	seteq r9, r9, r27
	setneq r13, r13, zero
	and r9, r9, r13
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	bneq r9, zero, .LBB0_1172
# %bb.1171:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r25)
	j .LBB0_1173
.LBB0_1172:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r9, 1024
	or r9, r7, r9
.LBB0_1173:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r7, 16(r15)
	and r13, r7, r27
	and r14, r7, r3
	seteq r13, r13, r27
	setneq r14, r14, zero
	and r13, r13, r14
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	bneq r13, zero, .LBB0_1175
# %bb.1174:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 16(r25)
	j .LBB0_1176
.LBB0_1175:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r13, 1024
	or r7, r7, r13
.LBB0_1176:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r13, 20(r15)
	and r14, r13, r27
	and r18, r13, r3
	seteq r14, r14, r27
	setneq r18, r18, zero
	and r14, r14, r18
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	bneq r14, zero, .LBB0_1178
# %bb.1177:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r25)
	j .LBB0_1179
.LBB0_1178:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r14, 1024
	or r18, r13, r14
.LBB0_1179:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r13, 24(r15)
	and r14, r13, r27
	and r24, r13, r3
	seteq r14, r14, r27
	setneq r24, r24, zero
	and r14, r14, r24
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	bneq r14, zero, .LBB0_1181
# %bb.1180:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r25)
	j .LBB0_1182
.LBB0_1181:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r14, 1024
	or r24, r13, r14
.LBB0_1182:                             # %vector.body403
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r13, 28(r15)
	and r14, r13, r27
	and r15, r13, r3
	seteq r14, r14, r27
	setneq r15, r15, zero
	and r14, r14, r15
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	beq r14, zero, .LBB0_1159
# %bb.1183:                             #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r15, r13, r14
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	j .LBB0_1160
.LBB0_1184:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1441 7                        # parallel-rne.mlir:1441:7
	mfence { sm }
	.loc	1 1467 7                        # parallel-rne.mlir:1467:7
	addli r1, zero, 6
	bneq r26, r1, .LBB0_978
.LBB0_1185:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 768
	.loc	1 1467 7                        # parallel-rne.mlir:1467:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_1187
.LBB0_1186:                             # %middle.block396
                                        #   in Loop: Header=BB0_1187 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 832
	.loc	1 1475 9 is_stmt 1              # parallel-rne.mlir:1475:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_1218
.LBB0_1187:                             # %vector.memcheck383
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1195 Depth 3
                                        #       Child Loop BB0_1189 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[1:2], zero
	.loc	1 1476 11 is_stmt 1             # parallel-rne.mlir:1476:11
	beq r11, r4, .LBB0_1189
	j .LBB0_1195
.LBB0_1188:                             # %scalar.ph387
                                        #   in Loop: Header=BB0_1189 Depth=3
	addli r9, r30, -3040
	.loc	1 1488 13                       # parallel-rne.mlir:1488:13
	add.s r7, r11, r7
	.loc	1 1476 11                       # parallel-rne.mlir:1476:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 1488 13                       # parallel-rne.mlir:1488:13
	stores.w r8, 0(r7)
	.loc	1 1476 11                       # parallel-rne.mlir:1476:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_1186
.LBB0_1189:                             # %scalar.ph387
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1477 19                       # parallel-rne.mlir:1477:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r4, r7
	loads.w r12, 0(r8)
	.loc	1 1478 19                       # parallel-rne.mlir:1478:19
	add.s r8, r10, r7
	loads.w r9, 0(r8)
	.loc	1 1483 19                       # parallel-rne.mlir:1483:19
	and r8, r12, r3
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	bneq r8, zero, .LBB0_1191
# %bb.1190:                             # %scalar.ph387
                                        #   in Loop: Header=BB0_1189 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r12, r12, r27
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	beq r12, r27, .LBB0_1188
	j .LBB0_1192
.LBB0_1191:                             #   in Loop: Header=BB0_1189 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	and r12, r12, r27
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	beq r12, r27, .LBB0_1188
.LBB0_1192:                             # %scalar.ph387
                                        #   in Loop: Header=BB0_1189 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1188
.LBB0_1193:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	loads.w r15, 28(r25)
.LBB0_1194:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	.loc	1 1488 13 is_stmt 1             # parallel-rne.mlir:1488:13
	add.s r12, r11, r12
	.loc	1 1476 11                       # parallel-rne.mlir:1476:11
	addli.d r[1:2], r[1:2], 8
	zext_int2long r[13:14], r28
	.loc	1 1488 13                       # parallel-rne.mlir:1488:13
	stores.w r9, 12(r12)
	.loc	1 1476 11                       # parallel-rne.mlir:1476:11
	seteq.d r9, r[1:2], r[13:14]
	.loc	1 1488 13                       # parallel-rne.mlir:1488:13
	stores.w r8, 8(r12)
	stores.w r19, 4(r12)
	stores.w r17, 0(r12)
	stores.w r15, 28(r12)
	stores.w r24, 24(r12)
	stores.w r18, 20(r12)
	stores.w r7, 16(r12)
	.loc	1 1476 11                       # parallel-rne.mlir:1476:11
	bneq r9, zero, .LBB0_1186
.LBB0_1195:                             # %vector.body389
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1477 19                       # parallel-rne.mlir:1477:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r12, r7, 2
	add.s r15, r4, r12
	.loc	1 1478 19                       # parallel-rne.mlir:1478:19
	add.s r25, r10, r12
	.loc	1 1477 19                       # parallel-rne.mlir:1477:19
	loads.w r7, 0(r15)
	.loc	1 1481 19                       # parallel-rne.mlir:1481:19
	and r8, r7, r27
	.loc	1 1483 19                       # parallel-rne.mlir:1483:19
	and r9, r7, r3
	.loc	1 1482 19                       # parallel-rne.mlir:1482:19
	seteq r8, r8, r27
	.loc	1 1484 19                       # parallel-rne.mlir:1484:19
	setneq r9, r9, zero
	.loc	1 1485 19                       # parallel-rne.mlir:1485:19
	and r8, r8, r9
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	bneq r8, zero, .LBB0_1197
# %bb.1196:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r17, 0(r25)
	j .LBB0_1198
.LBB0_1197:                             #   in Loop: Header=BB0_1195 Depth=3
	lui r8, 1024
	or r17, r7, r8
.LBB0_1198:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	loads.w r7, 4(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	bneq r8, zero, .LBB0_1200
# %bb.1199:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r25)
	j .LBB0_1201
.LBB0_1200:                             #   in Loop: Header=BB0_1195 Depth=3
	lui r8, 1024
	or r19, r7, r8
.LBB0_1201:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	loads.w r7, 8(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	bneq r8, zero, .LBB0_1203
# %bb.1202:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r25)
	j .LBB0_1204
.LBB0_1203:                             #   in Loop: Header=BB0_1195 Depth=3
	lui r8, 1024
	or r8, r7, r8
.LBB0_1204:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	loads.w r7, 12(r15)
	and r9, r7, r27
	and r13, r7, r3
	seteq r9, r9, r27
	setneq r13, r13, zero
	and r9, r9, r13
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	bneq r9, zero, .LBB0_1206
# %bb.1205:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r25)
	j .LBB0_1207
.LBB0_1206:                             #   in Loop: Header=BB0_1195 Depth=3
	lui r9, 1024
	or r9, r7, r9
.LBB0_1207:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	loads.w r7, 16(r15)
	and r13, r7, r27
	and r14, r7, r3
	seteq r13, r13, r27
	setneq r14, r14, zero
	and r13, r13, r14
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	bneq r13, zero, .LBB0_1209
# %bb.1208:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 16(r25)
	j .LBB0_1210
.LBB0_1209:                             #   in Loop: Header=BB0_1195 Depth=3
	lui r13, 1024
	or r7, r7, r13
.LBB0_1210:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	loads.w r13, 20(r15)
	and r14, r13, r27
	and r18, r13, r3
	seteq r14, r14, r27
	setneq r18, r18, zero
	and r14, r14, r18
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	bneq r14, zero, .LBB0_1212
# %bb.1211:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r25)
	j .LBB0_1213
.LBB0_1212:                             #   in Loop: Header=BB0_1195 Depth=3
	lui r14, 1024
	or r18, r13, r14
.LBB0_1213:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	loads.w r13, 24(r15)
	and r14, r13, r27
	and r24, r13, r3
	seteq r14, r14, r27
	setneq r24, r24, zero
	and r14, r14, r24
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	bneq r14, zero, .LBB0_1215
# %bb.1214:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r25)
	j .LBB0_1216
.LBB0_1215:                             #   in Loop: Header=BB0_1195 Depth=3
	lui r14, 1024
	or r24, r13, r14
.LBB0_1216:                             # %vector.body389
                                        #   in Loop: Header=BB0_1195 Depth=3
	loads.w r13, 28(r15)
	and r14, r13, r27
	and r15, r13, r3
	seteq r14, r14, r27
	setneq r15, r15, zero
	and r14, r14, r15
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	beq r14, zero, .LBB0_1193
# %bb.1217:                             #   in Loop: Header=BB0_1195 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r15, r13, r14
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	j .LBB0_1194
.LBB0_1218:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1467 7                        # parallel-rne.mlir:1467:7
	mfence { sm }
	addli r5, zero, 7
	.loc	1 1493 7                        # parallel-rne.mlir:1493:7
	bneq r26, r5, .LBB0_1253
.LBB0_1219:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 896
	.loc	1 1493 7                        # parallel-rne.mlir:1493:7
	xfence
	addli r26, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_1221
.LBB0_1220:                             # %middle.block382
                                        #   in Loop: Header=BB0_1221 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 960
	.loc	1 1501 9 is_stmt 1              # parallel-rne.mlir:1501:9
	andi r1, r26, 1
	addli r26, zero, 0
	zext_int2long r[5:6], r2
	beq r1, zero, .LBB0_1252
.LBB0_1221:                             # %vector.memcheck369
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1229 Depth 3
                                        #       Child Loop BB0_1223 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[1:2], zero
	.loc	1 1502 11 is_stmt 1             # parallel-rne.mlir:1502:11
	beq r11, r4, .LBB0_1223
	j .LBB0_1229
.LBB0_1222:                             # %scalar.ph373
                                        #   in Loop: Header=BB0_1223 Depth=3
	addli r9, r30, -3040
	.loc	1 1514 13                       # parallel-rne.mlir:1514:13
	add.s r7, r11, r7
	.loc	1 1502 11                       # parallel-rne.mlir:1502:11
	load.d r[12:13], 0(r9)                  # 8-byte Folded Reload
	.loc	1 1514 13                       # parallel-rne.mlir:1514:13
	stores.w r8, 0(r7)
	.loc	1 1502 11                       # parallel-rne.mlir:1502:11
	setlt.ul r9, r[1:2], r[12:13]
	addli.d r[1:2], r[1:2], 1
	beq r9, zero, .LBB0_1220
.LBB0_1223:                             # %scalar.ph373
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1503 19                       # parallel-rne.mlir:1503:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r4, r7
	loads.w r12, 0(r8)
	.loc	1 1504 19                       # parallel-rne.mlir:1504:19
	add.s r8, r10, r7
	loads.w r9, 0(r8)
	.loc	1 1509 19                       # parallel-rne.mlir:1509:19
	and r8, r12, r3
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	bneq r8, zero, .LBB0_1225
# %bb.1224:                             # %scalar.ph373
                                        #   in Loop: Header=BB0_1223 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r12, r12, r27
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	beq r12, r27, .LBB0_1222
	j .LBB0_1226
.LBB0_1225:                             #   in Loop: Header=BB0_1223 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	and r12, r12, r27
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	beq r12, r27, .LBB0_1222
.LBB0_1226:                             # %scalar.ph373
                                        #   in Loop: Header=BB0_1223 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1222
.LBB0_1227:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	loads.w r15, 28(r25)
.LBB0_1228:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	.loc	1 1514 13 is_stmt 1             # parallel-rne.mlir:1514:13
	add.s r12, r11, r12
	.loc	1 1502 11                       # parallel-rne.mlir:1502:11
	addli.d r[1:2], r[1:2], 8
	zext_int2long r[13:14], r28
	.loc	1 1514 13                       # parallel-rne.mlir:1514:13
	stores.w r9, 12(r12)
	.loc	1 1502 11                       # parallel-rne.mlir:1502:11
	seteq.d r9, r[1:2], r[13:14]
	.loc	1 1514 13                       # parallel-rne.mlir:1514:13
	stores.w r8, 8(r12)
	stores.w r19, 4(r12)
	stores.w r17, 0(r12)
	stores.w r15, 28(r12)
	stores.w r24, 24(r12)
	stores.w r18, 20(r12)
	stores.w r7, 16(r12)
	.loc	1 1502 11                       # parallel-rne.mlir:1502:11
	bneq r9, zero, .LBB0_1220
.LBB0_1229:                             # %vector.body375
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1503 19                       # parallel-rne.mlir:1503:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r12, r7, 2
	add.s r15, r4, r12
	.loc	1 1504 19                       # parallel-rne.mlir:1504:19
	add.s r25, r10, r12
	.loc	1 1503 19                       # parallel-rne.mlir:1503:19
	loads.w r7, 0(r15)
	.loc	1 1507 19                       # parallel-rne.mlir:1507:19
	and r8, r7, r27
	.loc	1 1509 19                       # parallel-rne.mlir:1509:19
	and r9, r7, r3
	.loc	1 1508 19                       # parallel-rne.mlir:1508:19
	seteq r8, r8, r27
	.loc	1 1510 19                       # parallel-rne.mlir:1510:19
	setneq r9, r9, zero
	.loc	1 1511 19                       # parallel-rne.mlir:1511:19
	and r8, r8, r9
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	bneq r8, zero, .LBB0_1231
# %bb.1230:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r17, 0(r25)
	j .LBB0_1232
.LBB0_1231:                             #   in Loop: Header=BB0_1229 Depth=3
	lui r8, 1024
	or r17, r7, r8
.LBB0_1232:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	loads.w r7, 4(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	bneq r8, zero, .LBB0_1234
# %bb.1233:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r25)
	j .LBB0_1235
.LBB0_1234:                             #   in Loop: Header=BB0_1229 Depth=3
	lui r8, 1024
	or r19, r7, r8
.LBB0_1235:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	loads.w r7, 8(r15)
	and r8, r7, r27
	and r9, r7, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	bneq r8, zero, .LBB0_1237
# %bb.1236:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r25)
	j .LBB0_1238
.LBB0_1237:                             #   in Loop: Header=BB0_1229 Depth=3
	lui r8, 1024
	or r8, r7, r8
.LBB0_1238:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	loads.w r7, 12(r15)
	and r9, r7, r27
	and r13, r7, r3
	seteq r9, r9, r27
	setneq r13, r13, zero
	and r9, r9, r13
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	bneq r9, zero, .LBB0_1240
# %bb.1239:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r25)
	j .LBB0_1241
.LBB0_1240:                             #   in Loop: Header=BB0_1229 Depth=3
	lui r9, 1024
	or r9, r7, r9
.LBB0_1241:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	loads.w r7, 16(r15)
	and r13, r7, r27
	and r14, r7, r3
	seteq r13, r13, r27
	setneq r14, r14, zero
	and r13, r13, r14
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	bneq r13, zero, .LBB0_1243
# %bb.1242:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 16(r25)
	j .LBB0_1244
.LBB0_1243:                             #   in Loop: Header=BB0_1229 Depth=3
	lui r13, 1024
	or r7, r7, r13
.LBB0_1244:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	loads.w r13, 20(r15)
	and r14, r13, r27
	and r18, r13, r3
	seteq r14, r14, r27
	setneq r18, r18, zero
	and r14, r14, r18
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	bneq r14, zero, .LBB0_1246
# %bb.1245:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r25)
	j .LBB0_1247
.LBB0_1246:                             #   in Loop: Header=BB0_1229 Depth=3
	lui r14, 1024
	or r18, r13, r14
.LBB0_1247:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	loads.w r13, 24(r15)
	and r14, r13, r27
	and r24, r13, r3
	seteq r14, r14, r27
	setneq r24, r24, zero
	and r14, r14, r24
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	bneq r14, zero, .LBB0_1249
# %bb.1248:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 24(r25)
	j .LBB0_1250
.LBB0_1249:                             #   in Loop: Header=BB0_1229 Depth=3
	lui r14, 1024
	or r24, r13, r14
.LBB0_1250:                             # %vector.body375
                                        #   in Loop: Header=BB0_1229 Depth=3
	loads.w r13, 28(r15)
	and r14, r13, r27
	and r15, r13, r3
	seteq r14, r14, r27
	setneq r15, r15, zero
	and r14, r14, r15
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	beq r14, zero, .LBB0_1227
# %bb.1251:                             #   in Loop: Header=BB0_1229 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r15, r13, r14
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	j .LBB0_1228
.LBB0_1252:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, zero, 7
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1493 7                        # parallel-rne.mlir:1493:7
	mfence { sm }
.LBB0_1253:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1519 7                        # parallel-rne.mlir:1519:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1520 7                        # parallel-rne.mlir:1520:7
	addli r1, zero, 3
	.loc	1 1519 7                        # parallel-rne.mlir:1519:7
	sync_core
	.loc	1 1520 7                        # parallel-rne.mlir:1520:7
	bneq r26, r1, .LBB0_1255
# %bb.1254:                             # %.critedge37
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 19
	.loc	1 1521 7 is_stmt 1              # parallel-rne.mlir:1521:7
	addli r1, zero, 41
	.loc	1 1525 13                       # parallel-rne.mlir:1525:13
	addli r2, zero, 5
	.loc	1 1520 7                        # parallel-rne.mlir:1520:7
	xsignal r4, 0
	.loc	1 1521 7                        # parallel-rne.mlir:1521:7
	xsignal r1, 0
	.loc	1 1522 7                        # parallel-rne.mlir:1522:7
	addli r1, zero, 42
	xsignal r1, 0
	.loc	1 1525 13                       # parallel-rne.mlir:1525:13
	loadli.w r1,  -24(r30)
	mod.s r2, r1, r2
	addli r1, r1, 1
	storeli.w r1, -24(r30)
	.loc	1 1528 7                        # parallel-rne.mlir:1528:7
	xwait r4, 0
	.loc	1 1525 13                       # parallel-rne.mlir:1525:13
	slli r1, r2, 12
	.loc	1 1529 7                        # parallel-rne.mlir:1529:7
	addli r2, zero, 31
	xwait r2, 0
	.loc	1 1525 13                       # parallel-rne.mlir:1525:13
	loadli.w r2,  -3172(r30)                # 4-byte Folded Reload
	add.s r4, r1, r2
	.loc	1 1530 7                        # parallel-rne.mlir:1530:7
	addli r1, zero, 43
	xwait r1, 0
	.loc	1 1531 7                        # parallel-rne.mlir:1531:7
	addli r1, zero, 45
	xwait r1, 0
	j .LBB0_1258
.LBB0_1255:                             # %.critedge35
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 5
	.loc	1 1523 7 is_stmt 1              # parallel-rne.mlir:1523:7
	bneq r26, r4, .LBB0_1257
# %bb.1256:                             # %.thread125
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 42
	addli r5, zero, 2
	addli r6, zero, 511
	xwait r1, 0
	lock zero, r5
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, r1, 0
	ew_cfg zero, r6, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, zero, 19
	dsmadd r11, r11, r11, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	.loc	1 1525 13                       # parallel-rne.mlir:1525:13
	loadli.w r1,  -24(r30)
	addli r2, r1, 1
	mod.s r1, r1, r4
	storeli.w r2, -24(r30)
	.loc	1 1526 7                        # parallel-rne.mlir:1526:7
	addli r2, zero, 30
	xwait r2, 0
	addli r2, zero, 46
	xwait r2, 0
	lock zero, r5
	lui r2, 258048
	.loc	1 1525 13                       # parallel-rne.mlir:1525:13
	slli r1, r1, 12
	.loc	1 1526 7                        # parallel-rne.mlir:1526:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	.loc	1 1525 13                       # parallel-rne.mlir:1525:13
	loadli.w r2,  -3172(r30)                # 4-byte Folded Reload
	.loc	1 1526 7                        # parallel-rne.mlir:1526:7
	ew_cfg zero, r6, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	.loc	1 1525 13                       # parallel-rne.mlir:1525:13
	add.s r4, r1, r2
	.loc	1 1526 7                        # parallel-rne.mlir:1526:7
	addli r1, zero, 29
	dsmul r4, r20, r11, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r1, 0
	addli r1, zero, 43
	addli r5, zero, 7
	xsignal r1, 0
	addli r1, zero, 45
	xsignal r1, 0
	.loc	1 1528 7                        # parallel-rne.mlir:1528:7
	j .LBB0_1258
.LBB0_1257:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1525 13                       # parallel-rne.mlir:1525:13
	loadli.w r1,  -24(r30)
	mod.s r2, r1, r4
	loadli.w r4,  -3172(r30)                # 4-byte Folded Reload
	addli r1, r1, 1
	storeli.w r1, -24(r30)
	slli r2, r2, 12
	add.s r4, r2, r4
.LBB0_1258:                             # %.critedge39
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1535 7                        # parallel-rne.mlir:1535:7
	addli r1, zero, 255
	.loc	1 1533 7                        # parallel-rne.mlir:1533:7
	xfence
	.loc	1 1534 7                        # parallel-rne.mlir:1534:7
	mfence { lm, sm, gm }
	.loc	1 1535 7                        # parallel-rne.mlir:1535:7
	csr_set csr5, r1
	loadli.w r17,  -3048(r30)               # 4-byte Folded Reload
	sub.s r1, r10, r17
	storeli.w r1, -3092(r30)                # 4-byte Folded Spill
	sub.s r1, r10, r4
	storeli.w r1, -3096(r30)                # 4-byte Folded Spill
	sync_core
	.loc	1 1536 7                        # parallel-rne.mlir:1536:7
	beq r26, zero, .LBB0_1265
# %bb.1259:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1583 7                        # parallel-rne.mlir:1583:7
	addli r1, zero, 1
	beq r26, r1, .LBB0_1316
.LBB0_1260:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1630 7                        # parallel-rne.mlir:1630:7
	addli r1, zero, 2
	beq r26, r1, .LBB0_1367
.LBB0_1261:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1677 7                        # parallel-rne.mlir:1677:7
	addli r1, zero, 3
	beq r26, r1, .LBB0_1418
.LBB0_1262:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1724 7                        # parallel-rne.mlir:1724:7
	addli r1, zero, 4
	beq r26, r1, .LBB0_1469
.LBB0_1263:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1771 7                        # parallel-rne.mlir:1771:7
	addli r1, zero, 5
	beq r26, r1, .LBB0_1520
.LBB0_1264:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1818 7                        # parallel-rne.mlir:1818:7
	addli r1, zero, 6
	beq r26, r1, .LBB0_1571
	j .LBB0_1622
.LBB0_1265:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3092(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3096(r30)                # 4-byte Folded Reload
	addli r26, zero, 1
	zext_int2long r[19:20], zero
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 1536 7 is_stmt 1              # parallel-rne.mlir:1536:7
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_1267
.LBB0_1266:                             # %middle.block368
                                        #   in Loop: Header=BB0_1267 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, r30, -3056
	.loc	1 1544 9 is_stmt 1              # parallel-rne.mlir:1544:9
	andi r1, r26, 1
	addli r26, zero, 0
	load.d r[19:20], 0(r2)                  # 8-byte Folded Reload
	beq r1, zero, .LBB0_1315
.LBB0_1267:                             # %vector.memcheck354
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1288 Depth 3
                                        #       Child Loop BB0_1270 Depth 3
	.loc	1 1545 11                       # parallel-rne.mlir:1545:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_1286
# %bb.1268:                             # %scalar.ph360.preheader
                                        #   in Loop: Header=BB0_1267 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_1270
.LBB0_1269:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 1545 11                       # parallel-rne.mlir:1545:11
	addli r1, r30, -3040
	.loc	1 1578 13 is_stmt 1             # parallel-rne.mlir:1578:13
	add.s r2, r10, r2
	.loc	1 1545 11                       # parallel-rne.mlir:1545:11
	load.d r[8:9], 0(r1)                    # 8-byte Folded Reload
	.loc	1 1578 13                       # parallel-rne.mlir:1578:13
	stores.w r5, 0(r2)
	.loc	1 1545 11                       # parallel-rne.mlir:1545:11
	setlt.ul r1, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_1266
.LBB0_1270:                             # %scalar.ph360
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1546 19                       # parallel-rne.mlir:1546:19
	add.ul r[1:2], r[6:7], r[19:20]
	lui r9, 523264
	slli r2, r1, 2
	.loc	1 1547 19                       # parallel-rne.mlir:1547:19
	add.s r1, r11, r2
	.loc	1 1548 19                       # parallel-rne.mlir:1548:19
	add.s r5, r4, r2
	.loc	1 1547 19                       # parallel-rne.mlir:1547:19
	loads.w r1, 0(r1)
	.loc	1 1548 19                       # parallel-rne.mlir:1548:19
	loads.w r12, 0(r5)
	.loc	1 1551 19                       # parallel-rne.mlir:1551:19
	and r5, r1, r21
	lui r1, 523264
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	beq r5, r27, .LBB0_1272
# %bb.1271:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r12, 0
.LBB0_1272:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	loadli.w r8,  -3048(r30)                # 4-byte Folded Reload
	add.s r8, r8, r2
	loads.w r8, 0(r8)
	and r8, r8, r21
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r8, zero, .LBB0_1282
# %bb.1273:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r5, zero, .LBB0_1283
.LBB0_1274:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	beq r8, r27, .LBB0_1276
.LBB0_1275:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
.LBB0_1276:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	setlt.u r9, r27, r5
	lui r5, 523264
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r9, zero, .LBB0_1278
# %bb.1277:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
.LBB0_1278:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	setlt.u r8, r27, r8
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r8, zero, .LBB0_1280
# %bb.1279:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r5, 0
.LBB0_1280:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 1566 19 is_stmt 1             # parallel-rne.mlir:1566:19
	and r8, r1, r21
	.loc	1 1568 19                       # parallel-rne.mlir:1568:19
	setlt.u r5, r27, r8
	.loc	1 1569 19                       # parallel-rne.mlir:1569:19
	bneq r5, zero, .LBB0_1284
# %bb.1281:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r1, 0
	.loc	1 1575 19 is_stmt 1             # parallel-rne.mlir:1575:19
	setlt.u r8, r23, r8
	.loc	1 1576 20                       # parallel-rne.mlir:1576:20
	bneq r8, zero, .LBB0_1269
	j .LBB0_1285
.LBB0_1282:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r12, 0
	lui r12, 523264
	.loc	1 1565 19 is_stmt 1             # parallel-rne.mlir:1565:19
	beq r5, zero, .LBB0_1274
.LBB0_1283:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r9, 0
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r8, r27, .LBB0_1275
	j .LBB0_1276
.LBB0_1284:                             #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r1, r5
	.loc	1 1575 19 is_stmt 1             # parallel-rne.mlir:1575:19
	setlt.u r8, r23, r8
	.loc	1 1576 20                       # parallel-rne.mlir:1576:20
	bneq r8, zero, .LBB0_1269
.LBB0_1285:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	lui r5, 1048560
	add.s r1, r1, r22
	and r5, r1, r5
	j .LBB0_1269
.LBB0_1286:                             # %vector.body362.preheader
                                        #   in Loop: Header=BB0_1267 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_1288
.LBB0_1287:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 1545 11 is_stmt 1             # parallel-rne.mlir:1545:11
	addli r5, r30, -3056
	addli.d r[6:7], r[6:7], 4
	.loc	1 1578 13                       # parallel-rne.mlir:1578:13
	add.s r2, r10, r2
	.loc	1 1545 11                       # parallel-rne.mlir:1545:11
	load.d r[12:13], 0(r5)                  # 8-byte Folded Reload
	.loc	1 1578 13                       # parallel-rne.mlir:1578:13
	stores.w r9, 12(r2)
	stores.w r25, 8(r2)
	stores.w r1, 4(r2)
	stores.w r17, 0(r2)
	.loc	1 1545 11                       # parallel-rne.mlir:1545:11
	seteq.d r5, r[6:7], r[12:13]
	bneq r5, zero, .LBB0_1266
.LBB0_1288:                             # %vector.body362
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1546 19                       # parallel-rne.mlir:1546:19
	add.ul r[1:2], r[6:7], r[19:20]
	lui r18, 523264
	slli r2, r1, 2
	loadli.w r1,  -3048(r30)                # 4-byte Folded Reload
	.loc	1 1547 19                       # parallel-rne.mlir:1547:19
	add.s r25, r11, r2
	.loc	1 1546 19                       # parallel-rne.mlir:1546:19
	add.s r9, r1, r2
	.loc	1 1547 19                       # parallel-rne.mlir:1547:19
	loads.w r5, 0(r25)
	.loc	1 1546 19                       # parallel-rne.mlir:1546:19
	loads.w r1, 0(r9)
	.loc	1 1551 19                       # parallel-rne.mlir:1551:19
	and r5, r5, r21
	.loc	1 1553 19                       # parallel-rne.mlir:1553:19
	and r1, r1, r21
	.loc	1 1555 19                       # parallel-rne.mlir:1555:19
	seteq r12, r5, zero
	.loc	1 1557 19                       # parallel-rne.mlir:1557:19
	seteq r13, r5, r27
	.loc	1 1554 19                       # parallel-rne.mlir:1554:19
	seteq r8, r1, r27
	.loc	1 1558 19                       # parallel-rne.mlir:1558:19
	seteq r14, r1, zero
	.loc	1 1563 19                       # parallel-rne.mlir:1563:19
	max.u r1, r1, r5
	setlt.u r1, r27, r1
	.loc	1 1556 19                       # parallel-rne.mlir:1556:19
	and r5, r8, r12
	.loc	1 1559 19                       # parallel-rne.mlir:1559:19
	and r8, r14, r13
	lui r12, 523264
	.loc	1 1560 19                       # parallel-rne.mlir:1560:19
	or r8, r5, r8
	.loc	1 1548 19                       # parallel-rne.mlir:1548:19
	add.s r5, r4, r2
	.loc	1 1564 19                       # parallel-rne.mlir:1564:19
	or r1, r1, r8
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r1, zero, .LBB0_1290
# %bb.1289:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r5)
.LBB0_1290:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	loads.w r1, 4(r9)
	loads.w r8, 4(r25)
	and r1, r1, r21
	and r8, r8, r21
	seteq r13, r1, r27
	seteq r17, r1, zero
	seteq r14, r8, zero
	seteq r15, r8, r27
	max.u r1, r1, r8
	setlt.u r1, r27, r1
	and r8, r13, r14
	and r13, r17, r15
	lui r15, 523264
	or r8, r8, r13
	or r1, r1, r8
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r1, zero, .LBB0_1292
# %bb.1291:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 4(r5)
.LBB0_1292:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	loads.w r1, 8(r9)
	loads.w r8, 8(r25)
	and r1, r1, r21
	and r8, r8, r21
	seteq r13, r1, r27
	seteq r24, r1, zero
	seteq r14, r8, zero
	seteq r17, r8, r27
	max.u r1, r1, r8
	setlt.u r1, r27, r1
	and r8, r13, r14
	and r13, r24, r17
	or r8, r8, r13
	or r1, r1, r8
	lui r8, 523264
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r1, zero, .LBB0_1294
# %bb.1293:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r5)
.LBB0_1294:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	loads.w r1, 12(r9)
	loads.w r9, 12(r25)
	and r1, r1, r21
	and r9, r9, r21
	seteq r13, r1, r27
	seteq r24, r1, zero
	seteq r14, r9, zero
	seteq r17, r9, r27
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	and r9, r13, r14
	and r13, r24, r17
	or r9, r9, r13
	or r1, r1, r9
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r1, zero, .LBB0_1296
# %bb.1295:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r5)
.LBB0_1296:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 1566 19 is_stmt 1             # parallel-rne.mlir:1566:19
	and r5, r12, r21
	.loc	1 1568 19                       # parallel-rne.mlir:1568:19
	setlt.u r1, r27, r5
	.loc	1 1569 19                       # parallel-rne.mlir:1569:19
	bneq r1, zero, .LBB0_1298
# %bb.1297:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r12, 0
	j .LBB0_1299
.LBB0_1298:                             #   in Loop: Header=BB0_1288 Depth=3
	lui r1, 1024
	or r9, r12, r1
.LBB0_1299:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	and r24, r8, r21
	setlt.u r1, r27, r24
	.loc	1 1569 19                       # parallel-rne.mlir:1569:19
	bneq r1, zero, .LBB0_1301
# %bb.1300:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r8, 0
	j .LBB0_1302
.LBB0_1301:                             #   in Loop: Header=BB0_1288 Depth=3
	lui r1, 1024
	or r25, r8, r1
.LBB0_1302:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	and r28, r15, r21
	setlt.u r1, r27, r28
	.loc	1 1569 19                       # parallel-rne.mlir:1569:19
	bneq r1, zero, .LBB0_1304
# %bb.1303:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r15, 0
	j .LBB0_1305
.LBB0_1304:                             #   in Loop: Header=BB0_1288 Depth=3
	lui r1, 1024
	or r1, r15, r1
.LBB0_1305:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	and r13, r18, r21
	setlt.u r14, r27, r13
	.loc	1 1569 19                       # parallel-rne.mlir:1569:19
	bneq r14, zero, .LBB0_1307
# %bb.1306:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	.loc	1 1575 19 is_stmt 1             # parallel-rne.mlir:1575:19
	setlt.u r13, r23, r13
	.loc	1 1576 20                       # parallel-rne.mlir:1576:20
	beq r13, zero, .LBB0_1308
	j .LBB0_1309
.LBB0_1307:                             #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r17, r18, r14
	.loc	1 1575 19 is_stmt 1             # parallel-rne.mlir:1575:19
	setlt.u r13, r23, r13
	.loc	1 1576 20                       # parallel-rne.mlir:1576:20
	bneq r13, zero, .LBB0_1309
.LBB0_1308:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r13, r18, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r18, r13
	add.s r13, r13, r22
	and r17, r13, r14
.LBB0_1309:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	setlt.u r13, r23, r28
	.loc	1 1576 20                       # parallel-rne.mlir:1576:20
	bneq r13, zero, .LBB0_1311
# %bb.1310:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r15, 16
	lui r13, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r1, r1, r13
.LBB0_1311:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	setlt.u r13, r23, r24
	addli r28, zero, 64
	.loc	1 1576 20                       # parallel-rne.mlir:1576:20
	bneq r13, zero, .LBB0_1313
# %bb.1312:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r13, r8, 16
	andi r13, r13, 1
	add.s r8, r8, r13
	lui r13, 1048560
	add.s r8, r8, r22
	and r25, r8, r13
.LBB0_1313:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	setlt.u r5, r23, r5
	.loc	1 1576 20                       # parallel-rne.mlir:1576:20
	bneq r5, zero, .LBB0_1287
# %bb.1314:                             # %vector.body362
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r12, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r22
	and r9, r5, r8
	j .LBB0_1287
.LBB0_1315:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1536 7 is_stmt 1              # parallel-rne.mlir:1536:7
	mfence { sm }
	addli r5, zero, 7
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r26
	loadli.w r17,  -3048(r30)               # 4-byte Folded Reload
	.loc	1 1583 7                        # parallel-rne.mlir:1583:7
	addli r1, zero, 1
	bneq r26, r1, .LBB0_1260
.LBB0_1316:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3092(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3096(r30)                # 4-byte Folded Reload
	.loc	1 1583 7                        # parallel-rne.mlir:1583:7
	addli r5, r30, -3072
	addli r26, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 128
	zext_int2long r[19:20], r1
	addli r1, zero, 192
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_1318
.LBB0_1317:                             # %middle.block353
                                        #   in Loop: Header=BB0_1318 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, r30, -3072
	.loc	1 1591 9 is_stmt 1              # parallel-rne.mlir:1591:9
	andi r1, r26, 1
	addli r26, zero, 0
	load.d r[19:20], 0(r2)                  # 8-byte Folded Reload
	beq r1, zero, .LBB0_1366
.LBB0_1318:                             # %vector.memcheck339
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1339 Depth 3
                                        #       Child Loop BB0_1321 Depth 3
	.loc	1 1592 11                       # parallel-rne.mlir:1592:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_1337
# %bb.1319:                             # %scalar.ph345.preheader
                                        #   in Loop: Header=BB0_1318 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_1321
.LBB0_1320:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 1592 11                       # parallel-rne.mlir:1592:11
	addli r2, r30, -3040
	.loc	1 1625 13 is_stmt 1             # parallel-rne.mlir:1625:13
	add.s r1, r10, r1
	.loc	1 1592 11                       # parallel-rne.mlir:1592:11
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 1625 13                       # parallel-rne.mlir:1625:13
	stores.w r7, 0(r1)
	.loc	1 1592 11                       # parallel-rne.mlir:1592:11
	setlt.ul r2, r[5:6], r[8:9]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_1317
.LBB0_1321:                             # %scalar.ph345
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1318 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1593 19                       # parallel-rne.mlir:1593:19
	add.ul r[1:2], r[5:6], r[19:20]
	lui r9, 523264
	slli r1, r1, 2
	.loc	1 1594 19                       # parallel-rne.mlir:1594:19
	add.s r2, r11, r1
	.loc	1 1595 19                       # parallel-rne.mlir:1595:19
	add.s r7, r4, r1
	.loc	1 1594 19                       # parallel-rne.mlir:1594:19
	loads.w r2, 0(r2)
	.loc	1 1595 19                       # parallel-rne.mlir:1595:19
	loads.w r12, 0(r7)
	.loc	1 1598 19                       # parallel-rne.mlir:1598:19
	and r7, r2, r21
	lui r2, 523264
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	beq r7, r27, .LBB0_1323
# %bb.1322:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r12, 0
.LBB0_1323:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	loadli.w r8,  -3048(r30)                # 4-byte Folded Reload
	add.s r8, r8, r1
	loads.w r8, 0(r8)
	and r8, r8, r21
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	bneq r8, zero, .LBB0_1333
# %bb.1324:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	bneq r7, zero, .LBB0_1334
.LBB0_1325:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	beq r8, r27, .LBB0_1327
.LBB0_1326:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
.LBB0_1327:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	setlt.u r9, r27, r7
	lui r7, 523264
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	bneq r9, zero, .LBB0_1329
# %bb.1328:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r12, 0
.LBB0_1329:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	setlt.u r8, r27, r8
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	bneq r8, zero, .LBB0_1331
# %bb.1330:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
.LBB0_1331:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 1613 19 is_stmt 1             # parallel-rne.mlir:1613:19
	and r8, r2, r21
	.loc	1 1615 19                       # parallel-rne.mlir:1615:19
	setlt.u r7, r27, r8
	.loc	1 1616 19                       # parallel-rne.mlir:1616:19
	bneq r7, zero, .LBB0_1335
# %bb.1332:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r2, 0
	.loc	1 1622 19 is_stmt 1             # parallel-rne.mlir:1622:19
	setlt.u r8, r23, r8
	.loc	1 1623 20                       # parallel-rne.mlir:1623:20
	bneq r8, zero, .LBB0_1320
	j .LBB0_1336
.LBB0_1333:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r12, 0
	lui r12, 523264
	.loc	1 1612 19 is_stmt 1             # parallel-rne.mlir:1612:19
	beq r7, zero, .LBB0_1325
.LBB0_1334:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r9, 0
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	bneq r8, r27, .LBB0_1326
	j .LBB0_1327
.LBB0_1335:                             #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r2, r7
	.loc	1 1622 19 is_stmt 1             # parallel-rne.mlir:1622:19
	setlt.u r8, r23, r8
	.loc	1 1623 20                       # parallel-rne.mlir:1623:20
	bneq r8, zero, .LBB0_1320
.LBB0_1336:                             # %scalar.ph345
                                        #   in Loop: Header=BB0_1321 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	lui r7, 1048560
	add.s r2, r2, r22
	and r7, r2, r7
	j .LBB0_1320
.LBB0_1337:                             # %vector.body347.preheader
                                        #   in Loop: Header=BB0_1318 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_1339
.LBB0_1338:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 1592 11 is_stmt 1             # parallel-rne.mlir:1592:11
	addli r1, r30, -3056
	addli.d r[6:7], r[6:7], 4
	load.d r[8:9], 0(r1)                    # 8-byte Folded Reload
	seteq.d r1, r[6:7], r[8:9]
	.loc	1 1625 13                       # parallel-rne.mlir:1625:13
	add.s r8, r10, r12
	stores.w r5, 12(r8)
	stores.w r2, 8(r8)
	stores.w r17, 4(r8)
	stores.w r18, 0(r8)
	.loc	1 1592 11                       # parallel-rne.mlir:1592:11
	bneq r1, zero, .LBB0_1317
.LBB0_1339:                             # %vector.body347
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1318 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1593 19                       # parallel-rne.mlir:1593:19
	add.ul r[1:2], r[6:7], r[19:20]
	lui r25, 523264
	slli r12, r1, 2
	loadli.w r1,  -3048(r30)                # 4-byte Folded Reload
	add.s r5, r1, r12
	.loc	1 1594 19                       # parallel-rne.mlir:1594:19
	add.s r1, r11, r12
	.loc	1 1593 19                       # parallel-rne.mlir:1593:19
	loads.w r2, 0(r5)
	.loc	1 1594 19                       # parallel-rne.mlir:1594:19
	loads.w r8, 0(r1)
	.loc	1 1600 19                       # parallel-rne.mlir:1600:19
	and r2, r2, r21
	.loc	1 1598 19                       # parallel-rne.mlir:1598:19
	and r8, r8, r21
	.loc	1 1601 19                       # parallel-rne.mlir:1601:19
	seteq r9, r2, r27
	.loc	1 1605 19                       # parallel-rne.mlir:1605:19
	seteq r15, r2, zero
	.loc	1 1602 19                       # parallel-rne.mlir:1602:19
	seteq r13, r8, zero
	.loc	1 1604 19                       # parallel-rne.mlir:1604:19
	seteq r14, r8, r27
	.loc	1 1610 19                       # parallel-rne.mlir:1610:19
	max.u r2, r2, r8
	setlt.u r8, r27, r2
	.loc	1 1603 19                       # parallel-rne.mlir:1603:19
	and r2, r9, r13
	.loc	1 1606 19                       # parallel-rne.mlir:1606:19
	and r9, r15, r14
	lui r15, 523264
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	or r9, r2, r9
	.loc	1 1595 19                       # parallel-rne.mlir:1595:19
	add.s r2, r4, r12
	.loc	1 1611 19                       # parallel-rne.mlir:1611:19
	or r8, r8, r9
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	bneq r8, zero, .LBB0_1341
# %bb.1340:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r2)
.LBB0_1341:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	loads.w r8, 4(r5)
	loads.w r9, 4(r1)
	and r8, r8, r21
	and r9, r9, r21
	seteq r13, r8, r27
	seteq r18, r8, zero
	seteq r14, r9, zero
	seteq r17, r9, r27
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	and r9, r13, r14
	and r13, r18, r17
	or r9, r9, r13
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	bneq r8, zero, .LBB0_1343
# %bb.1342:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 4(r2)
.LBB0_1343:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	loads.w r8, 8(r5)
	loads.w r13, 8(r1)
	and r8, r8, r21
	and r13, r13, r21
	seteq r14, r8, r27
	seteq r24, r8, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r8, r8, r13
	setlt.u r8, r27, r8
	and r13, r14, r17
	and r14, r24, r18
	or r13, r13, r14
	or r13, r8, r13
	lui r8, 523264
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	bneq r13, zero, .LBB0_1345
# %bb.1344:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r2)
.LBB0_1345:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	loads.w r5, 12(r5)
	loads.w r1, 12(r1)
	and r5, r5, r21
	and r1, r1, r21
	seteq r13, r5, r27
	seteq r14, r1, zero
	seteq r17, r1, r27
	seteq r18, r5, zero
	max.u r1, r5, r1
	setlt.u r1, r27, r1
	and r5, r13, r14
	and r13, r18, r17
	or r5, r5, r13
	or r1, r1, r5
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	bneq r1, zero, .LBB0_1347
# %bb.1346:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r2)
.LBB0_1347:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 1613 19 is_stmt 1             # parallel-rne.mlir:1613:19
	and r1, r25, r21
	.loc	1 1615 19                       # parallel-rne.mlir:1615:19
	setlt.u r2, r27, r1
	.loc	1 1616 19                       # parallel-rne.mlir:1616:19
	bneq r2, zero, .LBB0_1349
# %bb.1348:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r25, 0
	j .LBB0_1350
.LBB0_1349:                             #   in Loop: Header=BB0_1339 Depth=3
	lui r2, 1024
	or r5, r25, r2
.LBB0_1350:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	and r24, r8, r21
	setlt.u r2, r27, r24
	.loc	1 1616 19                       # parallel-rne.mlir:1616:19
	bneq r2, zero, .LBB0_1352
# %bb.1351:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_1353
.LBB0_1352:                             #   in Loop: Header=BB0_1339 Depth=3
	lui r2, 1024
	or r2, r8, r2
.LBB0_1353:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	and r28, r9, r21
	setlt.u r13, r27, r28
	.loc	1 1616 19                       # parallel-rne.mlir:1616:19
	bneq r13, zero, .LBB0_1355
# %bb.1354:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r9, 0
	j .LBB0_1356
.LBB0_1355:                             #   in Loop: Header=BB0_1339 Depth=3
	lui r13, 1024
	or r17, r9, r13
.LBB0_1356:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	and r13, r15, r21
	setlt.u r14, r27, r13
	.loc	1 1616 19                       # parallel-rne.mlir:1616:19
	bneq r14, zero, .LBB0_1358
# %bb.1357:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r15, 0
	.loc	1 1622 19 is_stmt 1             # parallel-rne.mlir:1622:19
	setlt.u r13, r23, r13
	.loc	1 1623 20                       # parallel-rne.mlir:1623:20
	beq r13, zero, .LBB0_1359
	j .LBB0_1360
.LBB0_1358:                             #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r18, r15, r14
	.loc	1 1622 19 is_stmt 1             # parallel-rne.mlir:1622:19
	setlt.u r13, r23, r13
	.loc	1 1623 20                       # parallel-rne.mlir:1623:20
	bneq r13, zero, .LBB0_1360
.LBB0_1359:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r13, r15, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r22
	and r18, r13, r14
.LBB0_1360:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	setlt.u r13, r23, r28
	.loc	1 1623 20                       # parallel-rne.mlir:1623:20
	bneq r13, zero, .LBB0_1362
# %bb.1361:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	lui r13, 1048560
	add.s r9, r9, r22
	and r17, r9, r13
.LBB0_1362:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	setlt.u r9, r23, r24
	addli r28, zero, 64
	.loc	1 1623 20                       # parallel-rne.mlir:1623:20
	bneq r9, zero, .LBB0_1364
# %bb.1363:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	lui r8, 1048560
	add.s r2, r2, r22
	and r2, r2, r8
.LBB0_1364:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	setlt.u r1, r23, r1
	.loc	1 1623 20                       # parallel-rne.mlir:1623:20
	bneq r1, zero, .LBB0_1338
# %bb.1365:                             # %vector.body347
                                        #   in Loop: Header=BB0_1339 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r25, 16
	lui r5, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r22
	and r5, r1, r5
	j .LBB0_1338
.LBB0_1366:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1583 7 is_stmt 1              # parallel-rne.mlir:1583:7
	mfence { sm }
	addli r5, zero, 7
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r26
	loadli.w r17,  -3048(r30)               # 4-byte Folded Reload
	.loc	1 1630 7                        # parallel-rne.mlir:1630:7
	addli r1, zero, 2
	bneq r26, r1, .LBB0_1261
.LBB0_1367:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3092(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3096(r30)                # 4-byte Folded Reload
	addli r5, zero, 320
	.loc	1 1630 7                        # parallel-rne.mlir:1630:7
	addli r7, r30, -3072
	addli r26, zero, 1
	zext_int2long r[5:6], r5
	min.u r1, r1, r2
	addli r2, zero, 16
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	setlt.u r1, r1, r2
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 256
	xfence
	zext_int2long r[1:2], r1
	mfence { lm, sm, gm }
	j .LBB0_1369
.LBB0_1368:                             # %middle.block338
                                        #   in Loop: Header=BB0_1369 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r6, r30, -3072
	.loc	1 1638 9 is_stmt 1              # parallel-rne.mlir:1638:9
	andi r5, r26, 1
	addli r26, zero, 0
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	beq r5, zero, .LBB0_1417
.LBB0_1369:                             # %vector.memcheck324
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1390 Depth 3
                                        #       Child Loop BB0_1372 Depth 3
	.loc	1 1639 11                       # parallel-rne.mlir:1639:11
	loadli.w r5,  -3064(r30)                # 4-byte Folded Reload
	beq r5, zero, .LBB0_1388
# %bb.1370:                             # %scalar.ph330.preheader
                                        #   in Loop: Header=BB0_1369 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_1372
.LBB0_1371:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 1639 11                       # parallel-rne.mlir:1639:11
	addli r8, r30, -3040
	.loc	1 1672 13 is_stmt 1             # parallel-rne.mlir:1672:13
	add.s r7, r10, r7
	.loc	1 1639 11                       # parallel-rne.mlir:1639:11
	load.d r[12:13], 0(r8)                  # 8-byte Folded Reload
	.loc	1 1672 13                       # parallel-rne.mlir:1672:13
	stores.w r9, 0(r7)
	.loc	1 1639 11                       # parallel-rne.mlir:1639:11
	setlt.ul r8, r[5:6], r[12:13]
	addli.d r[5:6], r[5:6], 1
	beq r8, zero, .LBB0_1368
.LBB0_1372:                             # %scalar.ph330
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1369 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1640 19                       # parallel-rne.mlir:1640:19
	add.ul r[7:8], r[5:6], r[1:2]
	lui r15, 523264
	slli r7, r7, 2
	.loc	1 1641 19                       # parallel-rne.mlir:1641:19
	add.s r8, r11, r7
	.loc	1 1642 19                       # parallel-rne.mlir:1642:19
	add.s r9, r4, r7
	.loc	1 1641 19                       # parallel-rne.mlir:1641:19
	loads.w r8, 0(r8)
	.loc	1 1642 19                       # parallel-rne.mlir:1642:19
	loads.w r13, 0(r9)
	.loc	1 1645 19                       # parallel-rne.mlir:1645:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	beq r9, r27, .LBB0_1374
# %bb.1373:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
.LBB0_1374:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	add.s r12, r17, r7
	loads.w r12, 0(r12)
	and r12, r12, r21
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r12, zero, .LBB0_1384
# %bb.1375:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r9, zero, .LBB0_1385
.LBB0_1376:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	beq r12, r27, .LBB0_1378
.LBB0_1377:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r15, 0
.LBB0_1378:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	setlt.u r14, r27, r9
	lui r9, 523264
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r14, zero, .LBB0_1380
# %bb.1379:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_1380:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	setlt.u r12, r27, r12
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r12, zero, .LBB0_1382
# %bb.1381:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
.LBB0_1382:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 1660 19 is_stmt 1             # parallel-rne.mlir:1660:19
	and r12, r8, r21
	.loc	1 1662 19                       # parallel-rne.mlir:1662:19
	setlt.u r9, r27, r12
	.loc	1 1663 19                       # parallel-rne.mlir:1663:19
	bneq r9, zero, .LBB0_1386
# %bb.1383:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 1669 19 is_stmt 1             # parallel-rne.mlir:1669:19
	setlt.u r12, r23, r12
	.loc	1 1670 20                       # parallel-rne.mlir:1670:20
	bneq r12, zero, .LBB0_1371
	j .LBB0_1387
.LBB0_1384:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r15, r13, 0
	lui r13, 523264
	.loc	1 1659 19 is_stmt 1             # parallel-rne.mlir:1659:19
	beq r9, zero, .LBB0_1376
.LBB0_1385:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r15, 0
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r12, r27, .LBB0_1377
	j .LBB0_1378
.LBB0_1386:                             #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r8, r9
	.loc	1 1669 19 is_stmt 1             # parallel-rne.mlir:1669:19
	setlt.u r12, r23, r12
	.loc	1 1670 20                       # parallel-rne.mlir:1670:20
	bneq r12, zero, .LBB0_1371
.LBB0_1387:                             # %scalar.ph330
                                        #   in Loop: Header=BB0_1372 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	lui r9, 1048560
	add.s r8, r8, r22
	and r9, r8, r9
	j .LBB0_1371
.LBB0_1388:                             # %vector.body332.preheader
                                        #   in Loop: Header=BB0_1369 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_1390
.LBB0_1389:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 1639 11 is_stmt 1             # parallel-rne.mlir:1639:11
	addli r13, r30, -3056
	addli.d r[6:7], r[6:7], 4
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	seteq.d r8, r[6:7], r[8:9]
	.loc	1 1672 13                       # parallel-rne.mlir:1672:13
	add.s r9, r10, r12
	stores.w r17, 4(r9)
	loadli.w r17,  -3048(r30)               # 4-byte Folded Reload
	stores.w r5, 12(r9)
	stores.w r20, 8(r9)
	stores.w r18, 0(r9)
	.loc	1 1639 11                       # parallel-rne.mlir:1639:11
	bneq r8, zero, .LBB0_1368
.LBB0_1390:                             # %vector.body332
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1369 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1640 19                       # parallel-rne.mlir:1640:19
	add.ul r[8:9], r[6:7], r[1:2]
	lui r25, 523264
	slli r12, r8, 2
	add.s r5, r17, r12
	.loc	1 1641 19                       # parallel-rne.mlir:1641:19
	add.s r19, r11, r12
	.loc	1 1642 19                       # parallel-rne.mlir:1642:19
	add.s r20, r4, r12
	.loc	1 1640 19                       # parallel-rne.mlir:1640:19
	loads.w r8, 0(r5)
	.loc	1 1641 19                       # parallel-rne.mlir:1641:19
	loads.w r9, 0(r19)
	.loc	1 1647 19                       # parallel-rne.mlir:1647:19
	and r8, r8, r21
	.loc	1 1645 19                       # parallel-rne.mlir:1645:19
	and r9, r9, r21
	.loc	1 1648 19                       # parallel-rne.mlir:1648:19
	seteq r13, r8, r27
	.loc	1 1652 19                       # parallel-rne.mlir:1652:19
	seteq r17, r8, zero
	.loc	1 1649 19                       # parallel-rne.mlir:1649:19
	seteq r14, r9, zero
	.loc	1 1651 19                       # parallel-rne.mlir:1651:19
	seteq r15, r9, r27
	.loc	1 1657 19                       # parallel-rne.mlir:1657:19
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	.loc	1 1650 19                       # parallel-rne.mlir:1650:19
	and r9, r13, r14
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	and r13, r17, r15
	lui r15, 523264
	.loc	1 1654 19                       # parallel-rne.mlir:1654:19
	or r9, r9, r13
	.loc	1 1658 19                       # parallel-rne.mlir:1658:19
	or r8, r8, r9
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r8, zero, .LBB0_1392
# %bb.1391:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r20)
.LBB0_1392:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	loads.w r8, 4(r5)
	loads.w r9, 4(r19)
	and r8, r8, r21
	and r9, r9, r21
	seteq r13, r8, r27
	seteq r18, r8, zero
	seteq r14, r9, zero
	seteq r17, r9, r27
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	and r9, r13, r14
	and r13, r18, r17
	or r9, r9, r13
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r8, zero, .LBB0_1394
# %bb.1393:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 4(r20)
.LBB0_1394:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	loads.w r8, 8(r5)
	loads.w r13, 8(r19)
	and r8, r8, r21
	and r13, r13, r21
	seteq r14, r8, r27
	seteq r24, r8, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r8, r8, r13
	setlt.u r8, r27, r8
	and r13, r14, r17
	and r14, r24, r18
	or r13, r13, r14
	or r13, r8, r13
	lui r8, 523264
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r13, zero, .LBB0_1396
# %bb.1395:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r20)
.LBB0_1396:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	loads.w r5, 12(r5)
	loads.w r13, 12(r19)
	and r5, r5, r21
	and r13, r13, r21
	seteq r14, r5, r27
	seteq r19, r5, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r5, r5, r13
	setlt.u r5, r27, r5
	and r13, r14, r17
	and r14, r19, r18
	or r13, r13, r14
	or r5, r5, r13
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r5, zero, .LBB0_1398
# %bb.1397:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r20)
.LBB0_1398:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 1660 19 is_stmt 1             # parallel-rne.mlir:1660:19
	and r19, r25, r21
	.loc	1 1662 19                       # parallel-rne.mlir:1662:19
	setlt.u r5, r27, r19
	.loc	1 1663 19                       # parallel-rne.mlir:1663:19
	bneq r5, zero, .LBB0_1400
# %bb.1399:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r25, 0
	j .LBB0_1401
.LBB0_1400:                             #   in Loop: Header=BB0_1390 Depth=3
	lui r5, 1024
	or r5, r25, r5
.LBB0_1401:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	and r24, r8, r21
	setlt.u r13, r27, r24
	.loc	1 1663 19                       # parallel-rne.mlir:1663:19
	bneq r13, zero, .LBB0_1403
# %bb.1402:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_1404
.LBB0_1403:                             #   in Loop: Header=BB0_1390 Depth=3
	lui r13, 1024
	or r20, r8, r13
.LBB0_1404:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	and r28, r9, r21
	setlt.u r13, r27, r28
	.loc	1 1663 19                       # parallel-rne.mlir:1663:19
	bneq r13, zero, .LBB0_1406
# %bb.1405:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r9, 0
	j .LBB0_1407
.LBB0_1406:                             #   in Loop: Header=BB0_1390 Depth=3
	lui r13, 1024
	or r17, r9, r13
.LBB0_1407:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	and r13, r15, r21
	setlt.u r14, r27, r13
	.loc	1 1663 19                       # parallel-rne.mlir:1663:19
	bneq r14, zero, .LBB0_1409
# %bb.1408:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r15, 0
	.loc	1 1669 19 is_stmt 1             # parallel-rne.mlir:1669:19
	setlt.u r13, r23, r13
	.loc	1 1670 20                       # parallel-rne.mlir:1670:20
	beq r13, zero, .LBB0_1410
	j .LBB0_1411
.LBB0_1409:                             #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r18, r15, r14
	.loc	1 1669 19 is_stmt 1             # parallel-rne.mlir:1669:19
	setlt.u r13, r23, r13
	.loc	1 1670 20                       # parallel-rne.mlir:1670:20
	bneq r13, zero, .LBB0_1411
.LBB0_1410:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r13, r15, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r22
	and r18, r13, r14
.LBB0_1411:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	setlt.u r13, r23, r28
	.loc	1 1670 20                       # parallel-rne.mlir:1670:20
	bneq r13, zero, .LBB0_1413
# %bb.1412:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	lui r13, 1048560
	add.s r9, r9, r22
	and r17, r9, r13
.LBB0_1413:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	setlt.u r9, r23, r24
	addli r28, zero, 64
	.loc	1 1670 20                       # parallel-rne.mlir:1670:20
	bneq r9, zero, .LBB0_1415
# %bb.1414:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	lui r9, 1048560
	add.s r8, r8, r22
	and r20, r8, r9
.LBB0_1415:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	setlt.u r8, r23, r19
	.loc	1 1670 20                       # parallel-rne.mlir:1670:20
	bneq r8, zero, .LBB0_1389
# %bb.1416:                             # %vector.body332
                                        #   in Loop: Header=BB0_1390 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r25, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r25, r5
	add.s r5, r5, r22
	and r5, r5, r8
	j .LBB0_1389
.LBB0_1417:                             #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 7
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1630 7                        # parallel-rne.mlir:1630:7
	mfence { sm }
	.loc	1 1677 7                        # parallel-rne.mlir:1677:7
	addli r1, zero, 3
	bneq r26, r1, .LBB0_1262
.LBB0_1418:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3092(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3096(r30)                # 4-byte Folded Reload
	addli r5, zero, 448
	.loc	1 1677 7                        # parallel-rne.mlir:1677:7
	addli r7, r30, -3072
	addli r26, zero, 1
	zext_int2long r[5:6], r5
	min.u r1, r1, r2
	addli r2, zero, 16
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	setlt.u r1, r1, r2
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 384
	xfence
	zext_int2long r[1:2], r1
	mfence { lm, sm, gm }
	j .LBB0_1420
.LBB0_1419:                             # %middle.block323
                                        #   in Loop: Header=BB0_1420 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r6, r30, -3072
	.loc	1 1685 9 is_stmt 1              # parallel-rne.mlir:1685:9
	andi r5, r26, 1
	addli r26, zero, 0
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	beq r5, zero, .LBB0_1468
.LBB0_1420:                             # %vector.memcheck309
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1441 Depth 3
                                        #       Child Loop BB0_1423 Depth 3
	.loc	1 1686 11                       # parallel-rne.mlir:1686:11
	loadli.w r5,  -3064(r30)                # 4-byte Folded Reload
	beq r5, zero, .LBB0_1439
# %bb.1421:                             # %scalar.ph315.preheader
                                        #   in Loop: Header=BB0_1420 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_1423
.LBB0_1422:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 1686 11                       # parallel-rne.mlir:1686:11
	addli r8, r30, -3040
	.loc	1 1719 13 is_stmt 1             # parallel-rne.mlir:1719:13
	add.s r7, r10, r7
	.loc	1 1686 11                       # parallel-rne.mlir:1686:11
	load.d r[12:13], 0(r8)                  # 8-byte Folded Reload
	.loc	1 1719 13                       # parallel-rne.mlir:1719:13
	stores.w r9, 0(r7)
	.loc	1 1686 11                       # parallel-rne.mlir:1686:11
	setlt.ul r8, r[5:6], r[12:13]
	addli.d r[5:6], r[5:6], 1
	beq r8, zero, .LBB0_1419
.LBB0_1423:                             # %scalar.ph315
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1420 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1687 19                       # parallel-rne.mlir:1687:19
	add.ul r[7:8], r[5:6], r[1:2]
	lui r15, 523264
	slli r7, r7, 2
	.loc	1 1688 19                       # parallel-rne.mlir:1688:19
	add.s r8, r11, r7
	.loc	1 1689 19                       # parallel-rne.mlir:1689:19
	add.s r9, r4, r7
	.loc	1 1688 19                       # parallel-rne.mlir:1688:19
	loads.w r8, 0(r8)
	.loc	1 1689 19                       # parallel-rne.mlir:1689:19
	loads.w r13, 0(r9)
	.loc	1 1692 19                       # parallel-rne.mlir:1692:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	beq r9, r27, .LBB0_1425
# %bb.1424:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
.LBB0_1425:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	add.s r12, r17, r7
	loads.w r12, 0(r12)
	and r12, r12, r21
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	bneq r12, zero, .LBB0_1435
# %bb.1426:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	bneq r9, zero, .LBB0_1436
.LBB0_1427:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	beq r12, r27, .LBB0_1429
.LBB0_1428:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r15, 0
.LBB0_1429:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	setlt.u r14, r27, r9
	lui r9, 523264
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	bneq r14, zero, .LBB0_1431
# %bb.1430:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_1431:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	setlt.u r12, r27, r12
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	bneq r12, zero, .LBB0_1433
# %bb.1432:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
.LBB0_1433:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 1707 19 is_stmt 1             # parallel-rne.mlir:1707:19
	and r12, r8, r21
	.loc	1 1709 19                       # parallel-rne.mlir:1709:19
	setlt.u r9, r27, r12
	.loc	1 1710 19                       # parallel-rne.mlir:1710:19
	bneq r9, zero, .LBB0_1437
# %bb.1434:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 1716 19 is_stmt 1             # parallel-rne.mlir:1716:19
	setlt.u r12, r23, r12
	.loc	1 1717 20                       # parallel-rne.mlir:1717:20
	bneq r12, zero, .LBB0_1422
	j .LBB0_1438
.LBB0_1435:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r15, r13, 0
	lui r13, 523264
	.loc	1 1706 19 is_stmt 1             # parallel-rne.mlir:1706:19
	beq r9, zero, .LBB0_1427
.LBB0_1436:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r15, 0
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	bneq r12, r27, .LBB0_1428
	j .LBB0_1429
.LBB0_1437:                             #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r8, r9
	.loc	1 1716 19 is_stmt 1             # parallel-rne.mlir:1716:19
	setlt.u r12, r23, r12
	.loc	1 1717 20                       # parallel-rne.mlir:1717:20
	bneq r12, zero, .LBB0_1422
.LBB0_1438:                             # %scalar.ph315
                                        #   in Loop: Header=BB0_1423 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	lui r9, 1048560
	add.s r8, r8, r22
	and r9, r8, r9
	j .LBB0_1422
.LBB0_1439:                             # %vector.body317.preheader
                                        #   in Loop: Header=BB0_1420 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_1441
.LBB0_1440:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 1686 11 is_stmt 1             # parallel-rne.mlir:1686:11
	addli r13, r30, -3056
	addli.d r[6:7], r[6:7], 4
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	seteq.d r8, r[6:7], r[8:9]
	.loc	1 1719 13                       # parallel-rne.mlir:1719:13
	add.s r9, r10, r12
	stores.w r17, 4(r9)
	loadli.w r17,  -3048(r30)               # 4-byte Folded Reload
	stores.w r5, 12(r9)
	stores.w r20, 8(r9)
	stores.w r18, 0(r9)
	.loc	1 1686 11                       # parallel-rne.mlir:1686:11
	bneq r8, zero, .LBB0_1419
.LBB0_1441:                             # %vector.body317
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1420 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1687 19                       # parallel-rne.mlir:1687:19
	add.ul r[8:9], r[6:7], r[1:2]
	lui r25, 523264
	slli r12, r8, 2
	add.s r5, r17, r12
	.loc	1 1688 19                       # parallel-rne.mlir:1688:19
	add.s r19, r11, r12
	.loc	1 1689 19                       # parallel-rne.mlir:1689:19
	add.s r20, r4, r12
	.loc	1 1687 19                       # parallel-rne.mlir:1687:19
	loads.w r8, 0(r5)
	.loc	1 1688 19                       # parallel-rne.mlir:1688:19
	loads.w r9, 0(r19)
	.loc	1 1694 19                       # parallel-rne.mlir:1694:19
	and r8, r8, r21
	.loc	1 1692 19                       # parallel-rne.mlir:1692:19
	and r9, r9, r21
	.loc	1 1695 19                       # parallel-rne.mlir:1695:19
	seteq r13, r8, r27
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	seteq r17, r8, zero
	.loc	1 1696 19                       # parallel-rne.mlir:1696:19
	seteq r14, r9, zero
	.loc	1 1698 19                       # parallel-rne.mlir:1698:19
	seteq r15, r9, r27
	.loc	1 1704 19                       # parallel-rne.mlir:1704:19
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	.loc	1 1697 19                       # parallel-rne.mlir:1697:19
	and r9, r13, r14
	.loc	1 1700 19                       # parallel-rne.mlir:1700:19
	and r13, r17, r15
	lui r15, 523264
	.loc	1 1701 19                       # parallel-rne.mlir:1701:19
	or r9, r9, r13
	.loc	1 1705 19                       # parallel-rne.mlir:1705:19
	or r8, r8, r9
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	bneq r8, zero, .LBB0_1443
# %bb.1442:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r20)
.LBB0_1443:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	loads.w r8, 4(r5)
	loads.w r9, 4(r19)
	and r8, r8, r21
	and r9, r9, r21
	seteq r13, r8, r27
	seteq r18, r8, zero
	seteq r14, r9, zero
	seteq r17, r9, r27
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	and r9, r13, r14
	and r13, r18, r17
	or r9, r9, r13
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	bneq r8, zero, .LBB0_1445
# %bb.1444:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 4(r20)
.LBB0_1445:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	loads.w r8, 8(r5)
	loads.w r13, 8(r19)
	and r8, r8, r21
	and r13, r13, r21
	seteq r14, r8, r27
	seteq r24, r8, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r8, r8, r13
	setlt.u r8, r27, r8
	and r13, r14, r17
	and r14, r24, r18
	or r13, r13, r14
	or r13, r8, r13
	lui r8, 523264
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	bneq r13, zero, .LBB0_1447
# %bb.1446:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r20)
.LBB0_1447:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	loads.w r5, 12(r5)
	loads.w r13, 12(r19)
	and r5, r5, r21
	and r13, r13, r21
	seteq r14, r5, r27
	seteq r19, r5, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r5, r5, r13
	setlt.u r5, r27, r5
	and r13, r14, r17
	and r14, r19, r18
	or r13, r13, r14
	or r5, r5, r13
	.loc	1 1706 19                       # parallel-rne.mlir:1706:19
	bneq r5, zero, .LBB0_1449
# %bb.1448:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r20)
.LBB0_1449:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 1707 19 is_stmt 1             # parallel-rne.mlir:1707:19
	and r19, r25, r21
	.loc	1 1709 19                       # parallel-rne.mlir:1709:19
	setlt.u r5, r27, r19
	.loc	1 1710 19                       # parallel-rne.mlir:1710:19
	bneq r5, zero, .LBB0_1451
# %bb.1450:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r25, 0
	j .LBB0_1452
.LBB0_1451:                             #   in Loop: Header=BB0_1441 Depth=3
	lui r5, 1024
	or r5, r25, r5
.LBB0_1452:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	and r24, r8, r21
	setlt.u r13, r27, r24
	.loc	1 1710 19                       # parallel-rne.mlir:1710:19
	bneq r13, zero, .LBB0_1454
# %bb.1453:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_1455
.LBB0_1454:                             #   in Loop: Header=BB0_1441 Depth=3
	lui r13, 1024
	or r20, r8, r13
.LBB0_1455:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	and r28, r9, r21
	setlt.u r13, r27, r28
	.loc	1 1710 19                       # parallel-rne.mlir:1710:19
	bneq r13, zero, .LBB0_1457
# %bb.1456:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r9, 0
	j .LBB0_1458
.LBB0_1457:                             #   in Loop: Header=BB0_1441 Depth=3
	lui r13, 1024
	or r17, r9, r13
.LBB0_1458:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	and r13, r15, r21
	setlt.u r14, r27, r13
	.loc	1 1710 19                       # parallel-rne.mlir:1710:19
	bneq r14, zero, .LBB0_1460
# %bb.1459:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r15, 0
	.loc	1 1716 19 is_stmt 1             # parallel-rne.mlir:1716:19
	setlt.u r13, r23, r13
	.loc	1 1717 20                       # parallel-rne.mlir:1717:20
	beq r13, zero, .LBB0_1461
	j .LBB0_1462
.LBB0_1460:                             #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r18, r15, r14
	.loc	1 1716 19 is_stmt 1             # parallel-rne.mlir:1716:19
	setlt.u r13, r23, r13
	.loc	1 1717 20                       # parallel-rne.mlir:1717:20
	bneq r13, zero, .LBB0_1462
.LBB0_1461:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r13, r15, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r22
	and r18, r13, r14
.LBB0_1462:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	setlt.u r13, r23, r28
	.loc	1 1717 20                       # parallel-rne.mlir:1717:20
	bneq r13, zero, .LBB0_1464
# %bb.1463:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	lui r13, 1048560
	add.s r9, r9, r22
	and r17, r9, r13
.LBB0_1464:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	setlt.u r9, r23, r24
	addli r28, zero, 64
	.loc	1 1717 20                       # parallel-rne.mlir:1717:20
	bneq r9, zero, .LBB0_1466
# %bb.1465:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	lui r9, 1048560
	add.s r8, r8, r22
	and r20, r8, r9
.LBB0_1466:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	setlt.u r8, r23, r19
	.loc	1 1717 20                       # parallel-rne.mlir:1717:20
	bneq r8, zero, .LBB0_1440
# %bb.1467:                             # %vector.body317
                                        #   in Loop: Header=BB0_1441 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r25, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r25, r5
	add.s r5, r5, r22
	and r5, r5, r8
	j .LBB0_1440
.LBB0_1468:                             #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 7
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1677 7                        # parallel-rne.mlir:1677:7
	mfence { sm }
	.loc	1 1724 7                        # parallel-rne.mlir:1724:7
	addli r1, zero, 4
	bneq r26, r1, .LBB0_1263
.LBB0_1469:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3092(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3096(r30)                # 4-byte Folded Reload
	addli r5, zero, 576
	.loc	1 1724 7                        # parallel-rne.mlir:1724:7
	addli r7, r30, -3072
	addli r26, zero, 1
	zext_int2long r[5:6], r5
	min.u r1, r1, r2
	addli r2, zero, 16
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	setlt.u r1, r1, r2
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 512
	xfence
	zext_int2long r[1:2], r1
	mfence { lm, sm, gm }
	j .LBB0_1471
.LBB0_1470:                             # %middle.block308
                                        #   in Loop: Header=BB0_1471 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r6, r30, -3072
	.loc	1 1732 9 is_stmt 1              # parallel-rne.mlir:1732:9
	andi r5, r26, 1
	addli r26, zero, 0
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	beq r5, zero, .LBB0_1519
.LBB0_1471:                             # %vector.memcheck294
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1492 Depth 3
                                        #       Child Loop BB0_1474 Depth 3
	.loc	1 1733 11                       # parallel-rne.mlir:1733:11
	loadli.w r5,  -3064(r30)                # 4-byte Folded Reload
	beq r5, zero, .LBB0_1490
# %bb.1472:                             # %scalar.ph300.preheader
                                        #   in Loop: Header=BB0_1471 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_1474
.LBB0_1473:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 1733 11                       # parallel-rne.mlir:1733:11
	addli r8, r30, -3040
	.loc	1 1766 13 is_stmt 1             # parallel-rne.mlir:1766:13
	add.s r7, r10, r7
	.loc	1 1733 11                       # parallel-rne.mlir:1733:11
	load.d r[12:13], 0(r8)                  # 8-byte Folded Reload
	.loc	1 1766 13                       # parallel-rne.mlir:1766:13
	stores.w r9, 0(r7)
	.loc	1 1733 11                       # parallel-rne.mlir:1733:11
	setlt.ul r8, r[5:6], r[12:13]
	addli.d r[5:6], r[5:6], 1
	beq r8, zero, .LBB0_1470
.LBB0_1474:                             # %scalar.ph300
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1471 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1734 19                       # parallel-rne.mlir:1734:19
	add.ul r[7:8], r[5:6], r[1:2]
	lui r15, 523264
	slli r7, r7, 2
	.loc	1 1735 19                       # parallel-rne.mlir:1735:19
	add.s r8, r11, r7
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	add.s r9, r4, r7
	.loc	1 1735 19                       # parallel-rne.mlir:1735:19
	loads.w r8, 0(r8)
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	loads.w r13, 0(r9)
	.loc	1 1739 19                       # parallel-rne.mlir:1739:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	beq r9, r27, .LBB0_1476
# %bb.1475:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
.LBB0_1476:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	add.s r12, r17, r7
	loads.w r12, 0(r12)
	and r12, r12, r21
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	bneq r12, zero, .LBB0_1486
# %bb.1477:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	bneq r9, zero, .LBB0_1487
.LBB0_1478:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	beq r12, r27, .LBB0_1480
.LBB0_1479:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r15, 0
.LBB0_1480:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	setlt.u r14, r27, r9
	lui r9, 523264
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	bneq r14, zero, .LBB0_1482
# %bb.1481:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_1482:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	setlt.u r12, r27, r12
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	bneq r12, zero, .LBB0_1484
# %bb.1483:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
.LBB0_1484:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 1754 19 is_stmt 1             # parallel-rne.mlir:1754:19
	and r12, r8, r21
	.loc	1 1756 19                       # parallel-rne.mlir:1756:19
	setlt.u r9, r27, r12
	.loc	1 1757 19                       # parallel-rne.mlir:1757:19
	bneq r9, zero, .LBB0_1488
# %bb.1485:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 1763 19 is_stmt 1             # parallel-rne.mlir:1763:19
	setlt.u r12, r23, r12
	.loc	1 1764 20                       # parallel-rne.mlir:1764:20
	bneq r12, zero, .LBB0_1473
	j .LBB0_1489
.LBB0_1486:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r15, r13, 0
	lui r13, 523264
	.loc	1 1753 19 is_stmt 1             # parallel-rne.mlir:1753:19
	beq r9, zero, .LBB0_1478
.LBB0_1487:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r15, 0
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	bneq r12, r27, .LBB0_1479
	j .LBB0_1480
.LBB0_1488:                             #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r8, r9
	.loc	1 1763 19 is_stmt 1             # parallel-rne.mlir:1763:19
	setlt.u r12, r23, r12
	.loc	1 1764 20                       # parallel-rne.mlir:1764:20
	bneq r12, zero, .LBB0_1473
.LBB0_1489:                             # %scalar.ph300
                                        #   in Loop: Header=BB0_1474 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	lui r9, 1048560
	add.s r8, r8, r22
	and r9, r8, r9
	j .LBB0_1473
.LBB0_1490:                             # %vector.body302.preheader
                                        #   in Loop: Header=BB0_1471 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_1492
.LBB0_1491:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 1733 11 is_stmt 1             # parallel-rne.mlir:1733:11
	addli r13, r30, -3056
	addli.d r[6:7], r[6:7], 4
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	seteq.d r8, r[6:7], r[8:9]
	.loc	1 1766 13                       # parallel-rne.mlir:1766:13
	add.s r9, r10, r12
	stores.w r17, 4(r9)
	loadli.w r17,  -3048(r30)               # 4-byte Folded Reload
	stores.w r5, 12(r9)
	stores.w r20, 8(r9)
	stores.w r18, 0(r9)
	.loc	1 1733 11                       # parallel-rne.mlir:1733:11
	bneq r8, zero, .LBB0_1470
.LBB0_1492:                             # %vector.body302
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1471 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1734 19                       # parallel-rne.mlir:1734:19
	add.ul r[8:9], r[6:7], r[1:2]
	lui r25, 523264
	slli r12, r8, 2
	add.s r5, r17, r12
	.loc	1 1735 19                       # parallel-rne.mlir:1735:19
	add.s r19, r11, r12
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	add.s r20, r4, r12
	.loc	1 1734 19                       # parallel-rne.mlir:1734:19
	loads.w r8, 0(r5)
	.loc	1 1735 19                       # parallel-rne.mlir:1735:19
	loads.w r9, 0(r19)
	.loc	1 1741 19                       # parallel-rne.mlir:1741:19
	and r8, r8, r21
	.loc	1 1739 19                       # parallel-rne.mlir:1739:19
	and r9, r9, r21
	.loc	1 1742 19                       # parallel-rne.mlir:1742:19
	seteq r13, r8, r27
	.loc	1 1746 19                       # parallel-rne.mlir:1746:19
	seteq r17, r8, zero
	.loc	1 1743 19                       # parallel-rne.mlir:1743:19
	seteq r14, r9, zero
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	seteq r15, r9, r27
	.loc	1 1751 19                       # parallel-rne.mlir:1751:19
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	.loc	1 1744 19                       # parallel-rne.mlir:1744:19
	and r9, r13, r14
	.loc	1 1747 19                       # parallel-rne.mlir:1747:19
	and r13, r17, r15
	lui r15, 523264
	.loc	1 1748 19                       # parallel-rne.mlir:1748:19
	or r9, r9, r13
	.loc	1 1752 19                       # parallel-rne.mlir:1752:19
	or r8, r8, r9
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	bneq r8, zero, .LBB0_1494
# %bb.1493:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r20)
.LBB0_1494:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	loads.w r8, 4(r5)
	loads.w r9, 4(r19)
	and r8, r8, r21
	and r9, r9, r21
	seteq r13, r8, r27
	seteq r18, r8, zero
	seteq r14, r9, zero
	seteq r17, r9, r27
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	and r9, r13, r14
	and r13, r18, r17
	or r9, r9, r13
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	bneq r8, zero, .LBB0_1496
# %bb.1495:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 4(r20)
.LBB0_1496:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	loads.w r8, 8(r5)
	loads.w r13, 8(r19)
	and r8, r8, r21
	and r13, r13, r21
	seteq r14, r8, r27
	seteq r24, r8, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r8, r8, r13
	setlt.u r8, r27, r8
	and r13, r14, r17
	and r14, r24, r18
	or r13, r13, r14
	or r13, r8, r13
	lui r8, 523264
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	bneq r13, zero, .LBB0_1498
# %bb.1497:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r20)
.LBB0_1498:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	loads.w r5, 12(r5)
	loads.w r13, 12(r19)
	and r5, r5, r21
	and r13, r13, r21
	seteq r14, r5, r27
	seteq r19, r5, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r5, r5, r13
	setlt.u r5, r27, r5
	and r13, r14, r17
	and r14, r19, r18
	or r13, r13, r14
	or r5, r5, r13
	.loc	1 1753 19                       # parallel-rne.mlir:1753:19
	bneq r5, zero, .LBB0_1500
# %bb.1499:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r20)
.LBB0_1500:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 1754 19 is_stmt 1             # parallel-rne.mlir:1754:19
	and r19, r25, r21
	.loc	1 1756 19                       # parallel-rne.mlir:1756:19
	setlt.u r5, r27, r19
	.loc	1 1757 19                       # parallel-rne.mlir:1757:19
	bneq r5, zero, .LBB0_1502
# %bb.1501:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r25, 0
	j .LBB0_1503
.LBB0_1502:                             #   in Loop: Header=BB0_1492 Depth=3
	lui r5, 1024
	or r5, r25, r5
.LBB0_1503:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	and r24, r8, r21
	setlt.u r13, r27, r24
	.loc	1 1757 19                       # parallel-rne.mlir:1757:19
	bneq r13, zero, .LBB0_1505
# %bb.1504:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_1506
.LBB0_1505:                             #   in Loop: Header=BB0_1492 Depth=3
	lui r13, 1024
	or r20, r8, r13
.LBB0_1506:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	and r28, r9, r21
	setlt.u r13, r27, r28
	.loc	1 1757 19                       # parallel-rne.mlir:1757:19
	bneq r13, zero, .LBB0_1508
# %bb.1507:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r9, 0
	j .LBB0_1509
.LBB0_1508:                             #   in Loop: Header=BB0_1492 Depth=3
	lui r13, 1024
	or r17, r9, r13
.LBB0_1509:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	and r13, r15, r21
	setlt.u r14, r27, r13
	.loc	1 1757 19                       # parallel-rne.mlir:1757:19
	bneq r14, zero, .LBB0_1511
# %bb.1510:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r15, 0
	.loc	1 1763 19 is_stmt 1             # parallel-rne.mlir:1763:19
	setlt.u r13, r23, r13
	.loc	1 1764 20                       # parallel-rne.mlir:1764:20
	beq r13, zero, .LBB0_1512
	j .LBB0_1513
.LBB0_1511:                             #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r18, r15, r14
	.loc	1 1763 19 is_stmt 1             # parallel-rne.mlir:1763:19
	setlt.u r13, r23, r13
	.loc	1 1764 20                       # parallel-rne.mlir:1764:20
	bneq r13, zero, .LBB0_1513
.LBB0_1512:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r13, r15, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r22
	and r18, r13, r14
.LBB0_1513:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	setlt.u r13, r23, r28
	.loc	1 1764 20                       # parallel-rne.mlir:1764:20
	bneq r13, zero, .LBB0_1515
# %bb.1514:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	lui r13, 1048560
	add.s r9, r9, r22
	and r17, r9, r13
.LBB0_1515:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	setlt.u r9, r23, r24
	addli r28, zero, 64
	.loc	1 1764 20                       # parallel-rne.mlir:1764:20
	bneq r9, zero, .LBB0_1517
# %bb.1516:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	lui r9, 1048560
	add.s r8, r8, r22
	and r20, r8, r9
.LBB0_1517:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	setlt.u r8, r23, r19
	.loc	1 1764 20                       # parallel-rne.mlir:1764:20
	bneq r8, zero, .LBB0_1491
# %bb.1518:                             # %vector.body302
                                        #   in Loop: Header=BB0_1492 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r25, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r25, r5
	add.s r5, r5, r22
	and r5, r5, r8
	j .LBB0_1491
.LBB0_1519:                             #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 7
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1724 7                        # parallel-rne.mlir:1724:7
	mfence { sm }
	.loc	1 1771 7                        # parallel-rne.mlir:1771:7
	addli r1, zero, 5
	bneq r26, r1, .LBB0_1264
.LBB0_1520:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3092(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3096(r30)                # 4-byte Folded Reload
	addli r5, zero, 704
	.loc	1 1771 7                        # parallel-rne.mlir:1771:7
	addli r7, r30, -3072
	addli r26, zero, 1
	zext_int2long r[5:6], r5
	min.u r1, r1, r2
	addli r2, zero, 16
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	setlt.u r1, r1, r2
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 640
	xfence
	zext_int2long r[1:2], r1
	mfence { lm, sm, gm }
	j .LBB0_1522
.LBB0_1521:                             # %middle.block293
                                        #   in Loop: Header=BB0_1522 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r6, r30, -3072
	.loc	1 1779 9 is_stmt 1              # parallel-rne.mlir:1779:9
	andi r5, r26, 1
	addli r26, zero, 0
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	beq r5, zero, .LBB0_1570
.LBB0_1522:                             # %vector.memcheck279
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1543 Depth 3
                                        #       Child Loop BB0_1525 Depth 3
	.loc	1 1780 11                       # parallel-rne.mlir:1780:11
	loadli.w r5,  -3064(r30)                # 4-byte Folded Reload
	beq r5, zero, .LBB0_1541
# %bb.1523:                             # %scalar.ph285.preheader
                                        #   in Loop: Header=BB0_1522 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_1525
.LBB0_1524:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 1780 11                       # parallel-rne.mlir:1780:11
	addli r8, r30, -3040
	.loc	1 1813 13 is_stmt 1             # parallel-rne.mlir:1813:13
	add.s r7, r10, r7
	.loc	1 1780 11                       # parallel-rne.mlir:1780:11
	load.d r[12:13], 0(r8)                  # 8-byte Folded Reload
	.loc	1 1813 13                       # parallel-rne.mlir:1813:13
	stores.w r9, 0(r7)
	.loc	1 1780 11                       # parallel-rne.mlir:1780:11
	setlt.ul r8, r[5:6], r[12:13]
	addli.d r[5:6], r[5:6], 1
	beq r8, zero, .LBB0_1521
.LBB0_1525:                             # %scalar.ph285
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1522 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1781 19                       # parallel-rne.mlir:1781:19
	add.ul r[7:8], r[5:6], r[1:2]
	lui r15, 523264
	slli r7, r7, 2
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	add.s r8, r11, r7
	.loc	1 1783 19                       # parallel-rne.mlir:1783:19
	add.s r9, r4, r7
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	loads.w r8, 0(r8)
	.loc	1 1783 19                       # parallel-rne.mlir:1783:19
	loads.w r13, 0(r9)
	.loc	1 1786 19                       # parallel-rne.mlir:1786:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	beq r9, r27, .LBB0_1527
# %bb.1526:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
.LBB0_1527:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	add.s r12, r17, r7
	loads.w r12, 0(r12)
	and r12, r12, r21
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	bneq r12, zero, .LBB0_1537
# %bb.1528:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	bneq r9, zero, .LBB0_1538
.LBB0_1529:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	beq r12, r27, .LBB0_1531
.LBB0_1530:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r15, 0
.LBB0_1531:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	setlt.u r14, r27, r9
	lui r9, 523264
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	bneq r14, zero, .LBB0_1533
# %bb.1532:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_1533:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	setlt.u r12, r27, r12
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	bneq r12, zero, .LBB0_1535
# %bb.1534:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
.LBB0_1535:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 1801 19 is_stmt 1             # parallel-rne.mlir:1801:19
	and r12, r8, r21
	.loc	1 1803 19                       # parallel-rne.mlir:1803:19
	setlt.u r9, r27, r12
	.loc	1 1804 19                       # parallel-rne.mlir:1804:19
	bneq r9, zero, .LBB0_1539
# %bb.1536:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 1810 19 is_stmt 1             # parallel-rne.mlir:1810:19
	setlt.u r12, r23, r12
	.loc	1 1811 20                       # parallel-rne.mlir:1811:20
	bneq r12, zero, .LBB0_1524
	j .LBB0_1540
.LBB0_1537:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r15, r13, 0
	lui r13, 523264
	.loc	1 1800 19 is_stmt 1             # parallel-rne.mlir:1800:19
	beq r9, zero, .LBB0_1529
.LBB0_1538:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r15, 0
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	bneq r12, r27, .LBB0_1530
	j .LBB0_1531
.LBB0_1539:                             #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r8, r9
	.loc	1 1810 19 is_stmt 1             # parallel-rne.mlir:1810:19
	setlt.u r12, r23, r12
	.loc	1 1811 20                       # parallel-rne.mlir:1811:20
	bneq r12, zero, .LBB0_1524
.LBB0_1540:                             # %scalar.ph285
                                        #   in Loop: Header=BB0_1525 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	lui r9, 1048560
	add.s r8, r8, r22
	and r9, r8, r9
	j .LBB0_1524
.LBB0_1541:                             # %vector.body287.preheader
                                        #   in Loop: Header=BB0_1522 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_1543
.LBB0_1542:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 1780 11 is_stmt 1             # parallel-rne.mlir:1780:11
	addli r13, r30, -3056
	addli.d r[6:7], r[6:7], 4
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	seteq.d r8, r[6:7], r[8:9]
	.loc	1 1813 13                       # parallel-rne.mlir:1813:13
	add.s r9, r10, r12
	stores.w r17, 4(r9)
	loadli.w r17,  -3048(r30)               # 4-byte Folded Reload
	stores.w r5, 12(r9)
	stores.w r20, 8(r9)
	stores.w r18, 0(r9)
	.loc	1 1780 11                       # parallel-rne.mlir:1780:11
	bneq r8, zero, .LBB0_1521
.LBB0_1543:                             # %vector.body287
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1522 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1781 19                       # parallel-rne.mlir:1781:19
	add.ul r[8:9], r[6:7], r[1:2]
	lui r25, 523264
	slli r12, r8, 2
	add.s r5, r17, r12
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	add.s r19, r11, r12
	.loc	1 1783 19                       # parallel-rne.mlir:1783:19
	add.s r20, r4, r12
	.loc	1 1781 19                       # parallel-rne.mlir:1781:19
	loads.w r8, 0(r5)
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	loads.w r9, 0(r19)
	.loc	1 1788 19                       # parallel-rne.mlir:1788:19
	and r8, r8, r21
	.loc	1 1786 19                       # parallel-rne.mlir:1786:19
	and r9, r9, r21
	.loc	1 1789 19                       # parallel-rne.mlir:1789:19
	seteq r13, r8, r27
	.loc	1 1793 19                       # parallel-rne.mlir:1793:19
	seteq r17, r8, zero
	.loc	1 1790 19                       # parallel-rne.mlir:1790:19
	seteq r14, r9, zero
	.loc	1 1792 19                       # parallel-rne.mlir:1792:19
	seteq r15, r9, r27
	.loc	1 1798 19                       # parallel-rne.mlir:1798:19
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	and r9, r13, r14
	.loc	1 1794 19                       # parallel-rne.mlir:1794:19
	and r13, r17, r15
	lui r15, 523264
	.loc	1 1795 19                       # parallel-rne.mlir:1795:19
	or r9, r9, r13
	.loc	1 1799 19                       # parallel-rne.mlir:1799:19
	or r8, r8, r9
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	bneq r8, zero, .LBB0_1545
# %bb.1544:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r20)
.LBB0_1545:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	loads.w r8, 4(r5)
	loads.w r9, 4(r19)
	and r8, r8, r21
	and r9, r9, r21
	seteq r13, r8, r27
	seteq r18, r8, zero
	seteq r14, r9, zero
	seteq r17, r9, r27
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	and r9, r13, r14
	and r13, r18, r17
	or r9, r9, r13
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	bneq r8, zero, .LBB0_1547
# %bb.1546:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 4(r20)
.LBB0_1547:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	loads.w r8, 8(r5)
	loads.w r13, 8(r19)
	and r8, r8, r21
	and r13, r13, r21
	seteq r14, r8, r27
	seteq r24, r8, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r8, r8, r13
	setlt.u r8, r27, r8
	and r13, r14, r17
	and r14, r24, r18
	or r13, r13, r14
	or r13, r8, r13
	lui r8, 523264
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	bneq r13, zero, .LBB0_1549
# %bb.1548:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r20)
.LBB0_1549:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	loads.w r5, 12(r5)
	loads.w r13, 12(r19)
	and r5, r5, r21
	and r13, r13, r21
	seteq r14, r5, r27
	seteq r19, r5, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r5, r5, r13
	setlt.u r5, r27, r5
	and r13, r14, r17
	and r14, r19, r18
	or r13, r13, r14
	or r5, r5, r13
	.loc	1 1800 19                       # parallel-rne.mlir:1800:19
	bneq r5, zero, .LBB0_1551
# %bb.1550:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r20)
.LBB0_1551:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 1801 19 is_stmt 1             # parallel-rne.mlir:1801:19
	and r19, r25, r21
	.loc	1 1803 19                       # parallel-rne.mlir:1803:19
	setlt.u r5, r27, r19
	.loc	1 1804 19                       # parallel-rne.mlir:1804:19
	bneq r5, zero, .LBB0_1553
# %bb.1552:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r25, 0
	j .LBB0_1554
.LBB0_1553:                             #   in Loop: Header=BB0_1543 Depth=3
	lui r5, 1024
	or r5, r25, r5
.LBB0_1554:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	and r24, r8, r21
	setlt.u r13, r27, r24
	.loc	1 1804 19                       # parallel-rne.mlir:1804:19
	bneq r13, zero, .LBB0_1556
# %bb.1555:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_1557
.LBB0_1556:                             #   in Loop: Header=BB0_1543 Depth=3
	lui r13, 1024
	or r20, r8, r13
.LBB0_1557:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	and r28, r9, r21
	setlt.u r13, r27, r28
	.loc	1 1804 19                       # parallel-rne.mlir:1804:19
	bneq r13, zero, .LBB0_1559
# %bb.1558:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r9, 0
	j .LBB0_1560
.LBB0_1559:                             #   in Loop: Header=BB0_1543 Depth=3
	lui r13, 1024
	or r17, r9, r13
.LBB0_1560:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	and r13, r15, r21
	setlt.u r14, r27, r13
	.loc	1 1804 19                       # parallel-rne.mlir:1804:19
	bneq r14, zero, .LBB0_1562
# %bb.1561:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r15, 0
	.loc	1 1810 19 is_stmt 1             # parallel-rne.mlir:1810:19
	setlt.u r13, r23, r13
	.loc	1 1811 20                       # parallel-rne.mlir:1811:20
	beq r13, zero, .LBB0_1563
	j .LBB0_1564
.LBB0_1562:                             #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r18, r15, r14
	.loc	1 1810 19 is_stmt 1             # parallel-rne.mlir:1810:19
	setlt.u r13, r23, r13
	.loc	1 1811 20                       # parallel-rne.mlir:1811:20
	bneq r13, zero, .LBB0_1564
.LBB0_1563:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r13, r15, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r22
	and r18, r13, r14
.LBB0_1564:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	setlt.u r13, r23, r28
	.loc	1 1811 20                       # parallel-rne.mlir:1811:20
	bneq r13, zero, .LBB0_1566
# %bb.1565:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	lui r13, 1048560
	add.s r9, r9, r22
	and r17, r9, r13
.LBB0_1566:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	setlt.u r9, r23, r24
	addli r28, zero, 64
	.loc	1 1811 20                       # parallel-rne.mlir:1811:20
	bneq r9, zero, .LBB0_1568
# %bb.1567:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	lui r9, 1048560
	add.s r8, r8, r22
	and r20, r8, r9
.LBB0_1568:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	setlt.u r8, r23, r19
	.loc	1 1811 20                       # parallel-rne.mlir:1811:20
	bneq r8, zero, .LBB0_1542
# %bb.1569:                             # %vector.body287
                                        #   in Loop: Header=BB0_1543 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r25, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r25, r5
	add.s r5, r5, r22
	and r5, r5, r8
	j .LBB0_1542
.LBB0_1570:                             #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 7
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1771 7                        # parallel-rne.mlir:1771:7
	mfence { sm }
	.loc	1 1818 7                        # parallel-rne.mlir:1818:7
	addli r1, zero, 6
	bneq r26, r1, .LBB0_1622
.LBB0_1571:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3092(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3096(r30)                # 4-byte Folded Reload
	addli r5, zero, 832
	.loc	1 1818 7                        # parallel-rne.mlir:1818:7
	addli r7, r30, -3072
	addli r26, zero, 1
	zext_int2long r[5:6], r5
	min.u r1, r1, r2
	addli r2, zero, 16
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	setlt.u r1, r1, r2
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 768
	xfence
	zext_int2long r[1:2], r1
	mfence { lm, sm, gm }
	j .LBB0_1573
.LBB0_1572:                             # %middle.block278
                                        #   in Loop: Header=BB0_1573 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r6, r30, -3072
	.loc	1 1826 9 is_stmt 1              # parallel-rne.mlir:1826:9
	andi r5, r26, 1
	addli r26, zero, 0
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	beq r5, zero, .LBB0_1621
.LBB0_1573:                             # %vector.memcheck264
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1594 Depth 3
                                        #       Child Loop BB0_1576 Depth 3
	.loc	1 1827 11                       # parallel-rne.mlir:1827:11
	loadli.w r5,  -3064(r30)                # 4-byte Folded Reload
	beq r5, zero, .LBB0_1592
# %bb.1574:                             # %scalar.ph270.preheader
                                        #   in Loop: Header=BB0_1573 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_1576
.LBB0_1575:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 1827 11                       # parallel-rne.mlir:1827:11
	addli r8, r30, -3040
	.loc	1 1860 13 is_stmt 1             # parallel-rne.mlir:1860:13
	add.s r7, r10, r7
	.loc	1 1827 11                       # parallel-rne.mlir:1827:11
	load.d r[12:13], 0(r8)                  # 8-byte Folded Reload
	.loc	1 1860 13                       # parallel-rne.mlir:1860:13
	stores.w r9, 0(r7)
	.loc	1 1827 11                       # parallel-rne.mlir:1827:11
	setlt.ul r8, r[5:6], r[12:13]
	addli.d r[5:6], r[5:6], 1
	beq r8, zero, .LBB0_1572
.LBB0_1576:                             # %scalar.ph270
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1573 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	add.ul r[7:8], r[5:6], r[1:2]
	lui r15, 523264
	slli r7, r7, 2
	.loc	1 1829 19                       # parallel-rne.mlir:1829:19
	add.s r8, r11, r7
	.loc	1 1830 19                       # parallel-rne.mlir:1830:19
	add.s r9, r4, r7
	.loc	1 1829 19                       # parallel-rne.mlir:1829:19
	loads.w r8, 0(r8)
	.loc	1 1830 19                       # parallel-rne.mlir:1830:19
	loads.w r13, 0(r9)
	.loc	1 1833 19                       # parallel-rne.mlir:1833:19
	and r9, r8, r21
	lui r8, 523264
	.loc	1 1847 19                       # parallel-rne.mlir:1847:19
	beq r9, r27, .LBB0_1578
# %bb.1577:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r13, 0
.LBB0_1578:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	add.s r12, r17, r7
	loads.w r12, 0(r12)
	and r12, r12, r21
	.loc	1 1847 19                       # parallel-rne.mlir:1847:19
	bneq r12, zero, .LBB0_1588
# %bb.1579:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 1847 19                       # parallel-rne.mlir:1847:19
	bneq r9, zero, .LBB0_1589
.LBB0_1580:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	beq r12, r27, .LBB0_1582
.LBB0_1581:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r15, 0
.LBB0_1582:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	setlt.u r14, r27, r9
	lui r9, 523264
	.loc	1 1847 19                       # parallel-rne.mlir:1847:19
	bneq r14, zero, .LBB0_1584
# %bb.1583:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_1584:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	setlt.u r12, r27, r12
	.loc	1 1847 19                       # parallel-rne.mlir:1847:19
	bneq r12, zero, .LBB0_1586
# %bb.1585:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
.LBB0_1586:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 1848 19 is_stmt 1             # parallel-rne.mlir:1848:19
	and r12, r8, r21
	.loc	1 1850 19                       # parallel-rne.mlir:1850:19
	setlt.u r9, r27, r12
	.loc	1 1851 19                       # parallel-rne.mlir:1851:19
	bneq r9, zero, .LBB0_1590
# %bb.1587:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r8, 0
	.loc	1 1857 19 is_stmt 1             # parallel-rne.mlir:1857:19
	setlt.u r12, r23, r12
	.loc	1 1858 20                       # parallel-rne.mlir:1858:20
	bneq r12, zero, .LBB0_1575
	j .LBB0_1591
.LBB0_1588:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r15, r13, 0
	lui r13, 523264
	.loc	1 1847 19 is_stmt 1             # parallel-rne.mlir:1847:19
	beq r9, zero, .LBB0_1580
.LBB0_1589:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r15, 0
	.loc	1 1847 19                       # parallel-rne.mlir:1847:19
	bneq r12, r27, .LBB0_1581
	j .LBB0_1582
.LBB0_1590:                             #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r8, r9
	.loc	1 1857 19 is_stmt 1             # parallel-rne.mlir:1857:19
	setlt.u r12, r23, r12
	.loc	1 1858 20                       # parallel-rne.mlir:1858:20
	bneq r12, zero, .LBB0_1575
.LBB0_1591:                             # %scalar.ph270
                                        #   in Loop: Header=BB0_1576 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	lui r9, 1048560
	add.s r8, r8, r22
	and r9, r8, r9
	j .LBB0_1575
.LBB0_1592:                             # %vector.body272.preheader
                                        #   in Loop: Header=BB0_1573 Depth=2
	zext_int2long r[6:7], zero
	j .LBB0_1594
.LBB0_1593:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 1827 11 is_stmt 1             # parallel-rne.mlir:1827:11
	addli r13, r30, -3056
	addli.d r[6:7], r[6:7], 4
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	seteq.d r8, r[6:7], r[8:9]
	.loc	1 1860 13                       # parallel-rne.mlir:1860:13
	add.s r9, r10, r12
	stores.w r17, 4(r9)
	loadli.w r17,  -3048(r30)               # 4-byte Folded Reload
	stores.w r5, 12(r9)
	stores.w r20, 8(r9)
	stores.w r18, 0(r9)
	.loc	1 1827 11                       # parallel-rne.mlir:1827:11
	bneq r8, zero, .LBB0_1572
.LBB0_1594:                             # %vector.body272
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1573 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	add.ul r[8:9], r[6:7], r[1:2]
	lui r25, 523264
	slli r12, r8, 2
	add.s r5, r17, r12
	.loc	1 1829 19                       # parallel-rne.mlir:1829:19
	add.s r19, r11, r12
	.loc	1 1830 19                       # parallel-rne.mlir:1830:19
	add.s r20, r4, r12
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	loads.w r8, 0(r5)
	.loc	1 1829 19                       # parallel-rne.mlir:1829:19
	loads.w r9, 0(r19)
	.loc	1 1835 19                       # parallel-rne.mlir:1835:19
	and r8, r8, r21
	.loc	1 1833 19                       # parallel-rne.mlir:1833:19
	and r9, r9, r21
	.loc	1 1836 19                       # parallel-rne.mlir:1836:19
	seteq r13, r8, r27
	.loc	1 1840 19                       # parallel-rne.mlir:1840:19
	seteq r17, r8, zero
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	seteq r14, r9, zero
	.loc	1 1839 19                       # parallel-rne.mlir:1839:19
	seteq r15, r9, r27
	.loc	1 1845 19                       # parallel-rne.mlir:1845:19
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	.loc	1 1838 19                       # parallel-rne.mlir:1838:19
	and r9, r13, r14
	.loc	1 1841 19                       # parallel-rne.mlir:1841:19
	and r13, r17, r15
	lui r15, 523264
	.loc	1 1842 19                       # parallel-rne.mlir:1842:19
	or r9, r9, r13
	.loc	1 1846 19                       # parallel-rne.mlir:1846:19
	or r8, r8, r9
	.loc	1 1847 19                       # parallel-rne.mlir:1847:19
	bneq r8, zero, .LBB0_1596
# %bb.1595:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r20)
.LBB0_1596:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	loads.w r8, 4(r5)
	loads.w r9, 4(r19)
	and r8, r8, r21
	and r9, r9, r21
	seteq r13, r8, r27
	seteq r18, r8, zero
	seteq r14, r9, zero
	seteq r17, r9, r27
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	and r9, r13, r14
	and r13, r18, r17
	or r9, r9, r13
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1847 19                       # parallel-rne.mlir:1847:19
	bneq r8, zero, .LBB0_1598
# %bb.1597:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 4(r20)
.LBB0_1598:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	loads.w r8, 8(r5)
	loads.w r13, 8(r19)
	and r8, r8, r21
	and r13, r13, r21
	seteq r14, r8, r27
	seteq r24, r8, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r8, r8, r13
	setlt.u r8, r27, r8
	and r13, r14, r17
	and r14, r24, r18
	or r13, r13, r14
	or r13, r8, r13
	lui r8, 523264
	.loc	1 1847 19                       # parallel-rne.mlir:1847:19
	bneq r13, zero, .LBB0_1600
# %bb.1599:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r20)
.LBB0_1600:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	loads.w r5, 12(r5)
	loads.w r13, 12(r19)
	and r5, r5, r21
	and r13, r13, r21
	seteq r14, r5, r27
	seteq r19, r5, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r5, r5, r13
	setlt.u r5, r27, r5
	and r13, r14, r17
	and r14, r19, r18
	or r13, r13, r14
	or r5, r5, r13
	.loc	1 1847 19                       # parallel-rne.mlir:1847:19
	bneq r5, zero, .LBB0_1602
# %bb.1601:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r20)
.LBB0_1602:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 1848 19 is_stmt 1             # parallel-rne.mlir:1848:19
	and r19, r25, r21
	.loc	1 1850 19                       # parallel-rne.mlir:1850:19
	setlt.u r5, r27, r19
	.loc	1 1851 19                       # parallel-rne.mlir:1851:19
	bneq r5, zero, .LBB0_1604
# %bb.1603:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r25, 0
	j .LBB0_1605
.LBB0_1604:                             #   in Loop: Header=BB0_1594 Depth=3
	lui r5, 1024
	or r5, r25, r5
.LBB0_1605:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	and r24, r8, r21
	setlt.u r13, r27, r24
	.loc	1 1851 19                       # parallel-rne.mlir:1851:19
	bneq r13, zero, .LBB0_1607
# %bb.1606:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r8, 0
	j .LBB0_1608
.LBB0_1607:                             #   in Loop: Header=BB0_1594 Depth=3
	lui r13, 1024
	or r20, r8, r13
.LBB0_1608:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	and r28, r9, r21
	setlt.u r13, r27, r28
	.loc	1 1851 19                       # parallel-rne.mlir:1851:19
	bneq r13, zero, .LBB0_1610
# %bb.1609:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r9, 0
	j .LBB0_1611
.LBB0_1610:                             #   in Loop: Header=BB0_1594 Depth=3
	lui r13, 1024
	or r17, r9, r13
.LBB0_1611:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	and r13, r15, r21
	setlt.u r14, r27, r13
	.loc	1 1851 19                       # parallel-rne.mlir:1851:19
	bneq r14, zero, .LBB0_1613
# %bb.1612:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r15, 0
	.loc	1 1857 19 is_stmt 1             # parallel-rne.mlir:1857:19
	setlt.u r13, r23, r13
	.loc	1 1858 20                       # parallel-rne.mlir:1858:20
	beq r13, zero, .LBB0_1614
	j .LBB0_1615
.LBB0_1613:                             #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r18, r15, r14
	.loc	1 1857 19 is_stmt 1             # parallel-rne.mlir:1857:19
	setlt.u r13, r23, r13
	.loc	1 1858 20                       # parallel-rne.mlir:1858:20
	bneq r13, zero, .LBB0_1615
.LBB0_1614:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r13, r15, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r22
	and r18, r13, r14
.LBB0_1615:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	setlt.u r13, r23, r28
	.loc	1 1858 20                       # parallel-rne.mlir:1858:20
	bneq r13, zero, .LBB0_1617
# %bb.1616:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	lui r13, 1048560
	add.s r9, r9, r22
	and r17, r9, r13
.LBB0_1617:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	setlt.u r9, r23, r24
	addli r28, zero, 64
	.loc	1 1858 20                       # parallel-rne.mlir:1858:20
	bneq r9, zero, .LBB0_1619
# %bb.1618:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	lui r9, 1048560
	add.s r8, r8, r22
	and r20, r8, r9
.LBB0_1619:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	setlt.u r8, r23, r19
	.loc	1 1858 20                       # parallel-rne.mlir:1858:20
	bneq r8, zero, .LBB0_1593
# %bb.1620:                             # %vector.body272
                                        #   in Loop: Header=BB0_1594 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r25, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r25, r5
	add.s r5, r5, r22
	and r5, r5, r8
	j .LBB0_1593
.LBB0_1621:                             #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 7
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1818 7                        # parallel-rne.mlir:1818:7
	mfence { sm }
.LBB0_1622:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 1865 7 is_stmt 1              # parallel-rne.mlir:1865:7
	addli r6, r30, -3088
	store.d r[1:2], 0(r6)                   # 8-byte Folded Spill
	bneq r26, r5, .LBB0_1674
# %bb.1623:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -3092(r30)                # 4-byte Folded Reload
	loadli.w r2,  -3096(r30)                # 4-byte Folded Reload
	.loc	1 1865 7                        # parallel-rne.mlir:1865:7
	addli r5, r30, -3072
	addli r26, zero, 1
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -3064(r30)                # 4-byte Folded Spill
	addli r1, zero, 896
	zext_int2long r[19:20], r1
	addli r1, zero, 960
	zext_int2long r[1:2], r1
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_1625
.LBB0_1624:                             # %middle.block
                                        #   in Loop: Header=BB0_1625 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, r30, -3072
	.loc	1 1873 9 is_stmt 1              # parallel-rne.mlir:1873:9
	andi r1, r26, 1
	addli r26, zero, 0
	load.d r[19:20], 0(r2)                  # 8-byte Folded Reload
	beq r1, zero, .LBB0_1673
.LBB0_1625:                             # %vector.memcheck
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1646 Depth 3
                                        #       Child Loop BB0_1628 Depth 3
	.loc	1 1874 11                       # parallel-rne.mlir:1874:11
	loadli.w r1,  -3064(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_1644
# %bb.1626:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1625 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_1628
.LBB0_1627:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 1874 11                       # parallel-rne.mlir:1874:11
	addli r2, r30, -3040
	.loc	1 1907 13 is_stmt 1             # parallel-rne.mlir:1907:13
	add.s r1, r10, r1
	.loc	1 1874 11                       # parallel-rne.mlir:1874:11
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 1907 13                       # parallel-rne.mlir:1907:13
	stores.w r7, 0(r1)
	.loc	1 1874 11                       # parallel-rne.mlir:1874:11
	setlt.ul r2, r[5:6], r[8:9]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_1624
.LBB0_1628:                             # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1625 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1875 19                       # parallel-rne.mlir:1875:19
	add.ul r[1:2], r[5:6], r[19:20]
	lui r9, 523264
	slli r1, r1, 2
	.loc	1 1876 19                       # parallel-rne.mlir:1876:19
	add.s r2, r11, r1
	.loc	1 1877 19                       # parallel-rne.mlir:1877:19
	add.s r7, r4, r1
	.loc	1 1876 19                       # parallel-rne.mlir:1876:19
	loads.w r2, 0(r2)
	.loc	1 1877 19                       # parallel-rne.mlir:1877:19
	loads.w r12, 0(r7)
	.loc	1 1880 19                       # parallel-rne.mlir:1880:19
	and r7, r2, r21
	lui r2, 523264
	.loc	1 1894 19                       # parallel-rne.mlir:1894:19
	beq r7, r27, .LBB0_1630
# %bb.1629:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r12, 0
.LBB0_1630:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	loadli.w r8,  -3048(r30)                # 4-byte Folded Reload
	add.s r8, r8, r1
	loads.w r8, 0(r8)
	and r8, r8, r21
	.loc	1 1894 19                       # parallel-rne.mlir:1894:19
	bneq r8, zero, .LBB0_1640
# %bb.1631:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r12, 523264
	.loc	1 1894 19                       # parallel-rne.mlir:1894:19
	bneq r7, zero, .LBB0_1641
.LBB0_1632:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	beq r8, r27, .LBB0_1634
.LBB0_1633:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r9, 0
.LBB0_1634:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	setlt.u r9, r27, r7
	lui r7, 523264
	.loc	1 1894 19                       # parallel-rne.mlir:1894:19
	bneq r9, zero, .LBB0_1636
# %bb.1635:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r12, 0
.LBB0_1636:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	setlt.u r8, r27, r8
	.loc	1 1894 19                       # parallel-rne.mlir:1894:19
	bneq r8, zero, .LBB0_1638
# %bb.1637:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
.LBB0_1638:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 1895 19 is_stmt 1             # parallel-rne.mlir:1895:19
	and r8, r2, r21
	.loc	1 1897 19                       # parallel-rne.mlir:1897:19
	setlt.u r7, r27, r8
	.loc	1 1898 19                       # parallel-rne.mlir:1898:19
	bneq r7, zero, .LBB0_1642
# %bb.1639:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r2, 0
	.loc	1 1904 19 is_stmt 1             # parallel-rne.mlir:1904:19
	setlt.u r8, r23, r8
	.loc	1 1905 20                       # parallel-rne.mlir:1905:20
	bneq r8, zero, .LBB0_1627
	j .LBB0_1643
.LBB0_1640:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r12, 0
	lui r12, 523264
	.loc	1 1894 19 is_stmt 1             # parallel-rne.mlir:1894:19
	beq r7, zero, .LBB0_1632
.LBB0_1641:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r9, 0
	.loc	1 1894 19                       # parallel-rne.mlir:1894:19
	bneq r8, r27, .LBB0_1633
	j .LBB0_1634
.LBB0_1642:                             #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r2, r7
	.loc	1 1904 19 is_stmt 1             # parallel-rne.mlir:1904:19
	setlt.u r8, r23, r8
	.loc	1 1905 20                       # parallel-rne.mlir:1905:20
	bneq r8, zero, .LBB0_1627
.LBB0_1643:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1628 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r2, 16
	andi r7, r7, 1
	add.s r2, r2, r7
	lui r7, 1048560
	add.s r2, r2, r22
	and r7, r2, r7
	j .LBB0_1627
.LBB0_1644:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1625 Depth=2
	addli r1, r30, -3088
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	j .LBB0_1646
.LBB0_1645:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 1874 11 is_stmt 1             # parallel-rne.mlir:1874:11
	addli r1, r30, -3056
	addli.d r[6:7], r[6:7], 4
	load.d r[8:9], 0(r1)                    # 8-byte Folded Reload
	seteq.d r1, r[6:7], r[8:9]
	.loc	1 1907 13                       # parallel-rne.mlir:1907:13
	add.s r8, r10, r12
	stores.w r5, 12(r8)
	stores.w r2, 8(r8)
	stores.w r17, 4(r8)
	stores.w r18, 0(r8)
	.loc	1 1874 11                       # parallel-rne.mlir:1874:11
	bneq r1, zero, .LBB0_1624
.LBB0_1646:                             # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1625 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1875 19                       # parallel-rne.mlir:1875:19
	add.ul r[1:2], r[6:7], r[19:20]
	lui r25, 523264
	slli r12, r1, 2
	loadli.w r1,  -3048(r30)                # 4-byte Folded Reload
	add.s r5, r1, r12
	.loc	1 1876 19                       # parallel-rne.mlir:1876:19
	add.s r1, r11, r12
	.loc	1 1875 19                       # parallel-rne.mlir:1875:19
	loads.w r2, 0(r5)
	.loc	1 1876 19                       # parallel-rne.mlir:1876:19
	loads.w r8, 0(r1)
	.loc	1 1882 19                       # parallel-rne.mlir:1882:19
	and r2, r2, r21
	.loc	1 1880 19                       # parallel-rne.mlir:1880:19
	and r8, r8, r21
	.loc	1 1883 19                       # parallel-rne.mlir:1883:19
	seteq r9, r2, r27
	.loc	1 1887 19                       # parallel-rne.mlir:1887:19
	seteq r15, r2, zero
	.loc	1 1884 19                       # parallel-rne.mlir:1884:19
	seteq r13, r8, zero
	.loc	1 1886 19                       # parallel-rne.mlir:1886:19
	seteq r14, r8, r27
	.loc	1 1892 19                       # parallel-rne.mlir:1892:19
	max.u r2, r2, r8
	setlt.u r8, r27, r2
	.loc	1 1885 19                       # parallel-rne.mlir:1885:19
	and r2, r9, r13
	.loc	1 1888 19                       # parallel-rne.mlir:1888:19
	and r9, r15, r14
	lui r15, 523264
	.loc	1 1889 19                       # parallel-rne.mlir:1889:19
	or r9, r2, r9
	.loc	1 1877 19                       # parallel-rne.mlir:1877:19
	add.s r2, r4, r12
	.loc	1 1893 19                       # parallel-rne.mlir:1893:19
	or r8, r8, r9
	.loc	1 1894 19                       # parallel-rne.mlir:1894:19
	bneq r8, zero, .LBB0_1648
# %bb.1647:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r2)
.LBB0_1648:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	loads.w r8, 4(r5)
	loads.w r9, 4(r1)
	and r8, r8, r21
	and r9, r9, r21
	seteq r13, r8, r27
	seteq r18, r8, zero
	seteq r14, r9, zero
	seteq r17, r9, r27
	max.u r8, r8, r9
	setlt.u r8, r27, r8
	and r9, r13, r14
	and r13, r18, r17
	or r9, r9, r13
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1894 19                       # parallel-rne.mlir:1894:19
	bneq r8, zero, .LBB0_1650
# %bb.1649:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 4(r2)
.LBB0_1650:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	loads.w r8, 8(r5)
	loads.w r13, 8(r1)
	and r8, r8, r21
	and r13, r13, r21
	seteq r14, r8, r27
	seteq r24, r8, zero
	seteq r17, r13, zero
	seteq r18, r13, r27
	max.u r8, r8, r13
	setlt.u r8, r27, r8
	and r13, r14, r17
	and r14, r24, r18
	or r13, r13, r14
	or r13, r8, r13
	lui r8, 523264
	.loc	1 1894 19                       # parallel-rne.mlir:1894:19
	bneq r13, zero, .LBB0_1652
# %bb.1651:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r2)
.LBB0_1652:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	loads.w r5, 12(r5)
	loads.w r1, 12(r1)
	and r5, r5, r21
	and r1, r1, r21
	seteq r13, r5, r27
	seteq r14, r1, zero
	seteq r17, r1, r27
	seteq r18, r5, zero
	max.u r1, r5, r1
	setlt.u r1, r27, r1
	and r5, r13, r14
	and r13, r18, r17
	or r5, r5, r13
	or r1, r1, r5
	.loc	1 1894 19                       # parallel-rne.mlir:1894:19
	bneq r1, zero, .LBB0_1654
# %bb.1653:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 12(r2)
.LBB0_1654:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 1895 19 is_stmt 1             # parallel-rne.mlir:1895:19
	and r1, r25, r21
	.loc	1 1897 19                       # parallel-rne.mlir:1897:19
	setlt.u r2, r27, r1
	.loc	1 1898 19                       # parallel-rne.mlir:1898:19
	bneq r2, zero, .LBB0_1656
# %bb.1655:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r25, 0
	j .LBB0_1657
.LBB0_1656:                             #   in Loop: Header=BB0_1646 Depth=3
	lui r2, 1024
	or r5, r25, r2
.LBB0_1657:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	and r24, r8, r21
	setlt.u r2, r27, r24
	.loc	1 1898 19                       # parallel-rne.mlir:1898:19
	bneq r2, zero, .LBB0_1659
# %bb.1658:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_1660
.LBB0_1659:                             #   in Loop: Header=BB0_1646 Depth=3
	lui r2, 1024
	or r2, r8, r2
.LBB0_1660:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	and r28, r9, r21
	setlt.u r13, r27, r28
	.loc	1 1898 19                       # parallel-rne.mlir:1898:19
	bneq r13, zero, .LBB0_1662
# %bb.1661:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r9, 0
	j .LBB0_1663
.LBB0_1662:                             #   in Loop: Header=BB0_1646 Depth=3
	lui r13, 1024
	or r17, r9, r13
.LBB0_1663:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	and r13, r15, r21
	setlt.u r14, r27, r13
	.loc	1 1898 19                       # parallel-rne.mlir:1898:19
	bneq r14, zero, .LBB0_1665
# %bb.1664:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r15, 0
	.loc	1 1904 19 is_stmt 1             # parallel-rne.mlir:1904:19
	setlt.u r13, r23, r13
	.loc	1 1905 20                       # parallel-rne.mlir:1905:20
	beq r13, zero, .LBB0_1666
	j .LBB0_1667
.LBB0_1665:                             #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r18, r15, r14
	.loc	1 1904 19 is_stmt 1             # parallel-rne.mlir:1904:19
	setlt.u r13, r23, r13
	.loc	1 1905 20                       # parallel-rne.mlir:1905:20
	bneq r13, zero, .LBB0_1667
.LBB0_1666:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r13, r15, 16
	lui r14, 1048560
	andi r13, r13, 1
	add.s r13, r15, r13
	add.s r13, r13, r22
	and r18, r13, r14
.LBB0_1667:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	setlt.u r13, r23, r28
	.loc	1 1905 20                       # parallel-rne.mlir:1905:20
	bneq r13, zero, .LBB0_1669
# %bb.1668:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	lui r13, 1048560
	add.s r9, r9, r22
	and r17, r9, r13
.LBB0_1669:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	setlt.u r9, r23, r24
	addli r28, zero, 64
	.loc	1 1905 20                       # parallel-rne.mlir:1905:20
	bneq r9, zero, .LBB0_1671
# %bb.1670:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	lui r8, 1048560
	add.s r2, r2, r22
	and r2, r2, r8
.LBB0_1671:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	setlt.u r1, r23, r1
	.loc	1 1905 20                       # parallel-rne.mlir:1905:20
	bneq r1, zero, .LBB0_1645
# %bb.1672:                             # %vector.body
                                        #   in Loop: Header=BB0_1646 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r25, 16
	lui r5, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r22
	and r5, r1, r5
	j .LBB0_1645
.LBB0_1673:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 40 5 is_stmt 1                # parallel-rne.mlir:40:5
	core_id r26
	.loc	1 1865 7                        # parallel-rne.mlir:1865:7
	mfence { sm }
.LBB0_1674:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1912 7                        # parallel-rne.mlir:1912:7
	addli r1, zero, 255
	.loc	1 40 5                          # parallel-rne.mlir:40:5
	core_id r12
	.loc	1 1912 7                        # parallel-rne.mlir:1912:7
	csr_set csr5, r1
	.loc	1 1913 7                        # parallel-rne.mlir:1913:7
	addli r1, zero, 3
	.loc	1 1912 7                        # parallel-rne.mlir:1912:7
	sync_core
	.loc	1 1913 7                        # parallel-rne.mlir:1913:7
	beq r26, r1, .LBB0_5
# %bb.1675:                             # %.critedge43
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1924 7                        # parallel-rne.mlir:1924:7
	bneq r26, zero, .LBB0_7
# %bb.1676:                             #   in Loop: Header=BB0_8 Depth=1
	addli r9, r30, -3128
	addli r6, r30, -3088
	addli r13, r30, -3112
	addli r11, zero, 1
	loadli.w r1,  -3132(r30)                # 4-byte Folded Reload
	load.d r[7:8], 0(r9)                    # 8-byte Folded Reload
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	addli r6, zero, 12
	sext_int2long r[1:2], r1
	sll.d r[6:7], r[7:8], r6
	load.d r[8:9], 0(r13)                   # 8-byte Folded Reload
	load.d r[13:14], 24(r30)
	min.sl r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 16
	sll.d r[8:9], r[8:9], r11
	add.ul r[6:7], r[13:14], r[6:7]
	max.sl r[4:5], r[4:5], r[1:2]
	add.ul r[6:7], r[6:7], r[8:9]
	addli r8, zero, 20
	addli r9, zero, 5
	sub.sl r[1:2], r[4:5], r[1:2]
	addli r4, zero, 16
	xwait r8, 0
	lock zero, r9
	ori r8, r10, 64
	dma_cfg r11, r11, zero, 0
	zext_int2long r[4:5], r4
	dma_cfg zero, r11, zero, 1
	dma_cfg r7, zero, zero, 2
	.loc	1 1920 13                       # parallel-rne.mlir:1920:13
	min.sl r[1:2], r[1:2], r[4:5]
	.loc	1 1924 7                        # parallel-rne.mlir:1924:7
	dma_cfg r6, r8, r28, 3
	addli r6, r30, -3120
	load.d r[7:8], 0(r6)                    # 8-byte Folded Reload
	addli r6, r7, 31
	slli r5, r7, 1
	srli r4, r6, 5
	addli r6, zero, 128
	dma_cfg r28, r6, r4, 4
	andi r4, r5, 62
	addli r5, zero, 256
	dma_cfg r5, r5, r1, 5
	addli r1, zero, 21
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	j .LBB0_6
.LBB0_1677:                             # %._crit_edge
	.loc	1 1926 5                        # parallel-rne.mlir:1926:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_1679
# %bb.1678:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1926 5                        # parallel-rne.mlir:1926:5
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
.LBB0_1679:
	.loc	1 1927 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1927:5
	addli sp, sp, 3184
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
	.long	3248                            # 0xcb0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-8fufno2a" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
