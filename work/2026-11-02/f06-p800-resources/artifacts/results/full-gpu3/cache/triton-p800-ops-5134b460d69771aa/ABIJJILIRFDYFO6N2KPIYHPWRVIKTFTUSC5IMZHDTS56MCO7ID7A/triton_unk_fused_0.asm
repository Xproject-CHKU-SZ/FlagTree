	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-pk6avlkn" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4296
	addli r1, zero, 1
.Ltmp0:
	.loc	1 33 5 prologue_end             # parallel-rne.mlir:33:5
	core_id r2
	core_id r12
	addli r30, sp, 4232
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	unlock r2
	addli r2, zero, 14
	csr_set csr3, r1
	sync_group
	addli r1, zero, 5
	xsignal r2, 0
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
	addli r1, zero, 9
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	addli r1, zero, 19
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 17
	xsignal r1, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  32(r30)
	loadli.w r2,  36(r30)
	.loc	1 35 10 is_stmt 1               # parallel-rne.mlir:35:10
	load_param_i r4, 1
	loadli.w r3,  40(r30)
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
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r3, r1, .LBB0_452
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 44 11 is_stmt 1               # parallel-rne.mlir:44:11
	addli r4, r30, -4224
	sext_int2long r[8:9], r1
	lui r6, 383
	addli r17, zero, 4
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 2047
	addli r3, r30, -4232
	lui r4, 1048560
	ori r14, r6, 2176
	lui r1, 1048572
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	lui r2, 7
	lui r1, 524287
	lui r3, 522240
	ori r26, r2, 4095
	lui r2, 522239
	ori r28, r1, 4095
	lui r1, 1024
	ori r5, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 608 7                         # parallel-rne.mlir:608:7
	addli r2, zero, 17
