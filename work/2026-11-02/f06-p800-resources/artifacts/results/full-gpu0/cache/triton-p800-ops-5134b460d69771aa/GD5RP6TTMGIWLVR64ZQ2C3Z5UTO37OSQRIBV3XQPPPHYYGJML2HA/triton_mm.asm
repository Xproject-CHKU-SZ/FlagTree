	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-4457n5i0" "parallel-rne.mlir"
	.loc	1 11 0                          # parallel-rne.mlir:11:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2944
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r2
	core_id r12
	addli r30, sp, 2880
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 13
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 34 10 is_stmt 1               # parallel-rne.mlir:34:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -508(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -1532(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -2036(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -2808(r30)
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r1, r2, r1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r3, r1, r3
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r2, -1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r4, -1528(r30)
	storeli.w r4, -1524(r30)
	storeli.w r4, -1520(r30)
	storeli.w r4, -1516(r30)
	storeli.w r4, -1512(r30)
	storeli.w r4, -1508(r30)
	storeli.w r4, -1504(r30)
	storeli.w r4, -1500(r30)
	storeli.w r4, -1496(r30)
	storeli.w r4, -1492(r30)
	storeli.w r4, -1488(r30)
	storeli.w r4, -1484(r30)
	storeli.w r4, -1480(r30)
	storeli.w r4, -1476(r30)
	storeli.w r4, -1472(r30)
	storeli.w r4, -1468(r30)
	storeli.w r4, -1464(r30)
	storeli.w r4, -1460(r30)
	storeli.w r4, -1456(r30)
	storeli.w r4, -1452(r30)
	storeli.w r4, -1448(r30)
	storeli.w r4, -1444(r30)
	storeli.w r4, -1440(r30)
	storeli.w r4, -1436(r30)
	storeli.w r4, -1432(r30)
	storeli.w r4, -1428(r30)
	storeli.w r4, -1424(r30)
	storeli.w r4, -1420(r30)
	storeli.w r4, -1416(r30)
	storeli.w r4, -1412(r30)
	storeli.w r4, -1408(r30)
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r4, -512(r30)
	storeli.w r4, -516(r30)
	storeli.w r4, -520(r30)
	storeli.w r4, -524(r30)
	storeli.w r4, -528(r30)
	storeli.w r4, -532(r30)
	storeli.w r4, -536(r30)
	storeli.w r4, -540(r30)
	storeli.w r4, -544(r30)
	storeli.w r4, -548(r30)
	storeli.w r4, -552(r30)
	storeli.w r4, -556(r30)
	storeli.w r4, -560(r30)
	storeli.w r4, -564(r30)
	storeli.w r4, -568(r30)
	storeli.w r4, -572(r30)
	storeli.w r4, -576(r30)
	storeli.w r4, -580(r30)
	storeli.w r4, -584(r30)
	storeli.w r4, -588(r30)
	storeli.w r4, -592(r30)
	storeli.w r4, -596(r30)
	storeli.w r4, -600(r30)
	storeli.w r4, -604(r30)
	storeli.w r4, -608(r30)
	storeli.w r4, -612(r30)
	storeli.w r4, -616(r30)
	storeli.w r4, -620(r30)
	storeli.w r4, -624(r30)
	storeli.w r4, -628(r30)
	storeli.w r4, -632(r30)
	storeli.w r4, -636(r30)
	storeli.w r4, -640(r30)
	storeli.w r4, -644(r30)
	storeli.w r4, -648(r30)
	storeli.w r4, -652(r30)
	storeli.w r4, -656(r30)
	storeli.w r4, -660(r30)
	storeli.w r4, -664(r30)
	storeli.w r4, -668(r30)
	storeli.w r4, -672(r30)
	storeli.w r4, -676(r30)
	storeli.w r4, -680(r30)
	storeli.w r4, -684(r30)
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
	storeli.w r4, -1000(r30)
	storeli.w r4, -1004(r30)
	storeli.w r4, -1008(r30)
	storeli.w r4, -1012(r30)
	storeli.w r4, -1016(r30)
	storeli.w r4, -1020(r30)
	storeli.w r4, -1024(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r4, -1788(r30)
	storeli.w r4, -1784(r30)
	storeli.w r4, -1780(r30)
	storeli.w r4, -1776(r30)
	storeli.w r4, -1772(r30)
	storeli.w r4, -1768(r30)
	storeli.w r4, -1764(r30)
	storeli.w r4, -1760(r30)
	storeli.w r4, -1756(r30)
	storeli.w r4, -1752(r30)
	storeli.w r4, -1748(r30)
	storeli.w r4, -1744(r30)
	storeli.w r4, -1740(r30)
	storeli.w r4, -1736(r30)
	storeli.w r4, -1732(r30)
	storeli.w r4, -1728(r30)
	storeli.w r4, -1724(r30)
	storeli.w r4, -1720(r30)
	storeli.w r4, -1716(r30)
	storeli.w r4, -1712(r30)
	storeli.w r4, -1708(r30)
	storeli.w r4, -1704(r30)
	storeli.w r4, -1700(r30)
	storeli.w r4, -1696(r30)
	storeli.w r4, -1692(r30)
	storeli.w r4, -1688(r30)
	storeli.w r4, -1684(r30)
	storeli.w r4, -1680(r30)
	storeli.w r4, -1676(r30)
	storeli.w r4, -1672(r30)
	storeli.w r4, -1668(r30)
	storeli.w r4, -1664(r30)
	storeli.w r4, -1660(r30)
	storeli.w r4, -1656(r30)
	storeli.w r4, -1652(r30)
	storeli.w r4, -1648(r30)
	storeli.w r4, -1644(r30)
	storeli.w r4, -1640(r30)
	storeli.w r4, -1636(r30)
	storeli.w r4, -1632(r30)
	storeli.w r4, -1628(r30)
	storeli.w r4, -1624(r30)
	storeli.w r4, -1620(r30)
	storeli.w r4, -1616(r30)
	storeli.w r4, -1612(r30)
	storeli.w r4, -1608(r30)
	storeli.w r4, -1604(r30)
	storeli.w r4, -1600(r30)
	storeli.w r4, -1596(r30)
	storeli.w r4, -1592(r30)
	storeli.w r4, -1588(r30)
	storeli.w r4, -1584(r30)
	storeli.w r4, -1580(r30)
	storeli.w r4, -1576(r30)
	storeli.w r4, -1572(r30)
	storeli.w r4, -1568(r30)
	storeli.w r4, -1564(r30)
	storeli.w r4, -1560(r30)
	storeli.w r4, -1556(r30)
	storeli.w r4, -1552(r30)
	storeli.w r4, -1548(r30)
	storeli.w r4, -1544(r30)
	storeli.w r4, -1540(r30)
	storeli.w r4, -1536(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r3, r2, r3
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r3, r1, .LBB0_294
# %bb.4:                                # %.lr.ph
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	sext_int2long r[14:15], r1
	lui r1, 524287
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	addli r4, r30, -2880
	addli r9, zero, 1
	addli r19, zero, 6
	addli r22, zero, 4
	addli r11, zero, 0
	ori r28, r1, 4095
	lui r1, 7
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r3, 522240
	lui r4, 1048560
	ori r13, r1, 4095
	lui r1, 522239
	ori r5, r1, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 362 7 is_stmt 1               # parallel-rne.mlir:362:7
	addli r1, zero, 11
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r12
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	xsignal r1, 0
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	addli r1, zero, 12
	xsignal r1, 0
	addli r1, r30, -2840
	load.d r[14:15], 0(r1)                  # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	addli r6, r30, -2880
	addli.d r[14:15], r[14:15], 1
	loadli.w r11,  -2844(r30)               # 4-byte Folded Reload
	addli r9, zero, 1
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	setlt.sl r1, r[14:15], r[1:2]
	beq r1, zero, .LBB0_294
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_170 Depth 2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
                                        #     Child Loop BB0_201 Depth 2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #     Child Loop BB0_140 Depth 2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
                                        #     Child Loop BB0_262 Depth 2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
                                        #     Child Loop BB0_232 Depth 2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	bneq r12, r22, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	addli r2, r30, -2840
	addli r10, zero, 8
	addli r8, zero, 2
	addli r6, zero, 0
	addli r27, zero, 6
	addli r23, zero, 0
	store.d r[14:15], 0(r2)                 # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	mod.s r8, r11, r8
	addli r11, r11, 1
	div.s r1, r14, r1
	storeli.w r11, -2844(r30)               # 4-byte Folded Spill
	slli r16, r8, 14
	lui r8, 8
	div.s r1, r1, r2
	addli r2, zero, 128
	add.s r15, r16, r8
	div.s r2, r1, r2
	slli r7, r2, 3
	slli r2, r2, 7
	sub.s r9, r9, r7
	sub.s r2, r1, r2
	min.s r9, r9, r10
	mod.s r1, r1, r9
	div.s r2, r2, r9
	addli r9, zero, 1
	add.s r1, r7, r1
	slli r7, r2, 6
	storeli.w r7, -2872(r30)                # 4-byte Folded Spill
	zext_int2long r[7:8], r2
	slli r2, r1, 6
	zext_int2long r[10:11], r1
	storeli.w r2, -2868(r30)                # 4-byte Folded Spill
	sll.d r[1:2], r[7:8], r19
	addli r8, r30, -2864
	addli r7, zero, 12
	store.d r[10:11], 0(r8)                 # 8-byte Folded Spill
	.loc	1 79 7 is_stmt 1                # parallel-rne.mlir:79:7
	sll.d r[8:9], r[1:2], r9
	load.d r[1:2], 8(r30)
	sll.d r[17:18], r[10:11], r7
	addli r11, r30, -2856
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	loadli.w r7,  -2808(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	loadli.w r10,  -2036(r30)
	store.d r[8:9], 0(r11)                  # 8-byte Folded Spill
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	add.ul r[1:2], r[1:2], r[8:9]
	addli r8, r30, -2816
	store.d r[1:2], 0(r8)                   # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r1, 16
	addli r19, zero, 32
	addli r12, zero, 5
	addli r9, zero, 2
	addli r27, zero, 6
	addli r22, zero, 4
	ori r1, r1, 64
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	add.s r1, r2, r1
	addli r2, zero, 4
	lock zero, r2
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r26, zero, 2
	dma_cfg r1, r25, r11, 3
	addli r1, zero, 128
	dma_cfg r1, r11, r14, 4
	dma_cfg r1, r1, r21, 5
	dma_cfg zero, zero, r19, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 7
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
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
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r24, zero, r11, 3
	dma_cfg r1, zero, r14, 4
	dma_cfg r1, zero, r21, 5
	dma_cfg zero, zero, r19, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r9, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r1,  -1532(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r2,  -508(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r1, r1, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r2, r2, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r1, -1532(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r2, -508(r30)
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r1
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r23, r23, 1
	beq r23, r22, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 123 15                        # parallel-rne.mlir:123:15
	addli r6, r6, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	zext_int2long r[11:12], r23
	addli r1, zero, 4095
	addli r19, zero, 4
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	sll.d r[21:22], r[11:12], r22
	zext_int2long r[1:2], r1
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	add.ul r[25:26], r[21:22], r[17:18]
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	setlt.ul r1, r[1:2], r[25:26]
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli.d r[21:22], r[25:26], 0
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	add.s r1, r7, r6
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r2, zero, 192
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r9, r10, r6
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	addli r8, zero, 125
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r2, r1, r2
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r14, r9, r8
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r1, r1, 1
	storeli.w r1, -2808(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r1, r9, 1
	storeli.w r1, -2036(r30)
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r8, r2, 12
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r2, r14, 13
	lui r14, 16
	add.s r24, r2, r14
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r14, zero, 2
	beq r1, r14, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r14, zero, 1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r1, r14, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r8, zero, 6
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	sll.d r[11:12], r[25:26], r14
	load.d r[25:26], 0(r30)
	addli r1, zero, 64
	addli r20, zero, 3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	srl.d r[21:22], r[21:22], r8
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	xwait r20, 0
	add.ul r[25:26], r[25:26], r[11:12]
	addli r11, zero, 64
	sub.s r21, r1, r21
	addli r1, zero, 124
	blt.s r1, r9, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r1, zero, 2
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
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
	addli r1, zero, 128
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r24, zero, r11, 3
	dma_cfg r1, zero, r14, 4
	dma_cfg r1, zero, r11, 5
	addli r1, zero, 32
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r1, zero, 2
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	addli r2, zero, 5
	addli r22, zero, 4
	xwait r1, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 16
	ds_cfg r1, zero, 0
	addli r1, zero, 32
	ds_cfg r1, zero, 1
	addli r1, zero, 64
	ds_cfg r2, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 3
	shuffle_batch r8, r24, r2, 1
	unlock zero
	xsignal r1, 0
	xsignal r22, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r1,  -1532(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r14,  -508(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, zero, 255
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r9, zero, 126
	lui r20, 266
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r2, r1, r2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r21, r14, r9
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r1, r1, 1
	storeli.w r1, -1532(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r1, r14, 1
	storeli.w r1, -508(r30)
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r9, r2, 12
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r2, r21, 12
	add.s r24, r2, r20
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r20, zero, 7
	beq r1, r20, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r1, r27, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r25, zero, 15
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r1, r30, -2816
	addli r20, zero, 7
	sll.d r[8:9], r[11:12], r25
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
	addli r1, zero, 125
	xwait r20, 0
	add.ul r[21:22], r[11:12], r[8:9]
	blt.s r1, r14, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r8, zero, 1
	addli r9, zero, 2
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r1, zero, 3
	addli r12, zero, 16
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r27, 10
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
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r12, 10
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
	addli r1, zero, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r24, zero, r1, 3
	addli r1, zero, 128
	dma_cfg r1, zero, r9, 4
	addli r1, zero, 256
	dma_cfg r1, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r1, 266
	addli r8, zero, 4
	addli r12, zero, 64
	addli r11, zero, 2
	addli r19, zero, 16
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r9, zero, 2048
	addli r14, zero, 5
	addli r27, zero, 6
	ori r1, r1, 64
	lock zero, r8
	add.s r1, r2, r1
	addli r2, zero, 1
	dma_cfg r2, r2, zero, 0
	dma_cfg zero, r22, zero, 2
	dma_cfg r1, r21, r12, 3
	addli r1, zero, 128
	addli r21, zero, 256
	addli r22, zero, 4
	dma_cfg r1, r12, r11, 4
	dma_cfg r21, r9, r19, 5
	addli r9, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r20, 10
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
	addli r8, zero, 17
	dma_cfg zero, zero, r25, 10
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
	dma_cfg r2, r2, zero, 0
	dma_cfg r2, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r24, zero, r12, 3
	dma_cfg r1, zero, r11, 4
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r1
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	dma_cfg r21, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	xsignal r9, 0
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 9
	xwait r27, 0
	addli r8, zero, 16
	addli r22, zero, 4
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r2, zero, 1
	ds_cfg r8, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 7
	shuffle_coa r9, r24, r8, 2
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r22, zero, 4
	.loc	1 122 9 is_stmt 1               # parallel-rne.mlir:122:9
	bneq r1, r22, .LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 8
	xwait r22, 0
	addli r11, zero, 64
	addli r12, zero, 16
	xwait r2, 0
	addli r2, zero, 1
	lock zero, r2
	mm_cfg r11, r12, r11, 0
	addli r11, zero, 2
	mm_cfg r2, r11, r2, 2
	beq r6, zero, .LBB0_31
# %bb.29:                               # %.preheader30
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r15, r8, r9, 8
	j .LBB0_32
.LBB0_30:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r23, r23, 1
	bneq r23, r22, .LBB0_13
	j .LBB0_35
.LBB0_31:                               # %.preheader29
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	mm r15, r8, r9, 8
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 1
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r23, r23, 1
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	unlock r2
	addli r2, zero, 5
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	bneq r23, r22, .LBB0_13
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	bneq r1, r22, .LBB0_35
.LBB0_34:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	storeli.w zero, -2828(r30)              # 4-byte Folded Spill
	xsignal r2, 0
	j .LBB0_38
.LBB0_35:                               # %.thread44
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	addli r2, zero, 3
	bneq r1, r2, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	storeli.w r2, -2828(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -2828(r30)              # 4-byte Folded Spill
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r2, zero, 255
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	xfence
	addli r19, zero, 6
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	csr_set csr5, r2
	addli r2, zero, 64
	sync_core
	zext_int2long r[17:18], r2
	addli r2, zero, 63
	zext_int2long r[6:7], r2
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	beq r1, zero, .LBB0_71
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r2, zero, 2
	beq r1, r2, .LBB0_102
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 1
	bneq r1, r2, .LBB0_133
# %bb.41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r8, r30, -2824
	store.d r[1:2], 0(r8)                   # 8-byte Folded Spill
	addli r1, zero, 8
	xfence
	zext_int2long r[8:9], r1
	mfence { lm, sm, gm }
	j .LBB0_43
.LBB0_42:                               # %middle.block99
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r10, r30, -2816
	addli r1, zero, 15
	addli r19, zero, 6
	load.d r[8:9], 0(r10)                   # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_132
.LBB0_43:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	addli r2, r30, -2816
	sll.d r[23:24], r[8:9], r1
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	bneq r16, r15, .LBB0_50
# %bb.44:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_46
.LBB0_45:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 188 13 is_stmt 1              # parallel-rne.mlir:188:13
	add.s r2, r16, r2
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r10, 0(r2)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r1, zero, .LBB0_42
.LBB0_46:                               # %scalar.ph93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[1:2], r[8:9], r[23:24]
	slli r2, r1, 2
	add.s r1, r15, r2
	loads.w r11, 0(r1)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r1, r11, r28
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r10, r3, r1
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r10, zero, .LBB0_48
# %bb.47:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r1, r5, r1
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_45
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r1, r5, r1
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_45
.LBB0_49:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r13
	and r10, r1, r4
	j .LBB0_45
.LBB0_50:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	addli r1, r30, -2824
	load.d r[19:20], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_52
.LBB0_51:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r8, r16, r10
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	seteq.d r1, r[19:20], r[17:18]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r2, 12(r8)
	stores.w r12, 8(r8)
	stores.w r21, 4(r8)
	stores.w r14, 0(r8)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	bneq r1, zero, .LBB0_42
.LBB0_52:                               # %vector.body95
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[1:2], r[19:20], r[23:24]
	slli r10, r1, 2
	add.s r14, r15, r10
	loads.w r8, 12(r14)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r27, r8, r28
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r1, r3, r27
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_54
# %bb.53:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_52 Depth=3
	lui r1, 1024
	or r2, r8, r1
.LBB0_55:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r22, 8(r14)
	and r11, r22, r28
	setlt.u r1, r3, r11
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_57
# %bb.56:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_52 Depth=3
	lui r1, 1024
	or r12, r22, r1
.LBB0_58:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r9, 4(r14)
	and r25, r9, r28
	setlt.u r1, r3, r25
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r1, zero, .LBB0_60
# %bb.59:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r9, 0
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_52 Depth=3
	lui r1, 1024
	or r21, r9, r1
.LBB0_61:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r26, 0(r14)
	and r1, r26, r28
	setlt.u r14, r3, r1
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r14, zero, .LBB0_63
# %bb.62:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r26, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r1, r5, r1
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_64
	j .LBB0_65
.LBB0_63:                               #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r26, r14
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r1, r5, r1
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_65
.LBB0_64:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r13
	and r14, r1, r4
.LBB0_65:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	setlt.u r1, r5, r25
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_68
# %bb.66:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r1, zero, .LBB0_69
.LBB0_67:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r27
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_51
	j .LBB0_70
.LBB0_68:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r13
	and r21, r1, r4
	setlt.u r1, r5, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_67
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r13
	and r12, r1, r4
	setlt.u r1, r5, r27
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r1, zero, .LBB0_51
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r13
	and r2, r1, r4
	j .LBB0_51
.LBB0_71:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	xfence
	zext_int2long r[8:9], zero
	mfence { lm, sm, gm }
	j .LBB0_73
.LBB0_72:                               # %middle.block117
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, r30, -2816
	addli r1, zero, 7
	addli r19, zero, 6
	load.d r[8:9], 0(r10)                   # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 144 9 is_stmt 1               # parallel-rne.mlir:144:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_101
.LBB0_73:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_76 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -2816
	sll.d r[25:26], r[8:9], r19
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	bneq r16, r15, .LBB0_80
# %bb.74:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_76
.LBB0_75:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 160 13 is_stmt 1              # parallel-rne.mlir:160:13
	add.s r2, r16, r2
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r10, 0(r2)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r1, zero, .LBB0_72
.LBB0_76:                               # %scalar.ph111
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[8:9], r[25:26]
	slli r2, r1, 2
	add.s r1, r15, r2
	loads.w r11, 0(r1)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r1, r11, r28
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r10, r3, r1
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r10, zero, .LBB0_78
# %bb.77:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r1, r5, r1
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_75
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r1, r5, r1
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_75
.LBB0_79:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r13
	and r10, r1, r4
	j .LBB0_75
.LBB0_80:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_82
.LBB0_81:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r2, r16, r10
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	seteq.d r1, r[23:24], r[17:18]
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r21, 12(r2)
	stores.w r22, 8(r2)
	stores.w r9, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	bneq r1, zero, .LBB0_72
.LBB0_82:                               # %vector.body113
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[23:24], r[25:26]
	slli r10, r1, 2
	add.s r14, r15, r10
	loads.w r8, 12(r14)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r2, r8, r28
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r1, r3, r2
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_84
# %bb.83:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r8, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	lui r1, 1024
	or r21, r8, r1
.LBB0_85:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r27, 8(r14)
	and r11, r27, r28
	setlt.u r1, r3, r11
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_87
# %bb.86:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r27, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=3
	lui r1, 1024
	or r22, r27, r1
.LBB0_88:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r12, 4(r14)
	and r19, r12, r28
	setlt.u r1, r3, r19
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r1, zero, .LBB0_90
# %bb.89:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r12, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=3
	lui r1, 1024
	or r9, r12, r1
.LBB0_91:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r20, 0(r14)
	and r1, r20, r28
	setlt.u r14, r3, r1
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r14, zero, .LBB0_93
# %bb.92:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r1, r5, r1
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r1, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r20, r14
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r1, r5, r1
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_95
.LBB0_94:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r13
	and r14, r1, r4
.LBB0_95:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	setlt.u r1, r5, r19
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r1, zero, .LBB0_98
# %bb.96:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r1, zero, .LBB0_99
.LBB0_97:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_81
	j .LBB0_100
.LBB0_98:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r13
	and r9, r1, r4
	setlt.u r1, r5, r11
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_97
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r13
	and r22, r1, r4
	setlt.u r1, r5, r2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_81
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r13
	and r21, r1, r4
	j .LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r1
	addli r22, zero, 4
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r2, zero, 2
	bneq r1, r2, .LBB0_40
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_104
.LBB0_103:                              # %middle.block108
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, r30, -2816
	addli r1, zero, 23
	addli r19, zero, 6
	load.d r[8:9], 0(r10)                   # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 200 9 is_stmt 1               # parallel-rne.mlir:200:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_132
.LBB0_104:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -2816
	sll.d r[25:26], r[8:9], r19
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	.loc	1 201 11 is_stmt 1              # parallel-rne.mlir:201:11
	bneq r16, r15, .LBB0_111
# %bb.105:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_107
.LBB0_106:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 216 13 is_stmt 1              # parallel-rne.mlir:216:13
	add.s r2, r16, r2
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r10, 0(r2)
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	beq r1, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph102
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	add.ul r[1:2], r[8:9], r[25:26]
	slli r2, r1, 2
	add.s r1, r15, r2
	loads.w r11, 0(r1)
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r1, r11, r28
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	setlt.u r10, r3, r1
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r10, zero, .LBB0_109
# %bb.108:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r1, r5, r1
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_106
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r1, r5, r1
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_106
.LBB0_110:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r13
	and r10, r1, r4
	j .LBB0_106
.LBB0_111:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_113
.LBB0_112:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 201 11 is_stmt 1              # parallel-rne.mlir:201:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	add.s r2, r16, r10
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	seteq.d r1, r[23:24], r[17:18]
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r8, 12(r2)
	stores.w r12, 8(r2)
	stores.w r22, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	bneq r1, zero, .LBB0_103
.LBB0_113:                              # %vector.body104
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	add.ul r[1:2], r[23:24], r[25:26]
	slli r10, r1, 2
	add.s r14, r15, r10
	loads.w r21, 12(r14)
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r2, r21, r28
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	setlt.u r1, r3, r2
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r1, zero, .LBB0_115
# %bb.114:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r21, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=3
	lui r1, 1024
	or r8, r21, r1
.LBB0_116:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r27, 8(r14)
	and r11, r27, r28
	setlt.u r1, r3, r11
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r1, zero, .LBB0_118
# %bb.117:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r27, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_113 Depth=3
	lui r1, 1024
	or r12, r27, r1
.LBB0_119:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r9, 4(r14)
	and r19, r9, r28
	setlt.u r1, r3, r19
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r1, zero, .LBB0_121
# %bb.120:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_113 Depth=3
	lui r1, 1024
	or r22, r9, r1
.LBB0_122:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r20, 0(r14)
	and r1, r20, r28
	setlt.u r14, r3, r1
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r14, zero, .LBB0_124
# %bb.123:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r1, r5, r1
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r1, zero, .LBB0_125
	j .LBB0_126
.LBB0_124:                              #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r20, r14
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r1, r5, r1
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_126
.LBB0_125:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r13
	and r14, r1, r4
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	setlt.u r1, r5, r19
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r1, zero, .LBB0_129
# %bb.127:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r1, zero, .LBB0_130
.LBB0_128:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r2
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_112
	j .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r13
	and r22, r1, r4
	setlt.u r1, r5, r11
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_128
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r13
	and r12, r1, r4
	setlt.u r1, r5, r2
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r1, zero, .LBB0_112
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r13
	and r8, r1, r4
	j .LBB0_112
.LBB0_132:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r1
	addli r22, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 221 7 is_stmt 1               # parallel-rne.mlir:221:7
	loadli.w r2,  -2828(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_168
# %bb.134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	beq r1, r22, .LBB0_199
.LBB0_135:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	addli r2, zero, 7
	beq r1, r2, .LBB0_230
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	beq r1, r19, .LBB0_260
# %bb.137:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	bneq r1, r2, .LBB0_291
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_140
.LBB0_139:                              # %middle.block
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r10, r30, -2816
	addli r1, zero, 47
	addli r19, zero, 6
	load.d r[8:9], 0(r10)                   # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 284 9 is_stmt 1               # parallel-rne.mlir:284:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_290
.LBB0_140:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -2816
	sll.d r[25:26], r[8:9], r19
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	.loc	1 285 11 is_stmt 1              # parallel-rne.mlir:285:11
	bneq r16, r15, .LBB0_147
# %bb.141:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_143
.LBB0_142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 300 13 is_stmt 1              # parallel-rne.mlir:300:13
	add.s r2, r16, r2
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r10, 0(r2)
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	beq r1, zero, .LBB0_139
.LBB0_143:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.ul r[1:2], r[8:9], r[25:26]
	slli r2, r1, 2
	add.s r1, r15, r2
	loads.w r11, 0(r1)
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r1, r11, r28
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	setlt.u r10, r3, r1
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r10, zero, .LBB0_145
# %bb.144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r1, r5, r1
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_142
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r1, r5, r1
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_142
.LBB0_146:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r13
	and r10, r1, r4
	j .LBB0_142
.LBB0_147:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_149
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 285 11 is_stmt 1              # parallel-rne.mlir:285:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	add.s r2, r16, r10
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	seteq.d r1, r[23:24], r[17:18]
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r8, 12(r2)
	stores.w r12, 8(r2)
	stores.w r22, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	bneq r1, zero, .LBB0_139
.LBB0_149:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.ul r[1:2], r[23:24], r[25:26]
	slli r10, r1, 2
	add.s r14, r15, r10
	loads.w r2, 12(r14)
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r21, r2, r28
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	setlt.u r1, r3, r21
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r1, zero, .LBB0_151
# %bb.150:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r2, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_149 Depth=3
	lui r1, 1024
	or r8, r2, r1
.LBB0_152:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r27, 8(r14)
	and r11, r27, r28
	setlt.u r1, r3, r11
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r1, zero, .LBB0_154
# %bb.153:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r27, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_149 Depth=3
	lui r1, 1024
	or r12, r27, r1
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r9, 4(r14)
	and r19, r9, r28
	setlt.u r1, r3, r19
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r1, zero, .LBB0_157
# %bb.156:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_149 Depth=3
	lui r1, 1024
	or r22, r9, r1
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r20, 0(r14)
	and r1, r20, r28
	setlt.u r14, r3, r1
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r14, zero, .LBB0_164
# %bb.159:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r1, r5, r1
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_161
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r13
	and r14, r1, r4
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	setlt.u r1, r5, r19
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r1, zero, .LBB0_165
# %bb.162:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r1, zero, .LBB0_166
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r21
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_148
	j .LBB0_167
.LBB0_164:                              #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r20, r14
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r1, r5, r1
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r1, zero, .LBB0_160
	j .LBB0_161
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r13
	and r22, r1, r4
	setlt.u r1, r5, r11
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_163
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r13
	and r12, r1, r4
	setlt.u r1, r5, r21
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_148
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r8, r1, r4
	j .LBB0_148
.LBB0_168:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 24
	.loc	1 221 7 is_stmt 1               # parallel-rne.mlir:221:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_170
.LBB0_169:                              # %middle.block90
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, r30, -2816
	addli r1, zero, 31
	addli r19, zero, 6
	load.d r[8:9], 0(r10)                   # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 228 9 is_stmt 1               # parallel-rne.mlir:228:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_198
.LBB0_170:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -2816
	sll.d r[25:26], r[8:9], r19
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	bneq r16, r15, .LBB0_177
# %bb.171:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_173
.LBB0_172:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 244 13 is_stmt 1              # parallel-rne.mlir:244:13
	add.s r2, r16, r2
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r10, 0(r2)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	beq r1, zero, .LBB0_169
.LBB0_173:                              # %scalar.ph84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[1:2], r[8:9], r[25:26]
	slli r2, r1, 2
	add.s r1, r15, r2
	loads.w r11, 0(r1)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r1, r11, r28
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	setlt.u r10, r3, r1
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r10, zero, .LBB0_175
# %bb.174:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r1, r5, r1
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r1, zero, .LBB0_172
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r1, r5, r1
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r1, zero, .LBB0_172
.LBB0_176:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r13
	and r10, r1, r4
	j .LBB0_172
.LBB0_177:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_179
.LBB0_178:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	add.s r2, r16, r10
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	seteq.d r1, r[23:24], r[17:18]
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r8, 12(r2)
	stores.w r12, 8(r2)
	stores.w r22, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	bneq r1, zero, .LBB0_169
.LBB0_179:                              # %vector.body86
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[1:2], r[23:24], r[25:26]
	slli r10, r1, 2
	add.s r14, r15, r10
	loads.w r2, 12(r14)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r21, r2, r28
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	setlt.u r1, r3, r21
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r1, zero, .LBB0_181
# %bb.180:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r2, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_179 Depth=3
	lui r1, 1024
	or r8, r2, r1
.LBB0_182:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r27, 8(r14)
	and r11, r27, r28
	setlt.u r1, r3, r11
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r1, zero, .LBB0_184
# %bb.183:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r27, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_179 Depth=3
	lui r1, 1024
	or r12, r27, r1
.LBB0_185:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r9, 4(r14)
	and r19, r9, r28
	setlt.u r1, r3, r19
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r1, zero, .LBB0_187
# %bb.186:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_179 Depth=3
	lui r1, 1024
	or r22, r9, r1
.LBB0_188:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r20, 0(r14)
	and r1, r20, r28
	setlt.u r14, r3, r1
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r14, zero, .LBB0_194
# %bb.189:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r1, r5, r1
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r1, zero, .LBB0_191
.LBB0_190:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r13
	and r14, r1, r4
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	setlt.u r1, r5, r19
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r1, zero, .LBB0_195
# %bb.192:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r1, zero, .LBB0_196
.LBB0_193:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r21
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r1, zero, .LBB0_178
	j .LBB0_197
.LBB0_194:                              #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r20, r14
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r1, r5, r1
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r1, zero, .LBB0_190
	j .LBB0_191
.LBB0_195:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r13
	and r22, r1, r4
	setlt.u r1, r5, r11
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r1, zero, .LBB0_193
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r13
	and r12, r1, r4
	setlt.u r1, r5, r21
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r1, zero, .LBB0_178
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r8, r1, r4
	j .LBB0_178
.LBB0_198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r1
	addli r22, zero, 4
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	mfence { sm }
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	bneq r1, r22, .LBB0_135
.LBB0_199:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_201
.LBB0_200:                              # %middle.block81
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r10, r30, -2816
	addli r1, zero, 39
	addli r19, zero, 6
	load.d r[8:9], 0(r10)                   # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 256 9 is_stmt 1               # parallel-rne.mlir:256:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_229
.LBB0_201:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -2816
	sll.d r[25:26], r[8:9], r19
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	.loc	1 257 11 is_stmt 1              # parallel-rne.mlir:257:11
	bneq r16, r15, .LBB0_208
# %bb.202:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_204
.LBB0_203:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 272 13 is_stmt 1              # parallel-rne.mlir:272:13
	add.s r2, r16, r2
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	stores.w r10, 0(r2)
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	beq r1, zero, .LBB0_200
.LBB0_204:                              # %scalar.ph75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.ul r[1:2], r[8:9], r[25:26]
	slli r2, r1, 2
	add.s r1, r15, r2
	loads.w r11, 0(r1)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	and r1, r11, r28
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	setlt.u r10, r3, r1
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r10, zero, .LBB0_206
# %bb.205:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r1, r5, r1
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r1, zero, .LBB0_203
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r1, r5, r1
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r1, zero, .LBB0_203
.LBB0_207:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r13
	and r10, r1, r4
	j .LBB0_203
.LBB0_208:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_210
.LBB0_209:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 257 11 is_stmt 1              # parallel-rne.mlir:257:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	add.s r2, r16, r10
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	seteq.d r1, r[23:24], r[17:18]
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	stores.w r8, 12(r2)
	stores.w r12, 8(r2)
	stores.w r22, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	bneq r1, zero, .LBB0_200
.LBB0_210:                              # %vector.body77
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.ul r[1:2], r[23:24], r[25:26]
	slli r10, r1, 2
	add.s r14, r15, r10
	loads.w r2, 12(r14)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	and r21, r2, r28
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	setlt.u r1, r3, r21
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r1, zero, .LBB0_212
# %bb.211:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r2, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_210 Depth=3
	lui r1, 1024
	or r8, r2, r1
.LBB0_213:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r27, 8(r14)
	and r11, r27, r28
	setlt.u r1, r3, r11
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r1, zero, .LBB0_215
# %bb.214:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r27, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_210 Depth=3
	lui r1, 1024
	or r12, r27, r1
.LBB0_216:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r9, 4(r14)
	and r19, r9, r28
	setlt.u r1, r3, r19
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r1, zero, .LBB0_218
# %bb.217:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_210 Depth=3
	lui r1, 1024
	or r22, r9, r1
.LBB0_219:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r20, 0(r14)
	and r1, r20, r28
	setlt.u r14, r3, r1
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r14, zero, .LBB0_225
# %bb.220:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r1, r5, r1
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r1, zero, .LBB0_222
.LBB0_221:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r13
	and r14, r1, r4
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r1, r5, r19
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r1, zero, .LBB0_226
# %bb.223:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r1, zero, .LBB0_227
.LBB0_224:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r21
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r1, zero, .LBB0_209
	j .LBB0_228
.LBB0_225:                              #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r20, r14
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r1, r5, r1
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r1, zero, .LBB0_221
	j .LBB0_222
.LBB0_226:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r13
	and r22, r1, r4
	setlt.u r1, r5, r11
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r1, zero, .LBB0_224
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r13
	and r12, r1, r4
	setlt.u r1, r5, r21
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r1, zero, .LBB0_209
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r8, r1, r4
	j .LBB0_209
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r1
	addli r22, zero, 4
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	mfence { sm }
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	addli r2, zero, 7
	bneq r1, r2, .LBB0_136
.LBB0_230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 333 7 is_stmt 1               # parallel-rne.mlir:333:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_232
.LBB0_231:                              # %middle.block72
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, r30, -2816
	addli r19, zero, 6
	load.d r[8:9], 0(r1)                    # 8-byte Folded Reload
	.loc	1 340 9 is_stmt 1               # parallel-rne.mlir:340:9
	setlt.ul r1, r[8:9], r[6:7]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_290
.LBB0_232:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -2816
	sll.d r[25:26], r[8:9], r19
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	.loc	1 341 11 is_stmt 1              # parallel-rne.mlir:341:11
	bneq r16, r15, .LBB0_239
# %bb.233:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_235
.LBB0_234:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 356 13 is_stmt 1              # parallel-rne.mlir:356:13
	add.s r2, r16, r2
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r10, 0(r2)
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	beq r1, zero, .LBB0_231
.LBB0_235:                              # %scalar.ph66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.ul r[1:2], r[8:9], r[25:26]
	slli r2, r1, 2
	add.s r1, r15, r2
	loads.w r11, 0(r1)
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r1, r11, r28
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	setlt.u r10, r3, r1
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r10, zero, .LBB0_237
# %bb.236:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r1, r5, r1
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_234
	j .LBB0_238
.LBB0_237:                              #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r1, r5, r1
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_234
.LBB0_238:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r13
	and r10, r1, r4
	j .LBB0_234
.LBB0_239:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_241
.LBB0_240:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 341 11 is_stmt 1              # parallel-rne.mlir:341:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	add.s r2, r16, r10
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	seteq.d r1, r[23:24], r[17:18]
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r8, 12(r2)
	stores.w r12, 8(r2)
	stores.w r22, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	bneq r1, zero, .LBB0_231
.LBB0_241:                              # %vector.body68
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.ul r[1:2], r[23:24], r[25:26]
	slli r10, r1, 2
	add.s r14, r15, r10
	loads.w r2, 12(r14)
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r21, r2, r28
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	setlt.u r1, r3, r21
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r1, zero, .LBB0_243
# %bb.242:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r2, 0
	j .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_241 Depth=3
	lui r1, 1024
	or r8, r2, r1
.LBB0_244:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r27, 8(r14)
	and r11, r27, r28
	setlt.u r1, r3, r11
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r1, zero, .LBB0_246
# %bb.245:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r27, 0
	j .LBB0_247
.LBB0_246:                              #   in Loop: Header=BB0_241 Depth=3
	lui r1, 1024
	or r12, r27, r1
.LBB0_247:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r9, 4(r14)
	and r19, r9, r28
	setlt.u r1, r3, r19
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r1, zero, .LBB0_249
# %bb.248:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_241 Depth=3
	lui r1, 1024
	or r22, r9, r1
.LBB0_250:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r20, 0(r14)
	and r1, r20, r28
	setlt.u r14, r3, r1
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r14, zero, .LBB0_252
# %bb.251:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r1, r5, r1
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r1, zero, .LBB0_253
	j .LBB0_254
.LBB0_252:                              #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r20, r14
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r1, r5, r1
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_254
.LBB0_253:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r13
	and r14, r1, r4
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r1, r5, r19
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r1, zero, .LBB0_257
# %bb.255:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r1, zero, .LBB0_258
.LBB0_256:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r21
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_240
	j .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r13
	and r22, r1, r4
	setlt.u r1, r5, r11
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_256
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r13
	and r12, r1, r4
	setlt.u r1, r5, r21
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r1, zero, .LBB0_240
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r8, r1, r4
	j .LBB0_240
.LBB0_260:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 48
	.loc	1 305 7 is_stmt 1               # parallel-rne.mlir:305:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_262
.LBB0_261:                              # %middle.block63
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, r30, -2816
	addli r1, zero, 55
	addli r19, zero, 6
	load.d r[8:9], 0(r10)                   # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 312 9 is_stmt 1               # parallel-rne.mlir:312:9
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_290
.LBB0_262:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -2816
	sll.d r[25:26], r[8:9], r19
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	.loc	1 313 11 is_stmt 1              # parallel-rne.mlir:313:11
	bneq r16, r15, .LBB0_269
# %bb.263:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_265
.LBB0_264:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	setlt.ul r1, r[8:9], r[6:7]
	.loc	1 328 13 is_stmt 1              # parallel-rne.mlir:328:13
	add.s r2, r16, r2
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	stores.w r10, 0(r2)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	beq r1, zero, .LBB0_261
.LBB0_265:                              # %scalar.ph57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[1:2], r[8:9], r[25:26]
	slli r2, r1, 2
	add.s r1, r15, r2
	loads.w r11, 0(r1)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	and r1, r11, r28
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	setlt.u r10, r3, r1
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r10, zero, .LBB0_267
# %bb.266:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r1, r5, r1
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_264
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r1, r5, r1
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_264
.LBB0_268:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r13
	and r10, r1, r4
	j .LBB0_264
.LBB0_269:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_271
.LBB0_270:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 313 11 is_stmt 1              # parallel-rne.mlir:313:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	add.s r2, r16, r10
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	seteq.d r1, r[23:24], r[17:18]
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	stores.w r8, 12(r2)
	stores.w r12, 8(r2)
	stores.w r22, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	bneq r1, zero, .LBB0_261
.LBB0_271:                              # %vector.body59
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[1:2], r[23:24], r[25:26]
	slli r10, r1, 2
	add.s r14, r15, r10
	loads.w r2, 12(r14)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	and r21, r2, r28
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	setlt.u r1, r3, r21
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r1, zero, .LBB0_273
# %bb.272:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r2, 0
	j .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_271 Depth=3
	lui r1, 1024
	or r8, r2, r1
.LBB0_274:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r27, 8(r14)
	and r11, r27, r28
	setlt.u r1, r3, r11
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r1, zero, .LBB0_276
# %bb.275:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r27, 0
	j .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_271 Depth=3
	lui r1, 1024
	or r12, r27, r1
.LBB0_277:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r9, 4(r14)
	and r19, r9, r28
	setlt.u r1, r3, r19
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r1, zero, .LBB0_279
# %bb.278:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r9, 0
	j .LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_271 Depth=3
	lui r1, 1024
	or r22, r9, r1
.LBB0_280:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r20, 0(r14)
	and r1, r20, r28
	setlt.u r14, r3, r1
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r14, zero, .LBB0_282
# %bb.281:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r20, 0
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r1, r5, r1
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r1, zero, .LBB0_283
	j .LBB0_284
.LBB0_282:                              #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r20, r14
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r1, r5, r1
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_284
.LBB0_283:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r13
	and r14, r1, r4
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	setlt.u r1, r5, r19
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r1, zero, .LBB0_287
# %bb.285:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r1, zero, .LBB0_288
.LBB0_286:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r21
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_270
	j .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r13
	and r22, r1, r4
	setlt.u r1, r5, r11
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_286
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r13
	and r12, r1, r4
	setlt.u r1, r5, r21
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_270
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r13
	and r8, r1, r4
	j .LBB0_270
.LBB0_290:                              # %.sink.split51
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r1
	addli r22, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 361 7 is_stmt 1               # parallel-rne.mlir:361:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	loadli.w r2,  -2828(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.292:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, r30, -2840
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r12
	load.d r[14:15], 0(r2)                  # 8-byte Folded Reload
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	bneq r1, zero, .LBB0_6
# %bb.293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	loadli.w r1,  -2872(r30)                # 4-byte Folded Reload
	addli r6, zero, 960
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	loadli.w r8,  -2868(r30)                # 4-byte Folded Reload
	zext_int2long r[10:11], zero
	zext_int2long r[6:7], r6
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	zext_int2long r[1:2], r1
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	sext_int2long r[8:9], r8
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	min.ul r[6:7], r[1:2], r[6:7]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.sl r[10:11], r[8:9], r[10:11]
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	addli.d r[6:7], r[6:7], 64
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	addli.d r[6:7], r[10:11], 64
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r11, r30, -2864
	addli r10, zero, 17
	load.d r[20:21], 0(r11)                 # 8-byte Folded Reload
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	max.sl r[6:7], r[6:7], r[8:9]
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	min.ul r[1:2], r[1:2], r[17:18]
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	sub.sl r[6:7], r[6:7], r[8:9]
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	sll.d r[10:11], r[20:21], r10
	load.d r[20:21], 16(r30)
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.sl r[6:7], r[6:7], r[17:18]
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	add.ul r[10:11], r[20:21], r[10:11]
	addli r20, r30, -2856
	load.d r[8:9], 0(r20)                   # 8-byte Folded Reload
	addli r20, zero, 5
	add.ul r[8:9], r[10:11], r[8:9]
	addli r10, zero, 12
	addli r11, zero, 1
	xwait r10, 0
	lock zero, r20
	ori r10, r16, 64
	addli r16, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r11, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r10, r16, 3
	addli r8, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r8, r8, 5
	andi r1, r1, 62
	dma_cfg r16, r2, r8, 4
	addli r2, zero, 256
	addli r8, zero, 2048
	dma_cfg r8, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r20
	xsignal r1, 0
	j .LBB0_6
.LBB0_294:                              # %._crit_edge
	.loc	1 381 5                         # parallel-rne.mlir:381:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_296
# %bb.295:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 381 5                         # parallel-rne.mlir:381:5
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
.LBB0_296:
	.loc	1 382 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:382:5
	addli sp, sp, 2880
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_mm, .Lfunc_end0-triton_mm
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_mm,@object # @XPU_KERNEL_PARAM_SIZE_triton_mm
	.section	.XPU.KERNEL_PARAM_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_mm:
	.long	36                              # 0x24
	.size	XPU_KERNEL_PARAM_SIZE_triton_mm, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_mm,@object # @XPU_KERNEL_STACK_SIZE_triton_mm
	.section	.XPU.KERNEL_STACK_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_mm:
	.long	2944                            # 0xb80
	.size	XPU_KERNEL_STACK_SIZE_triton_mm, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_mm,@object # @XPU_KERNEL_DYNAMIC_LM_triton_mm
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_mm:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_mm, 4

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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-4457n5i0" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
