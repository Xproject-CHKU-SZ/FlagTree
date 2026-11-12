	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-p796h234" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3056
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r8
	addli r30, sp, 2992
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
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
	xsignal r1, 0
	xsignal r2, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -620(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -1264(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -1888(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -2912(r30)
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r4, -1268(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	storeli.w r4, -1936(r30)
	storeli.w r4, -1932(r30)
	storeli.w r4, -1928(r30)
	storeli.w r4, -1924(r30)
	storeli.w r4, -1920(r30)
	storeli.w r4, -1916(r30)
	storeli.w r4, -1912(r30)
	storeli.w r4, -1908(r30)
	storeli.w r4, -1904(r30)
	storeli.w r4, -1900(r30)
	storeli.w r4, -1896(r30)
	storeli.w r4, -1892(r30)
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r3, r2, r3
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r3, r1, .LBB0_292
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	addli r4, r30, -2992
	addli r5, zero, 3
	addli r16, zero, 4
	lui r24, 522240
	lui r26, 1048560
	addli r6, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	lui r1, 524287
	ori r22, r1, 4095
	lui r1, 7
	ori r25, r1, 4095
	lui r1, 522239
	ori r27, r1, 4095
	lui r1, 83
	ori r1, r1, 2048
	storeli.w r1, -2924(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r1, zero, 11
	addli r16, zero, 4
	xsignal r1, 0
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r1, zero, 12
	xsignal r1, 0
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, r30, -2952
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	addli r5, r30, -2992
	loadli.w r6,  -2956(r30)                # 4-byte Folded Reload
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	addli r5, zero, 3
	addli.d r[3:4], r[3:4], 1
	setlt.sl r1, r[3:4], r[1:2]
	beq r1, zero, .LBB0_292
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_102 Depth 2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #     Child Loop BB0_168 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_171 Depth 3
                                        #     Child Loop BB0_199 Depth 2
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_202 Depth 3
                                        #     Child Loop BB0_138 Depth 2
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_141 Depth 3
                                        #     Child Loop BB0_260 Depth 2
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_263 Depth 3
                                        #     Child Loop BB0_230 Depth 2
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_233 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r11, zero, 13
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	bneq r8, r16, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	addli r2, r30, -2952
	addli r17, zero, 1
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	load.d r[9:10], 8(r30)
	addli r7, r30, -2976
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	loadli.w r15,  -2912(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r16,  -1888(r30)
	addli r14, zero, 0
	addli r19, zero, 3
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	div.s r1, r3, r1
	mod.s r3, r6, r5
	addli r6, r6, 1
	addli r4, zero, 1
	storeli.w r6, -2956(r30)                # 4-byte Folded Spill
	addli r6, zero, 8
	div.s r1, r1, r2
	addli r2, zero, 16
	div.s r2, r1, r2
	slli r5, r2, 3
	slli r2, r2, 4
	sub.s r4, r4, r5
	sub.s r2, r1, r2
	min.s r4, r4, r6
	mod.s r1, r1, r4
	div.s r2, r2, r4
	slli r4, r3, 12
	addli r21, r4, 12288
	add.s r1, r5, r1
	slli r3, r2, 6
	slli r5, r1, 4
	storeli.w r3, -2984(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	storeli.w r5, -2980(r30)                # 4-byte Folded Spill
	addli r5, zero, 6
	sll.d r[2:3], r[2:3], r5
	zext_int2long r[5:6], r1
	addli r1, r30, -2968
	store.d r[2:3], 0(r1)                   # 8-byte Folded Spill
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	sll.d r[1:2], r[2:3], r17
	addli r3, zero, 11
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	add.ul r[1:2], r[9:10], r[1:2]
	load.d r[9:10], 0(r30)
	sll.d r[5:6], r[5:6], r3
	addli r3, r30, -2920
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	add.ul r[2:3], r[9:10], r[5:6]
	addli r6, zero, 0
	addli r10, zero, 154
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r7, 6
	addli r9, zero, 4
	addli r20, zero, 64
	addli r23, zero, 128
	addli r18, zero, 5
	addli r19, zero, 3
	ori r7, r7, 64
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r9
	add.s r1, r1, r7
	addli r7, zero, 1
	dma_cfg r7, r7, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg r1, r5, r20, 3
	addli r1, zero, 16
	addli r6, zero, 2
	addli r5, zero, 7
	dma_cfg r23, r20, r7, 4
	dma_cfg r23, r23, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r18
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r8, 10
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 101 9                         # parallel-rne.mlir:101:9
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
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r1, 10
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r20, 3
	dma_cfg r23, zero, r7, 4
	dma_cfg r23, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	xsignal r6, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r1,  -1264(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r5,  -620(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r1, r1, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r5, r5, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r1, -1264(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r5, -620(r30)
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	andi r1, r17, 1
	beq r1, zero, .LBB0_31
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r14, r14, 1
	addli r6, zero, 1
	addli r17, zero, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.s r9, r16, r14
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r7, zero, 155
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.s r1, r15, r14
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r5, zero, 255
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	lui r12, 6
	mod.s r7, r9, r7
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r5, r1, r5
	addli r1, r1, 1
	storeli.w r1, -2912(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r1, r7, 11
	addli r7, r9, 1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r5, r5, 11
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r7, -1888(r30)
	add.s r12, r1, r12
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r7, zero, 2
	beq r8, r7, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[7:8], r6
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r18
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r6, zero, 1
	bneq r18, r6, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r5, zero, 6
	addli r13, zero, 3
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[5:6], r[7:8], r5
	addli r8, zero, 6
	xwait r13, 0
	add.ul r[5:6], r[2:3], r[5:6]
	blt.s r10, r9, .LBB0_10
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r18, zero, 5
	addli r8, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r9, zero, 2
	addli r7, zero, 6
	lock zero, r18
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 4
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
	dma_cfg zero, zero, r18, 10
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
	addli r7, zero, 14
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 18
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 19
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 20
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 21
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 22
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 23
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
	addli r9, zero, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r9, 3
	addli r9, zero, 128
	dma_cfg r9, zero, r8, 4
	dma_cfg r9, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	addli r8, zero, 6
	dma_cfg zero, zero, zero, 8
	unlock r18
	j .LBB0_10
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r1, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r6, zero, 5
	xwait r1, 0
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 32
	ds_cfg r1, zero, 0
	addli r1, zero, 16
	ds_cfg r6, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 4
	shuffle_batch r5, r12, r6, 1
	unlock zero
	xsignal r19, 0
	xsignal r1, 0
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r9,  -620(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r1,  -1264(r30)
	addli r6, zero, 160
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r12, r9, r10
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r6, r1, r6
	addli r1, r1, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r13, r9, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r1, -1264(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r13, -620(r30)
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r13, zero, 7
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r1, r12, 13
	loadli.w r12,  -2924(r30)               # 4-byte Folded Reload
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r6, r6, 13
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	add.s r12, r1, r12
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r18, r13, .LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	addli r13, zero, 6
	bneq r18, r13, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r10, zero, 13
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r11, r30, -2920
	addli r23, zero, 7
	sll.d r[5:6], r[7:8], r10
	load.d r[7:8], 0(r11)                   # 8-byte Folded Reload
	xwait r23, 0
	add.ul r[5:6], r[7:8], r[5:6]
	addli r7, zero, 153
	blt.s r7, r9, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r13, zero, 5
	addli r8, zero, 1
	addli r9, zero, 2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r7, zero, 4
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r10, 10
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
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r7, 3
	addli r7, zero, 128
	dma_cfg r7, zero, r9, 4
	addli r7, zero, 32
	addli r9, zero, 256
	dma_cfg r9, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r7, 83
	addli r8, zero, 4
	addli r18, zero, 64
	addli r28, zero, 128
	addli r13, zero, 32
	addli r20, zero, 256
	addli r9, zero, 5
	addli r11, zero, 13
	ori r7, r7, 2112
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r8
	add.s r1, r1, r7
	addli r7, zero, 1
	dma_cfg r7, r7, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg r1, r5, r18, 3
	addli r6, zero, 2
	addli r5, zero, 6
	addli r1, zero, 8
	dma_cfg r28, r18, r6, 4
	dma_cfg r20, r20, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r8, 10
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 154
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r18, 3
	dma_cfg r28, zero, r6, 4
	dma_cfg r20, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r5, 0
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	j .LBB0_12
.LBB0_24:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 6
	addli r5, zero, 64
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	addli r1, zero, 2
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 32
	ds_cfg r5, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r5, zero, 13
	shuffle_coa r6, r12, r1, 2
	addli r1, zero, 7
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_12
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	andi r1, r17, 1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	addli r7, zero, 4
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	bneq r8, r7, .LBB0_28
# %bb.26:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r7, 0
	addli r7, zero, 8
	addli r9, zero, 1
	addli r12, zero, 32
	addli r13, zero, 64
	xwait r7, 0
	addli r7, zero, 16
	lock zero, r9
	mm_cfg r13, r12, r7, 0
	addli r7, zero, 2
	mm_cfg r7, r7, r9, 2
	beq r14, zero, .LBB0_29
# %bb.27:                               # %.preheader30
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r21, r5, r6, 8
	j .LBB0_30
.LBB0_28:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	bneq r1, zero, .LBB0_13
	j .LBB0_33
.LBB0_29:                               # %.preheader29
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r21, r5, r6, 8
.LBB0_30:                               # %.thread20.thread43
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r5, zero, 1
	unlock r5
	addli r5, zero, 5
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r5, 0
	bneq r1, zero, .LBB0_13
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 125 7 is_stmt 1               # parallel-rne.mlir:125:7
	addli r1, zero, 4
	bneq r8, r1, .LBB0_33
.LBB0_32:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -2940(r30)              # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	j .LBB0_36
.LBB0_33:                               # %.thread42
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	bneq r8, r1, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 131 7 is_stmt 1               # parallel-rne.mlir:131:7
	storeli.w r1, -2940(r30)                # 4-byte Folded Spill
	xwait r11, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -2940(r30)              # 4-byte Folded Spill
.LBB0_36:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r1, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r1
	addli r1, zero, 64
	sync_core
	zext_int2long r[14:15], r1
	addli r1, zero, 63
	zext_int2long r[16:17], r1
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	beq r8, zero, .LBB0_69
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r1, zero, 2
	beq r8, r1, .LBB0_100
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 1
	bneq r8, r1, .LBB0_131
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r3, r30, -2936
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r1, zero, 128
	addli r2, zero, 1
	xfence
	zext_int2long r[11:12], r1
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block98
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 173 9 is_stmt 1               # parallel-rne.mlir:173:9
	loadli.w r1,  -2920(r30)                # 4-byte Folded Reload
	addli r2, zero, 192
	zext_int2long r[11:12], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_130
.LBB0_41:                               # %vector.memcheck90
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -2920(r30)                # 4-byte Folded Spill
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	bneq r4, r21, .LBB0_48
# %bb.42:                               # %scalar.ph92.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_44
.LBB0_43:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	setlt.ul r6, r[1:2], r[16:17]
	.loc	1 189 13 is_stmt 1              # parallel-rne.mlir:189:13
	add.s r3, r4, r3
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r5, 0(r3)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	beq r6, zero, .LBB0_40
.LBB0_44:                               # %scalar.ph92
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[5:6], r[1:2], r[11:12]
	slli r3, r5, 2
	add.s r5, r21, r3
	loads.w r6, 0(r5)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r7, r6, r22
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r5, r24, r7
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r5, zero, .LBB0_46
# %bb.45:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r7, r27, r7
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r7, zero, .LBB0_43
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r6, r5
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r7, r27, r7
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r7, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r25
	and r5, r5, r26
	j .LBB0_43
.LBB0_48:                               # %vector.body94.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	addli r1, r30, -2936
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	j .LBB0_50
.LBB0_49:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	add.s r3, r4, r5
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	seteq.d r2, r[7:8], r[14:15]
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r1, 12(r3)
	stores.w r19, 8(r3)
	stores.w r13, 4(r3)
	stores.w r10, 0(r3)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	bneq r2, zero, .LBB0_40
.LBB0_50:                               # %vector.body94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[1:2], r[7:8], r[11:12]
	slli r5, r1, 2
	add.s r18, r21, r5
	loads.w r20, 12(r18)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r28, r20, r22
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r1, r24, r28
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r1, zero, .LBB0_52
# %bb.51:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r1, r20, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_50 Depth=3
	lui r1, 1024
	or r1, r20, r1
.LBB0_53:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r6, 8(r18)
	and r2, r6, r22
	setlt.u r3, r24, r2
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r3, zero, .LBB0_55
# %bb.54:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r6, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_50 Depth=3
	lui r3, 1024
	or r19, r6, r3
.LBB0_56:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r3, 4(r18)
	and r9, r3, r22
	setlt.u r10, r24, r9
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r10, zero, .LBB0_58
# %bb.57:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r3, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_50 Depth=3
	lui r10, 1024
	or r13, r3, r10
.LBB0_59:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r18, 0(r18)
	and r23, r18, r22
	setlt.u r10, r24, r23
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r10, zero, .LBB0_61
# %bb.60:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r18, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r23, r27, r23
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r23, zero, .LBB0_62
	j .LBB0_63
.LBB0_61:                               #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r18, r10
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r23, r27, r23
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r23, zero, .LBB0_63
.LBB0_62:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r18, 16
	andi r10, r10, 1
	add.s r10, r18, r10
	add.s r10, r10, r25
	and r10, r10, r26
.LBB0_63:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r9, r27, r9
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r9, zero, .LBB0_66
# %bb.64:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r27, r2
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r2, zero, .LBB0_67
.LBB0_65:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r27, r28
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r2, zero, .LBB0_49
	j .LBB0_68
.LBB0_66:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r3, 16
	andi r9, r9, 1
	add.s r3, r3, r9
	add.s r3, r3, r25
	and r13, r3, r26
	setlt.u r2, r27, r2
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r2, zero, .LBB0_65
.LBB0_67:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r25
	and r19, r2, r26
	setlt.u r2, r27, r28
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r2, zero, .LBB0_49
.LBB0_68:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r20, 16
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r25
	and r1, r1, r26
	j .LBB0_49
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	addli r2, zero, 1
	zext_int2long r[10:11], zero
	mfence { lm, sm, gm }
	j .LBB0_71
.LBB0_70:                               # %middle.block116
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 144 9                         # parallel-rne.mlir:144:9
	loadli.w r1,  -2920(r30)                # 4-byte Folded Reload
	addli.d r[10:11], r[14:15], 0
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_99
.LBB0_71:                               # %vector.memcheck108
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_74 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -2920(r30)                # 4-byte Folded Spill
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	bneq r4, r21, .LBB0_78
# %bb.72:                               # %scalar.ph110.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_74
.LBB0_73:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	setlt.ul r2, r[5:6], r[16:17]
	.loc	1 160 13 is_stmt 1              # parallel-rne.mlir:160:13
	add.s r1, r4, r1
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	addli.d r[5:6], r[5:6], 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r3, 0(r1)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r2, zero, .LBB0_70
.LBB0_74:                               # %scalar.ph110
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[5:6], r[10:11]
	slli r1, r1, 2
	add.s r2, r21, r1
	loads.w r2, 0(r2)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r7, r2, r22
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r3, r24, r7
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r3, zero, .LBB0_76
# %bb.75:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r7, r27, r7
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r7, zero, .LBB0_73
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r7, r27, r7
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r7, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r25
	and r3, r2, r26
	j .LBB0_73
.LBB0_78:                               # %vector.body112.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_80
.LBB0_79:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r3, r4, r3
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	seteq.d r1, r[7:8], r[14:15]
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r5, 12(r3)
	stores.w r20, 8(r3)
	stores.w r6, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	bneq r1, zero, .LBB0_70
.LBB0_80:                               # %vector.body112
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[1:2], r[7:8], r[10:11]
	slli r3, r1, 2
	add.s r19, r21, r3
	loads.w r12, 12(r19)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r1, r12, r22
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r2, r24, r1
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r2, zero, .LBB0_82
# %bb.81:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_83
.LBB0_82:                               #   in Loop: Header=BB0_80 Depth=3
	lui r2, 1024
	or r5, r12, r2
.LBB0_83:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r13, 8(r19)
	and r18, r13, r22
	setlt.u r2, r24, r18
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r2, zero, .LBB0_85
# %bb.84:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_80 Depth=3
	lui r2, 1024
	or r20, r13, r2
.LBB0_86:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r28, 4(r19)
	and r9, r28, r22
	setlt.u r2, r24, r9
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r2, zero, .LBB0_88
# %bb.87:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r28, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_80 Depth=3
	lui r2, 1024
	or r6, r28, r2
.LBB0_89:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r19, 0(r19)
	and r23, r19, r22
	setlt.u r2, r24, r23
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r2, zero, .LBB0_91
# %bb.90:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r23, r27, r23
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r23, zero, .LBB0_92
	j .LBB0_93
.LBB0_91:                               #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r19, r2
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r23, r27, r23
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r23, zero, .LBB0_93
.LBB0_92:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r25
	and r2, r2, r26
.LBB0_93:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	setlt.u r9, r27, r9
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r9, zero, .LBB0_96
# %bb.94:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r9, zero, .LBB0_97
.LBB0_95:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r1
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_79
	j .LBB0_98
.LBB0_96:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r28, 16
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r25
	and r6, r6, r26
	setlt.u r9, r27, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r9, zero, .LBB0_95
.LBB0_97:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r13, 16
	andi r9, r9, 1
	add.s r9, r13, r9
	add.s r9, r9, r25
	and r20, r9, r26
	setlt.u r1, r27, r1
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r1, zero, .LBB0_79
.LBB0_98:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r25
	and r5, r1, r26
	j .LBB0_79
.LBB0_99:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r1, zero, 2
	bneq r8, r1, .LBB0_38
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 194 7 is_stmt 1               # parallel-rne.mlir:194:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_102
.LBB0_101:                              # %middle.block107
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 202 9                         # parallel-rne.mlir:202:9
	loadli.w r1,  -2920(r30)                # 4-byte Folded Reload
	addli r2, zero, 320
	zext_int2long r[10:11], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_130
.LBB0_102:                              # %vector.memcheck99
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_105 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -2920(r30)                # 4-byte Folded Spill
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	bneq r4, r21, .LBB0_109
# %bb.103:                              # %scalar.ph101.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_105
.LBB0_104:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	setlt.ul r2, r[5:6], r[16:17]
	.loc	1 218 13 is_stmt 1              # parallel-rne.mlir:218:13
	add.s r1, r4, r1
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	addli.d r[5:6], r[5:6], 1
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r3, 0(r1)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	beq r2, zero, .LBB0_101
.LBB0_105:                              # %scalar.ph101
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[1:2], r[5:6], r[10:11]
	slli r1, r1, 2
	add.s r2, r21, r1
	loads.w r2, 0(r2)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r7, r2, r22
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r3, r24, r7
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r3, zero, .LBB0_107
# %bb.106:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r7, r27, r7
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r7, zero, .LBB0_104
	j .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r7, r27, r7
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r7, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r25
	and r3, r2, r26
	j .LBB0_104
.LBB0_109:                              # %vector.body103.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_111
.LBB0_110:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	add.s r3, r4, r3
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	seteq.d r1, r[7:8], r[14:15]
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r5, 12(r3)
	stores.w r6, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	bneq r1, zero, .LBB0_101
.LBB0_111:                              # %vector.body103
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[1:2], r[7:8], r[10:11]
	slli r3, r1, 2
	add.s r18, r21, r3
	loads.w r12, 12(r18)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r1, r12, r22
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r2, r24, r1
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_113
# %bb.112:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_111 Depth=3
	lui r2, 1024
	or r5, r12, r2
.LBB0_114:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r20, 8(r18)
	and r19, r20, r22
	setlt.u r2, r24, r19
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_116
# %bb.115:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r20, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_111 Depth=3
	lui r2, 1024
	or r6, r20, r2
.LBB0_117:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r28, 4(r18)
	and r9, r28, r22
	setlt.u r2, r24, r9
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_119
# %bb.118:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r28, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_111 Depth=3
	lui r2, 1024
	or r13, r28, r2
.LBB0_120:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r18, 0(r18)
	and r23, r18, r22
	setlt.u r2, r24, r23
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_122
# %bb.121:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r18, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r23, r27, r23
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r23, zero, .LBB0_123
	j .LBB0_124
.LBB0_122:                              #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r18, r2
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r23, r27, r23
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r23, zero, .LBB0_124
.LBB0_123:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r25
	and r2, r2, r26
.LBB0_124:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	setlt.u r9, r27, r9
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r9, zero, .LBB0_127
# %bb.125:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r19
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r9, zero, .LBB0_128
.LBB0_126:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r1
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r1, zero, .LBB0_110
	j .LBB0_129
.LBB0_127:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r25
	and r13, r9, r26
	setlt.u r9, r27, r19
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r9, zero, .LBB0_126
.LBB0_128:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r20, 16
	andi r6, r6, 1
	add.s r6, r20, r6
	add.s r6, r6, r25
	and r6, r6, r26
	setlt.u r1, r27, r1
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r1, zero, .LBB0_110
.LBB0_129:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r25
	and r5, r1, r26
	j .LBB0_110
.LBB0_130:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_131:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	loadli.w r1,  -2940(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_166
# %bb.132:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	addli r1, zero, 4
	beq r8, r1, .LBB0_197
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	addli r1, zero, 7
	beq r8, r1, .LBB0_228
.LBB0_134:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	beq r8, r1, .LBB0_258
# %bb.135:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	bneq r8, r1, .LBB0_289
# %bb.136:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 640
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_138
.LBB0_137:                              # %middle.block
                                        #   in Loop: Header=BB0_138 Depth=2
	.loc	1 289 9 is_stmt 1               # parallel-rne.mlir:289:9
	loadli.w r1,  -2920(r30)                # 4-byte Folded Reload
	addli r2, zero, 704
	zext_int2long r[10:11], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_288
.LBB0_138:                              # %vector.memcheck
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_141 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -2920(r30)                # 4-byte Folded Spill
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	bneq r4, r21, .LBB0_145
# %bb.139:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_138 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_141
.LBB0_140:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	setlt.ul r2, r[5:6], r[16:17]
	.loc	1 305 13 is_stmt 1              # parallel-rne.mlir:305:13
	add.s r1, r4, r1
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	addli.d r[5:6], r[5:6], 1
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r3, 0(r1)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	beq r2, zero, .LBB0_137
.LBB0_141:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[1:2], r[5:6], r[10:11]
	slli r1, r1, 2
	add.s r2, r21, r1
	loads.w r2, 0(r2)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r7, r2, r22
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r3, r24, r7
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r3, zero, .LBB0_143
# %bb.142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r7, r27, r7
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r7, zero, .LBB0_140
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r7, r27, r7
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r7, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r25
	and r3, r2, r26
	j .LBB0_140
.LBB0_145:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_138 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_147
.LBB0_146:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	add.s r3, r4, r3
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	seteq.d r1, r[7:8], r[14:15]
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r5, 12(r3)
	stores.w r6, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	bneq r1, zero, .LBB0_137
.LBB0_147:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[1:2], r[7:8], r[10:11]
	slli r3, r1, 2
	add.s r18, r21, r3
	loads.w r1, 12(r18)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r12, r1, r22
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r2, r24, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_149
# %bb.148:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r1, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_147 Depth=3
	lui r2, 1024
	or r5, r1, r2
.LBB0_150:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r19, 8(r18)
	and r20, r19, r22
	setlt.u r2, r24, r20
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_147 Depth=3
	lui r2, 1024
	or r6, r19, r2
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r28, 4(r18)
	and r9, r28, r22
	setlt.u r2, r24, r9
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r28, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_147 Depth=3
	lui r2, 1024
	or r13, r28, r2
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r18, 0(r18)
	and r23, r18, r22
	setlt.u r2, r24, r23
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_162
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r18, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r23, r27, r23
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r23, zero, .LBB0_159
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r25
	and r2, r2, r26
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	setlt.u r9, r27, r9
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r9, zero, .LBB0_163
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r20
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r9, zero, .LBB0_164
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r9, zero, .LBB0_146
	j .LBB0_165
.LBB0_162:                              #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r18, r2
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r23, r27, r23
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r23, zero, .LBB0_158
	j .LBB0_159
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r25
	and r13, r9, r26
	setlt.u r9, r27, r20
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r9, zero, .LBB0_161
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r25
	and r6, r6, r26
	setlt.u r9, r27, r12
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r9, zero, .LBB0_146
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r25
	and r5, r1, r26
	j .LBB0_146
.LBB0_166:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 384
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_168
.LBB0_167:                              # %middle.block89
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 231 9                         # parallel-rne.mlir:231:9
	loadli.w r1,  -2920(r30)                # 4-byte Folded Reload
	addli r2, zero, 448
	zext_int2long r[10:11], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_196
.LBB0_168:                              # %vector.memcheck81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_171 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -2920(r30)                # 4-byte Folded Spill
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	bneq r4, r21, .LBB0_175
# %bb.169:                              # %scalar.ph83.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_171
.LBB0_170:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	setlt.ul r2, r[5:6], r[16:17]
	.loc	1 247 13 is_stmt 1              # parallel-rne.mlir:247:13
	add.s r1, r4, r1
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	addli.d r[5:6], r[5:6], 1
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	stores.w r3, 0(r1)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	beq r2, zero, .LBB0_167
.LBB0_171:                              # %scalar.ph83
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[1:2], r[5:6], r[10:11]
	slli r1, r1, 2
	add.s r2, r21, r1
	loads.w r2, 0(r2)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r7, r2, r22
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r3, r24, r7
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r3, zero, .LBB0_173
# %bb.172:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r7, r27, r7
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r7, zero, .LBB0_170
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r7, r27, r7
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r7, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r25
	and r3, r2, r26
	j .LBB0_170
.LBB0_175:                              # %vector.body85.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	add.s r3, r4, r3
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	seteq.d r1, r[7:8], r[14:15]
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	stores.w r5, 12(r3)
	stores.w r6, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	bneq r1, zero, .LBB0_167
.LBB0_177:                              # %vector.body85
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[1:2], r[7:8], r[10:11]
	slli r3, r1, 2
	add.s r18, r21, r3
	loads.w r1, 12(r18)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r12, r1, r22
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r2, r24, r12
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r2, zero, .LBB0_179
# %bb.178:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r1, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_177 Depth=3
	lui r2, 1024
	or r5, r1, r2
.LBB0_180:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r19, 8(r18)
	and r20, r19, r22
	setlt.u r2, r24, r20
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r2, zero, .LBB0_182
# %bb.181:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_177 Depth=3
	lui r2, 1024
	or r6, r19, r2
.LBB0_183:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r28, 4(r18)
	and r9, r28, r22
	setlt.u r2, r24, r9
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r2, zero, .LBB0_185
# %bb.184:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r28, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_177 Depth=3
	lui r2, 1024
	or r13, r28, r2
.LBB0_186:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r18, 0(r18)
	and r23, r18, r22
	setlt.u r2, r24, r23
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r2, zero, .LBB0_192
# %bb.187:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r18, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r23, r27, r23
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r23, zero, .LBB0_189
.LBB0_188:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r25
	and r2, r2, r26
.LBB0_189:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	setlt.u r9, r27, r9
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r9, zero, .LBB0_193
# %bb.190:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r20
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r9, zero, .LBB0_194
.LBB0_191:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r9, zero, .LBB0_176
	j .LBB0_195
.LBB0_192:                              #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r18, r2
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r23, r27, r23
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r23, zero, .LBB0_188
	j .LBB0_189
.LBB0_193:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r25
	and r13, r9, r26
	setlt.u r9, r27, r20
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r9, zero, .LBB0_191
.LBB0_194:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r25
	and r6, r6, r26
	setlt.u r9, r27, r12
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r9, zero, .LBB0_176
.LBB0_195:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r25
	and r5, r1, r26
	j .LBB0_176
.LBB0_196:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	mfence { sm }
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	addli r1, zero, 4
	bneq r8, r1, .LBB0_133
.LBB0_197:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 512
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_199
.LBB0_198:                              # %middle.block80
                                        #   in Loop: Header=BB0_199 Depth=2
	.loc	1 260 9 is_stmt 1               # parallel-rne.mlir:260:9
	loadli.w r1,  -2920(r30)                # 4-byte Folded Reload
	addli r2, zero, 576
	zext_int2long r[10:11], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_227
.LBB0_199:                              # %vector.memcheck72
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_202 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -2920(r30)                # 4-byte Folded Spill
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	bneq r4, r21, .LBB0_206
# %bb.200:                              # %scalar.ph74.preheader
                                        #   in Loop: Header=BB0_199 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_202
.LBB0_201:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	setlt.ul r2, r[5:6], r[16:17]
	.loc	1 276 13 is_stmt 1              # parallel-rne.mlir:276:13
	add.s r1, r4, r1
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	addli.d r[5:6], r[5:6], 1
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	stores.w r3, 0(r1)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	beq r2, zero, .LBB0_198
.LBB0_202:                              # %scalar.ph74
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_199 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[1:2], r[5:6], r[10:11]
	slli r1, r1, 2
	add.s r2, r21, r1
	loads.w r2, 0(r2)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r7, r2, r22
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r3, r24, r7
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r3, zero, .LBB0_204
# %bb.203:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r7, r27, r7
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r7, zero, .LBB0_201
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r7, r27, r7
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r7, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r25
	and r3, r2, r26
	j .LBB0_201
.LBB0_206:                              # %vector.body76.preheader
                                        #   in Loop: Header=BB0_199 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_208
.LBB0_207:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	add.s r3, r4, r3
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	seteq.d r1, r[7:8], r[14:15]
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	stores.w r5, 12(r3)
	stores.w r6, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	bneq r1, zero, .LBB0_198
.LBB0_208:                              # %vector.body76
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_199 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[1:2], r[7:8], r[10:11]
	slli r3, r1, 2
	add.s r18, r21, r3
	loads.w r1, 12(r18)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r12, r1, r22
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r2, r24, r12
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_210
# %bb.209:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r1, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_208 Depth=3
	lui r2, 1024
	or r5, r1, r2
.LBB0_211:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r19, 8(r18)
	and r20, r19, r22
	setlt.u r2, r24, r20
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_213
# %bb.212:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_208 Depth=3
	lui r2, 1024
	or r6, r19, r2
.LBB0_214:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r28, 4(r18)
	and r9, r28, r22
	setlt.u r2, r24, r9
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_216
# %bb.215:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r28, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_208 Depth=3
	lui r2, 1024
	or r13, r28, r2
.LBB0_217:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r18, 0(r18)
	and r23, r18, r22
	setlt.u r2, r24, r23
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_223
# %bb.218:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r18, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r23, r27, r23
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r23, zero, .LBB0_220
.LBB0_219:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r25
	and r2, r2, r26
.LBB0_220:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	setlt.u r9, r27, r9
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r9, zero, .LBB0_224
# %bb.221:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r20
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r9, zero, .LBB0_225
.LBB0_222:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r9, zero, .LBB0_207
	j .LBB0_226
.LBB0_223:                              #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r18, r2
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r23, r27, r23
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r23, zero, .LBB0_219
	j .LBB0_220
.LBB0_224:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r25
	and r13, r9, r26
	setlt.u r9, r27, r20
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r9, zero, .LBB0_222
.LBB0_225:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r25
	and r6, r6, r26
	setlt.u r9, r27, r12
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r9, zero, .LBB0_207
.LBB0_226:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r25
	and r5, r1, r26
	j .LBB0_207
.LBB0_227:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	mfence { sm }
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	addli r1, zero, 7
	bneq r8, r1, .LBB0_134
.LBB0_228:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 896
	.loc	1 339 7 is_stmt 1               # parallel-rne.mlir:339:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_230
.LBB0_229:                              # %middle.block71
                                        #   in Loop: Header=BB0_230 Depth=2
	.loc	1 347 9                         # parallel-rne.mlir:347:9
	loadli.w r1,  -2920(r30)                # 4-byte Folded Reload
	addli r2, zero, 960
	zext_int2long r[10:11], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_288
.LBB0_230:                              # %vector.memcheck63
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_233 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -2920(r30)                # 4-byte Folded Spill
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	bneq r4, r21, .LBB0_237
# %bb.231:                              # %scalar.ph65.preheader
                                        #   in Loop: Header=BB0_230 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_233
.LBB0_232:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	setlt.ul r2, r[5:6], r[16:17]
	.loc	1 363 13 is_stmt 1              # parallel-rne.mlir:363:13
	add.s r1, r4, r1
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	addli.d r[5:6], r[5:6], 1
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	stores.w r3, 0(r1)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	beq r2, zero, .LBB0_229
.LBB0_233:                              # %scalar.ph65
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_230 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[1:2], r[5:6], r[10:11]
	slli r1, r1, 2
	add.s r2, r21, r1
	loads.w r2, 0(r2)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r7, r2, r22
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r3, r24, r7
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r3, zero, .LBB0_235
# %bb.234:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r7, r27, r7
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r7, zero, .LBB0_232
	j .LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r7, r27, r7
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r7, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r25
	and r3, r2, r26
	j .LBB0_232
.LBB0_237:                              # %vector.body67.preheader
                                        #   in Loop: Header=BB0_230 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_239
.LBB0_238:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	add.s r3, r4, r3
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	seteq.d r1, r[7:8], r[14:15]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	stores.w r5, 12(r3)
	stores.w r6, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	bneq r1, zero, .LBB0_229
.LBB0_239:                              # %vector.body67
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_230 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[1:2], r[7:8], r[10:11]
	slli r3, r1, 2
	add.s r18, r21, r3
	loads.w r1, 12(r18)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r12, r1, r22
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r2, r24, r12
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r2, zero, .LBB0_241
# %bb.240:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r1, 0
	j .LBB0_242
.LBB0_241:                              #   in Loop: Header=BB0_239 Depth=3
	lui r2, 1024
	or r5, r1, r2
.LBB0_242:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r19, 8(r18)
	and r20, r19, r22
	setlt.u r2, r24, r20
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r2, zero, .LBB0_244
# %bb.243:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_239 Depth=3
	lui r2, 1024
	or r6, r19, r2
.LBB0_245:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r28, 4(r18)
	and r9, r28, r22
	setlt.u r2, r24, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r2, zero, .LBB0_247
# %bb.246:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r28, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_239 Depth=3
	lui r2, 1024
	or r13, r28, r2
.LBB0_248:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r18, 0(r18)
	and r23, r18, r22
	setlt.u r2, r24, r23
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r2, zero, .LBB0_250
# %bb.249:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r18, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r23, r27, r23
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r23, zero, .LBB0_251
	j .LBB0_252
.LBB0_250:                              #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r18, r2
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r23, r27, r23
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r23, zero, .LBB0_252
.LBB0_251:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r25
	and r2, r2, r26
.LBB0_252:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	setlt.u r9, r27, r9
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r9, zero, .LBB0_255
# %bb.253:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r20
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r9, zero, .LBB0_256
.LBB0_254:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r9, zero, .LBB0_238
	j .LBB0_257
.LBB0_255:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r25
	and r13, r9, r26
	setlt.u r9, r27, r20
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r9, zero, .LBB0_254
.LBB0_256:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r25
	and r6, r6, r26
	setlt.u r9, r27, r12
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r9, zero, .LBB0_238
.LBB0_257:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r25
	and r5, r1, r26
	j .LBB0_238
.LBB0_258:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 768
	.loc	1 310 7 is_stmt 1               # parallel-rne.mlir:310:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_260
.LBB0_259:                              # %middle.block62
                                        #   in Loop: Header=BB0_260 Depth=2
	.loc	1 318 9                         # parallel-rne.mlir:318:9
	loadli.w r1,  -2920(r30)                # 4-byte Folded Reload
	addli r2, zero, 832
	zext_int2long r[10:11], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_288
.LBB0_260:                              # %vector.memcheck54
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_263 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r2, -2920(r30)                # 4-byte Folded Spill
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	bneq r4, r21, .LBB0_267
# %bb.261:                              # %scalar.ph56.preheader
                                        #   in Loop: Header=BB0_260 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[5:6], zero
	j .LBB0_263
.LBB0_262:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	setlt.ul r2, r[5:6], r[16:17]
	.loc	1 334 13 is_stmt 1              # parallel-rne.mlir:334:13
	add.s r1, r4, r1
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	addli.d r[5:6], r[5:6], 1
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r3, 0(r1)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	beq r2, zero, .LBB0_259
.LBB0_263:                              # %scalar.ph56
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[1:2], r[5:6], r[10:11]
	slli r1, r1, 2
	add.s r2, r21, r1
	loads.w r2, 0(r2)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r7, r2, r22
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r3, r24, r7
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r3, zero, .LBB0_265
# %bb.264:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, r2, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r7, r27, r7
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r7, zero, .LBB0_262
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 1024
	or r3, r2, r3
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r7, r27, r7
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r7, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r25
	and r3, r2, r26
	j .LBB0_262
.LBB0_267:                              # %vector.body58.preheader
                                        #   in Loop: Header=BB0_260 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_269
.LBB0_268:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	add.s r3, r4, r3
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	seteq.d r1, r[7:8], r[14:15]
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r5, 12(r3)
	stores.w r6, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	bneq r1, zero, .LBB0_259
.LBB0_269:                              # %vector.body58
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[1:2], r[7:8], r[10:11]
	slli r3, r1, 2
	add.s r18, r21, r3
	loads.w r1, 12(r18)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r12, r1, r22
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r2, r24, r12
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_271
# %bb.270:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r1, 0
	j .LBB0_272
.LBB0_271:                              #   in Loop: Header=BB0_269 Depth=3
	lui r2, 1024
	or r5, r1, r2
.LBB0_272:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r19, 8(r18)
	and r20, r19, r22
	setlt.u r2, r24, r20
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_274
# %bb.273:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_269 Depth=3
	lui r2, 1024
	or r6, r19, r2
.LBB0_275:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r28, 4(r18)
	and r9, r28, r22
	setlt.u r2, r24, r9
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_277
# %bb.276:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r28, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_269 Depth=3
	lui r2, 1024
	or r13, r28, r2
.LBB0_278:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r18, 0(r18)
	and r23, r18, r22
	setlt.u r2, r24, r23
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_280
# %bb.279:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r18, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r23, r27, r23
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r23, zero, .LBB0_281
	j .LBB0_282
.LBB0_280:                              #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r18, r2
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r23, r27, r23
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r23, zero, .LBB0_282
.LBB0_281:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r18, 16
	andi r2, r2, 1
	add.s r2, r18, r2
	add.s r2, r2, r25
	and r2, r2, r26
.LBB0_282:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	setlt.u r9, r27, r9
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r9, zero, .LBB0_285
# %bb.283:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r20
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r9, zero, .LBB0_286
.LBB0_284:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r9, zero, .LBB0_268
	j .LBB0_287
.LBB0_285:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r28, 16
	andi r9, r9, 1
	add.s r9, r28, r9
	add.s r9, r9, r25
	and r13, r9, r26
	setlt.u r9, r27, r20
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r9, zero, .LBB0_284
.LBB0_286:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r25
	and r6, r6, r26
	setlt.u r9, r27, r12
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r9, zero, .LBB0_268
.LBB0_287:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r1, 16
	andi r5, r5, 1
	add.s r1, r1, r5
	add.s r1, r1, r25
	and r5, r1, r26
	j .LBB0_268
.LBB0_288:                              # %.sink.split48
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_289:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	loadli.w r1,  -2940(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.290:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r16, zero, 4
	addli r17, zero, 13
	.loc	1 386 7 is_stmt 1               # parallel-rne.mlir:386:7
	bneq r8, zero, .LBB0_6
# %bb.291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	loadli.w r1,  -2984(r30)                # 4-byte Folded Reload
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	loadli.w r3,  -2980(r30)                # 4-byte Folded Reload
	zext_int2long r[9:10], zero
	addli r13, zero, 1
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	zext_int2long r[1:2], r1
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	sext_int2long r[7:8], r3
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	addli r3, r30, -2976
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	min.ul r[5:6], r[1:2], r[14:15]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[9:10], r[7:8], r[9:10]
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	addli.d r[5:6], r[5:6], 64
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	max.ul r[5:6], r[5:6], r[1:2]
	sub.sl r[1:2], r[5:6], r[1:2]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	addli.d r[5:6], r[9:10], 16
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	load.d r[9:10], 0(r3)                   # 8-byte Folded Reload
	addli r3, r30, -2968
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	max.sl r[5:6], r[5:6], r[7:8]
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	min.ul r[1:2], r[1:2], r[14:15]
	addli r14, zero, 12
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	sub.sl r[5:6], r[5:6], r[7:8]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	load.d r[7:8], 16(r30)
	sll.d r[9:10], r[9:10], r14
	add.ul r[7:8], r[7:8], r[9:10]
	load.d r[9:10], 0(r3)                   # 8-byte Folded Reload
	addli r3, zero, 16
	xwait r14, 0
	zext_int2long r[11:12], r3
	ori r3, r4, 64
	sll.d r[9:10], r[9:10], r13
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.sl r[4:5], r[5:6], r[11:12]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	add.ul r[7:8], r[7:8], r[9:10]
	addli r9, zero, 5
	addli r10, zero, 64
	lock zero, r9
	dma_cfg r13, r13, zero, 0
	dma_cfg zero, r13, zero, 1
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, r3, r10, 3
	addli r3, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r8
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	srli r3, r3, 5
	andi r1, r1, 62
	dma_cfg r10, r2, r3, 4
	addli r2, zero, 256
	dma_cfg r2, r2, r4, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r17, 0
	j .LBB0_6
.LBB0_292:                              # %._crit_edge
	.loc	1 388 5                         # parallel-rne.mlir:388:5
	xsignal zero, 0
	bneq r8, zero, .LBB0_294
# %bb.293:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 388 5                         # parallel-rne.mlir:388:5
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
.LBB0_294:
	.loc	1 389 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:389:5
	addli sp, sp, 2992
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
	.long	3056                            # 0xbf0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-p796h234" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
