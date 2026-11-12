	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-44pjkspd" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4320
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r15
	addli r30, sp, 4256
	xsignal_mode_cfg r1
	beq r15, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 31 5                          # parallel-rne.mlir:31:5
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
	.loc	1 31 5                          # parallel-rne.mlir:31:5
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
	addli r2, zero, 13
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
	addli r2, zero, 19
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	addli r1, zero, 17
	addli r2, zero, 21
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
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -20(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -40(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -60(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -80(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -1084(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -2108(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r1, r2, r1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r3, r1, r3
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r2, -1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	storeli.w r4, -24(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	storeli.w r4, -48(r30)
	storeli.w r4, -44(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r4, -76(r30)
	storeli.w r4, -72(r30)
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r4, -3100(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 49 11                         # parallel-rne.mlir:49:11
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
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r4, -3084(r30)
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
	storeli.w r4, -3088(r30)
	storeli.w r4, -3092(r30)
	storeli.w r4, -3096(r30)
	storeli.w r4, -3104(r30)
	storeli.w r4, -3108(r30)
	storeli.w r4, -3112(r30)
	storeli.w zero, -3116(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
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
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r4, -2112(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -4140(r30)
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
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r3, r2, r3
	.loc	1 53 5                          # parallel-rne.mlir:53:5
	ble.s r3, r1, .LBB0_276
# %bb.4:                                # %.lr.ph
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	sext_int2long r[2:3], r3
	addli r4, r30, -4240
	addli r16, zero, 16
	addli r19, zero, 1
	addli r12, zero, 6
	addli r13, zero, 4
	addli r6, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	loadli.w r2,  -20(r30)
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	sext_int2long r[4:5], r1
	lui r1, 383
	lui r3, 522240
	ori r1, r1, 3072
	storeli.w r2, -4164(r30)                # 4-byte Folded Spill
	loadli.w r2,  -40(r30)
	storeli.w r1, -4248(r30)                # 4-byte Folded Spill
	lui r1, 40
	storeli.w r2, -4168(r30)                # 4-byte Folded Spill
	loadli.w r2,  -60(r30)
	ori r1, r1, 2114
	storeli.w r1, -4256(r30)                # 4-byte Folded Spill
	storeli.w r2, -4172(r30)                # 4-byte Folded Spill
	loadli.w r2,  -80(r30)
	storeli.w r2, -4176(r30)                # 4-byte Folded Spill
	lui r2, 379
	ori r2, r2, 2048
	storeli.w r2, -4244(r30)                # 4-byte Folded Spill
	lui r2, 387
	ori r1, r2, 3072
	lui r2, 129
	storeli.w r1, -4252(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r27, r1, 4095
	ori r1, r2, 2048
	storeli.w r1, -4148(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 451 7                         # parallel-rne.mlir:451:7
	addli r1, zero, 12
	addli r12, zero, 6
	xsignal r1, 0
	.loc	1 452 7                         # parallel-rne.mlir:452:7
	addli r1, zero, 17
	xsignal r1, 0
	.loc	1 453 7                         # parallel-rne.mlir:453:7
	addli r1, zero, 19
	xsignal r1, 0
	.loc	1 454 7                         # parallel-rne.mlir:454:7
	addli r1, zero, 21
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -4192
	.loc	1 53 5 is_stmt 1                # parallel-rne.mlir:53:5
	addli r6, r30, -4240
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	loadli.w r6,  -4196(r30)                # 4-byte Folded Reload
	addli.d r[4:5], r[4:5], 1
	setlt.sl r1, r[4:5], r[1:2]
	loadli.w r2,  -4176(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -4176(r30)                # 4-byte Folded Spill
	loadli.w r2,  -4172(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -4172(r30)                # 4-byte Folded Spill
	loadli.w r2,  -4168(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -4168(r30)                # 4-byte Folded Spill
	loadli.w r2,  -4164(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -4164(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_276
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_102 Depth 2
                                        #       Child Loop BB0_119 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_134 Depth 3
                                        #     Child Loop BB0_73 Depth 2
                                        #       Child Loop BB0_90 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #     Child Loop BB0_160 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_163 Depth 3
                                        #     Child Loop BB0_188 Depth 2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_191 Depth 3
                                        #     Child Loop BB0_218 Depth 2
                                        #       Child Loop BB0_235 Depth 3
                                        #       Child Loop BB0_221 Depth 3
                                        #     Child Loop BB0_245 Depth 2
                                        #       Child Loop BB0_262 Depth 3
                                        #       Child Loop BB0_248 Depth 3
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	bneq r15, r13, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 13
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  48(r30)
	addli r7, r30, -4192
	addli r8, zero, 8
	addli r20, zero, 1
	.loc	1 79 7 is_stmt 1                # parallel-rne.mlir:79:7
	load.d r[17:18], 8(r30)
	addli r14, r30, -4216
	loadli.w r9,  -3116(r30)
	addli r2, zero, 0
	addli r22, zero, 4
	store.d r[4:5], 0(r7)                   # 8-byte Folded Spill
	mod.s r7, r6, r13
	addli r6, r6, 1
	div.s r1, r4, r1
	loadli.w r4,  44(r30)
	storeli.w r6, -4196(r30)                # 4-byte Folded Spill
	div.s r1, r1, r4
	loadli.w r4,  -4140(r30)
	div.s r5, r1, r16
	slli r10, r5, 3
	slli r5, r5, 4
	sub.s r6, r19, r10
	sub.s r5, r1, r5
	min.s r6, r6, r8
	slli r8, r7, 12
	mod.s r1, r1, r6
	div.s r11, r5, r6
	loadli.w r6,  -2108(r30)
	loadli.w r5,  -1084(r30)
	add.s r7, r10, r1
	slli r1, r11, 6
	zext_int2long r[10:11], r11
	slli r13, r7, 4
	sll.d r[10:11], r[10:11], r12
	storeli.w r13, -4220(r30)               # 4-byte Folded Spill
	zext_int2long r[12:13], r7
	addli r7, r30, -4208
	store.d r[10:11], 0(r7)                 # 8-byte Folded Spill
	sll.d r[10:11], r[10:11], r20
	addli r7, zero, 11
	store.d r[12:13], 0(r14)                # 8-byte Folded Spill
	addli r14, zero, 0
	add.ul r[10:11], r[17:18], r[10:11]
	load.d r[17:18], 0(r30)
	sll.d r[12:13], r[12:13], r7
	add.ul r[17:18], r[17:18], r[12:13]
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	addli r2, zero, 2
	addli r13, zero, 64
	xwait r2, 0
	addli r2, zero, 5
	xwait r2, 0
	addli r2, zero, 3
	lock zero, zero
	ds_cfg r2, zero, 0
	ds_cfg r13, zero, 1
	addli r13, zero, 32
	ds_cfg r13, zero, 14
	ds_cfg r16, zero, 13
	shuffle_batch r7, r12, r13, 1
	unlock zero
	xsignal r2, 0
	xsignal r22, 0
.LBB0_12:                               # %.thread23
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r6, r6, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r5, r5, 1
.LBB0_13:                               # %.thread25
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	andi r2, r20, 1
	beq r2, zero, .LBB0_29
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 123 15                        # parallel-rne.mlir:123:15
	addli r14, r14, 1
	addli r2, zero, 1
	addli r20, zero, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	add.s r21, r9, r14
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r7, zero, 251
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	add.s r23, r4, r14
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r12, zero, 255
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r7, r21, r7
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r12, r23, r12
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r13, r7, 11
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r7, r12, 10
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	lui r12, 4
	add.s r12, r13, r12
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r13, zero, 2
	beq r15, r13, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[24:25], r2
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r15, r19, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 6
	addli r7, zero, 64
	addli r22, zero, 4
	sll.d r[24:25], r[24:25], r2
	addli r2, zero, 3
	xwait r2, 0
	addli r2, zero, 4
	add.ul r[24:25], r[17:18], r[24:25]
	lock zero, r2
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r25, zero, 2
	dma_cfg r12, r24, r7, 3
	addli r7, zero, 128
	dma_cfg r7, r7, r16, 4
	dma_run zero
	unlock r2
	addli r2, zero, 2
	xsignal r2, 0
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r2, zero, 250
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r12, zero, 255
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r2, r5, r2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r12, r6, r12
	addli r6, r6, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r5, r5, 1
	slli r13, r2, 12
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r2, r12, 12
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r12,  -4148(r30)               # 4-byte Folded Reload
	add.s r12, r13, r12
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r13, zero, 7
	beq r15, r13, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r13, zero, 6
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	bneq r15, r13, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 13
	addli r22, zero, 128
	addli r7, zero, 32
	sll.d r[24:25], r[24:25], r2
	addli r2, zero, 7
	xwait r2, 0
	addli r2, zero, 4
	add.ul r[24:25], r[10:11], r[24:25]
	lock zero, r2
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r25, zero, 2
	dma_cfg r12, r24, r22, 3
	addli r12, zero, 256
	dma_cfg r22, r12, r7, 4
	dma_run zero
	unlock r2
	addli r22, zero, 4
	xsignal r13, 0
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	j .LBB0_13
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	addli r7, zero, 6
	addli r13, zero, 32
	xwait r7, 0
	addli r7, zero, 9
	xwait r7, 0
	addli r7, zero, 3
	lock zero, zero
	ds_cfg r7, zero, 0
	addli r7, zero, 64
	ds_cfg r7, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r7, zero, 13
	shuffle_coa r2, r12, r13, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_13
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	andi r12, r20, 1
	addli r20, zero, 4
	.loc	1 122 9 is_stmt 1               # parallel-rne.mlir:122:9
	bneq r15, r20, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r13, zero, 8
	xwait r20, 0
	addli r22, zero, 32
	xwait r13, 0
	addli r13, zero, 64
	lock zero, r19
	mm_cfg r13, r22, r16, 0
	addli r13, zero, 2
	mm_cfg r19, r13, r19, 2
	beq r14, zero, .LBB0_26
# %bb.24:                               # %.preheader38
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r8, r7, r2, 5
	j .LBB0_27
.LBB0_25:                               # %.thread25.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	bneq r12, zero, .LBB0_28
	j .LBB0_274
.LBB0_26:                               # %.preheader37
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	mm r8, r7, r2, 5
.LBB0_27:                               # %.thread25.thread76
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 5
	unlock r19
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	beq r12, zero, .LBB0_275
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r22, zero, 4
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	j .LBB0_14
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r2, r23, 1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r4, r21, 1
	addli r20, zero, 4
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r6, -2108(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r5, -1084(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r2, -4140(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	storeli.w r4, -3116(r30)
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	bneq r15, r20, .LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 64
	.loc	1 133 13 is_stmt 1              # parallel-rne.mlir:133:13
	zext_int2long r[1:2], r1
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	loadli.w r6,  -4176(r30)                # 4-byte Folded Reload
	addli r12, zero, 4096
	zext_int2long r[9:10], r4
	mod.s r6, r6, r20
	.loc	1 135 13                        # parallel-rne.mlir:135:13
	min.ul r[4:5], r[1:2], r[9:10]
	addli.d r[4:5], r[4:5], 64
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	max.ul r[4:5], r[4:5], r[1:2]
	sub.sl r[1:2], r[4:5], r[1:2]
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	slli r4, r6, 8
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	min.ul r[13:14], r[1:2], r[9:10]
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	loadli.w r1,  -4244(r30)                # 4-byte Folded Reload
	add.s r1, r4, r1
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	bneq r15, r19, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -4208
	load.d r[6:7], 16(r30)
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, zero, 15
	xwait r2, 0
	lock zero, r20
	slli r2, r13, 1
	sll.d r[4:5], r[4:5], r19
	dma_cfg zero, r19, zero, 0
	add.ul r[4:5], r[6:7], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r1, r4, r2, 3
	addli r2, zero, 128
	addli r4, zero, 256
	dma_cfg r4, r2, r19, 4
	addli r2, zero, 14
	dma_run zero
	unlock r20
	xsignal r2, 0
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	loadli.w r2,  -4172(r30)                # 4-byte Folded Reload
	mod.s r4, r2, r20
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	loadli.w r2,  -4168(r30)                # 4-byte Folded Reload
	mod.s r5, r2, r20
	lui r2, 379
	ori r6, r2, 3072
	loadli.w r2,  -4164(r30)                # 4-byte Folded Reload
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	slli r4, r4, 12
	mod.s r2, r2, r20
	add.s r11, r4, r6
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	loadli.w r4,  -4248(r30)                # 4-byte Folded Reload
	slli r5, r5, 12
	add.s r23, r5, r4
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r4, zero, 5
	addli r5, r30, -4232
	store.d r[13:14], 0(r5)                 # 8-byte Folded Spill
	bneq r15, r4, .LBB0_37
# %bb.34:                               #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 10
	addli r4, zero, 0
	xwait r5, 0
	addli r5, zero, 14
	xwait r5, 0
	addli r5, zero, 17
	xwait r5, 0
	addli r5, zero, 2
	lock zero, r5
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 63
	ew_cfg zero, r5, zero, 2
	ew_cfg r19, zero, zero, 3
.LBB0_35:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r23, r4
	add.s r6, r8, r4
	addli r4, r4, 256
	dsmadd r5, r6, r1, 0
	bneq r4, r12, .LBB0_35
# %bb.36:                               # %.thread29
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 2
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r1, zero, 11
	storeli.w zero, -4180(r30)              # 4-byte Folded Spill
	addli r5, zero, 511
	unlock r4
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r1, 0
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r5, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, zero, 19
	ew_cfg r4, zero, zero, 10
	loadli.w r1,  -4256(r30)                # 4-byte Folded Reload
	ew_cfg r4, r19, r1, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r20, r1, 14
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	slli r1, r2, 12
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	ew_cfg zero, zero, zero, 15
	sslut r11, r23, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r4
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	loadli.w r2,  -4252(r30)                # 4-byte Folded Reload
	add.s r1, r1, r2
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	addli r2, zero, 21
	xwait r2, 0
	lock zero, r4
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	addli r2, zero, 18
	ew_cfg zero, r5, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	dsmul r1, r23, r11, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r16, 0
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	j .LBB0_40
.LBB0_37:                               # %.thread26
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	slli r1, r2, 12
	loadli.w r2,  -4252(r30)                # 4-byte Folded Reload
	add.s r1, r1, r2
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	addli r2, zero, 3
	bneq r15, r2, .LBB0_39
# %bb.38:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	addli r2, zero, 18
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	xwait r16, 0
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	storeli.w r2, -4180(r30)                # 4-byte Folded Spill
	addli r2, zero, 20
	xwait r2, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -4180(r30)              # 4-byte Folded Spill
.LBB0_40:                               # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 161 7 is_stmt 1               # parallel-rne.mlir:161:7
	addli r2, zero, 255
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	xfence
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	mfence { lm, sm, gm }
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	csr_set csr5, r2
	addli r2, zero, 63
	sync_core
	zext_int2long r[5:6], r2
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	beq r15, zero, .LBB0_100
# %bb.41:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 198 7                         # parallel-rne.mlir:198:7
	bneq r15, r19, .LBB0_128
.LBB0_42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 206 9                         # parallel-rne.mlir:206:9
	sub.s r2, r8, r1
	addli r14, zero, 1
	setlt.u r2, r2, r16
	.loc	1 198 7                         # parallel-rne.mlir:198:7
	storeli.w r2, -4144(r30)                # 4-byte Folded Spill
	addli r2, zero, 128
	xfence
	zext_int2long r[20:21], r2
	mfence { lm, sm, gm }
	j .LBB0_44
.LBB0_43:                               # %middle.block187
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 192
	.loc	1 206 9 is_stmt 1               # parallel-rne.mlir:206:9
	andi r2, r14, 1
	addli r14, zero, 0
	zext_int2long r[20:21], r4
	beq r2, zero, .LBB0_69
.LBB0_44:                               # %vector.memcheck173
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_47 Depth 3
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	loadli.w r2,  -4144(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_59
# %bb.45:                               # %scalar.ph179.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[18:19], zero
	j .LBB0_47
.LBB0_46:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	setlt.ul r7, r[18:19], r[5:6]
	.loc	1 229 13 is_stmt 1              # parallel-rne.mlir:229:13
	add.s r2, r8, r2
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	addli.d r[18:19], r[18:19], 1
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	stores.w r4, 0(r2)
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	beq r7, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph179
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	add.ul r[12:13], r[18:19], r[20:21]
	slli r2, r12, 2
	lui r13, 523264
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	add.s r4, r11, r2
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	add.s r7, r1, r2
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	loads.w r4, 0(r4)
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	loads.w r15, 0(r7)
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	and r7, r4, r27
	lui r4, 523264
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	beq r7, r3, .LBB0_49
# %bb.48:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r15, 0
.LBB0_49:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	add.s r12, r23, r2
	loads.w r12, 0(r12)
	and r12, r12, r27
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	beq r12, zero, .LBB0_57
# %bb.50:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r15, 0
	lui r15, 523264
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r7, zero, .LBB0_58
.LBB0_51:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	beq r12, r3, .LBB0_53
.LBB0_52:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r13, 0
.LBB0_53:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r13, r3, r7
	lui r7, 523264
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r13, zero, .LBB0_55
# %bb.54:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r15, 0
.LBB0_55:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r12, r3, r12
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r12, zero, .LBB0_46
# %bb.56:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r7, 0
	j .LBB0_46
.LBB0_57:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	lui r15, 523264
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	beq r7, zero, .LBB0_51
.LBB0_58:                               # %scalar.ph179
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r13, 0
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r12, r3, .LBB0_52
	j .LBB0_53
.LBB0_59:                               # %vector.body181.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[25:26], zero
	j .LBB0_61
.LBB0_60:                               # %vector.body181
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 207 11 is_stmt 1              # parallel-rne.mlir:207:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	add.s r4, r8, r4
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	seteq.d r12, r[25:26], r[9:10]
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	stores.w r7, 12(r4)
	stores.w r19, 8(r4)
	stores.w r2, 4(r4)
	stores.w r15, 0(r4)
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	bneq r12, zero, .LBB0_43
.LBB0_61:                               # %vector.body181
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	add.ul r[12:13], r[25:26], r[20:21]
	slli r4, r12, 2
	add.s r18, r23, r4
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	add.s r12, r11, r4
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	add.s r28, r1, r4
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	loads.w r2, 0(r18)
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	loads.w r7, 0(r12)
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	and r2, r2, r27
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	and r7, r7, r27
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	seteq r13, r2, r3
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	seteq r19, r2, zero
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	seteq r15, r7, zero
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	seteq r16, r7, r3
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	max.u r2, r2, r7
	setlt.u r2, r3, r2
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r7, r13, r15
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	and r13, r19, r16
	lui r15, 523264
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	or r7, r7, r13
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	or r2, r2, r7
	lui r7, 523264
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r2, zero, .LBB0_63
# %bb.62:                               # %vector.body181
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r28)
.LBB0_63:                               # %vector.body181
                                        #   in Loop: Header=BB0_61 Depth=3
	loads.w r2, 4(r18)
	loads.w r13, 4(r12)
	and r2, r2, r27
	and r13, r13, r27
	seteq r16, r2, r3
	seteq r24, r2, zero
	seteq r19, r13, zero
	seteq r22, r13, r3
	max.u r2, r2, r13
	setlt.u r2, r3, r2
	and r13, r16, r19
	and r16, r24, r22
	or r13, r13, r16
	or r13, r2, r13
	lui r2, 523264
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r13, zero, .LBB0_65
# %bb.64:                               # %vector.body181
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r28)
.LBB0_65:                               # %vector.body181
                                        #   in Loop: Header=BB0_61 Depth=3
	loads.w r13, 8(r18)
	loads.w r16, 8(r12)
	and r13, r13, r27
	and r16, r16, r27
	seteq r19, r13, r3
	seteq r17, r13, zero
	seteq r24, r16, r3
	seteq r22, r16, zero
	max.u r13, r13, r16
	setlt.u r13, r3, r13
	and r16, r19, r22
	and r17, r17, r24
	lui r19, 523264
	or r16, r16, r17
	or r13, r13, r16
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r13, zero, .LBB0_67
# %bb.66:                               # %vector.body181
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r28)
.LBB0_67:                               # %vector.body181
                                        #   in Loop: Header=BB0_61 Depth=3
	loads.w r13, 12(r18)
	loads.w r12, 12(r12)
	and r13, r13, r27
	and r12, r12, r27
	seteq r16, r13, r3
	seteq r17, r12, zero
	seteq r18, r12, r3
	seteq r22, r13, zero
	max.u r12, r13, r12
	setlt.u r12, r3, r12
	and r13, r16, r17
	and r16, r22, r18
	or r13, r13, r16
	or r12, r12, r13
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	bneq r12, zero, .LBB0_60
# %bb.68:                               # %vector.body181
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r28)
	j .LBB0_60
.LBB0_69:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r15
	addli r16, zero, 16
	addli r19, zero, 1
	.loc	1 198 7                         # parallel-rne.mlir:198:7
	mfence { sm }
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	addli r2, zero, 2
	beq r15, r2, .LBB0_129
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 270 7                         # parallel-rne.mlir:270:7
	loadli.w r2,  -4180(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_157
.LBB0_71:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 278 9                         # parallel-rne.mlir:278:9
	sub.s r2, r8, r1
	addli r14, zero, 1
	setlt.u r2, r2, r16
	.loc	1 270 7                         # parallel-rne.mlir:270:7
	storeli.w r2, -4144(r30)                # 4-byte Folded Spill
	addli r2, zero, 384
	xfence
	zext_int2long r[20:21], r2
	mfence { lm, sm, gm }
	j .LBB0_73
.LBB0_72:                               # %middle.block157
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 448
	.loc	1 278 9 is_stmt 1               # parallel-rne.mlir:278:9
	andi r2, r14, 1
	addli r14, zero, 0
	zext_int2long r[20:21], r4
	beq r2, zero, .LBB0_98
.LBB0_73:                               # %vector.memcheck143
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_90 Depth 3
                                        #       Child Loop BB0_76 Depth 3
	.loc	1 279 11                        # parallel-rne.mlir:279:11
	loadli.w r2,  -4144(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_88
# %bb.74:                               # %scalar.ph149.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[18:19], zero
	j .LBB0_76
.LBB0_75:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 279 11                        # parallel-rne.mlir:279:11
	setlt.ul r7, r[18:19], r[5:6]
	.loc	1 301 13 is_stmt 1              # parallel-rne.mlir:301:13
	add.s r2, r8, r2
	.loc	1 279 11                        # parallel-rne.mlir:279:11
	addli.d r[18:19], r[18:19], 1
	.loc	1 301 13                        # parallel-rne.mlir:301:13
	stores.w r4, 0(r2)
	.loc	1 279 11                        # parallel-rne.mlir:279:11
	beq r7, zero, .LBB0_72
.LBB0_76:                               # %scalar.ph149
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	add.ul r[12:13], r[18:19], r[20:21]
	slli r2, r12, 2
	lui r13, 523264
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	add.s r4, r11, r2
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	add.s r7, r1, r2
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	loads.w r4, 0(r4)
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	loads.w r15, 0(r7)
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	and r7, r4, r27
	lui r4, 523264
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	beq r7, r3, .LBB0_78
# %bb.77:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r15, 0
.LBB0_78:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	add.s r12, r23, r2
	loads.w r12, 0(r12)
	and r12, r12, r27
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	beq r12, zero, .LBB0_86
# %bb.79:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r15, 0
	lui r15, 523264
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r7, zero, .LBB0_87
.LBB0_80:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	beq r12, r3, .LBB0_82
.LBB0_81:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r13, 0
.LBB0_82:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	setlt.u r13, r3, r7
	lui r7, 523264
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r13, zero, .LBB0_84
# %bb.83:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r15, 0
.LBB0_84:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	setlt.u r12, r3, r12
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r12, zero, .LBB0_75
# %bb.85:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r7, 0
	j .LBB0_75
.LBB0_86:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	lui r15, 523264
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	beq r7, zero, .LBB0_80
.LBB0_87:                               # %scalar.ph149
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r13, 0
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r12, r3, .LBB0_81
	j .LBB0_82
.LBB0_88:                               # %vector.body151.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[25:26], zero
	j .LBB0_90
.LBB0_89:                               # %vector.body151
                                        #   in Loop: Header=BB0_90 Depth=3
	.loc	1 279 11 is_stmt 1              # parallel-rne.mlir:279:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 301 13                        # parallel-rne.mlir:301:13
	add.s r4, r8, r4
	.loc	1 279 11                        # parallel-rne.mlir:279:11
	seteq.d r12, r[25:26], r[9:10]
	.loc	1 301 13                        # parallel-rne.mlir:301:13
	stores.w r7, 12(r4)
	stores.w r19, 8(r4)
	stores.w r2, 4(r4)
	stores.w r15, 0(r4)
	.loc	1 279 11                        # parallel-rne.mlir:279:11
	bneq r12, zero, .LBB0_72
.LBB0_90:                               # %vector.body151
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	add.ul r[12:13], r[25:26], r[20:21]
	slli r4, r12, 2
	add.s r18, r23, r4
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	add.s r12, r11, r4
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	add.s r28, r1, r4
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	loads.w r2, 0(r18)
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	loads.w r7, 0(r12)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r2, r2, r27
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	and r7, r7, r27
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	seteq r13, r2, r3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	seteq r19, r2, zero
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	seteq r15, r7, zero
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	seteq r16, r7, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	max.u r2, r2, r7
	setlt.u r2, r3, r2
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	and r7, r13, r15
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r13, r19, r16
	lui r15, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	or r7, r7, r13
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	or r2, r2, r7
	lui r7, 523264
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r2, zero, .LBB0_92
# %bb.91:                               # %vector.body151
                                        #   in Loop: Header=BB0_90 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r28)
.LBB0_92:                               # %vector.body151
                                        #   in Loop: Header=BB0_90 Depth=3
	loads.w r2, 4(r18)
	loads.w r13, 4(r12)
	and r2, r2, r27
	and r13, r13, r27
	seteq r16, r2, r3
	seteq r24, r2, zero
	seteq r19, r13, zero
	seteq r22, r13, r3
	max.u r2, r2, r13
	setlt.u r2, r3, r2
	and r13, r16, r19
	and r16, r24, r22
	or r13, r13, r16
	or r13, r2, r13
	lui r2, 523264
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r13, zero, .LBB0_94
# %bb.93:                               # %vector.body151
                                        #   in Loop: Header=BB0_90 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r28)
.LBB0_94:                               # %vector.body151
                                        #   in Loop: Header=BB0_90 Depth=3
	loads.w r13, 8(r18)
	loads.w r16, 8(r12)
	and r13, r13, r27
	and r16, r16, r27
	seteq r19, r13, r3
	seteq r17, r13, zero
	seteq r24, r16, r3
	seteq r22, r16, zero
	max.u r13, r13, r16
	setlt.u r13, r3, r13
	and r16, r19, r22
	and r17, r17, r24
	lui r19, 523264
	or r16, r16, r17
	or r13, r13, r16
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r13, zero, .LBB0_96
# %bb.95:                               # %vector.body151
                                        #   in Loop: Header=BB0_90 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r28)
.LBB0_96:                               # %vector.body151
                                        #   in Loop: Header=BB0_90 Depth=3
	loads.w r13, 12(r18)
	loads.w r12, 12(r12)
	and r13, r13, r27
	and r12, r12, r27
	seteq r16, r13, r3
	seteq r17, r12, zero
	seteq r18, r12, r3
	seteq r22, r13, zero
	max.u r12, r13, r12
	setlt.u r12, r3, r12
	and r13, r16, r17
	and r16, r22, r18
	or r13, r13, r16
	or r12, r12, r13
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r12, zero, .LBB0_89
# %bb.97:                               # %vector.body151
                                        #   in Loop: Header=BB0_90 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r28)
	j .LBB0_89
.LBB0_98:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r15
	addli r16, zero, 16
	addli r19, zero, 1
	.loc	1 270 7                         # parallel-rne.mlir:270:7
	mfence { sm }
	addli r13, zero, 4
	.loc	1 306 7                         # parallel-rne.mlir:306:7
	beq r15, r13, .LBB0_158
.LBB0_99:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 342 7                         # parallel-rne.mlir:342:7
	addli r2, zero, 5
	beq r15, r2, .LBB0_186
	j .LBB0_214
.LBB0_100:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 170 9                         # parallel-rne.mlir:170:9
	sub.s r2, r8, r1
	addli r4, zero, 1
	zext_int2long r[17:18], zero
	setlt.u r2, r2, r16
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	storeli.w r2, -4144(r30)                # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_102
.LBB0_101:                              # %middle.block202
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 170 9                         # parallel-rne.mlir:170:9
	andi r2, r4, 1
	addli.d r[17:18], r[9:10], 0
	addli r4, zero, 0
	beq r2, zero, .LBB0_127
.LBB0_102:                              # %vector.memcheck188
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_119 Depth 3
                                        #       Child Loop BB0_105 Depth 3
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	loadli.w r2,  -4144(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_117
# %bb.103:                              # %scalar.ph194.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_105
.LBB0_104:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	setlt.ul r12, r[19:20], r[5:6]
	.loc	1 193 13 is_stmt 1              # parallel-rne.mlir:193:13
	add.s r2, r8, r2
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 193 13                        # parallel-rne.mlir:193:13
	stores.w r7, 0(r2)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	beq r12, zero, .LBB0_101
.LBB0_105:                              # %scalar.ph194
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[12:13], r[19:20], r[17:18]
	lui r15, 523264
	slli r2, r12, 2
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.s r7, r11, r2
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.s r12, r1, r2
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	loads.w r7, 0(r7)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	loads.w r21, 0(r12)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r12, r7, r27
	lui r7, 523264
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	beq r12, r3, .LBB0_107
# %bb.106:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r21, 0
.LBB0_107:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	add.s r13, r23, r2
	loads.w r13, 0(r13)
	and r13, r13, r27
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	beq r13, zero, .LBB0_115
# %bb.108:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	lui r21, 523264
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r12, zero, .LBB0_116
.LBB0_109:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	beq r13, r3, .LBB0_111
.LBB0_110:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
.LBB0_111:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	setlt.u r14, r3, r12
	lui r12, 523264
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r14, zero, .LBB0_113
# %bb.112:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r21, 0
.LBB0_113:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	setlt.u r13, r3, r13
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r13, zero, .LBB0_104
# %bb.114:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r12, 0
	j .LBB0_104
.LBB0_115:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	lui r21, 523264
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	beq r12, zero, .LBB0_109
.LBB0_116:                              # %scalar.ph194
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r15, 0
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r13, r3, .LBB0_110
	j .LBB0_111
.LBB0_117:                              # %vector.body196.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_119
.LBB0_118:                              # %vector.body196
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 193 13                        # parallel-rne.mlir:193:13
	add.s r13, r8, r25
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	seteq.d r12, r[20:21], r[9:10]
	.loc	1 193 13                        # parallel-rne.mlir:193:13
	stores.w r7, 12(r13)
	stores.w r19, 8(r13)
	stores.w r2, 4(r13)
	stores.w r15, 0(r13)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	bneq r12, zero, .LBB0_101
.LBB0_119:                              # %vector.body196
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[12:13], r[20:21], r[17:18]
	slli r25, r12, 2
	add.s r26, r23, r25
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.s r12, r11, r25
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.s r28, r1, r25
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	loads.w r2, 0(r26)
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	loads.w r7, 0(r12)
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	and r2, r2, r27
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r7, r7, r27
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	seteq r13, r2, r3
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	seteq r24, r2, zero
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	seteq r15, r7, zero
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	seteq r19, r7, r3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	max.u r2, r2, r7
	setlt.u r2, r3, r2
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	and r7, r13, r15
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	and r13, r24, r19
	lui r15, 523264
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	or r7, r7, r13
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	or r2, r2, r7
	lui r7, 523264
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r2, zero, .LBB0_121
# %bb.120:                              # %vector.body196
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r28)
.LBB0_121:                              # %vector.body196
                                        #   in Loop: Header=BB0_119 Depth=3
	loads.w r2, 4(r26)
	loads.w r13, 4(r12)
	and r2, r2, r27
	and r13, r13, r27
	seteq r19, r2, r3
	seteq r22, r2, zero
	seteq r16, r13, r3
	seteq r24, r13, zero
	max.u r2, r2, r13
	setlt.u r2, r3, r2
	and r13, r19, r24
	and r16, r22, r16
	or r13, r13, r16
	or r13, r2, r13
	lui r2, 523264
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r13, zero, .LBB0_123
# %bb.122:                              # %vector.body196
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r28)
.LBB0_123:                              # %vector.body196
                                        #   in Loop: Header=BB0_119 Depth=3
	loads.w r13, 8(r26)
	loads.w r16, 8(r12)
	and r13, r13, r27
	and r16, r16, r27
	seteq r19, r13, r3
	seteq r14, r13, zero
	seteq r24, r16, r3
	seteq r22, r16, zero
	max.u r13, r13, r16
	setlt.u r13, r3, r13
	and r16, r19, r22
	and r14, r14, r24
	lui r19, 523264
	or r14, r16, r14
	or r13, r13, r14
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r13, zero, .LBB0_125
# %bb.124:                              # %vector.body196
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r28)
.LBB0_125:                              # %vector.body196
                                        #   in Loop: Header=BB0_119 Depth=3
	loads.w r13, 12(r26)
	loads.w r12, 12(r12)
	and r13, r13, r27
	and r12, r12, r27
	seteq r14, r13, r3
	seteq r16, r12, zero
	seteq r22, r12, r3
	seteq r24, r13, zero
	max.u r12, r13, r12
	setlt.u r12, r3, r12
	and r13, r14, r16
	and r14, r24, r22
	or r13, r13, r14
	or r12, r12, r13
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r12, zero, .LBB0_118
# %bb.126:                              # %vector.body196
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r28)
	j .LBB0_118
.LBB0_127:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r15
	addli r16, zero, 16
	addli r19, zero, 1
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	mfence { sm }
	.loc	1 198 7                         # parallel-rne.mlir:198:7
	beq r15, r19, .LBB0_42
.LBB0_128:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	addli r2, zero, 2
	bneq r15, r2, .LBB0_70
.LBB0_129:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 242 9                         # parallel-rne.mlir:242:9
	sub.s r2, r8, r1
	addli r14, zero, 1
	setlt.u r2, r2, r16
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	storeli.w r2, -4144(r30)                # 4-byte Folded Spill
	addli r2, zero, 256
	xfence
	zext_int2long r[20:21], r2
	mfence { lm, sm, gm }
	j .LBB0_131
.LBB0_130:                              # %middle.block172
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 320
	.loc	1 242 9 is_stmt 1               # parallel-rne.mlir:242:9
	andi r2, r14, 1
	addli r14, zero, 0
	zext_int2long r[20:21], r4
	beq r2, zero, .LBB0_156
.LBB0_131:                              # %vector.memcheck158
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_134 Depth 3
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	loadli.w r2,  -4144(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_146
# %bb.132:                              # %scalar.ph164.preheader
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[18:19], zero
	j .LBB0_134
.LBB0_133:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	setlt.ul r7, r[18:19], r[5:6]
	.loc	1 265 13 is_stmt 1              # parallel-rne.mlir:265:13
	add.s r2, r8, r2
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	addli.d r[18:19], r[18:19], 1
	.loc	1 265 13                        # parallel-rne.mlir:265:13
	stores.w r4, 0(r2)
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	beq r7, zero, .LBB0_130
.LBB0_134:                              # %scalar.ph164
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.ul r[12:13], r[18:19], r[20:21]
	slli r2, r12, 2
	lui r13, 523264
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.s r4, r11, r2
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	add.s r7, r1, r2
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	loads.w r4, 0(r4)
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	loads.w r15, 0(r7)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r7, r4, r27
	lui r4, 523264
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	beq r7, r3, .LBB0_136
# %bb.135:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r15, 0
.LBB0_136:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	add.s r12, r23, r2
	loads.w r12, 0(r12)
	and r12, r12, r27
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	beq r12, zero, .LBB0_144
# %bb.137:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r15, 0
	lui r15, 523264
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r7, zero, .LBB0_145
.LBB0_138:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	beq r12, r3, .LBB0_140
.LBB0_139:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r13, 0
.LBB0_140:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r13, r3, r7
	lui r7, 523264
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r13, zero, .LBB0_142
# %bb.141:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r15, 0
.LBB0_142:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r12, r3, r12
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r12, zero, .LBB0_133
# %bb.143:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r7, 0
	j .LBB0_133
.LBB0_144:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	lui r15, 523264
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	beq r7, zero, .LBB0_138
.LBB0_145:                              # %scalar.ph164
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r13, 0
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r12, r3, .LBB0_139
	j .LBB0_140
.LBB0_146:                              # %vector.body166.preheader
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[25:26], zero
	j .LBB0_148
.LBB0_147:                              # %vector.body166
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 243 11 is_stmt 1              # parallel-rne.mlir:243:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 265 13                        # parallel-rne.mlir:265:13
	add.s r4, r8, r4
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	seteq.d r12, r[25:26], r[9:10]
	.loc	1 265 13                        # parallel-rne.mlir:265:13
	stores.w r7, 12(r4)
	stores.w r19, 8(r4)
	stores.w r2, 4(r4)
	stores.w r15, 0(r4)
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	bneq r12, zero, .LBB0_130
.LBB0_148:                              # %vector.body166
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.ul r[12:13], r[25:26], r[20:21]
	slli r4, r12, 2
	add.s r18, r23, r4
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.s r12, r11, r4
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	add.s r28, r1, r4
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	loads.w r2, 0(r18)
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	loads.w r7, 0(r12)
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	and r2, r2, r27
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r7, r7, r27
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	seteq r13, r2, r3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	seteq r19, r2, zero
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	seteq r15, r7, zero
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	seteq r16, r7, r3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	max.u r2, r2, r7
	setlt.u r2, r3, r2
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	and r7, r13, r15
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	and r13, r19, r16
	lui r15, 523264
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	or r7, r7, r13
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	or r2, r2, r7
	lui r7, 523264
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r2, zero, .LBB0_150
# %bb.149:                              # %vector.body166
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r28)
.LBB0_150:                              # %vector.body166
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r2, 4(r18)
	loads.w r13, 4(r12)
	and r2, r2, r27
	and r13, r13, r27
	seteq r16, r2, r3
	seteq r24, r2, zero
	seteq r19, r13, zero
	seteq r22, r13, r3
	max.u r2, r2, r13
	setlt.u r2, r3, r2
	and r13, r16, r19
	and r16, r24, r22
	or r13, r13, r16
	or r13, r2, r13
	lui r2, 523264
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r13, zero, .LBB0_152
# %bb.151:                              # %vector.body166
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r28)
.LBB0_152:                              # %vector.body166
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r13, 8(r18)
	loads.w r16, 8(r12)
	and r13, r13, r27
	and r16, r16, r27
	seteq r19, r13, r3
	seteq r17, r13, zero
	seteq r24, r16, r3
	seteq r22, r16, zero
	max.u r13, r13, r16
	setlt.u r13, r3, r13
	and r16, r19, r22
	and r17, r17, r24
	lui r19, 523264
	or r16, r16, r17
	or r13, r13, r16
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r13, zero, .LBB0_154
# %bb.153:                              # %vector.body166
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r28)
.LBB0_154:                              # %vector.body166
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r13, 12(r18)
	loads.w r12, 12(r12)
	and r13, r13, r27
	and r12, r12, r27
	seteq r16, r13, r3
	seteq r17, r12, zero
	seteq r18, r12, r3
	seteq r22, r13, zero
	max.u r12, r13, r12
	setlt.u r12, r3, r12
	and r13, r16, r17
	and r16, r22, r18
	or r13, r13, r16
	or r12, r12, r13
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r12, zero, .LBB0_147
# %bb.155:                              # %vector.body166
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r28)
	j .LBB0_147
.LBB0_156:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r15
	addli r16, zero, 16
	addli r19, zero, 1
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	mfence { sm }
	.loc	1 270 7                         # parallel-rne.mlir:270:7
	loadli.w r2,  -4180(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_71
.LBB0_157:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r13, zero, 4
	.loc	1 306 7 is_stmt 1               # parallel-rne.mlir:306:7
	bneq r15, r13, .LBB0_99
.LBB0_158:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 314 9                         # parallel-rne.mlir:314:9
	sub.s r2, r8, r1
	addli r14, zero, 1
	setlt.u r2, r2, r16
	.loc	1 306 7                         # parallel-rne.mlir:306:7
	storeli.w r2, -4144(r30)                # 4-byte Folded Spill
	addli r2, zero, 512
	xfence
	zext_int2long r[20:21], r2
	mfence { lm, sm, gm }
	j .LBB0_160
.LBB0_159:                              # %middle.block142
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 576
	.loc	1 314 9 is_stmt 1               # parallel-rne.mlir:314:9
	andi r2, r14, 1
	addli r14, zero, 0
	zext_int2long r[20:21], r4
	beq r2, zero, .LBB0_185
.LBB0_160:                              # %vector.memcheck128
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_163 Depth 3
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	loadli.w r2,  -4144(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_175
# %bb.161:                              # %scalar.ph134.preheader
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[18:19], zero
	j .LBB0_163
.LBB0_162:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	setlt.ul r7, r[18:19], r[5:6]
	.loc	1 337 13 is_stmt 1              # parallel-rne.mlir:337:13
	add.s r2, r8, r2
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	addli.d r[18:19], r[18:19], 1
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	stores.w r4, 0(r2)
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	beq r7, zero, .LBB0_159
.LBB0_163:                              # %scalar.ph134
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.ul r[12:13], r[18:19], r[20:21]
	slli r2, r12, 2
	lui r13, 523264
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	add.s r4, r11, r2
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	add.s r7, r1, r2
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	loads.w r4, 0(r4)
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	loads.w r15, 0(r7)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r7, r4, r27
	lui r4, 523264
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r7, r3, .LBB0_165
# %bb.164:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r15, 0
.LBB0_165:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	add.s r12, r23, r2
	loads.w r12, 0(r12)
	and r12, r12, r27
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r12, zero, .LBB0_173
# %bb.166:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r15, 0
	lui r15, 523264
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r7, zero, .LBB0_174
.LBB0_167:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	beq r12, r3, .LBB0_169
.LBB0_168:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r13, 0
.LBB0_169:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	setlt.u r13, r3, r7
	lui r7, 523264
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r13, zero, .LBB0_171
# %bb.170:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r15, 0
.LBB0_171:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	setlt.u r12, r3, r12
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r12, zero, .LBB0_162
# %bb.172:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r7, 0
	j .LBB0_162
.LBB0_173:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	lui r15, 523264
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r7, zero, .LBB0_167
.LBB0_174:                              # %scalar.ph134
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r13, 0
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r12, r3, .LBB0_168
	j .LBB0_169
.LBB0_175:                              # %vector.body136.preheader
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[25:26], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body136
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 315 11 is_stmt 1              # parallel-rne.mlir:315:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	add.s r4, r8, r4
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	seteq.d r12, r[25:26], r[9:10]
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	stores.w r7, 12(r4)
	stores.w r19, 8(r4)
	stores.w r2, 4(r4)
	stores.w r15, 0(r4)
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	bneq r12, zero, .LBB0_159
.LBB0_177:                              # %vector.body136
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.ul r[12:13], r[25:26], r[20:21]
	slli r4, r12, 2
	add.s r18, r23, r4
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	add.s r12, r11, r4
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	add.s r28, r1, r4
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	loads.w r2, 0(r18)
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	loads.w r7, 0(r12)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r2, r2, r27
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r7, r7, r27
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	seteq r13, r2, r3
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	seteq r19, r2, zero
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	seteq r15, r7, zero
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	seteq r16, r7, r3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	max.u r2, r2, r7
	setlt.u r2, r3, r2
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	and r7, r13, r15
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	and r13, r19, r16
	lui r15, 523264
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	or r7, r7, r13
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	or r2, r2, r7
	lui r7, 523264
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r2, zero, .LBB0_179
# %bb.178:                              # %vector.body136
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r28)
.LBB0_179:                              # %vector.body136
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r2, 4(r18)
	loads.w r13, 4(r12)
	and r2, r2, r27
	and r13, r13, r27
	seteq r16, r2, r3
	seteq r24, r2, zero
	seteq r19, r13, zero
	seteq r22, r13, r3
	max.u r2, r2, r13
	setlt.u r2, r3, r2
	and r13, r16, r19
	and r16, r24, r22
	or r13, r13, r16
	or r13, r2, r13
	lui r2, 523264
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r13, zero, .LBB0_181
# %bb.180:                              # %vector.body136
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r28)
.LBB0_181:                              # %vector.body136
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r13, 8(r18)
	loads.w r16, 8(r12)
	and r13, r13, r27
	and r16, r16, r27
	seteq r19, r13, r3
	seteq r17, r13, zero
	seteq r24, r16, r3
	seteq r22, r16, zero
	max.u r13, r13, r16
	setlt.u r13, r3, r13
	and r16, r19, r22
	and r17, r17, r24
	lui r19, 523264
	or r16, r16, r17
	or r13, r13, r16
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r13, zero, .LBB0_183
# %bb.182:                              # %vector.body136
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r28)
.LBB0_183:                              # %vector.body136
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r13, 12(r18)
	loads.w r12, 12(r12)
	and r13, r13, r27
	and r12, r12, r27
	seteq r16, r13, r3
	seteq r17, r12, zero
	seteq r18, r12, r3
	seteq r22, r13, zero
	max.u r12, r13, r12
	setlt.u r12, r3, r12
	and r13, r16, r17
	and r16, r22, r18
	or r13, r13, r16
	or r12, r12, r13
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r12, zero, .LBB0_176
# %bb.184:                              # %vector.body136
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r28)
	j .LBB0_176
.LBB0_185:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r15
	addli r16, zero, 16
	addli r19, zero, 1
	addli r13, zero, 4
	.loc	1 306 7                         # parallel-rne.mlir:306:7
	mfence { sm }
	.loc	1 342 7                         # parallel-rne.mlir:342:7
	addli r2, zero, 5
	bneq r15, r2, .LBB0_214
.LBB0_186:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 350 9                         # parallel-rne.mlir:350:9
	sub.s r2, r8, r1
	addli r14, zero, 1
	setlt.u r2, r2, r16
	.loc	1 342 7                         # parallel-rne.mlir:342:7
	storeli.w r2, -4144(r30)                # 4-byte Folded Spill
	addli r2, zero, 640
	xfence
	zext_int2long r[20:21], r2
	mfence { lm, sm, gm }
	j .LBB0_188
.LBB0_187:                              # %middle.block127
                                        #   in Loop: Header=BB0_188 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 704
	.loc	1 350 9 is_stmt 1               # parallel-rne.mlir:350:9
	andi r2, r14, 1
	addli r14, zero, 0
	zext_int2long r[20:21], r4
	beq r2, zero, .LBB0_213
.LBB0_188:                              # %vector.memcheck113
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_191 Depth 3
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	loadli.w r2,  -4144(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_203
# %bb.189:                              # %scalar.ph119.preheader
                                        #   in Loop: Header=BB0_188 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[18:19], zero
	j .LBB0_191
.LBB0_190:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	setlt.ul r7, r[18:19], r[5:6]
	.loc	1 373 13 is_stmt 1              # parallel-rne.mlir:373:13
	add.s r2, r8, r2
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	addli.d r[18:19], r[18:19], 1
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	stores.w r4, 0(r2)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	beq r7, zero, .LBB0_187
.LBB0_191:                              # %scalar.ph119
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_188 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[12:13], r[18:19], r[20:21]
	slli r2, r12, 2
	lui r13, 523264
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	add.s r4, r11, r2
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	add.s r7, r1, r2
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	loads.w r4, 0(r4)
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	loads.w r15, 0(r7)
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	and r7, r4, r27
	lui r4, 523264
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	beq r7, r3, .LBB0_193
# %bb.192:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r15, 0
.LBB0_193:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	add.s r12, r23, r2
	loads.w r12, 0(r12)
	and r12, r12, r27
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	beq r12, zero, .LBB0_201
# %bb.194:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r15, 0
	lui r15, 523264
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r7, zero, .LBB0_202
.LBB0_195:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	beq r12, r3, .LBB0_197
.LBB0_196:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r13, 0
.LBB0_197:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	setlt.u r13, r3, r7
	lui r7, 523264
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r13, zero, .LBB0_199
# %bb.198:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r15, 0
.LBB0_199:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	setlt.u r12, r3, r12
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r12, zero, .LBB0_190
# %bb.200:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r7, 0
	j .LBB0_190
.LBB0_201:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	lui r15, 523264
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	beq r7, zero, .LBB0_195
.LBB0_202:                              # %scalar.ph119
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r13, 0
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r12, r3, .LBB0_196
	j .LBB0_197
.LBB0_203:                              # %vector.body121.preheader
                                        #   in Loop: Header=BB0_188 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[25:26], zero
	j .LBB0_205
.LBB0_204:                              # %vector.body121
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 351 11 is_stmt 1              # parallel-rne.mlir:351:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	add.s r4, r8, r4
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	seteq.d r12, r[25:26], r[9:10]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	stores.w r7, 12(r4)
	stores.w r19, 8(r4)
	stores.w r2, 4(r4)
	stores.w r15, 0(r4)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	bneq r12, zero, .LBB0_187
.LBB0_205:                              # %vector.body121
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_188 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[12:13], r[25:26], r[20:21]
	slli r4, r12, 2
	add.s r18, r23, r4
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	add.s r12, r11, r4
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	add.s r28, r1, r4
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	loads.w r2, 0(r18)
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	loads.w r7, 0(r12)
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	and r2, r2, r27
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	and r7, r7, r27
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	seteq r13, r2, r3
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	seteq r19, r2, zero
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	seteq r15, r7, zero
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	seteq r16, r7, r3
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	max.u r2, r2, r7
	setlt.u r2, r3, r2
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	and r7, r13, r15
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	and r13, r19, r16
	lui r15, 523264
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	or r7, r7, r13
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	or r2, r2, r7
	lui r7, 523264
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r2, zero, .LBB0_207
# %bb.206:                              # %vector.body121
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r28)
.LBB0_207:                              # %vector.body121
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r2, 4(r18)
	loads.w r13, 4(r12)
	and r2, r2, r27
	and r13, r13, r27
	seteq r16, r2, r3
	seteq r24, r2, zero
	seteq r19, r13, zero
	seteq r22, r13, r3
	max.u r2, r2, r13
	setlt.u r2, r3, r2
	and r13, r16, r19
	and r16, r24, r22
	or r13, r13, r16
	or r13, r2, r13
	lui r2, 523264
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r13, zero, .LBB0_209
# %bb.208:                              # %vector.body121
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r28)
.LBB0_209:                              # %vector.body121
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r13, 8(r18)
	loads.w r16, 8(r12)
	and r13, r13, r27
	and r16, r16, r27
	seteq r19, r13, r3
	seteq r17, r13, zero
	seteq r24, r16, r3
	seteq r22, r16, zero
	max.u r13, r13, r16
	setlt.u r13, r3, r13
	and r16, r19, r22
	and r17, r17, r24
	lui r19, 523264
	or r16, r16, r17
	or r13, r13, r16
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r13, zero, .LBB0_211
# %bb.210:                              # %vector.body121
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 8(r28)
.LBB0_211:                              # %vector.body121
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r13, 12(r18)
	loads.w r12, 12(r12)
	and r13, r13, r27
	and r12, r12, r27
	seteq r16, r13, r3
	seteq r17, r12, zero
	seteq r18, r12, r3
	seteq r22, r13, zero
	max.u r12, r13, r12
	setlt.u r12, r3, r12
	and r13, r16, r17
	and r16, r22, r18
	or r13, r13, r16
	or r12, r12, r13
	.loc	1 371 19                        # parallel-rne.mlir:371:19
	bneq r12, zero, .LBB0_204
# %bb.212:                              # %vector.body121
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r28)
	j .LBB0_204
.LBB0_213:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r15
	addli r16, zero, 16
	addli r19, zero, 1
	addli r13, zero, 4
	.loc	1 342 7                         # parallel-rne.mlir:342:7
	mfence { sm }
.LBB0_214:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[17:18], zero
	.loc	1 378 7 is_stmt 1               # parallel-rne.mlir:378:7
	addli r2, r30, -4160
	store.d r[17:18], 0(r2)                 # 8-byte Folded Spill
	addli r2, zero, 7
	beq r15, r2, .LBB0_243
# %bb.215:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	bneq r15, r2, .LBB0_271
# %bb.216:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 386 9                         # parallel-rne.mlir:386:9
	sub.s r2, r8, r1
	addli r4, zero, 1
	setlt.u r2, r2, r16
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	storeli.w r2, -4144(r30)                # 4-byte Folded Spill
	addli r2, zero, 768
	xfence
	zext_int2long r[20:21], r2
	mfence { lm, sm, gm }
	j .LBB0_218
.LBB0_217:                              # %middle.block
                                        #   in Loop: Header=BB0_218 Depth=2
	.loc	1 386 9                         # parallel-rne.mlir:386:9
	andi r2, r4, 1
	addli r4, zero, 832
	zext_int2long r[20:21], r4
	addli r4, zero, 0
	beq r2, zero, .LBB0_270
.LBB0_218:                              # %vector.memcheck
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_235 Depth 3
                                        #       Child Loop BB0_221 Depth 3
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	loadli.w r2,  -4144(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_233
# %bb.219:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_218 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[24:25], zero
	j .LBB0_221
.LBB0_220:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	setlt.ul r12, r[24:25], r[5:6]
	.loc	1 409 13 is_stmt 1              # parallel-rne.mlir:409:13
	add.s r2, r8, r2
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	addli.d r[24:25], r[24:25], 1
	.loc	1 409 13                        # parallel-rne.mlir:409:13
	stores.w r7, 0(r2)
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	beq r12, zero, .LBB0_217
.LBB0_221:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_218 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	add.ul r[12:13], r[24:25], r[20:21]
	lui r15, 523264
	slli r2, r12, 2
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	add.s r7, r11, r2
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	add.s r12, r1, r2
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	loads.w r7, 0(r7)
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	loads.w r19, 0(r12)
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	and r12, r7, r27
	lui r7, 523264
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	beq r12, r3, .LBB0_223
# %bb.222:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
.LBB0_223:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	add.s r13, r23, r2
	loads.w r13, 0(r13)
	and r13, r13, r27
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	beq r13, zero, .LBB0_231
# %bb.224:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r19, 0
	lui r19, 523264
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r12, zero, .LBB0_232
.LBB0_225:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	beq r13, r3, .LBB0_227
.LBB0_226:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r15, 0
.LBB0_227:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	setlt.u r14, r3, r12
	lui r12, 523264
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r14, zero, .LBB0_229
# %bb.228:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
.LBB0_229:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	setlt.u r13, r3, r13
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r13, zero, .LBB0_220
# %bb.230:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r12, 0
	j .LBB0_220
.LBB0_231:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	lui r19, 523264
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	beq r12, zero, .LBB0_225
.LBB0_232:                              # %scalar.ph
                                        #   in Loop: Header=BB0_221 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r15, 0
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r13, r3, .LBB0_226
	j .LBB0_227
.LBB0_233:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_218 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r30, -4160
	load.d r[25:26], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_235
.LBB0_234:                              # %vector.body
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 387 11 is_stmt 1              # parallel-rne.mlir:387:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 409 13                        # parallel-rne.mlir:409:13
	add.s r12, r8, r15
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	seteq.d r2, r[25:26], r[9:10]
	.loc	1 409 13                        # parallel-rne.mlir:409:13
	stores.w r28, 12(r12)
	stores.w r13, 8(r12)
	stores.w r19, 4(r12)
	stores.w r7, 0(r12)
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	bneq r2, zero, .LBB0_217
.LBB0_235:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_218 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	add.ul r[12:13], r[25:26], r[20:21]
	lui r28, 523264
	slli r15, r12, 2
	add.s r12, r23, r15
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	add.s r2, r11, r15
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	loads.w r7, 0(r12)
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	loads.w r13, 0(r2)
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	and r7, r7, r27
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	and r13, r13, r27
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	seteq r16, r7, r3
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	seteq r24, r7, zero
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	seteq r19, r13, zero
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	seteq r22, r13, r3
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	max.u r7, r7, r13
	setlt.u r7, r3, r7
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	and r13, r16, r19
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	and r16, r24, r22
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	add.s r24, r1, r15
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	or r13, r13, r16
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	or r13, r7, r13
	lui r7, 523264
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r13, zero, .LBB0_237
# %bb.236:                              # %vector.body
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r24)
.LBB0_237:                              # %vector.body
                                        #   in Loop: Header=BB0_235 Depth=3
	loads.w r13, 4(r12)
	loads.w r16, 4(r2)
	and r13, r13, r27
	and r16, r16, r27
	seteq r19, r13, r3
	seteq r18, r13, zero
	seteq r17, r16, r3
	seteq r22, r16, zero
	max.u r13, r13, r16
	setlt.u r13, r3, r13
	and r16, r19, r22
	and r17, r18, r17
	lui r19, 523264
	or r16, r16, r17
	or r13, r13, r16
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r13, zero, .LBB0_239
# %bb.238:                              # %vector.body
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r24)
.LBB0_239:                              # %vector.body
                                        #   in Loop: Header=BB0_235 Depth=3
	loads.w r13, 8(r12)
	loads.w r16, 8(r2)
	and r13, r13, r27
	and r16, r16, r27
	seteq r17, r13, r3
	seteq r14, r13, zero
	seteq r22, r16, r3
	seteq r18, r16, zero
	max.u r13, r13, r16
	setlt.u r13, r3, r13
	and r16, r17, r18
	and r14, r14, r22
	or r14, r16, r14
	or r14, r13, r14
	lui r13, 523264
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r14, zero, .LBB0_241
# %bb.240:                              # %vector.body
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 8(r24)
.LBB0_241:                              # %vector.body
                                        #   in Loop: Header=BB0_235 Depth=3
	loads.w r12, 12(r12)
	loads.w r2, 12(r2)
	and r12, r12, r27
	and r2, r2, r27
	seteq r14, r12, r3
	seteq r16, r2, zero
	seteq r17, r2, r3
	seteq r18, r12, zero
	max.u r2, r12, r2
	setlt.u r2, r3, r2
	and r12, r14, r16
	and r14, r18, r17
	or r12, r12, r14
	or r2, r2, r12
	.loc	1 407 19                        # parallel-rne.mlir:407:19
	bneq r2, zero, .LBB0_234
# %bb.242:                              # %vector.body
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 12(r24)
	j .LBB0_234
.LBB0_243:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 422 9 is_stmt 1               # parallel-rne.mlir:422:9
	sub.s r2, r8, r1
	addli r4, zero, 1
	setlt.u r2, r2, r16
	.loc	1 414 7                         # parallel-rne.mlir:414:7
	storeli.w r2, -4144(r30)                # 4-byte Folded Spill
	addli r2, zero, 896
	xfence
	zext_int2long r[20:21], r2
	mfence { lm, sm, gm }
	j .LBB0_245
.LBB0_244:                              # %middle.block112
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 422 9                         # parallel-rne.mlir:422:9
	andi r2, r4, 1
	addli r4, zero, 960
	zext_int2long r[20:21], r4
	addli r4, zero, 0
	beq r2, zero, .LBB0_270
.LBB0_245:                              # %vector.memcheck98
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_262 Depth 3
                                        #       Child Loop BB0_248 Depth 3
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	loadli.w r2,  -4144(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_260
# %bb.246:                              # %scalar.ph104.preheader
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[24:25], zero
	j .LBB0_248
.LBB0_247:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	setlt.ul r12, r[24:25], r[5:6]
	.loc	1 445 13 is_stmt 1              # parallel-rne.mlir:445:13
	add.s r2, r8, r2
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	addli.d r[24:25], r[24:25], 1
	.loc	1 445 13                        # parallel-rne.mlir:445:13
	stores.w r7, 0(r2)
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	beq r12, zero, .LBB0_244
.LBB0_248:                              # %scalar.ph104
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	add.ul r[12:13], r[24:25], r[20:21]
	lui r15, 523264
	slli r2, r12, 2
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	add.s r7, r11, r2
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	add.s r12, r1, r2
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	loads.w r7, 0(r7)
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	loads.w r19, 0(r12)
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	and r12, r7, r27
	lui r7, 523264
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	beq r12, r3, .LBB0_250
# %bb.249:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
.LBB0_250:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	add.s r13, r23, r2
	loads.w r13, 0(r13)
	and r13, r13, r27
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	beq r13, zero, .LBB0_258
# %bb.251:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r19, 0
	lui r19, 523264
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r12, zero, .LBB0_259
.LBB0_252:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	beq r13, r3, .LBB0_254
.LBB0_253:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r15, 0
.LBB0_254:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	setlt.u r14, r3, r12
	lui r12, 523264
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r14, zero, .LBB0_256
# %bb.255:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r19, 0
.LBB0_256:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	setlt.u r13, r3, r13
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r13, zero, .LBB0_247
# %bb.257:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r12, 0
	j .LBB0_247
.LBB0_258:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	lui r19, 523264
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	beq r12, zero, .LBB0_252
.LBB0_259:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r15, 0
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r13, r3, .LBB0_253
	j .LBB0_254
.LBB0_260:                              # %vector.body106.preheader
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[25:26], zero
	j .LBB0_262
.LBB0_261:                              # %vector.body106
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 423 11 is_stmt 1              # parallel-rne.mlir:423:11
	addli.d r[25:26], r[25:26], 4
	.loc	1 445 13                        # parallel-rne.mlir:445:13
	add.s r12, r8, r15
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	seteq.d r2, r[25:26], r[9:10]
	.loc	1 445 13                        # parallel-rne.mlir:445:13
	stores.w r28, 12(r12)
	stores.w r13, 8(r12)
	stores.w r19, 4(r12)
	stores.w r7, 0(r12)
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	bneq r2, zero, .LBB0_244
.LBB0_262:                              # %vector.body106
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	add.ul r[12:13], r[25:26], r[20:21]
	lui r28, 523264
	slli r15, r12, 2
	add.s r12, r23, r15
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	add.s r24, r11, r15
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	loads.w r2, 0(r12)
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	loads.w r7, 0(r24)
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	and r2, r2, r27
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	and r7, r7, r27
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	seteq r13, r2, r3
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	seteq r18, r2, zero
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	seteq r16, r7, zero
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	seteq r17, r7, r3
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	max.u r2, r2, r7
	setlt.u r7, r3, r2
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	and r2, r13, r16
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	and r13, r18, r17
	.loc	1 438 19                        # parallel-rne.mlir:438:19
	or r13, r2, r13
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	add.s r2, r1, r15
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	or r13, r7, r13
	lui r7, 523264
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r13, zero, .LBB0_264
# %bb.263:                              # %vector.body106
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r2)
.LBB0_264:                              # %vector.body106
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r13, 4(r12)
	loads.w r16, 4(r24)
	and r13, r13, r27
	and r16, r16, r27
	seteq r17, r13, r3
	seteq r22, r13, zero
	seteq r18, r16, zero
	seteq r19, r16, r3
	max.u r13, r13, r16
	setlt.u r13, r3, r13
	and r16, r17, r18
	and r17, r22, r19
	lui r19, 523264
	or r16, r16, r17
	or r13, r13, r16
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r13, zero, .LBB0_266
# %bb.265:                              # %vector.body106
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r2)
.LBB0_266:                              # %vector.body106
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r13, 8(r12)
	loads.w r16, 8(r24)
	and r13, r13, r27
	and r16, r16, r27
	seteq r17, r13, r3
	seteq r14, r13, zero
	seteq r22, r16, r3
	seteq r18, r16, zero
	max.u r13, r13, r16
	setlt.u r13, r3, r13
	and r16, r17, r18
	and r14, r14, r22
	or r14, r16, r14
	or r14, r13, r14
	lui r13, 523264
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r14, zero, .LBB0_268
# %bb.267:                              # %vector.body106
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 8(r2)
.LBB0_268:                              # %vector.body106
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r12, 12(r12)
	loads.w r14, 12(r24)
	and r12, r12, r27
	and r14, r14, r27
	seteq r16, r12, r3
	seteq r22, r12, zero
	seteq r17, r14, zero
	seteq r18, r14, r3
	max.u r12, r12, r14
	setlt.u r12, r3, r12
	and r14, r16, r17
	and r16, r22, r18
	or r14, r14, r16
	or r12, r12, r14
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r12, zero, .LBB0_261
# %bb.269:                              # %vector.body106
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 12(r2)
	j .LBB0_261
.LBB0_270:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r15
	addli r16, zero, 16
	addli r19, zero, 1
	addli r13, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_271:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 450 7 is_stmt 1               # parallel-rne.mlir:450:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 451 7                         # parallel-rne.mlir:451:7
	loadli.w r1,  -4180(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.272:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 6
	.loc	1 462 7 is_stmt 1               # parallel-rne.mlir:462:7
	bneq r15, zero, .LBB0_7
# %bb.273:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -4220(r30)                # 4-byte Folded Reload
	addli r6, r30, -4160
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	addli r9, r30, -4216
	addli r14, r30, -4208
	addli r11, zero, 12
	load.d r[17:18], 24(r30)
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	load.d r[9:10], 0(r14)                  # 8-byte Folded Reload
	xwait r11, 0
	sext_int2long r[1:2], r1
	min.sl r[4:5], r[1:2], r[4:5]
	sll.d r[6:7], r[6:7], r11
	sll.d r[9:10], r[9:10], r19
	addli.d r[4:5], r[4:5], 16
	add.ul r[6:7], r[17:18], r[6:7]
	max.sl r[4:5], r[4:5], r[1:2]
	add.ul r[6:7], r[6:7], r[9:10]
	sub.sl r[1:2], r[4:5], r[1:2]
	zext_int2long r[4:5], r16
	.loc	1 458 13 is_stmt 1              # parallel-rne.mlir:458:13
	min.sl r[1:2], r[1:2], r[4:5]
	addli r5, zero, 5
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	addli r4, r30, -4232
	lock zero, r5
	dma_cfg r19, zero, zero, 0
	dma_cfg zero, r19, zero, 1
	load.d r[9:10], 0(r4)                   # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r4, r9, 2
	dma_cfg r6, r8, r4, 3
	addli r4, zero, 256
	dma_cfg r4, r4, r1, 4
	addli r1, zero, 13
	dma_run zero
	unlock r5
	j .LBB0_6
.LBB0_274:                              # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r2, r23, 1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r4, r21, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r6, -2108(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r5, -1084(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r2, -4140(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	storeli.w r4, -3116(r30)
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	j .LBB0_31
.LBB0_275:                              # %.thread77
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r2, r23, 1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r4, r21, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r6, -2108(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r5, -1084(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r2, -4140(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	storeli.w r4, -3116(r30)
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	j .LBB0_30
.LBB0_276:                              # %._crit_edge
	.loc	1 464 5                         # parallel-rne.mlir:464:5
	xsignal zero, 0
	bneq r15, zero, .LBB0_278
# %bb.277:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 464 5                         # parallel-rne.mlir:464:5
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
.LBB0_278:
	.loc	1 465 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:465:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-44pjkspd" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