.LBB0_6:                                # %.thread39
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                # %.thread39
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -4184
	addli r17, zero, 4
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	addli r2, r30, -4224
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	setlt.sl r2, r[8:9], r[6:7]
	beq r2, zero, .LBB0_452
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
                                        #     Child Loop BB0_448 Depth 2
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
	.loc	1 74 7                          # parallel-rne.mlir:74:7
	bneq r12, r17, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 14
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  40(r30)
	addli r7, r30, -4184
	addli r10, zero, 8
	addli r11, r30, -4208
	addli r6, zero, 0
	store.d r[8:9], 0(r7)                   # 8-byte Folded Spill
	loadli.w r7,  36(r30)
	div.s r2, r8, r2
	div.s r2, r2, r7
	addli r7, zero, 256
	div.s r7, r2, r7
	slli r9, r7, 3
	slli r7, r7, 8
	sub.s r8, r17, r9
	sub.s r7, r2, r7
	min.s r8, r8, r10
	mod.s r2, r2, r8
	div.s r10, r7, r8
	.loc	1 92 15 is_stmt 1               # parallel-rne.mlir:92:15
	loadli.w r7,  -4096(r30)
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	storeli.w r7, -4112(r30)                # 4-byte Folded Spill
	loadli.w r7,  -3072(r30)
	storeli.w r7, -4120(r30)                # 4-byte Folded Spill
	slli r7, r10, 5
	add.s r2, r9, r2
	zext_int2long r[9:10], r10
	storeli.w r7, -4176(r30)                # 4-byte Folded Spill
	slli r7, r2, 5
	storeli.w r7, -4212(r30)                # 4-byte Folded Spill
	zext_int2long r[7:8], r2
	addli r2, zero, 5
	sll.d r[9:10], r[9:10], r2
	addli r2, zero, 12
	store.d r[7:8], 0(r11)                  # 8-byte Folded Spill
	sll.d r[12:13], r[7:8], r2
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r2, zero, 1
	sll.d r[7:8], r[9:10], r2
	addli r2, r30, -4232
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	addli r2, r30, -4192
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -4128
	and.d r[19:20], r[12:13], r[9:10]
	load.d r[9:10], 8(r30)
	add.ul r[7:8], r[9:10], r[7:8]
	addli r9, zero, 0
	store.d r[7:8], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	lock zero, r17
	addli r10, r10, 4160
	addli r8, zero, 64
	addli r16, zero, 32
	addli r11, zero, 5
	addli r15, zero, 2
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r23, zero, 2
	dma_cfg r10, r22, r8, 3
	addli r10, zero, 256
	dma_cfg r7, r8, r18, 4
	dma_cfg r7, r10, r2, 5
	addli r10, zero, 6
	dma_cfg zero, zero, r16, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r25, 10
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
	addli r10, zero, 15
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 16
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
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
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r8, 3
	dma_cfg r7, zero, r18, 4
	dma_cfg r7, zero, r2, 5
	dma_cfg zero, zero, r16, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r15, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	loadli.w r2,  -2048(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r10,  -1024(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r2, r2, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r10, r10, 1
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	storeli.w r2, -2048(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r10, -1024(r30)
.LBB0_13:                               # %.thread34
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r9, r9, 1
	addli r2, zero, 8
	beq r9, r2, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	addli r6, r6, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 76 15                         # parallel-rne.mlir:76:15
	zext_int2long r[22:23], r9
	addli r2, zero, 16383
	.loc	1 77 15                         # parallel-rne.mlir:77:15
	sll.d r[10:11], r[22:23], r17
	addli.d r[17:18], r[19:20], 0
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.ul r[24:25], r[10:11], r[12:13]
	zext_int2long r[10:11], r2
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	setlt.ul r2, r[10:11], r[24:25]
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	bneq r2, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[17:18], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	loadli.w r2,  -4112(r30)                # 4-byte Folded Reload
	loadli.w r7,  -4120(r30)                # 4-byte Folded Reload
	.loc	1 92 15 is_stmt 1               # parallel-rne.mlir:92:15
	addli r15, r30, -4104
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r27
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r11, r7, r6
	addli r7, zero, 255
	add.s r2, r2, r6
	.loc	1 92 15 is_stmt 1               # parallel-rne.mlir:92:15
	mod.s r10, r2, r7
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r16, r11, r7
	addli r7, zero, 96
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	addli r2, r2, 1
	zext_int2long r[7:8], r7
	storeli.w r2, -4096(r30)
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r2, r11, 1
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	store.d r[7:8], 0(r15)                  # 8-byte Folded Spill
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	storeli.w r2, -3072(r30)
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	addli r7, zero, 2
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	slli r15, r10, 11
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r10, r16, 12
	addli r21, r10, 4096
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	beq r2, r7, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 1
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	bneq r27, r2, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 128
	sub.sl r[15:16], r[24:25], r[17:18]
	addli r8, r30, -4104
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	sll.d r[22:23], r[24:25], r2
	addli r24, zero, 3
	addli r25, zero, 7
	zext_int2long r[17:18], r7
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[15:16], r[15:16], r[17:18]
	load.d r[17:18], 0(r8)                  # 8-byte Folded Reload
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	addli r8, zero, 254
	xwait r24, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[17:18], r[15:16], r[17:18]
	sub.sl r[15:16], r[17:18], r[15:16]
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	load.d r[17:18], 0(r30)
	addli r2, r15, 32
	add.ul r[22:23], r[17:18], r[22:23]
	addli r18, zero, 1
	addli r17, zero, 4
	blt.s r8, r11, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r15, zero, 5
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	addli r11, zero, 2
	addli r8, zero, 9
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
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
	addli r11, zero, 19
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 22
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 26
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 30
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r11, 3
	addli r11, zero, 32
	dma_cfg r7, zero, r18, 4
	dma_cfg r7, zero, r11, 5
	dma_cfg zero, zero, r11, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 2
	.loc	1 99 9 is_stmt 1                # parallel-rne.mlir:99:9
	addli r2, zero, 5
	addli r24, zero, 3
	addli r17, zero, 4
	xwait r7, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r7, zero, 0
	addli r7, zero, 16
	ds_cfg r2, zero, 1
	ds_cfg r7, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r15, r21, r7, 1
	unlock zero
	xsignal r24, 0
	xsignal r17, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r11,  -1024(r30)
	addli r7, zero, 255
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	loadli.w r2,  -2048(r30)
	addli r18, zero, 7
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r16, r11, r7
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	mod.s r10, r2, r7
	addli r2, r2, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	lui r7, 256
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	storeli.w r2, -2048(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r2, r16, 11
	addli r16, r11, 1
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	slli r10, r10, 11
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	add.s r21, r2, r7
	storeli.w r16, -1024(r30)
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	beq r27, r18, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r17, zero, 4
	addli r24, zero, 3
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	addli r7, zero, 6
	bneq r27, r7, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	addli r10, r30, -4128
	addli r25, zero, 15
	load.d r[7:8], 0(r10)                   # 8-byte Folded Reload
	sll.d r[15:16], r[22:23], r25
	xwait r18, 0
	add.ul r[22:23], r[7:8], r[15:16]
	addli r7, zero, 254
	blt.s r7, r11, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r15, zero, 1
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	addli r7, zero, 2
	addli r10, zero, 8
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 16
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r10, 10
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
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r7, 3
	addli r7, zero, 128
	dma_cfg r7, zero, r15, 4
	dma_cfg r7, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r7, 256
	addli r11, zero, 1
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	lock zero, r17
	addli r8, zero, 64
	addli r15, zero, 16
	addli r16, zero, 6
	ori r10, r7, 64
	dma_cfg r11, r11, zero, 0
	addli r7, zero, 128
	dma_cfg zero, r23, zero, 2
	add.s r2, r2, r10
	addli r10, zero, 5
	dma_cfg r2, r22, r8, 3
	addli r2, zero, 2048
	dma_cfg r7, r8, r11, 4
	dma_cfg r7, r2, r15, 5
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r15, 10
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
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r21, zero, r8, 3
	dma_cfg r7, zero, r11, 4
	dma_cfg r7, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r16, 0
	.loc	1 116 9 is_stmt 1               # parallel-rne.mlir:116:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 6
	addli r7, zero, 16
	addli r17, zero, 4
	addli r24, zero, 3
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
	shuffle_coa r10, r21, r7, 2
	unlock zero
	xsignal r18, 0
	xsignal r2, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	bneq r2, r17, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 8
	xwait r17, 0
	addli r7, zero, 32
	addli r11, zero, 16
	xwait r2, 0
	addli r2, zero, 1
	lock zero, r2
	mm_cfg r7, r11, r7, 0
	mm_cfg r2, r2, r2, 2
	beq r6, zero, .LBB0_32
# %bb.30:                               # %.preheader57
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc zero, r15, r10, 8
	j .LBB0_33
.LBB0_31:                               # %.thread34.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r9, r9, 1
	addli r2, zero, 8
	bneq r9, r2, .LBB0_14
	j .LBB0_36
.LBB0_32:                               # %.preheader56
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	mm zero, r15, r10, 8
.LBB0_33:                               # %.thread34.thread81
                                        #   in Loop: Header=BB0_15 Depth=2
	unlock r2
	addli r2, zero, 5
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r9, r9, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r2, zero, 8
	bneq r9, r2, .LBB0_14
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	bneq r27, r17, .LBB0_36
.LBB0_35:                               # %.thread83
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_36:                               # %.thread80
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	bneq r2, r24, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 10
	xwait r6, 0
	.loc	1 140 7                         # parallel-rne.mlir:140:7
	addli r6, zero, 17
	xwait r6, 0
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 32
	.loc	1 142 7 is_stmt 1               # parallel-rne.mlir:142:7
	xfence
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	addli r8, r30, -4168
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	mfence { lm, sm, gm }
	zext_int2long r[24:25], r6
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	addli r6, zero, 255
	csr_set csr5, r6
	addli r6, zero, 3
	zext_int2long r[6:7], r6
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	sync_core
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	bneq r2, zero, .LBB0_63
# %bb.39:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[8:9], zero
	addli r2, r30, -4112
	mfence { lm, sm, gm }
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_41
.LBB0_40:                               # %middle.block176
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 152 9                         # parallel-rne.mlir:152:9
	addli r2, r30, -4168
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_62
.LBB0_41:                               # %.preheader55
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_43 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	sll.d r[12:13], r[8:9], r2
	addli r2, r30, -4112
	load.d r[17:18], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_43
.LBB0_42:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 153 11 is_stmt 1              # parallel-rne.mlir:153:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 168 13                        # parallel-rne.mlir:168:13
	add.s r2, r2, r14
	.loc	1 153 11                        # parallel-rne.mlir:153:11
	setneq.d r6, r[17:18], r[24:25]
	.loc	1 168 13                        # parallel-rne.mlir:168:13
	stores.w r15, 12(r2)
	stores.w r21, 8(r2)
	stores.w r22, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 153 11                        # parallel-rne.mlir:153:11
	beq r6, zero, .LBB0_40
.LBB0_43:                               # %vector.body172
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	add.ul r[6:7], r[17:18], r[12:13]
	slli r2, r6, 2
	loads.w r19, 12(r2)
	loads.w r27, 0(r2)
	loads.w r23, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	and r20, r19, r28
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	setlt.u r6, r3, r20
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r6, zero, .LBB0_45
# %bb.44:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_43 Depth=3
	or r15, r19, r1
.LBB0_46:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	and r16, r10, r28
	setlt.u r6, r3, r16
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r6, zero, .LBB0_48
# %bb.47:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r10, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_43 Depth=3
	or r21, r10, r1
.LBB0_49:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	and r6, r23, r28
	setlt.u r7, r3, r6
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r7, zero, .LBB0_51
# %bb.50:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_43 Depth=3
	or r22, r23, r1
.LBB0_52:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	and r7, r27, r28
	setlt.u r11, r3, r7
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r11, zero, .LBB0_54
# %bb.53:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r27, 0
	.loc	1 165 19 is_stmt 1              # parallel-rne.mlir:165:19
	setlt.u r7, r5, r7
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	beq r7, zero, .LBB0_55
	j .LBB0_56
.LBB0_54:                               #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r27, r1
	.loc	1 165 19 is_stmt 1              # parallel-rne.mlir:165:19
	setlt.u r7, r5, r7
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	bneq r7, zero, .LBB0_56
.LBB0_55:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r27, 16
	andi r7, r7, 1
	add.s r7, r27, r7
	add.s r7, r7, r26
	and r11, r7, r4
.LBB0_56:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r6, r5, r6
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	beq r6, zero, .LBB0_59
# %bb.57:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r16
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	beq r6, zero, .LBB0_60
.LBB0_58:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r20
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	bneq r6, zero, .LBB0_42
	j .LBB0_61
.LBB0_59:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r26
	and r22, r6, r4
	setlt.u r6, r5, r16
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	bneq r6, zero, .LBB0_58
.LBB0_60:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r26
	and r21, r6, r4
	setlt.u r6, r5, r20
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	bneq r6, zero, .LBB0_42
.LBB0_61:                               # %vector.body172
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r26
	and r15, r6, r4
	j .LBB0_42
.LBB0_62:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	mfence { sm }
.LBB0_63:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 7
	.loc	1 173 7 is_stmt 1               # parallel-rne.mlir:173:7
	addli r8, r30, -4112
	zext_int2long r[6:7], r6
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	addli r6, zero, 1
	bneq r2, r6, .LBB0_88
# %bb.64:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 173 7                         # parallel-rne.mlir:173:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_66
.LBB0_65:                               # %middle.block170
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 180 9 is_stmt 1               # parallel-rne.mlir:180:9
	addli r2, r30, -4112
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_87
.LBB0_66:                               # %.preheader54
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_68 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[12:13], zero
	sll.d r[8:9], r[6:7], r2
	j .LBB0_68
.LBB0_67:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 181 11 is_stmt 1              # parallel-rne.mlir:181:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 196 13                        # parallel-rne.mlir:196:13
	add.s r2, r2, r14
	.loc	1 181 11                        # parallel-rne.mlir:181:11
	setneq.d r10, r[12:13], r[24:25]
	.loc	1 196 13                        # parallel-rne.mlir:196:13
	stores.w r15, 12(r2)
	stores.w r19, 8(r2)
	stores.w r20, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 181 11                        # parallel-rne.mlir:181:11
	beq r10, zero, .LBB0_65
.LBB0_68:                               # %vector.body166
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	add.ul r[10:11], r[12:13], r[8:9]
	slli r2, r10, 2
	loads.w r17, 12(r2)
	loads.w r11, 0(r2)
	loads.w r21, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	and r18, r17, r28
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	setlt.u r15, r3, r18
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r15, zero, .LBB0_70
# %bb.69:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r17, 0
	j .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_68 Depth=3
	or r15, r17, r1
.LBB0_71:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	and r16, r10, r28
	setlt.u r19, r3, r16
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r19, zero, .LBB0_73
# %bb.72:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_68 Depth=3
	or r19, r10, r1
.LBB0_74:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	and r23, r21, r28
	setlt.u r20, r3, r23
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r20, zero, .LBB0_76
# %bb.75:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_68 Depth=3
	or r20, r21, r1
.LBB0_77:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r22, zero, .LBB0_79
# %bb.78:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 193 19 is_stmt 1              # parallel-rne.mlir:193:19
	setlt.u r27, r5, r27
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	beq r27, zero, .LBB0_80
	j .LBB0_81
.LBB0_79:                               #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 193 19 is_stmt 1              # parallel-rne.mlir:193:19
	setlt.u r27, r5, r27
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r27, zero, .LBB0_81
.LBB0_80:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_81:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	setlt.u r11, r5, r23
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	beq r11, zero, .LBB0_84
# %bb.82:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	beq r11, zero, .LBB0_85
.LBB0_83:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r18
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r10, zero, .LBB0_67
	j .LBB0_86
.LBB0_84:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r26
	and r20, r11, r4
	setlt.u r11, r5, r16
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r11, zero, .LBB0_83
.LBB0_85:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r10, 16
	andi r11, r11, 1
	add.s r10, r10, r11
	add.s r10, r10, r26
	and r19, r10, r4
	setlt.u r10, r5, r18
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r10, zero, .LBB0_67
.LBB0_86:                               # %vector.body166
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r17, 16
	andi r10, r10, 1
	add.s r10, r17, r10
	add.s r10, r10, r26
	and r15, r10, r4
	j .LBB0_67
.LBB0_87:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 173 7                         # parallel-rne.mlir:173:7
	mfence { sm }
.LBB0_88:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 11
	.loc	1 201 7 is_stmt 1               # parallel-rne.mlir:201:7
	addli r8, r30, -4120
	zext_int2long r[6:7], r6
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	addli r6, zero, 2
	bneq r2, r6, .LBB0_113
# %bb.89:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 201 7                         # parallel-rne.mlir:201:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_91
.LBB0_90:                               # %middle.block164
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 208 9 is_stmt 1               # parallel-rne.mlir:208:9
	addli r2, r30, -4120
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_112
.LBB0_91:                               # %.preheader53
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[12:13], zero
	sll.d r[8:9], r[6:7], r2
	j .LBB0_93
.LBB0_92:                               # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 209 11 is_stmt 1              # parallel-rne.mlir:209:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 224 13                        # parallel-rne.mlir:224:13
	add.s r2, r2, r14
	.loc	1 209 11                        # parallel-rne.mlir:209:11
	setneq.d r10, r[12:13], r[24:25]
	.loc	1 224 13                        # parallel-rne.mlir:224:13
	stores.w r15, 12(r2)
	stores.w r19, 8(r2)
	stores.w r20, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 209 11                        # parallel-rne.mlir:209:11
	beq r10, zero, .LBB0_90
.LBB0_93:                               # %vector.body160
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_91 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	add.ul r[10:11], r[12:13], r[8:9]
	slli r2, r10, 2
	loads.w r17, 12(r2)
	loads.w r11, 0(r2)
	loads.w r21, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	and r18, r17, r28
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	setlt.u r15, r3, r18
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r15, zero, .LBB0_95
# %bb.94:                               # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r17, 0
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_93 Depth=3
	or r15, r17, r1
.LBB0_96:                               # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	and r16, r10, r28
	setlt.u r19, r3, r16
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r19, zero, .LBB0_98
# %bb.97:                               # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_93 Depth=3
	or r19, r10, r1
.LBB0_99:                               # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	and r23, r21, r28
	setlt.u r20, r3, r23
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r20, zero, .LBB0_101
# %bb.100:                              # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_93 Depth=3
	or r20, r21, r1
.LBB0_102:                              # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r22, zero, .LBB0_104
# %bb.103:                              # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 221 19 is_stmt 1              # parallel-rne.mlir:221:19
	setlt.u r27, r5, r27
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	beq r27, zero, .LBB0_105
	j .LBB0_106
.LBB0_104:                              #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 221 19 is_stmt 1              # parallel-rne.mlir:221:19
	setlt.u r27, r5, r27
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r27, zero, .LBB0_106
.LBB0_105:                              # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_106:                              # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	setlt.u r11, r5, r23
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	beq r11, zero, .LBB0_109
# %bb.107:                              # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	beq r11, zero, .LBB0_110
.LBB0_108:                              # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r18
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r10, zero, .LBB0_92
	j .LBB0_111
.LBB0_109:                              # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r26
	and r20, r11, r4
	setlt.u r11, r5, r16
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r11, zero, .LBB0_108
.LBB0_110:                              # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r10, 16
	andi r11, r11, 1
	add.s r10, r10, r11
	add.s r10, r10, r26
	and r19, r10, r4
	setlt.u r10, r5, r18
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r10, zero, .LBB0_92
.LBB0_111:                              # %vector.body160
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r17, 16
	andi r10, r10, 1
	add.s r10, r17, r10
	add.s r10, r10, r26
	and r15, r10, r4
	j .LBB0_92
.LBB0_112:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 201 7                         # parallel-rne.mlir:201:7
	mfence { sm }
.LBB0_113:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 15
	.loc	1 229 7 is_stmt 1               # parallel-rne.mlir:229:7
	addli r8, r30, -4128
	zext_int2long r[6:7], r6
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	addli r6, zero, 3
	bneq r2, r6, .LBB0_138
# %bb.114:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 229 7                         # parallel-rne.mlir:229:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_116
.LBB0_115:                              # %middle.block158
                                        #   in Loop: Header=BB0_116 Depth=2
	.loc	1 236 9 is_stmt 1               # parallel-rne.mlir:236:9
	addli r2, r30, -4128
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_137
.LBB0_116:                              # %.preheader52
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[12:13], zero
	sll.d r[8:9], r[6:7], r2
	j .LBB0_118
.LBB0_117:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 237 11 is_stmt 1              # parallel-rne.mlir:237:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 252 13                        # parallel-rne.mlir:252:13
	add.s r2, r2, r14
	.loc	1 237 11                        # parallel-rne.mlir:237:11
	setneq.d r10, r[12:13], r[24:25]
	.loc	1 252 13                        # parallel-rne.mlir:252:13
	stores.w r15, 12(r2)
	stores.w r19, 8(r2)
	stores.w r20, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 237 11                        # parallel-rne.mlir:237:11
	beq r10, zero, .LBB0_115
.LBB0_118:                              # %vector.body154
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	add.ul r[10:11], r[12:13], r[8:9]
	slli r2, r10, 2
	loads.w r17, 12(r2)
	loads.w r11, 0(r2)
	loads.w r21, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	and r18, r17, r28
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	setlt.u r15, r3, r18
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r15, zero, .LBB0_120
# %bb.119:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r17, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_118 Depth=3
	or r15, r17, r1
.LBB0_121:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	and r16, r10, r28
	setlt.u r19, r3, r16
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r19, zero, .LBB0_123
# %bb.122:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_118 Depth=3
	or r19, r10, r1
.LBB0_124:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	and r23, r21, r28
	setlt.u r20, r3, r23
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r20, zero, .LBB0_126
# %bb.125:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_118 Depth=3
	or r20, r21, r1
.LBB0_127:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r22, zero, .LBB0_129
# %bb.128:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 249 19 is_stmt 1              # parallel-rne.mlir:249:19
	setlt.u r27, r5, r27
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	beq r27, zero, .LBB0_130
	j .LBB0_131
.LBB0_129:                              #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 249 19 is_stmt 1              # parallel-rne.mlir:249:19
	setlt.u r27, r5, r27
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r27, zero, .LBB0_131
.LBB0_130:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_131:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	setlt.u r11, r5, r23
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	beq r11, zero, .LBB0_134
# %bb.132:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	beq r11, zero, .LBB0_135
.LBB0_133:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r18
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r10, zero, .LBB0_117
	j .LBB0_136
.LBB0_134:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r26
	and r20, r11, r4
	setlt.u r11, r5, r16
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r11, zero, .LBB0_133
.LBB0_135:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r10, 16
	andi r11, r11, 1
	add.s r10, r10, r11
	add.s r10, r10, r26
	and r19, r10, r4
	setlt.u r10, r5, r18
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r10, zero, .LBB0_117
.LBB0_136:                              # %vector.body154
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r17, 16
	andi r10, r10, 1
	add.s r10, r17, r10
	add.s r10, r10, r26
	and r15, r10, r4
	j .LBB0_117
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 229 7                         # parallel-rne.mlir:229:7
	mfence { sm }
.LBB0_138:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 19
	.loc	1 257 7 is_stmt 1               # parallel-rne.mlir:257:7
	addli r8, r30, -4136
	zext_int2long r[6:7], r6
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	addli r6, zero, 4
	bneq r2, r6, .LBB0_163
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 257 7                         # parallel-rne.mlir:257:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_141
.LBB0_140:                              # %middle.block152
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 264 9 is_stmt 1               # parallel-rne.mlir:264:9
	addli r2, r30, -4136
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_162
.LBB0_141:                              # %.preheader51
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[8:9], r2
	j .LBB0_143
.LBB0_142:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 265 11 is_stmt 1              # parallel-rne.mlir:265:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 280 13                        # parallel-rne.mlir:280:13
	add.s r2, r2, r14
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	setneq.d r6, r[17:18], r[24:25]
	.loc	1 280 13                        # parallel-rne.mlir:280:13
	stores.w r7, 12(r2)
	stores.w r19, 8(r2)
	stores.w r20, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 265 11                        # parallel-rne.mlir:265:11
	beq r6, zero, .LBB0_140
.LBB0_143:                              # %vector.body148
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	add.ul r[6:7], r[17:18], r[12:13]
	slli r2, r6, 2
	loads.w r6, 12(r2)
	loads.w r11, 0(r2)
	loads.w r21, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	and r15, r6, r28
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	setlt.u r7, r3, r15
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	bneq r7, zero, .LBB0_145
# %bb.144:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	or r7, r6, r1
.LBB0_146:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	and r16, r10, r28
	setlt.u r19, r3, r16
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	bneq r19, zero, .LBB0_148
# %bb.147:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r10, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_143 Depth=3
	or r19, r10, r1
.LBB0_149:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	and r23, r21, r28
	setlt.u r20, r3, r23
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	bneq r20, zero, .LBB0_151
# %bb.150:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_143 Depth=3
	or r20, r21, r1
.LBB0_152:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	bneq r22, zero, .LBB0_154
# %bb.153:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 277 19 is_stmt 1              # parallel-rne.mlir:277:19
	setlt.u r27, r5, r27
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	beq r27, zero, .LBB0_155
	j .LBB0_156
.LBB0_154:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 277 19 is_stmt 1              # parallel-rne.mlir:277:19
	setlt.u r27, r5, r27
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r27, zero, .LBB0_156
.LBB0_155:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_156:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	setlt.u r11, r5, r23
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	beq r11, zero, .LBB0_159
# %bb.157:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	beq r11, zero, .LBB0_160
.LBB0_158:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r15
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r10, zero, .LBB0_142
	j .LBB0_161
.LBB0_159:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r26
	and r20, r11, r4
	setlt.u r11, r5, r16
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r11, zero, .LBB0_158
.LBB0_160:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r10, 16
	andi r11, r11, 1
	add.s r10, r10, r11
	add.s r10, r10, r26
	and r19, r10, r4
	setlt.u r10, r5, r15
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r10, zero, .LBB0_142
.LBB0_161:                              # %vector.body148
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r26
	and r7, r6, r4
	j .LBB0_142
.LBB0_162:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 257 7                         # parallel-rne.mlir:257:7
	mfence { sm }
.LBB0_163:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 23
	.loc	1 285 7 is_stmt 1               # parallel-rne.mlir:285:7
	addli r8, r30, -4144
	zext_int2long r[6:7], r6
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	addli r6, zero, 5
	bneq r2, r6, .LBB0_188
# %bb.164:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 285 7                         # parallel-rne.mlir:285:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_166
.LBB0_165:                              # %middle.block146
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 292 9 is_stmt 1               # parallel-rne.mlir:292:9
	addli r2, r30, -4144
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_187
.LBB0_166:                              # %.preheader50
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_168 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[19:20], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_168
.LBB0_167:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 293 11 is_stmt 1              # parallel-rne.mlir:293:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	add.s r2, r2, r14
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	setneq.d r6, r[19:20], r[24:25]
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	stores.w r7, 12(r2)
	stores.w r13, 8(r2)
	stores.w r15, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	beq r6, zero, .LBB0_165
.LBB0_168:                              # %vector.body142
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.ul r[6:7], r[19:20], r[17:18]
	slli r2, r6, 2
	loads.w r6, 12(r2)
	loads.w r11, 0(r2)
	loads.w r21, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	and r12, r6, r28
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	setlt.u r7, r3, r12
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r7, zero, .LBB0_170
# %bb.169:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_168 Depth=3
	or r7, r6, r1
.LBB0_171:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	and r16, r10, r28
	setlt.u r13, r3, r16
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r13, zero, .LBB0_173
# %bb.172:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r10, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_168 Depth=3
	or r13, r10, r1
.LBB0_174:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	and r23, r21, r28
	setlt.u r15, r3, r23
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r15, zero, .LBB0_176
# %bb.175:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r21, 0
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_168 Depth=3
	or r15, r21, r1
.LBB0_177:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r22, zero, .LBB0_179
# %bb.178:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r27, r5, r27
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r27, zero, .LBB0_180
	j .LBB0_181
.LBB0_179:                              #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r27, r5, r27
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r27, zero, .LBB0_181
.LBB0_180:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_181:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	setlt.u r11, r5, r23
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r11, zero, .LBB0_184
# %bb.182:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r11, zero, .LBB0_185
.LBB0_183:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r10, r5, r12
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r10, zero, .LBB0_167
	j .LBB0_186
.LBB0_184:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r26
	and r15, r11, r4
	setlt.u r11, r5, r16
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r11, zero, .LBB0_183
.LBB0_185:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r10, 16
	andi r11, r11, 1
	add.s r10, r10, r11
	add.s r10, r10, r26
	and r13, r10, r4
	setlt.u r10, r5, r12
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r10, zero, .LBB0_167
.LBB0_186:                              # %vector.body142
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r26
	and r7, r6, r4
	j .LBB0_167
.LBB0_187:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 285 7                         # parallel-rne.mlir:285:7
	mfence { sm }
.LBB0_188:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 27
	.loc	1 313 7 is_stmt 1               # parallel-rne.mlir:313:7
	addli r8, r30, -4152
	zext_int2long r[6:7], r6
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	addli r6, zero, 6
	bneq r2, r6, .LBB0_213
# %bb.189:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 313 7                         # parallel-rne.mlir:313:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_191
.LBB0_190:                              # %middle.block140
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 320 9 is_stmt 1               # parallel-rne.mlir:320:9
	addli r2, r30, -4152
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	beq r2, zero, .LBB0_212
.LBB0_191:                              # %.preheader49
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_193 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[21:22], zero
	sll.d r[19:20], r[17:18], r2
	j .LBB0_193
.LBB0_192:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 321 11 is_stmt 1              # parallel-rne.mlir:321:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 336 13                        # parallel-rne.mlir:336:13
	add.s r2, r2, r14
	.loc	1 321 11                        # parallel-rne.mlir:321:11
	setneq.d r6, r[21:22], r[24:25]
	.loc	1 336 13                        # parallel-rne.mlir:336:13
	stores.w r7, 12(r2)
	stores.w r13, 8(r2)
	stores.w r8, 4(r2)
	stores.w r15, 0(r2)
	.loc	1 321 11                        # parallel-rne.mlir:321:11
	beq r6, zero, .LBB0_190
.LBB0_193:                              # %vector.body136
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	add.ul r[6:7], r[21:22], r[19:20]
	slli r2, r6, 2
	loads.w r6, 12(r2)
	loads.w r11, 0(r2)
	loads.w r9, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	and r12, r6, r28
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	setlt.u r7, r3, r12
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r7, zero, .LBB0_195
# %bb.194:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r6, 0
	j .LBB0_196
.LBB0_195:                              #   in Loop: Header=BB0_193 Depth=3
	or r7, r6, r1
.LBB0_196:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	and r16, r10, r28
	setlt.u r8, r3, r16
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r8, zero, .LBB0_198
# %bb.197:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r10, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_193 Depth=3
	or r13, r10, r1
.LBB0_199:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	and r23, r9, r28
	setlt.u r8, r3, r23
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r8, zero, .LBB0_201
# %bb.200:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_193 Depth=3
	or r8, r9, r1
.LBB0_202:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	and r27, r11, r28
	setlt.u r15, r3, r27
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r15, zero, .LBB0_204
# %bb.203:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r11, 0
	.loc	1 333 19 is_stmt 1              # parallel-rne.mlir:333:19
	setlt.u r27, r5, r27
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	beq r27, zero, .LBB0_205
	j .LBB0_206
.LBB0_204:                              #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r15, r11, r1
	.loc	1 333 19 is_stmt 1              # parallel-rne.mlir:333:19
	setlt.u r27, r5, r27
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r27, zero, .LBB0_206
.LBB0_205:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r15, r11, 16
	andi r15, r15, 1
	add.s r11, r11, r15
	add.s r11, r11, r26
	and r15, r11, r4
.LBB0_206:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	setlt.u r11, r5, r23
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	beq r11, zero, .LBB0_209
# %bb.207:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r5, r16
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	beq r9, zero, .LBB0_210
.LBB0_208:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r5, r12
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r9, zero, .LBB0_192
	j .LBB0_211
.LBB0_209:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r26
	and r8, r8, r4
	setlt.u r9, r5, r16
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r9, zero, .LBB0_208
.LBB0_210:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r26
	and r13, r9, r4
	setlt.u r9, r5, r12
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r9, zero, .LBB0_192
.LBB0_211:                              # %vector.body136
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	add.s r6, r6, r26
	and r7, r6, r4
	j .LBB0_192
.LBB0_212:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 313 7                         # parallel-rne.mlir:313:7
	mfence { sm }
.LBB0_213:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 31
	.loc	1 341 7 is_stmt 1               # parallel-rne.mlir:341:7
	addli r8, r30, -4160
	zext_int2long r[6:7], r6
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	addli r6, zero, 7
	bneq r2, r6, .LBB0_238
# %bb.214:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 341 7                         # parallel-rne.mlir:341:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_216
.LBB0_215:                              # %middle.block134
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 348 9 is_stmt 1               # parallel-rne.mlir:348:9
	addli r2, r30, -4160
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	beq r2, zero, .LBB0_237
.LBB0_216:                              # %.preheader48
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_218 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[6:7], zero
	sll.d r[19:20], r[17:18], r2
	j .LBB0_218
.LBB0_217:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	add.s r2, r2, r14
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	setneq.d r9, r[6:7], r[24:25]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	stores.w r13, 12(r2)
	stores.w r23, 8(r2)
	stores.w r8, 4(r2)
	stores.w r21, 0(r2)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	beq r9, zero, .LBB0_215
.LBB0_218:                              # %vector.body130
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[8:9], r[6:7], r[19:20]
	slli r2, r8, 2
	loads.w r12, 12(r2)
	loads.w r11, 0(r2)
	loads.w r9, 4(r2)
	loads.w r10, 8(r2)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r15, r12, r28
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r8, r3, r15
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r8, zero, .LBB0_220
# %bb.219:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r12, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_218 Depth=3
	or r13, r12, r1
.LBB0_221:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	and r16, r10, r28
	setlt.u r8, r3, r16
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r8, zero, .LBB0_223
# %bb.222:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r10, 0
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_218 Depth=3
	or r23, r10, r1
.LBB0_224:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	and r22, r9, r28
	setlt.u r8, r3, r22
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r8, zero, .LBB0_226
# %bb.225:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_218 Depth=3
	or r8, r9, r1
.LBB0_227:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	and r27, r11, r28
	setlt.u r21, r3, r27
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r21, zero, .LBB0_229
# %bb.228:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r27, r5, r27
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r27, zero, .LBB0_230
	j .LBB0_231
.LBB0_229:                              #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r11, r1
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r27, r5, r27
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r27, zero, .LBB0_231
.LBB0_230:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r11, 16
	andi r21, r21, 1
	add.s r11, r11, r21
	add.s r11, r11, r26
	and r21, r11, r4
.LBB0_231:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	setlt.u r11, r5, r22
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r11, zero, .LBB0_234
# %bb.232:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r5, r16
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r9, zero, .LBB0_235
.LBB0_233:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r5, r15
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r9, zero, .LBB0_217
	j .LBB0_236
.LBB0_234:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r26
	and r8, r8, r4
	setlt.u r9, r5, r16
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r9, zero, .LBB0_233
.LBB0_235:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r26
	and r23, r9, r4
	setlt.u r9, r5, r15
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r9, zero, .LBB0_217
.LBB0_236:                              # %vector.body130
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r12, 16
	andi r9, r9, 1
	add.s r9, r12, r9
	add.s r9, r9, r26
	and r13, r9, r4
	j .LBB0_217
.LBB0_237:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 341 7                         # parallel-rne.mlir:341:7
	mfence { sm }
.LBB0_238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r6,  -4176(r30)                # 4-byte Folded Reload
	addli r8, zero, 992
	zext_int2long r[8:9], r8
	zext_int2long r[6:7], r6
	min.ul r[8:9], r[6:7], r[8:9]
	addli.d r[8:9], r[8:9], 32
	max.ul r[8:9], r[8:9], r[6:7]
	sub.sl r[6:7], r[8:9], r[6:7]
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	addli r8, r30, -4200
	min.ul r[6:7], r[6:7], r[24:25]
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	addli r6, zero, 255
	csr_set csr5, r6
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r6, zero, 3
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	sync_core
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	bneq r2, r6, .LBB0_241
# %bb.239:                              # %.thread36.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 11
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	addli r7, zero, 15
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	xsignal r6, 0
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	xsignal r7, 0
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	xwait r6, 0
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	addli r6, zero, 16
	xwait r6, 0
.LBB0_240:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r13, zero, 128
	j .LBB0_243
.LBB0_241:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	lui r8, 383
	addli r15, zero, 1
	ori r17, r8, 2048
	.loc	1 373 7 is_stmt 1               # parallel-rne.mlir:373:7
	bneq r2, r15, .LBB0_446
# %bb.242:                              # %.thread36.thread40
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -4192
	addli r13, zero, 19
	addli r12, zero, 5
	addli r20, zero, 3
	addli r11, zero, 4
	addli r23, zero, 7
	addli r21, zero, 10
	addli r27, zero, 11
	addli r22, zero, 17
	addli r19, zero, 18
	addli r18, zero, 64
	addli r16, zero, 128
	load.d r[6:7], 16(r30)
	load.d r[9:10], 0(r2)                   # 8-byte Folded Reload
	xwait r13, 0
	lock zero, r12
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	add.ul r[9:10], r[6:7], r[9:10]
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r13, 10
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
	ori r2, r8, 2112
	addli r8, r30, -4200
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r17, zero, r18, 3
	dma_cfg r16, zero, r15, 4
	dma_cfg r16, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r11
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r10, zero, 2
	load.d r[6:7], 0(r8)                    # 8-byte Folded Reload
	dma_cfg r2, r9, r18, 3
	addli r8, r6, 31
	slli r6, r6, 1
	addli r7, zero, 2
	srli r2, r8, 5
	andi r6, r6, 62
	dma_cfg r16, r18, r2, 4
	dma_cfg r16, r18, r15, 5
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 20
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 128
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
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r17, zero, r18, 3
	dma_cfg r13, zero, r2, 4
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r2
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	dma_cfg r13, zero, r15, 5
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r19, 0
.LBB0_243:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	xfence
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	addli r6, zero, 255
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	mfence { lm, sm, gm }
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	csr_set csr5, r6
	sync_core
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	beq r2, zero, .LBB0_251
# %bb.244:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 410 7                         # parallel-rne.mlir:410:7
	addli r6, zero, 1
	beq r2, r6, .LBB0_275
.LBB0_245:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	addli r6, zero, 2
	beq r2, r6, .LBB0_299
.LBB0_246:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	addli r6, zero, 3
	beq r2, r6, .LBB0_323
.LBB0_247:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 494 7                         # parallel-rne.mlir:494:7
	addli r6, zero, 4
	beq r2, r6, .LBB0_347
.LBB0_248:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	addli r6, zero, 5
	beq r2, r6, .LBB0_371
.LBB0_249:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 550 7                         # parallel-rne.mlir:550:7
	addli r6, zero, 6
	beq r2, r6, .LBB0_395
.LBB0_250:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 578 7                         # parallel-rne.mlir:578:7
	addli r6, zero, 7
	beq r2, r6, .LBB0_419
	j .LBB0_443
.LBB0_251:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	xfence
	zext_int2long r[17:18], zero
	addli r2, r30, -4176
	mfence { lm, sm, gm }
	store.d r[17:18], 0(r2)                 # 8-byte Folded Spill
	j .LBB0_253
.LBB0_252:                              # %middle.block128
                                        #   in Loop: Header=BB0_253 Depth=2
	.loc	1 389 9                         # parallel-rne.mlir:389:9
	addli r2, r30, -4168
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	beq r2, zero, .LBB0_274
.LBB0_253:                              # %.preheader47
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_255 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	sll.d r[6:7], r[17:18], r2
	addli r2, r30, -4176
	load.d r[19:20], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_255
.LBB0_254:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 390 11 is_stmt 1              # parallel-rne.mlir:390:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 405 13                        # parallel-rne.mlir:405:13
	stores.w r27, 12(r2)
	stores.w r8, 8(r2)
	stores.w r21, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 390 11                        # parallel-rne.mlir:390:11
	setneq.d r9, r[19:20], r[24:25]
	beq r9, zero, .LBB0_252
.LBB0_255:                              # %vector.body124
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_253 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	add.ul r[8:9], r[19:20], r[6:7]
	slli r2, r8, 2
	add.s r8, r2, r14
	loads.w r15, 12(r8)
	loads.w r11, 0(r8)
	loads.w r9, 4(r8)
	loads.w r10, 8(r8)
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	and r23, r15, r28
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	setlt.u r8, r3, r23
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	bneq r8, zero, .LBB0_257
# %bb.256:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r27, r15, 0
	j .LBB0_258
.LBB0_257:                              #   in Loop: Header=BB0_255 Depth=3
	or r27, r15, r1
.LBB0_258:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	and r16, r10, r28
	setlt.u r8, r3, r16
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	bneq r8, zero, .LBB0_260
# %bb.259:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_255 Depth=3
	or r8, r10, r1
.LBB0_261:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	and r12, r9, r28
	setlt.u r13, r3, r12
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	bneq r13, zero, .LBB0_263
# %bb.262:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	j .LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_255 Depth=3
	or r21, r9, r1
.LBB0_264:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	and r13, r11, r28
	setlt.u r22, r3, r13
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	bneq r22, zero, .LBB0_266
# %bb.265:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 402 19 is_stmt 1              # parallel-rne.mlir:402:19
	setlt.u r13, r5, r13
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	beq r13, zero, .LBB0_267
	j .LBB0_268
.LBB0_266:                              #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 402 19 is_stmt 1              # parallel-rne.mlir:402:19
	setlt.u r13, r5, r13
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	bneq r13, zero, .LBB0_268
.LBB0_267:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r11, 16
	andi r13, r13, 1
	add.s r11, r11, r13
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_268:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	setlt.u r11, r5, r12
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	beq r11, zero, .LBB0_271
# %bb.269:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r5, r16
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	beq r9, zero, .LBB0_272
.LBB0_270:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r5, r23
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	bneq r9, zero, .LBB0_254
	j .LBB0_273
.LBB0_271:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r9, 16
	andi r11, r11, 1
	add.s r9, r9, r11
	add.s r9, r9, r26
	and r21, r9, r4
	setlt.u r9, r5, r16
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	bneq r9, zero, .LBB0_270
.LBB0_272:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r26
	and r8, r8, r4
	setlt.u r9, r5, r23
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	bneq r9, zero, .LBB0_254
.LBB0_273:                              # %vector.body124
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r15, 16
	andi r9, r9, 1
	add.s r9, r15, r9
	add.s r9, r9, r26
	and r27, r9, r4
	j .LBB0_254
.LBB0_274:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 128
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	mfence { sm }
	.loc	1 410 7                         # parallel-rne.mlir:410:7
	addli r6, zero, 1
	bneq r2, r6, .LBB0_245
.LBB0_275:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	.loc	1 410 7                         # parallel-rne.mlir:410:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_277
.LBB0_276:                              # %middle.block122
                                        #   in Loop: Header=BB0_277 Depth=2
	.loc	1 417 9 is_stmt 1               # parallel-rne.mlir:417:9
	addli r2, r30, -4112
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	beq r2, zero, .LBB0_298
.LBB0_277:                              # %.preheader46
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_279 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[6:7], zero
	sll.d r[19:20], r[17:18], r2
	j .LBB0_279
.LBB0_278:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 418 11 is_stmt 1              # parallel-rne.mlir:418:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 433 13                        # parallel-rne.mlir:433:13
	stores.w r13, 12(r2)
	stores.w r10, 8(r2)
	stores.w r9, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 418 11                        # parallel-rne.mlir:418:11
	setneq.d r8, r[6:7], r[24:25]
	beq r8, zero, .LBB0_276
.LBB0_279:                              # %vector.body118
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	add.ul r[8:9], r[6:7], r[19:20]
	slli r2, r8, 2
	add.s r8, r2, r14
	loads.w r12, 12(r8)
	loads.w r11, 0(r8)
	loads.w r21, 4(r8)
	loads.w r8, 8(r8)
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	and r15, r12, r28
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	setlt.u r9, r3, r15
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r9, zero, .LBB0_281
# %bb.280:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r12, 0
	j .LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_279 Depth=3
	or r13, r12, r1
.LBB0_282:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	and r16, r8, r28
	setlt.u r9, r3, r16
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r9, zero, .LBB0_284
# %bb.283:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_285
.LBB0_284:                              #   in Loop: Header=BB0_279 Depth=3
	or r10, r8, r1
.LBB0_285:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	and r23, r21, r28
	setlt.u r9, r3, r23
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r9, zero, .LBB0_287
# %bb.286:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r21, 0
	j .LBB0_288
.LBB0_287:                              #   in Loop: Header=BB0_279 Depth=3
	or r9, r21, r1
.LBB0_288:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	bneq r22, zero, .LBB0_290
# %bb.289:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 430 19 is_stmt 1              # parallel-rne.mlir:430:19
	setlt.u r27, r5, r27
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	beq r27, zero, .LBB0_291
	j .LBB0_292
.LBB0_290:                              #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 430 19 is_stmt 1              # parallel-rne.mlir:430:19
	setlt.u r27, r5, r27
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r27, zero, .LBB0_292
.LBB0_291:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_292:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	setlt.u r11, r5, r23
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	beq r11, zero, .LBB0_295
# %bb.293:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	beq r11, zero, .LBB0_296
.LBB0_294:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r5, r15
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r8, zero, .LBB0_278
	j .LBB0_297
.LBB0_295:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r26
	and r9, r9, r4
	setlt.u r11, r5, r16
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r11, zero, .LBB0_294
.LBB0_296:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r8, 16
	andi r10, r10, 1
	add.s r8, r8, r10
	add.s r8, r8, r26
	and r10, r8, r4
	setlt.u r8, r5, r15
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	bneq r8, zero, .LBB0_278
.LBB0_297:                              # %vector.body118
                                        #   in Loop: Header=BB0_279 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r26
	and r13, r8, r4
	j .LBB0_278
.LBB0_298:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 128
	.loc	1 410 7                         # parallel-rne.mlir:410:7
	mfence { sm }
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	addli r6, zero, 2
	bneq r2, r6, .LBB0_246
.LBB0_299:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_301
.LBB0_300:                              # %middle.block116
                                        #   in Loop: Header=BB0_301 Depth=2
	.loc	1 445 9 is_stmt 1               # parallel-rne.mlir:445:9
	addli r2, r30, -4120
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	beq r2, zero, .LBB0_322
.LBB0_301:                              # %.preheader45
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_303 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[6:7], zero
	sll.d r[19:20], r[17:18], r2
	j .LBB0_303
.LBB0_302:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 446 11 is_stmt 1              # parallel-rne.mlir:446:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 461 13                        # parallel-rne.mlir:461:13
	stores.w r13, 12(r2)
	stores.w r10, 8(r2)
	stores.w r9, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 446 11                        # parallel-rne.mlir:446:11
	setneq.d r8, r[6:7], r[24:25]
	beq r8, zero, .LBB0_300
.LBB0_303:                              # %vector.body112
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_301 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	add.ul r[8:9], r[6:7], r[19:20]
	slli r2, r8, 2
	add.s r8, r2, r14
	loads.w r12, 12(r8)
	loads.w r11, 0(r8)
	loads.w r21, 4(r8)
	loads.w r8, 8(r8)
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	and r15, r12, r28
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	setlt.u r9, r3, r15
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	bneq r9, zero, .LBB0_305
# %bb.304:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r12, 0
	j .LBB0_306
.LBB0_305:                              #   in Loop: Header=BB0_303 Depth=3
	or r13, r12, r1
.LBB0_306:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	and r16, r8, r28
	setlt.u r9, r3, r16
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	bneq r9, zero, .LBB0_308
# %bb.307:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_309
.LBB0_308:                              #   in Loop: Header=BB0_303 Depth=3
	or r10, r8, r1
.LBB0_309:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	and r23, r21, r28
	setlt.u r9, r3, r23
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	bneq r9, zero, .LBB0_311
# %bb.310:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r21, 0
	j .LBB0_312
.LBB0_311:                              #   in Loop: Header=BB0_303 Depth=3
	or r9, r21, r1
.LBB0_312:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	bneq r22, zero, .LBB0_314
# %bb.313:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 458 19 is_stmt 1              # parallel-rne.mlir:458:19
	setlt.u r27, r5, r27
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	beq r27, zero, .LBB0_315
	j .LBB0_316
.LBB0_314:                              #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 458 19 is_stmt 1              # parallel-rne.mlir:458:19
	setlt.u r27, r5, r27
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r27, zero, .LBB0_316
.LBB0_315:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_316:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	setlt.u r11, r5, r23
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	beq r11, zero, .LBB0_319
# %bb.317:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	beq r11, zero, .LBB0_320
.LBB0_318:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r5, r15
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r8, zero, .LBB0_302
	j .LBB0_321
.LBB0_319:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r26
	and r9, r9, r4
	setlt.u r11, r5, r16
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r11, zero, .LBB0_318
.LBB0_320:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r8, 16
	andi r10, r10, 1
	add.s r8, r8, r10
	add.s r8, r8, r26
	and r10, r8, r4
	setlt.u r8, r5, r15
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r8, zero, .LBB0_302
.LBB0_321:                              # %vector.body112
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r26
	and r13, r8, r4
	j .LBB0_302
.LBB0_322:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 128
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	mfence { sm }
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	addli r6, zero, 3
	bneq r2, r6, .LBB0_247
.LBB0_323:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_325
.LBB0_324:                              # %middle.block110
                                        #   in Loop: Header=BB0_325 Depth=2
	.loc	1 473 9 is_stmt 1               # parallel-rne.mlir:473:9
	addli r2, r30, -4128
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	beq r2, zero, .LBB0_346
.LBB0_325:                              # %.preheader44
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_327 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[6:7], zero
	sll.d r[19:20], r[17:18], r2
	j .LBB0_327
.LBB0_326:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 474 11 is_stmt 1              # parallel-rne.mlir:474:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 489 13                        # parallel-rne.mlir:489:13
	stores.w r13, 12(r2)
	stores.w r10, 8(r2)
	stores.w r9, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 474 11                        # parallel-rne.mlir:474:11
	setneq.d r8, r[6:7], r[24:25]
	beq r8, zero, .LBB0_324
.LBB0_327:                              # %vector.body106
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_325 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 475 19                        # parallel-rne.mlir:475:19
	add.ul r[8:9], r[6:7], r[19:20]
	slli r2, r8, 2
	add.s r8, r2, r14
	loads.w r12, 12(r8)
	loads.w r11, 0(r8)
	loads.w r21, 4(r8)
	loads.w r8, 8(r8)
	.loc	1 477 19                        # parallel-rne.mlir:477:19
	and r15, r12, r28
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	setlt.u r9, r3, r15
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	bneq r9, zero, .LBB0_329
# %bb.328:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r12, 0
	j .LBB0_330
.LBB0_329:                              #   in Loop: Header=BB0_327 Depth=3
	or r13, r12, r1
.LBB0_330:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	and r16, r8, r28
	setlt.u r9, r3, r16
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	bneq r9, zero, .LBB0_332
# %bb.331:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_333
.LBB0_332:                              #   in Loop: Header=BB0_327 Depth=3
	or r10, r8, r1
.LBB0_333:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	and r23, r21, r28
	setlt.u r9, r3, r23
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	bneq r9, zero, .LBB0_335
# %bb.334:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r21, 0
	j .LBB0_336
.LBB0_335:                              #   in Loop: Header=BB0_327 Depth=3
	or r9, r21, r1
.LBB0_336:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	bneq r22, zero, .LBB0_338
# %bb.337:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 486 19 is_stmt 1              # parallel-rne.mlir:486:19
	setlt.u r27, r5, r27
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	beq r27, zero, .LBB0_339
	j .LBB0_340
.LBB0_338:                              #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 486 19 is_stmt 1              # parallel-rne.mlir:486:19
	setlt.u r27, r5, r27
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	bneq r27, zero, .LBB0_340
.LBB0_339:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_340:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	setlt.u r11, r5, r23
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	beq r11, zero, .LBB0_343
# %bb.341:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	beq r11, zero, .LBB0_344
.LBB0_342:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r5, r15
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	bneq r8, zero, .LBB0_326
	j .LBB0_345
.LBB0_343:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r26
	and r9, r9, r4
	setlt.u r11, r5, r16
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	bneq r11, zero, .LBB0_342
.LBB0_344:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r8, 16
	andi r10, r10, 1
	add.s r8, r8, r10
	add.s r8, r8, r26
	and r10, r8, r4
	setlt.u r8, r5, r15
	.loc	1 487 19                        # parallel-rne.mlir:487:19
	bneq r8, zero, .LBB0_326
.LBB0_345:                              # %vector.body106
                                        #   in Loop: Header=BB0_327 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r26
	and r13, r8, r4
	j .LBB0_326
.LBB0_346:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 128
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	mfence { sm }
	.loc	1 494 7                         # parallel-rne.mlir:494:7
	addli r6, zero, 4
	bneq r2, r6, .LBB0_248
.LBB0_347:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 494 7                         # parallel-rne.mlir:494:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_349
.LBB0_348:                              # %middle.block104
                                        #   in Loop: Header=BB0_349 Depth=2
	.loc	1 501 9 is_stmt 1               # parallel-rne.mlir:501:9
	addli r2, r30, -4136
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[17:18], r[6:7]
	addli.d r[17:18], r[17:18], 1
	beq r2, zero, .LBB0_370
.LBB0_349:                              # %.preheader43
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_351 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[6:7], zero
	sll.d r[19:20], r[17:18], r2
	j .LBB0_351
.LBB0_350:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 502 11 is_stmt 1              # parallel-rne.mlir:502:11
	addli.d r[6:7], r[6:7], 4
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	stores.w r13, 12(r2)
	stores.w r10, 8(r2)
	stores.w r9, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 502 11                        # parallel-rne.mlir:502:11
	setneq.d r8, r[6:7], r[24:25]
	beq r8, zero, .LBB0_348
.LBB0_351:                              # %vector.body100
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_349 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 503 19                        # parallel-rne.mlir:503:19
	add.ul r[8:9], r[6:7], r[19:20]
	slli r2, r8, 2
	add.s r8, r2, r14
	loads.w r12, 12(r8)
	loads.w r11, 0(r8)
	loads.w r21, 4(r8)
	loads.w r8, 8(r8)
	.loc	1 505 19                        # parallel-rne.mlir:505:19
	and r15, r12, r28
	.loc	1 507 19                        # parallel-rne.mlir:507:19
	setlt.u r9, r3, r15
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	bneq r9, zero, .LBB0_353
# %bb.352:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r12, 0
	j .LBB0_354
.LBB0_353:                              #   in Loop: Header=BB0_351 Depth=3
	or r13, r12, r1
.LBB0_354:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	and r16, r8, r28
	setlt.u r9, r3, r16
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	bneq r9, zero, .LBB0_356
# %bb.355:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_357
.LBB0_356:                              #   in Loop: Header=BB0_351 Depth=3
	or r10, r8, r1
.LBB0_357:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	and r23, r21, r28
	setlt.u r9, r3, r23
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	bneq r9, zero, .LBB0_359
# %bb.358:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r21, 0
	j .LBB0_360
.LBB0_359:                              #   in Loop: Header=BB0_351 Depth=3
	or r9, r21, r1
.LBB0_360:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	bneq r22, zero, .LBB0_362
# %bb.361:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 514 19 is_stmt 1              # parallel-rne.mlir:514:19
	setlt.u r27, r5, r27
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	beq r27, zero, .LBB0_363
	j .LBB0_364
.LBB0_362:                              #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 514 19 is_stmt 1              # parallel-rne.mlir:514:19
	setlt.u r27, r5, r27
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	bneq r27, zero, .LBB0_364
.LBB0_363:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_364:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	setlt.u r11, r5, r23
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	beq r11, zero, .LBB0_367
# %bb.365:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	beq r11, zero, .LBB0_368
.LBB0_366:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r5, r15
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	bneq r8, zero, .LBB0_350
	j .LBB0_369
.LBB0_367:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r26
	and r9, r9, r4
	setlt.u r11, r5, r16
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	bneq r11, zero, .LBB0_366
.LBB0_368:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r8, 16
	andi r10, r10, 1
	add.s r8, r8, r10
	add.s r8, r8, r26
	and r10, r8, r4
	setlt.u r8, r5, r15
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	bneq r8, zero, .LBB0_350
.LBB0_369:                              # %vector.body100
                                        #   in Loop: Header=BB0_351 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r26
	and r13, r8, r4
	j .LBB0_350
.LBB0_370:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 128
	.loc	1 494 7                         # parallel-rne.mlir:494:7
	mfence { sm }
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	addli r6, zero, 5
	bneq r2, r6, .LBB0_249
.LBB0_371:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_373
.LBB0_372:                              # %middle.block98
                                        #   in Loop: Header=BB0_373 Depth=2
	.loc	1 529 9 is_stmt 1               # parallel-rne.mlir:529:9
	addli r2, r30, -4144
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_394
.LBB0_373:                              # %.preheader42
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_375 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[19:20], zero
	sll.d r[17:18], r[6:7], r2
	j .LBB0_375
.LBB0_374:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 530 11 is_stmt 1              # parallel-rne.mlir:530:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 545 13                        # parallel-rne.mlir:545:13
	stores.w r13, 12(r2)
	stores.w r10, 8(r2)
	stores.w r9, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	setneq.d r8, r[19:20], r[24:25]
	beq r8, zero, .LBB0_372
.LBB0_375:                              # %vector.body94
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_373 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	add.ul r[8:9], r[19:20], r[17:18]
	slli r2, r8, 2
	add.s r8, r2, r14
	loads.w r12, 12(r8)
	loads.w r11, 0(r8)
	loads.w r21, 4(r8)
	loads.w r8, 8(r8)
	.loc	1 533 19                        # parallel-rne.mlir:533:19
	and r15, r12, r28
	.loc	1 535 19                        # parallel-rne.mlir:535:19
	setlt.u r9, r3, r15
	.loc	1 536 19                        # parallel-rne.mlir:536:19
	bneq r9, zero, .LBB0_377
# %bb.376:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r12, 0
	j .LBB0_378
.LBB0_377:                              #   in Loop: Header=BB0_375 Depth=3
	or r13, r12, r1
.LBB0_378:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	and r16, r8, r28
	setlt.u r9, r3, r16
	.loc	1 536 19                        # parallel-rne.mlir:536:19
	bneq r9, zero, .LBB0_380
# %bb.379:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_381
.LBB0_380:                              #   in Loop: Header=BB0_375 Depth=3
	or r10, r8, r1
.LBB0_381:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	and r23, r21, r28
	setlt.u r9, r3, r23
	.loc	1 536 19                        # parallel-rne.mlir:536:19
	bneq r9, zero, .LBB0_383
# %bb.382:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r21, 0
	j .LBB0_384
.LBB0_383:                              #   in Loop: Header=BB0_375 Depth=3
	or r9, r21, r1
.LBB0_384:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 536 19                        # parallel-rne.mlir:536:19
	bneq r22, zero, .LBB0_386
# %bb.385:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 542 19 is_stmt 1              # parallel-rne.mlir:542:19
	setlt.u r27, r5, r27
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	beq r27, zero, .LBB0_387
	j .LBB0_388
.LBB0_386:                              #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 542 19 is_stmt 1              # parallel-rne.mlir:542:19
	setlt.u r27, r5, r27
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	bneq r27, zero, .LBB0_388
.LBB0_387:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_388:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	setlt.u r11, r5, r23
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	beq r11, zero, .LBB0_391
# %bb.389:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	beq r11, zero, .LBB0_392
.LBB0_390:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r5, r15
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	bneq r8, zero, .LBB0_374
	j .LBB0_393
.LBB0_391:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r26
	and r9, r9, r4
	setlt.u r11, r5, r16
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	bneq r11, zero, .LBB0_390
.LBB0_392:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r8, 16
	andi r10, r10, 1
	add.s r8, r8, r10
	add.s r8, r8, r26
	and r10, r8, r4
	setlt.u r8, r5, r15
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	bneq r8, zero, .LBB0_374
.LBB0_393:                              # %vector.body94
                                        #   in Loop: Header=BB0_375 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r26
	and r13, r8, r4
	j .LBB0_374
.LBB0_394:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 128
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	mfence { sm }
	.loc	1 550 7                         # parallel-rne.mlir:550:7
	addli r6, zero, 6
	bneq r2, r6, .LBB0_250
.LBB0_395:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 550 7                         # parallel-rne.mlir:550:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_397
.LBB0_396:                              # %middle.block92
                                        #   in Loop: Header=BB0_397 Depth=2
	.loc	1 557 9 is_stmt 1               # parallel-rne.mlir:557:9
	addli r2, r30, -4152
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_418
.LBB0_397:                              # %.preheader41
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_399 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[17:18], zero
	sll.d r[12:13], r[6:7], r2
	j .LBB0_399
.LBB0_398:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 558 11 is_stmt 1              # parallel-rne.mlir:558:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 573 13                        # parallel-rne.mlir:573:13
	stores.w r19, 12(r2)
	stores.w r10, 8(r2)
	stores.w r9, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 558 11                        # parallel-rne.mlir:558:11
	setneq.d r8, r[17:18], r[24:25]
	beq r8, zero, .LBB0_396
.LBB0_399:                              # %vector.body88
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_397 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	add.ul r[8:9], r[17:18], r[12:13]
	slli r2, r8, 2
	add.s r8, r2, r14
	loads.w r15, 12(r8)
	loads.w r11, 0(r8)
	loads.w r21, 4(r8)
	loads.w r8, 8(r8)
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	and r20, r15, r28
	.loc	1 563 19                        # parallel-rne.mlir:563:19
	setlt.u r9, r3, r20
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	bneq r9, zero, .LBB0_401
# %bb.400:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r15, 0
	j .LBB0_402
.LBB0_401:                              #   in Loop: Header=BB0_399 Depth=3
	or r19, r15, r1
.LBB0_402:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	and r16, r8, r28
	setlt.u r9, r3, r16
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	bneq r9, zero, .LBB0_404
# %bb.403:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_405
.LBB0_404:                              #   in Loop: Header=BB0_399 Depth=3
	or r10, r8, r1
.LBB0_405:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	and r23, r21, r28
	setlt.u r9, r3, r23
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	bneq r9, zero, .LBB0_407
# %bb.406:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r21, 0
	j .LBB0_408
.LBB0_407:                              #   in Loop: Header=BB0_399 Depth=3
	or r9, r21, r1
.LBB0_408:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	bneq r22, zero, .LBB0_410
# %bb.409:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 570 19 is_stmt 1              # parallel-rne.mlir:570:19
	setlt.u r27, r5, r27
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	beq r27, zero, .LBB0_411
	j .LBB0_412
.LBB0_410:                              #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 570 19 is_stmt 1              # parallel-rne.mlir:570:19
	setlt.u r27, r5, r27
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	bneq r27, zero, .LBB0_412
.LBB0_411:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_412:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	setlt.u r11, r5, r23
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	beq r11, zero, .LBB0_415
# %bb.413:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	beq r11, zero, .LBB0_416
.LBB0_414:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r5, r20
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	bneq r8, zero, .LBB0_398
	j .LBB0_417
.LBB0_415:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r26
	and r9, r9, r4
	setlt.u r11, r5, r16
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	bneq r11, zero, .LBB0_414
.LBB0_416:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r8, 16
	andi r10, r10, 1
	add.s r8, r8, r10
	add.s r8, r8, r26
	and r10, r8, r4
	setlt.u r8, r5, r20
	.loc	1 571 19                        # parallel-rne.mlir:571:19
	bneq r8, zero, .LBB0_398
.LBB0_417:                              # %vector.body88
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r15, 16
	andi r8, r8, 1
	add.s r8, r15, r8
	add.s r8, r8, r26
	and r19, r8, r4
	j .LBB0_398
.LBB0_418:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 128
	.loc	1 550 7                         # parallel-rne.mlir:550:7
	mfence { sm }
	.loc	1 578 7                         # parallel-rne.mlir:578:7
	addli r6, zero, 7
	bneq r2, r6, .LBB0_443
.LBB0_419:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 578 7                         # parallel-rne.mlir:578:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_421
.LBB0_420:                              # %middle.block
                                        #   in Loop: Header=BB0_421 Depth=2
	.loc	1 585 9 is_stmt 1               # parallel-rne.mlir:585:9
	addli r2, r30, -4160
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	setlt.ul r2, r[6:7], r[8:9]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_442
.LBB0_421:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_423 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	zext_int2long r[12:13], zero
	sll.d r[8:9], r[6:7], r2
	j .LBB0_423
.LBB0_422:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 586 11 is_stmt 1              # parallel-rne.mlir:586:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 601 13                        # parallel-rne.mlir:601:13
	stores.w r17, 12(r2)
	stores.w r10, 8(r2)
	stores.w r20, 4(r2)
	stores.w r22, 0(r2)
	.loc	1 586 11                        # parallel-rne.mlir:586:11
	setneq.d r11, r[12:13], r[24:25]
	beq r11, zero, .LBB0_420
.LBB0_423:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_421 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	add.ul r[10:11], r[12:13], r[8:9]
	slli r2, r10, 2
	add.s r10, r2, r14
	loads.w r15, 12(r10)
	loads.w r11, 0(r10)
	loads.w r21, 4(r10)
	loads.w r19, 8(r10)
	.loc	1 589 19                        # parallel-rne.mlir:589:19
	and r18, r15, r28
	.loc	1 591 19                        # parallel-rne.mlir:591:19
	setlt.u r10, r3, r18
	.loc	1 592 19                        # parallel-rne.mlir:592:19
	bneq r10, zero, .LBB0_425
# %bb.424:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r15, 0
	j .LBB0_426
.LBB0_425:                              #   in Loop: Header=BB0_423 Depth=3
	or r17, r15, r1
.LBB0_426:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	and r16, r19, r28
	setlt.u r10, r3, r16
	.loc	1 592 19                        # parallel-rne.mlir:592:19
	bneq r10, zero, .LBB0_428
# %bb.427:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r19, 0
	j .LBB0_429
.LBB0_428:                              #   in Loop: Header=BB0_423 Depth=3
	or r10, r19, r1
.LBB0_429:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	and r23, r21, r28
	setlt.u r20, r3, r23
	.loc	1 592 19                        # parallel-rne.mlir:592:19
	bneq r20, zero, .LBB0_431
# %bb.430:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	j .LBB0_432
.LBB0_431:                              #   in Loop: Header=BB0_423 Depth=3
	or r20, r21, r1
.LBB0_432:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	and r27, r11, r28
	setlt.u r22, r3, r27
	.loc	1 592 19                        # parallel-rne.mlir:592:19
	bneq r22, zero, .LBB0_434
# %bb.433:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r11, 0
	.loc	1 598 19 is_stmt 1              # parallel-rne.mlir:598:19
	setlt.u r27, r5, r27
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	beq r27, zero, .LBB0_435
	j .LBB0_436
.LBB0_434:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r22, r11, r1
	.loc	1 598 19 is_stmt 1              # parallel-rne.mlir:598:19
	setlt.u r27, r5, r27
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	bneq r27, zero, .LBB0_436
.LBB0_435:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r11, 16
	andi r22, r22, 1
	add.s r11, r11, r22
	add.s r11, r11, r26
	and r22, r11, r4
.LBB0_436:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	setlt.u r11, r5, r23
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	beq r11, zero, .LBB0_439
# %bb.437:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r16
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	beq r11, zero, .LBB0_440
.LBB0_438:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r5, r18
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	bneq r11, zero, .LBB0_422
	j .LBB0_441
.LBB0_439:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r26
	and r20, r11, r4
	setlt.u r11, r5, r16
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	bneq r11, zero, .LBB0_438
.LBB0_440:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r10, r19, 16
	andi r10, r10, 1
	add.s r10, r19, r10
	add.s r10, r10, r26
	and r10, r10, r4
	setlt.u r11, r5, r18
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	bneq r11, zero, .LBB0_422
.LBB0_441:                              # %vector.body
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r15, 16
	andi r11, r11, 1
	add.s r11, r15, r11
	add.s r11, r11, r26
	and r17, r11, r4
	j .LBB0_422
.LBB0_442:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r2
	addli r13, zero, 128
	.loc	1 578 7                         # parallel-rne.mlir:578:7
	mfence { sm }
.LBB0_443:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	addli r6, zero, 255
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	csr_set csr5, r6
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	addli r6, zero, 3
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	sync_core
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	beq r2, r6, .LBB0_5
# %bb.444:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	addli r6, zero, 5
	bneq r2, r6, .LBB0_450
# %bb.445:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 12
	addli r6, zero, 2
	lui r7, 260096
	xwait r2, 0
	addli r2, zero, 1
	lock zero, r6
	ew_cfg r2, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r7, zero, zero, 0
	addli r7, zero, 1023
	ew_cfg zero, r7, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	addli r2, zero, 13
	dsmadd zero, zero, zero, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r6
	j .LBB0_6
.LBB0_446:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 374 7                         # parallel-rne.mlir:374:7
	addli r6, zero, 5
	addli r7, zero, 4096
	bneq r2, r6, .LBB0_240
# %bb.447:                              #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 15
	addli r2, zero, 0
	xwait r6, 0
	addli r6, zero, 18
	xwait r6, 0
	addli r6, zero, 2
	lock zero, r6
	lui r6, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 31
	ew_cfg zero, r6, zero, 2
	addli r6, zero, 1
	ew_cfg r6, zero, zero, 3
.LBB0_448:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r2, r14
	addli r2, r2, 128
	dsmadd r6, r6, r17, 0
	bneq r2, r7, .LBB0_448
# %bb.449:                              # %.thread36
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 16
	xsignal r2, 0
	addli r2, zero, 19
	xsignal r2, 0
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r2
	j .LBB0_240
.LBB0_450:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	bneq r2, zero, .LBB0_7
# %bb.451:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -4212(r30)                # 4-byte Folded Reload
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	addli r10, r30, -4208
	load.d r[15:16], 24(r30)
	load.d r[8:9], 0(r10)                   # 8-byte Folded Reload
	sext_int2long r[6:7], r2
	addli r2, zero, 16
	sll.d r[8:9], r[8:9], r2
	addli r2, r30, -4104
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 13
	add.ul r[8:9], r[15:16], r[8:9]
	xwait r2, 0
	addli r2, r30, -4192
	min.sl r[10:11], r[6:7], r[10:11]
	load.d r[15:16], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -4200
	addli.d r[10:11], r[10:11], 32
	max.sl r[10:11], r[10:11], r[6:7]
	add.ul r[8:9], r[8:9], r[15:16]
	addli r15, zero, 64
	sub.sl r[6:7], r[10:11], r[6:7]
	addli r10, zero, 5
	addli r11, zero, 1
	lock zero, r10
	.loc	1 613 13 is_stmt 1              # parallel-rne.mlir:613:13
	min.sl r[6:7], r[6:7], r[24:25]
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r11, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r15, r15, 3
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	addli r2, r8, 31
	slli r8, r8, 1
	srli r2, r2, 5
	dma_cfg r15, r13, r2, 4
	andi r2, r8, 62
	addli r8, zero, 2048
	dma_cfg r8, r13, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	addli r2, zero, 14
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_6
.LBB0_452:                              # %._crit_edge
	.loc	1 619 5                         # parallel-rne.mlir:619:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_454
# %bb.453:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 619 5                         # parallel-rne.mlir:619:5
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
.LBB0_454:
	.loc	1 620 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:620:5
	addli sp, sp, 4232
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
	.long	44                              # 0x2c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	4296                            # 0x10c8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-pk6avlkn" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
