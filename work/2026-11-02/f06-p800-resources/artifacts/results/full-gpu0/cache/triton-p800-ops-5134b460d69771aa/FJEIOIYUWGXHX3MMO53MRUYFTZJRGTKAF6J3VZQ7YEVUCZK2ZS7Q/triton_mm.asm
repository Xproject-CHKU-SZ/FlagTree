	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-fvhg4wks" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3472
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 5 prologue_end             # parallel-rne.mlir:29:5
	core_id r9
	addli r30, sp, 3408
	xsignal_mode_cfg r1
	beq r9, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	addli r3, zero, 3
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 13
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 5
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 9
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 31 10 is_stmt 1               # parallel-rne.mlir:31:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 30 10                         # parallel-rne.mlir:30:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	storeli.w zero, -768(r30)
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -1792(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -2560(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -3332(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	mul.s r1, r2, r1
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r3, r1, r3
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r2, -1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 42 11                         # parallel-rne.mlir:42:11
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
	.loc	1 43 11                         # parallel-rne.mlir:43:11
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
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	.loc	1 43 11                         # parallel-rne.mlir:43:11
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
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	storeli.w r4, -1888(r30)
	storeli.w r4, -1884(r30)
	storeli.w r4, -1880(r30)
	storeli.w r4, -1876(r30)
	storeli.w r4, -1872(r30)
	storeli.w r4, -1868(r30)
	storeli.w r4, -1864(r30)
	storeli.w r4, -1860(r30)
	storeli.w r4, -1856(r30)
	storeli.w r4, -1852(r30)
	storeli.w r4, -1848(r30)
	storeli.w r4, -1844(r30)
	storeli.w r4, -1840(r30)
	storeli.w r4, -1836(r30)
	storeli.w r4, -1832(r30)
	storeli.w r4, -1828(r30)
	storeli.w r4, -1824(r30)
	storeli.w r4, -1820(r30)
	storeli.w r4, -1816(r30)
	storeli.w r4, -1812(r30)
	storeli.w r4, -1808(r30)
	storeli.w r4, -1804(r30)
	storeli.w r4, -1800(r30)
	storeli.w r4, -1796(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	storeli.w r4, -3068(r30)
	storeli.w r4, -3064(r30)
	storeli.w r4, -3060(r30)
	storeli.w r4, -3056(r30)
	storeli.w r4, -3052(r30)
	storeli.w r4, -3048(r30)
	storeli.w r4, -3044(r30)
	storeli.w r4, -3040(r30)
	storeli.w r4, -3036(r30)
	storeli.w r4, -3032(r30)
	storeli.w r4, -3028(r30)
	storeli.w r4, -3024(r30)
	storeli.w r4, -3020(r30)
	storeli.w r4, -3016(r30)
	storeli.w r4, -3012(r30)
	storeli.w r4, -3008(r30)
	storeli.w r4, -3004(r30)
	storeli.w r4, -3000(r30)
	storeli.w r4, -2996(r30)
	storeli.w r4, -2992(r30)
	storeli.w r4, -2988(r30)
	storeli.w r4, -2984(r30)
	storeli.w r4, -2980(r30)
	storeli.w r4, -2976(r30)
	storeli.w r4, -2972(r30)
	storeli.w r4, -2968(r30)
	storeli.w r4, -2964(r30)
	storeli.w r4, -2960(r30)
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
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r1, r2, r6
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	fmac.s r2, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	min.s r3, r2, r3
	.loc	1 48 5                          # parallel-rne.mlir:48:5
	ble.s r3, r1, .LBB0_278
# %bb.4:                                # %.lr.ph
	.loc	1 40 11                         # parallel-rne.mlir:40:11
	sext_int2long r[6:7], r1
	lui r1, 524287
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 40 11                         # parallel-rne.mlir:40:11
	addli r4, r30, -3408
	lui r27, 522240
	addli r17, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	ori r25, r1, 4095
	lui r1, 7
	lui r2, 522239
	addli r4, zero, 4
	ori r28, r1, 4095
	lui r1, 1048560
	ori r3, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 359 7 is_stmt 1               # parallel-rne.mlir:359:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	addli r2, zero, 12
	xsignal r2, 0
	loadli.w r17,  -3372(r30)               # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, r30, -3368
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	.loc	1 48 5 is_stmt 1                # parallel-rne.mlir:48:5
	addli r2, r30, -3408
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r2, r[6:7], r[4:5]
	addli r4, zero, 4
	beq r2, zero, .LBB0_278
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_78 Depth 3
                                        #       Child Loop BB0_73 Depth 3
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_100 Depth 2
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #     Child Loop BB0_162 Depth 2
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_164 Depth 3
                                        #     Child Loop BB0_191 Depth 2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_193 Depth 3
                                        #     Child Loop BB0_134 Depth 2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_136 Depth 3
                                        #     Child Loop BB0_248 Depth 2
                                        #       Child Loop BB0_255 Depth 3
                                        #       Child Loop BB0_250 Depth 3
                                        #     Child Loop BB0_220 Depth 2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_222 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r14, zero, 14
	.loc	1 75 7 is_stmt 1                # parallel-rne.mlir:75:7
	bneq r9, r4, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	addli r4, r30, -3368
	addli r9, zero, 5
	addli r8, zero, 8
	addli r24, zero, 1
	.loc	1 76 7 is_stmt 1                # parallel-rne.mlir:76:7
	load.d r[10:11], 8(r30)
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	loadli.w r23,  -2560(r30)
	addli r16, zero, 0
	store.d r[6:7], 0(r4)                   # 8-byte Folded Spill
	loadli.w r4,  28(r30)
	mod.s r5, r17, r9
	addli r17, r17, 1
	div.s r2, r6, r2
	addli r7, zero, 1
	storeli.w r17, -3372(r30)               # 4-byte Folded Spill
	.loc	1 93 15                         # parallel-rne.mlir:93:15
	loadli.w r17,  -3332(r30)
	div.s r2, r2, r4
	addli r4, zero, 64
	div.s r4, r2, r4
	slli r6, r4, 3
	slli r4, r4, 6
	sub.s r7, r7, r6
	sub.s r4, r2, r4
	min.s r7, r7, r8
	div.s r4, r4, r7
	mod.s r2, r2, r7
	slli r7, r5, 12
	lui r5, 5
	add.s r15, r7, r5
	slli r5, r4, 5
	add.s r2, r6, r2
	storeli.w r5, -3400(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r4
	slli r6, r2, 5
	sll.d r[4:5], r[4:5], r9
	zext_int2long r[8:9], r2
	addli r2, r30, -3384
	storeli.w r6, -3396(r30)                # 4-byte Folded Spill
	addli r6, r30, -3392
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	sll.d r[4:5], r[4:5], r24
	addli r2, zero, 12
	store.d r[8:9], 0(r6)                   # 8-byte Folded Spill
	addli r6, zero, 0
	add.ul r[21:22], r[10:11], r[4:5]
	load.d r[4:5], 0(r30)
	sll.d r[8:9], r[8:9], r2
	add.ul r[18:19], r[4:5], r[8:9]
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r8, 10
	addli r10, zero, 4
	addli r9, zero, 1
	addli r20, zero, 128
	addli r12, zero, 32
	ori r8, r8, 64
	.loc	1 99 9 is_stmt 1                # parallel-rne.mlir:99:9
	lock zero, r10
	dma_cfg r9, r9, zero, 0
	add.s r2, r2, r8
	addli r8, zero, 64
	dma_cfg zero, r6, zero, 2
	dma_cfg r2, r5, r8, 3
	addli r5, zero, 5
	addli r6, zero, 2
	addli r2, zero, 7
	dma_cfg r20, r8, r9, 4
	dma_cfg r20, r20, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r11, 10
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
	addli r2, zero, 15
	dma_cfg zero, zero, r14, 10
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
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r8, 3
	dma_cfg r20, zero, r9, 4
	dma_cfg r20, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	.loc	1 99 9                          # parallel-rne.mlir:99:9
	dma_cfg zero, zero, zero, 8
	unlock r5
	xsignal r6, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	loadli.w r2,  -1792(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r4,  -768(r30)
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r2, r2, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r4, r4, 1
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	storeli.w r2, -1792(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r4, -768(r30)
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	andi r2, r24, 1
	bneq r2, zero, .LBB0_24
	j .LBB0_31
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 77 15                         # parallel-rne.mlir:77:15
	add.s r2, r17, r16
	.loc	1 93 15                         # parallel-rne.mlir:93:15
	addli r4, zero, 192
	.loc	1 77 15                         # parallel-rne.mlir:77:15
	add.s r10, r23, r16
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r5, zero, 191
	.loc	1 93 15                         # parallel-rne.mlir:93:15
	mod.s r4, r2, r4
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r8, r10, r5
	.loc	1 93 15                         # parallel-rne.mlir:93:15
	addli r2, r2, 1
	storeli.w r2, -3332(r30)
	slli r5, r4, 12
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r2, r8, 12
	lui r4, 10
	addli r8, r10, 1
	storeli.w r8, -2560(r30)
	add.s r4, r2, r4
	.loc	1 99 9                          # parallel-rne.mlir:99:9
	addli r8, zero, 2
	beq r9, r8, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[8:9], r6
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r12
	.loc	1 99 9                          # parallel-rne.mlir:99:9
	addli r6, zero, 1
	bneq r12, r6, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 6
	addli r13, zero, 3
	.loc	1 99 9                          # parallel-rne.mlir:99:9
	sll.d r[5:6], r[8:9], r11
	addli r8, zero, 190
	xwait r13, 0
	add.ul r[5:6], r[18:19], r[5:6]
	blt.s r8, r10, .LBB0_10
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 5
	addli r9, zero, 1
	.loc	1 99 9                          # parallel-rne.mlir:99:9
	addli r8, zero, 2
	addli r12, zero, 128
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 4
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 7
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
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
	addli r8, zero, 15
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
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
	addli r8, zero, 64
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r8, 3
	addli r8, zero, 32
	dma_cfg r12, zero, r9, 4
	dma_cfg r12, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_10
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r6, zero, 2
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	addli r2, zero, 5
	xwait r6, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r6, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r5, r4, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	loadli.w r2,  -1792(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r10,  -768(r30)
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r4, zero, 255
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r6, zero, 191
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	mod.s r4, r2, r4
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r11, r10, r6
	.loc	1 110 15                        # parallel-rne.mlir:110:15
	addli r2, r2, 1
	storeli.w r2, -1792(r30)
	slli r6, r4, 12
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r2, r11, 12
	lui r4, 201
	addli r11, r10, 1
	storeli.w r11, -768(r30)
	add.s r4, r2, r4
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	addli r11, zero, 7
	beq r12, r11, .LBB0_22
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=2
	addli r11, zero, 6
	bneq r12, r11, .LBB0_25
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r13, zero, 14
	addli r12, zero, 7
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	sll.d r[5:6], r[8:9], r13
	addli r8, zero, 190
	xwait r12, 0
	add.ul r[5:6], r[21:22], r[5:6]
	blt.s r8, r10, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 5
	addli r9, zero, 1
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	addli r8, zero, 2
	addli r11, zero, 128
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 3
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 4
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r12, 10
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
	addli r8, zero, 15
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 17
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
	addli r8, zero, 64
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r8, 3
	addli r8, zero, 32
	dma_cfg r11, zero, r9, 4
	dma_cfg r11, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r8, 201
	addli r10, zero, 4
	addli r9, zero, 1
	addli r20, zero, 128
	addli r11, zero, 32
	addli r14, zero, 14
	ori r8, r8, 64
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	lock zero, r10
	dma_cfg r9, r9, zero, 0
	add.s r2, r2, r8
	addli r8, zero, 64
	dma_cfg zero, r6, zero, 2
	dma_cfg r2, r5, r8, 3
	addli r2, zero, 512
	addli r5, zero, 5
	addli r6, zero, 6
	dma_cfg r20, r8, r9, 4
	dma_cfg r20, r2, r11, 5
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 3
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r12, 10
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
	addli r2, zero, 15
	dma_cfg zero, zero, r13, 10
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
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r8, 3
	dma_cfg r20, zero, r9, 4
	dma_cfg r20, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	xsignal r6, 0
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r2, zero, 6
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 32
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r6, r4, r2, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
.LBB0_23:                               # %.thread20
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	andi r2, r24, 1
	beq r2, zero, .LBB0_31
.LBB0_24:                               # %.backedge
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 120 15                        # parallel-rne.mlir:120:15
	addli r16, r16, 1
	addli r6, zero, 1
	addli r24, zero, 0
	.loc	1 77 15                         # parallel-rne.mlir:77:15
	j .LBB0_12
.LBB0_25:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	andi r2, r24, 1
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r9
	addli r4, zero, 4
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	bneq r9, r4, .LBB0_28
# %bb.26:                               #   in Loop: Header=BB0_12 Depth=2
	xwait r4, 0
	addli r4, zero, 8
	addli r8, zero, 32
	xwait r4, 0
	addli r4, zero, 1
	lock zero, r4
	mm_cfg r8, r8, r8, 0
	addli r8, zero, 2
	mm_cfg r8, r4, r4, 2
	beq r16, zero, .LBB0_29
# %bb.27:                               # %.preheader30
                                        #   in Loop: Header=BB0_12 Depth=2
	mm_acc r15, r5, r6, 8
	j .LBB0_30
.LBB0_28:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	bneq r2, zero, .LBB0_24
	j .LBB0_33
.LBB0_29:                               # %.preheader29
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	mm r15, r5, r6, 8
.LBB0_30:                               # %.thread20.thread43
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r4, zero, 1
	unlock r4
	addli r4, zero, 5
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	bneq r2, zero, .LBB0_24
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 123 7 is_stmt 1               # parallel-rne.mlir:123:7
	addli r2, zero, 4
	bneq r9, r2, .LBB0_33
.LBB0_32:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	storeli.w zero, -3356(r30)              # 4-byte Folded Spill
	xsignal r2, 0
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	j .LBB0_36
.LBB0_33:                               # %.thread42
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	bneq r9, r2, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 129 7 is_stmt 1               # parallel-rne.mlir:129:7
	storeli.w r2, -3356(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -3356(r30)              # 4-byte Folded Spill
.LBB0_36:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 133 7 is_stmt 1               # parallel-rne.mlir:133:7
	addli r2, zero, 255
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	xfence
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	mfence { lm, sm, gm }
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	csr_set csr5, r2
	addli r2, zero, 32
	sync_core
	zext_int2long r[23:24], r2
	addli r2, zero, 31
	zext_int2long r[16:17], r2
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	beq r9, zero, .LBB0_69
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	addli r2, zero, 2
	beq r9, r2, .LBB0_98
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 1
	bneq r9, r2, .LBB0_127
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[4:5], zero
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	addli r2, r30, -3352
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 4
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block98
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 7
	zext_int2long r[4:5], r2
	addli r2, r30, -3344
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 169 9 is_stmt 1               # parallel-rne.mlir:169:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_126
.LBB0_41:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, r30, -3344
	addli r2, zero, 5
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r2
	.loc	1 170 11 is_stmt 1              # parallel-rne.mlir:170:11
	bneq r7, r15, .LBB0_48
# %bb.42:                               # %scalar.ph92.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_44
.LBB0_43:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 170 11                        # parallel-rne.mlir:170:11
	setlt.ul r10, r[8:9], r[16:17]
	.loc	1 185 13 is_stmt 1              # parallel-rne.mlir:185:13
	add.s r2, r7, r2
	.loc	1 170 11                        # parallel-rne.mlir:170:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 185 13                        # parallel-rne.mlir:185:13
	stores.w r6, 0(r2)
	.loc	1 170 11                        # parallel-rne.mlir:170:11
	beq r10, zero, .LBB0_40
.LBB0_44:                               # %scalar.ph92
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.ul r[10:11], r[8:9], r[4:5]
	slli r2, r10, 2
	add.s r6, r15, r2
	loads.w r10, 0(r6)
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	and r11, r10, r25
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	setlt.u r6, r27, r11
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r6, zero, .LBB0_46
# %bb.45:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 182 19 is_stmt 1              # parallel-rne.mlir:182:19
	setlt.u r11, r3, r11
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r11, zero, .LBB0_43
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r10, r6
	.loc	1 182 19 is_stmt 1              # parallel-rne.mlir:182:19
	setlt.u r11, r3, r11
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r11, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r28
	and r6, r6, r1
	j .LBB0_43
.LBB0_48:                               # %vector.body94.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	addli r2, r30, -3352
	load.d r[18:19], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_50
.LBB0_49:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 170 11 is_stmt 1              # parallel-rne.mlir:170:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 185 13                        # parallel-rne.mlir:185:13
	add.s r6, r7, r6
	.loc	1 170 11                        # parallel-rne.mlir:170:11
	seteq.d r2, r[18:19], r[23:24]
	.loc	1 185 13                        # parallel-rne.mlir:185:13
	stores.w r10, 12(r6)
	stores.w r20, 8(r6)
	stores.w r8, 4(r6)
	stores.w r21, 0(r6)
	.loc	1 170 11                        # parallel-rne.mlir:170:11
	bneq r2, zero, .LBB0_40
.LBB0_50:                               # %vector.body94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.ul r[8:9], r[18:19], r[4:5]
	slli r6, r8, 2
	add.s r21, r15, r6
	loads.w r22, 12(r21)
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	and r2, r22, r25
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	setlt.u r8, r27, r2
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r8, zero, .LBB0_52
# %bb.51:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r22, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_50 Depth=3
	lui r8, 1024
	or r10, r22, r8
.LBB0_53:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r14, 8(r21)
	and r11, r14, r25
	setlt.u r8, r27, r11
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r8, zero, .LBB0_55
# %bb.54:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r14, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_50 Depth=3
	lui r8, 1024
	or r20, r14, r8
.LBB0_56:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r9, 4(r21)
	and r12, r9, r25
	setlt.u r8, r27, r12
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r8, zero, .LBB0_58
# %bb.57:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_50 Depth=3
	lui r8, 1024
	or r8, r9, r8
.LBB0_59:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r13, 0(r21)
	and r26, r13, r25
	setlt.u r21, r27, r26
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r21, zero, .LBB0_61
# %bb.60:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r13, 0
	.loc	1 182 19 is_stmt 1              # parallel-rne.mlir:182:19
	setlt.u r26, r3, r26
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	beq r26, zero, .LBB0_62
	j .LBB0_63
.LBB0_61:                               #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r21, 1024
	or r21, r13, r21
	.loc	1 182 19 is_stmt 1              # parallel-rne.mlir:182:19
	setlt.u r26, r3, r26
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r26, zero, .LBB0_63
.LBB0_62:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r21, r13, 16
	andi r21, r21, 1
	add.s r13, r13, r21
	add.s r13, r13, r28
	and r21, r13, r1
.LBB0_63:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r12, r3, r12
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	beq r12, zero, .LBB0_66
# %bb.64:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	beq r9, zero, .LBB0_67
.LBB0_65:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r2, zero, .LBB0_49
	j .LBB0_68
.LBB0_66:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r28
	and r8, r8, r1
	setlt.u r9, r3, r11
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r9, zero, .LBB0_65
.LBB0_67:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r28
	and r20, r9, r1
	setlt.u r2, r3, r2
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r2, zero, .LBB0_49
.LBB0_68:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r28
	and r10, r2, r1
	j .LBB0_49
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	j .LBB0_71
.LBB0_70:                               # %middle.block116
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	zext_int2long r[4:5], r2
	addli r2, r30, -3344
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 141 9 is_stmt 1               # parallel-rne.mlir:141:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_97
.LBB0_71:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_78 Depth 3
                                        #       Child Loop BB0_73 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -3344
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[12:13], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 142 11 is_stmt 1              # parallel-rne.mlir:142:11
	beq r7, r15, .LBB0_73
	j .LBB0_78
.LBB0_72:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_73 Depth=3
	setlt.ul r8, r[4:5], r[16:17]
	.loc	1 157 13                        # parallel-rne.mlir:157:13
	add.s r2, r7, r2
	.loc	1 142 11                        # parallel-rne.mlir:142:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 157 13                        # parallel-rne.mlir:157:13
	stores.w r6, 0(r2)
	.loc	1 142 11                        # parallel-rne.mlir:142:11
	beq r8, zero, .LBB0_70
.LBB0_73:                               # %scalar.ph110
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r2, r8, 2
	add.s r6, r15, r2
	loads.w r8, 0(r6)
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	and r9, r8, r25
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	setlt.u r6, r27, r9
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	bneq r6, zero, .LBB0_75
# %bb.74:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 154 19 is_stmt 1              # parallel-rne.mlir:154:19
	setlt.u r9, r3, r9
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	bneq r9, zero, .LBB0_72
	j .LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r8, r6
	.loc	1 154 19 is_stmt 1              # parallel-rne.mlir:154:19
	setlt.u r9, r3, r9
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	bneq r9, zero, .LBB0_72
.LBB0_76:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r28
	and r6, r6, r1
	j .LBB0_72
.LBB0_77:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 142 11 is_stmt 1              # parallel-rne.mlir:142:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 157 13                        # parallel-rne.mlir:157:13
	add.s r10, r7, r20
	.loc	1 142 11                        # parallel-rne.mlir:142:11
	seteq.d r8, r[4:5], r[23:24]
	.loc	1 157 13                        # parallel-rne.mlir:157:13
	stores.w r6, 12(r10)
	stores.w r2, 8(r10)
	stores.w r9, 4(r10)
	stores.w r22, 0(r10)
	.loc	1 142 11                        # parallel-rne.mlir:142:11
	bneq r8, zero, .LBB0_70
.LBB0_78:                               # %vector.body112
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r20, r8, 2
	add.s r22, r15, r20
	loads.w r21, 12(r22)
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	and r10, r21, r25
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	setlt.u r2, r27, r10
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	bneq r2, zero, .LBB0_80
# %bb.79:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r21, 0
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=3
	lui r2, 1024
	or r6, r21, r2
.LBB0_81:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	loads.w r8, 8(r22)
	and r11, r8, r25
	setlt.u r2, r27, r11
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	bneq r2, zero, .LBB0_83
# %bb.82:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r8, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_78 Depth=3
	lui r2, 1024
	or r2, r8, r2
.LBB0_84:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	loads.w r14, 4(r22)
	and r18, r14, r25
	setlt.u r9, r27, r18
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	bneq r9, zero, .LBB0_86
# %bb.85:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_78 Depth=3
	lui r9, 1024
	or r9, r14, r9
.LBB0_87:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	loads.w r19, 0(r22)
	and r26, r19, r25
	setlt.u r22, r27, r26
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	bneq r22, zero, .LBB0_89
# %bb.88:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 154 19 is_stmt 1              # parallel-rne.mlir:154:19
	setlt.u r26, r3, r26
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	beq r26, zero, .LBB0_90
	j .LBB0_91
.LBB0_89:                               #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r19, r22
	.loc	1 154 19 is_stmt 1              # parallel-rne.mlir:154:19
	setlt.u r26, r3, r26
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	bneq r26, zero, .LBB0_91
.LBB0_90:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r19, 16
	andi r22, r22, 1
	add.s r19, r19, r22
	add.s r19, r19, r28
	and r22, r19, r1
.LBB0_91:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	setlt.u r18, r3, r18
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	beq r18, zero, .LBB0_94
# %bb.92:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r3, r11
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	beq r11, zero, .LBB0_95
.LBB0_93:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r3, r10
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	bneq r8, zero, .LBB0_77
	j .LBB0_96
.LBB0_94:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r28
	and r9, r9, r1
	setlt.u r11, r3, r11
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	bneq r11, zero, .LBB0_93
.LBB0_95:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r28
	and r2, r2, r1
	setlt.u r8, r3, r10
	.loc	1 155 19                        # parallel-rne.mlir:155:19
	bneq r8, zero, .LBB0_77
.LBB0_96:                               # %vector.body112
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r28
	and r6, r6, r1
	j .LBB0_77
.LBB0_97:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r9
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { sm }
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	addli r2, zero, 2
	bneq r9, r2, .LBB0_38
.LBB0_98:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 190 7 is_stmt 1               # parallel-rne.mlir:190:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_100
.LBB0_99:                               # %middle.block107
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 11
	zext_int2long r[4:5], r2
	addli r2, r30, -3344
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 197 9 is_stmt 1               # parallel-rne.mlir:197:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_126
.LBB0_100:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_102 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -3344
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[12:13], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 198 11 is_stmt 1              # parallel-rne.mlir:198:11
	beq r7, r15, .LBB0_102
	j .LBB0_107
.LBB0_101:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_102 Depth=3
	setlt.ul r8, r[4:5], r[16:17]
	.loc	1 213 13                        # parallel-rne.mlir:213:13
	add.s r2, r7, r2
	.loc	1 198 11                        # parallel-rne.mlir:198:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 213 13                        # parallel-rne.mlir:213:13
	stores.w r6, 0(r2)
	.loc	1 198 11                        # parallel-rne.mlir:198:11
	beq r8, zero, .LBB0_99
.LBB0_102:                              # %scalar.ph101
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r2, r8, 2
	add.s r6, r15, r2
	loads.w r8, 0(r6)
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	and r9, r8, r25
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	setlt.u r6, r27, r9
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r6, zero, .LBB0_104
# %bb.103:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 210 19 is_stmt 1              # parallel-rne.mlir:210:19
	setlt.u r9, r3, r9
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r9, zero, .LBB0_101
	j .LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r8, r6
	.loc	1 210 19 is_stmt 1              # parallel-rne.mlir:210:19
	setlt.u r9, r3, r9
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r9, zero, .LBB0_101
.LBB0_105:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r28
	and r6, r6, r1
	j .LBB0_101
.LBB0_106:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 198 11 is_stmt 1              # parallel-rne.mlir:198:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 213 13                        # parallel-rne.mlir:213:13
	add.s r10, r7, r20
	.loc	1 198 11                        # parallel-rne.mlir:198:11
	seteq.d r9, r[4:5], r[23:24]
	.loc	1 213 13                        # parallel-rne.mlir:213:13
	stores.w r6, 12(r10)
	stores.w r2, 8(r10)
	stores.w r8, 4(r10)
	stores.w r22, 0(r10)
	.loc	1 198 11                        # parallel-rne.mlir:198:11
	bneq r9, zero, .LBB0_99
.LBB0_107:                              # %vector.body103
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r20, r8, 2
	add.s r22, r15, r20
	loads.w r21, 12(r22)
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	and r10, r21, r25
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	setlt.u r2, r27, r10
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r2, zero, .LBB0_109
# %bb.108:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r21, 0
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	lui r2, 1024
	or r6, r21, r2
.LBB0_110:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r14, 8(r22)
	and r11, r14, r25
	setlt.u r2, r27, r11
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r2, zero, .LBB0_112
# %bb.111:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r14, 0
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_107 Depth=3
	lui r2, 1024
	or r2, r14, r2
.LBB0_113:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r9, 4(r22)
	and r18, r9, r25
	setlt.u r8, r27, r18
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r8, zero, .LBB0_115
# %bb.114:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_107 Depth=3
	lui r8, 1024
	or r8, r9, r8
.LBB0_116:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	loads.w r19, 0(r22)
	and r26, r19, r25
	setlt.u r22, r27, r26
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r22, zero, .LBB0_118
# %bb.117:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 210 19 is_stmt 1              # parallel-rne.mlir:210:19
	setlt.u r26, r3, r26
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	beq r26, zero, .LBB0_119
	j .LBB0_120
.LBB0_118:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r19, r22
	.loc	1 210 19 is_stmt 1              # parallel-rne.mlir:210:19
	setlt.u r26, r3, r26
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r26, zero, .LBB0_120
.LBB0_119:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r19, 16
	andi r22, r22, 1
	add.s r19, r19, r22
	add.s r19, r19, r28
	and r22, r19, r1
.LBB0_120:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r18, r3, r18
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	beq r18, zero, .LBB0_123
# %bb.121:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	beq r9, zero, .LBB0_124
.LBB0_122:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r10
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r9, zero, .LBB0_106
	j .LBB0_125
.LBB0_123:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r28
	and r8, r8, r1
	setlt.u r9, r3, r11
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r9, zero, .LBB0_122
.LBB0_124:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r14, 16
	andi r2, r2, 1
	add.s r2, r14, r2
	add.s r2, r2, r28
	and r2, r2, r1
	setlt.u r9, r3, r10
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r9, zero, .LBB0_106
.LBB0_125:                              # %vector.body103
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r28
	and r6, r6, r1
	j .LBB0_106
.LBB0_126:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r9
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 218 7 is_stmt 1               # parallel-rne.mlir:218:7
	loadli.w r2,  -3356(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_160
# %bb.128:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 246 7                         # parallel-rne.mlir:246:7
	addli r2, zero, 4
	beq r9, r2, .LBB0_189
.LBB0_129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	.loc	1 274 7 is_stmt 1               # parallel-rne.mlir:274:7
	beq r9, r2, .LBB0_218
.LBB0_130:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 6
	beq r9, r2, .LBB0_246
# %bb.131:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	bneq r9, r2, .LBB0_275
# %bb.132:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 274 7                         # parallel-rne.mlir:274:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_134
.LBB0_133:                              # %middle.block
                                        #   in Loop: Header=BB0_134 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[4:5], r2
	addli r2, r30, -3344
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 281 9 is_stmt 1               # parallel-rne.mlir:281:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_274
.LBB0_134:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_136 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -3344
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[12:13], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 282 11 is_stmt 1              # parallel-rne.mlir:282:11
	beq r7, r15, .LBB0_136
	j .LBB0_141
.LBB0_135:                              # %scalar.ph
                                        #   in Loop: Header=BB0_136 Depth=3
	setlt.ul r8, r[4:5], r[16:17]
	.loc	1 297 13                        # parallel-rne.mlir:297:13
	add.s r2, r7, r2
	.loc	1 282 11                        # parallel-rne.mlir:282:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 297 13                        # parallel-rne.mlir:297:13
	stores.w r6, 0(r2)
	.loc	1 282 11                        # parallel-rne.mlir:282:11
	beq r8, zero, .LBB0_133
.LBB0_136:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r2, r8, 2
	add.s r6, r15, r2
	loads.w r8, 0(r6)
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	and r9, r8, r25
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	setlt.u r6, r27, r9
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r6, zero, .LBB0_138
# %bb.137:                              # %scalar.ph
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 294 19 is_stmt 1              # parallel-rne.mlir:294:19
	setlt.u r9, r3, r9
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r9, zero, .LBB0_135
	j .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r8, r6
	.loc	1 294 19 is_stmt 1              # parallel-rne.mlir:294:19
	setlt.u r9, r3, r9
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r9, zero, .LBB0_135
.LBB0_139:                              # %scalar.ph
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r28
	and r6, r6, r1
	j .LBB0_135
.LBB0_140:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 282 11 is_stmt 1              # parallel-rne.mlir:282:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 297 13                        # parallel-rne.mlir:297:13
	add.s r6, r7, r6
	.loc	1 282 11                        # parallel-rne.mlir:282:11
	seteq.d r2, r[4:5], r[23:24]
	.loc	1 297 13                        # parallel-rne.mlir:297:13
	stores.w r20, 12(r6)
	stores.w r14, 8(r6)
	stores.w r8, 4(r6)
	stores.w r22, 0(r6)
	.loc	1 282 11                        # parallel-rne.mlir:282:11
	bneq r2, zero, .LBB0_133
.LBB0_141:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r6, r8, 2
	add.s r22, r15, r6
	loads.w r10, 12(r22)
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	and r2, r10, r25
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	setlt.u r8, r27, r2
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r8, zero, .LBB0_143
# %bb.142:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r10, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	lui r8, 1024
	or r20, r10, r8
.LBB0_144:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r21, 8(r22)
	and r11, r21, r25
	setlt.u r8, r27, r11
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r8, zero, .LBB0_146
# %bb.145:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r21, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_141 Depth=3
	lui r8, 1024
	or r14, r21, r8
.LBB0_147:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r9, 4(r22)
	and r18, r9, r25
	setlt.u r8, r27, r18
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r8, zero, .LBB0_149
# %bb.148:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_141 Depth=3
	lui r8, 1024
	or r8, r9, r8
.LBB0_150:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r19, 0(r22)
	and r26, r19, r25
	setlt.u r22, r27, r26
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r22, zero, .LBB0_156
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 294 19 is_stmt 1              # parallel-rne.mlir:294:19
	setlt.u r26, r3, r26
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r26, zero, .LBB0_153
.LBB0_152:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r19, 16
	andi r22, r22, 1
	add.s r19, r19, r22
	add.s r19, r19, r28
	and r22, r19, r1
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	setlt.u r18, r3, r18
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	beq r18, zero, .LBB0_157
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	beq r9, zero, .LBB0_158
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r2, zero, .LBB0_140
	j .LBB0_159
.LBB0_156:                              #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r19, r22
	.loc	1 294 19 is_stmt 1              # parallel-rne.mlir:294:19
	setlt.u r26, r3, r26
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	beq r26, zero, .LBB0_152
	j .LBB0_153
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r28
	and r8, r8, r1
	setlt.u r9, r3, r11
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r9, zero, .LBB0_155
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r28
	and r14, r9, r1
	setlt.u r2, r3, r2
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r2, zero, .LBB0_140
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r20, r2, r1
	j .LBB0_140
.LBB0_160:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 12
	.loc	1 218 7 is_stmt 1               # parallel-rne.mlir:218:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_162
.LBB0_161:                              # %middle.block89
                                        #   in Loop: Header=BB0_162 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	zext_int2long r[4:5], r2
	addli r2, r30, -3344
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 225 9 is_stmt 1               # parallel-rne.mlir:225:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_188
.LBB0_162:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_164 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -3344
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[12:13], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 226 11 is_stmt 1              # parallel-rne.mlir:226:11
	beq r7, r15, .LBB0_164
	j .LBB0_169
.LBB0_163:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_164 Depth=3
	setlt.ul r8, r[4:5], r[16:17]
	.loc	1 241 13                        # parallel-rne.mlir:241:13
	add.s r2, r7, r2
	.loc	1 226 11                        # parallel-rne.mlir:226:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 241 13                        # parallel-rne.mlir:241:13
	stores.w r6, 0(r2)
	.loc	1 226 11                        # parallel-rne.mlir:226:11
	beq r8, zero, .LBB0_161
.LBB0_164:                              # %scalar.ph83
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r2, r8, 2
	add.s r6, r15, r2
	loads.w r8, 0(r6)
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	and r9, r8, r25
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	setlt.u r6, r27, r9
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	bneq r6, zero, .LBB0_166
# %bb.165:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 238 19 is_stmt 1              # parallel-rne.mlir:238:19
	setlt.u r9, r3, r9
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r9, zero, .LBB0_163
	j .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r8, r6
	.loc	1 238 19 is_stmt 1              # parallel-rne.mlir:238:19
	setlt.u r9, r3, r9
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r9, zero, .LBB0_163
.LBB0_167:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r28
	and r6, r6, r1
	j .LBB0_163
.LBB0_168:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 226 11 is_stmt 1              # parallel-rne.mlir:226:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 241 13                        # parallel-rne.mlir:241:13
	add.s r6, r7, r6
	.loc	1 226 11                        # parallel-rne.mlir:226:11
	seteq.d r2, r[4:5], r[23:24]
	.loc	1 241 13                        # parallel-rne.mlir:241:13
	stores.w r20, 12(r6)
	stores.w r14, 8(r6)
	stores.w r8, 4(r6)
	stores.w r22, 0(r6)
	.loc	1 226 11                        # parallel-rne.mlir:226:11
	bneq r2, zero, .LBB0_161
.LBB0_169:                              # %vector.body85
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 227 19                        # parallel-rne.mlir:227:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r6, r8, 2
	add.s r22, r15, r6
	loads.w r10, 12(r22)
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	and r2, r10, r25
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	setlt.u r8, r27, r2
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	bneq r8, zero, .LBB0_171
# %bb.170:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r10, 0
	j .LBB0_172
.LBB0_171:                              #   in Loop: Header=BB0_169 Depth=3
	lui r8, 1024
	or r20, r10, r8
.LBB0_172:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r21, 8(r22)
	and r11, r21, r25
	setlt.u r8, r27, r11
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	bneq r8, zero, .LBB0_174
# %bb.173:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r21, 0
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_169 Depth=3
	lui r8, 1024
	or r14, r21, r8
.LBB0_175:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r9, 4(r22)
	and r18, r9, r25
	setlt.u r8, r27, r18
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	bneq r8, zero, .LBB0_177
# %bb.176:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_169 Depth=3
	lui r8, 1024
	or r8, r9, r8
.LBB0_178:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r19, 0(r22)
	and r26, r19, r25
	setlt.u r22, r27, r26
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	bneq r22, zero, .LBB0_184
# %bb.179:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 238 19 is_stmt 1              # parallel-rne.mlir:238:19
	setlt.u r26, r3, r26
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r26, zero, .LBB0_181
.LBB0_180:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r19, 16
	andi r22, r22, 1
	add.s r19, r19, r22
	add.s r19, r19, r28
	and r22, r19, r1
.LBB0_181:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	setlt.u r18, r3, r18
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	beq r18, zero, .LBB0_185
# %bb.182:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	beq r9, zero, .LBB0_186
.LBB0_183:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_168
	j .LBB0_187
.LBB0_184:                              #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r19, r22
	.loc	1 238 19 is_stmt 1              # parallel-rne.mlir:238:19
	setlt.u r26, r3, r26
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	beq r26, zero, .LBB0_180
	j .LBB0_181
.LBB0_185:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r28
	and r8, r8, r1
	setlt.u r9, r3, r11
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r9, zero, .LBB0_183
.LBB0_186:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r28
	and r14, r9, r1
	setlt.u r2, r3, r2
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_168
.LBB0_187:                              # %vector.body85
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r20, r2, r1
	j .LBB0_168
.LBB0_188:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r9
	.loc	1 218 7                         # parallel-rne.mlir:218:7
	mfence { sm }
	.loc	1 246 7                         # parallel-rne.mlir:246:7
	addli r2, zero, 4
	bneq r9, r2, .LBB0_129
.LBB0_189:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 246 7                         # parallel-rne.mlir:246:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_191
.LBB0_190:                              # %middle.block80
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 19
	zext_int2long r[4:5], r2
	addli r2, r30, -3344
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 253 9 is_stmt 1               # parallel-rne.mlir:253:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_217
.LBB0_191:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_193 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -3344
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[12:13], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 254 11 is_stmt 1              # parallel-rne.mlir:254:11
	beq r7, r15, .LBB0_193
	j .LBB0_198
.LBB0_192:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_193 Depth=3
	setlt.ul r8, r[4:5], r[16:17]
	.loc	1 269 13                        # parallel-rne.mlir:269:13
	add.s r2, r7, r2
	.loc	1 254 11                        # parallel-rne.mlir:254:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 269 13                        # parallel-rne.mlir:269:13
	stores.w r6, 0(r2)
	.loc	1 254 11                        # parallel-rne.mlir:254:11
	beq r8, zero, .LBB0_190
.LBB0_193:                              # %scalar.ph74
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r2, r8, 2
	add.s r6, r15, r2
	loads.w r8, 0(r6)
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	and r9, r8, r25
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	setlt.u r6, r27, r9
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	bneq r6, zero, .LBB0_195
# %bb.194:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 266 19 is_stmt 1              # parallel-rne.mlir:266:19
	setlt.u r9, r3, r9
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r9, zero, .LBB0_192
	j .LBB0_196
.LBB0_195:                              #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r8, r6
	.loc	1 266 19 is_stmt 1              # parallel-rne.mlir:266:19
	setlt.u r9, r3, r9
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r9, zero, .LBB0_192
.LBB0_196:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r28
	and r6, r6, r1
	j .LBB0_192
.LBB0_197:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 254 11 is_stmt 1              # parallel-rne.mlir:254:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 269 13                        # parallel-rne.mlir:269:13
	add.s r6, r7, r6
	.loc	1 254 11                        # parallel-rne.mlir:254:11
	seteq.d r2, r[4:5], r[23:24]
	.loc	1 269 13                        # parallel-rne.mlir:269:13
	stores.w r20, 12(r6)
	stores.w r14, 8(r6)
	stores.w r8, 4(r6)
	stores.w r22, 0(r6)
	.loc	1 254 11                        # parallel-rne.mlir:254:11
	bneq r2, zero, .LBB0_190
.LBB0_198:                              # %vector.body76
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r6, r8, 2
	add.s r22, r15, r6
	loads.w r10, 12(r22)
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	and r2, r10, r25
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	setlt.u r8, r27, r2
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	bneq r8, zero, .LBB0_200
# %bb.199:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r10, 0
	j .LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_198 Depth=3
	lui r8, 1024
	or r20, r10, r8
.LBB0_201:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r21, 8(r22)
	and r11, r21, r25
	setlt.u r8, r27, r11
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	bneq r8, zero, .LBB0_203
# %bb.202:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r21, 0
	j .LBB0_204
.LBB0_203:                              #   in Loop: Header=BB0_198 Depth=3
	lui r8, 1024
	or r14, r21, r8
.LBB0_204:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r9, 4(r22)
	and r18, r9, r25
	setlt.u r8, r27, r18
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	bneq r8, zero, .LBB0_206
# %bb.205:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_198 Depth=3
	lui r8, 1024
	or r8, r9, r8
.LBB0_207:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r19, 0(r22)
	and r26, r19, r25
	setlt.u r22, r27, r26
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	bneq r22, zero, .LBB0_213
# %bb.208:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 266 19 is_stmt 1              # parallel-rne.mlir:266:19
	setlt.u r26, r3, r26
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r26, zero, .LBB0_210
.LBB0_209:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r19, 16
	andi r22, r22, 1
	add.s r19, r19, r22
	add.s r19, r19, r28
	and r22, r19, r1
.LBB0_210:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	setlt.u r18, r3, r18
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	beq r18, zero, .LBB0_214
# %bb.211:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	beq r9, zero, .LBB0_215
.LBB0_212:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_197
	j .LBB0_216
.LBB0_213:                              #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r19, r22
	.loc	1 266 19 is_stmt 1              # parallel-rne.mlir:266:19
	setlt.u r26, r3, r26
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	beq r26, zero, .LBB0_209
	j .LBB0_210
.LBB0_214:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r28
	and r8, r8, r1
	setlt.u r9, r3, r11
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r9, zero, .LBB0_212
.LBB0_215:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r28
	and r14, r9, r1
	setlt.u r2, r3, r2
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_197
.LBB0_216:                              # %vector.body76
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r20, r2, r1
	j .LBB0_197
.LBB0_217:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r9
	.loc	1 246 7                         # parallel-rne.mlir:246:7
	mfence { sm }
	addli r2, zero, 7
	.loc	1 274 7                         # parallel-rne.mlir:274:7
	bneq r9, r2, .LBB0_130
.LBB0_218:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 330 7 is_stmt 1               # parallel-rne.mlir:330:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_220
.LBB0_219:                              # %middle.block71
                                        #   in Loop: Header=BB0_220 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, r30, -3344
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	.loc	1 337 9 is_stmt 1               # parallel-rne.mlir:337:9
	setlt.ul r2, r[4:5], r[16:17]
	addli.d r[4:5], r[4:5], 1
	beq r2, zero, .LBB0_274
.LBB0_220:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_222 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -3344
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[18:19], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 338 11 is_stmt 1              # parallel-rne.mlir:338:11
	beq r7, r15, .LBB0_222
	j .LBB0_227
.LBB0_221:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_222 Depth=3
	setlt.ul r8, r[4:5], r[16:17]
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	add.s r2, r7, r2
	.loc	1 338 11                        # parallel-rne.mlir:338:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	stores.w r6, 0(r2)
	.loc	1 338 11                        # parallel-rne.mlir:338:11
	beq r8, zero, .LBB0_219
.LBB0_222:                              # %scalar.ph65
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_220 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	add.ul r[8:9], r[4:5], r[18:19]
	slli r2, r8, 2
	add.s r6, r15, r2
	loads.w r8, 0(r6)
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	and r9, r8, r25
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	setlt.u r6, r27, r9
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r6, zero, .LBB0_224
# %bb.223:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_222 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 350 19 is_stmt 1              # parallel-rne.mlir:350:19
	setlt.u r9, r3, r9
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r9, zero, .LBB0_221
	j .LBB0_225
.LBB0_224:                              #   in Loop: Header=BB0_222 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r8, r6
	.loc	1 350 19 is_stmt 1              # parallel-rne.mlir:350:19
	setlt.u r9, r3, r9
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r9, zero, .LBB0_221
.LBB0_225:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_222 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r28
	and r6, r6, r1
	j .LBB0_221
.LBB0_226:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 338 11 is_stmt 1              # parallel-rne.mlir:338:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	add.s r6, r7, r6
	.loc	1 338 11                        # parallel-rne.mlir:338:11
	seteq.d r2, r[4:5], r[23:24]
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	stores.w r20, 12(r6)
	stores.w r14, 8(r6)
	stores.w r8, 4(r6)
	stores.w r22, 0(r6)
	.loc	1 338 11                        # parallel-rne.mlir:338:11
	bneq r2, zero, .LBB0_219
.LBB0_227:                              # %vector.body67
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_220 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	add.ul r[8:9], r[4:5], r[18:19]
	slli r6, r8, 2
	add.s r22, r15, r6
	loads.w r10, 12(r22)
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	and r2, r10, r25
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	setlt.u r8, r27, r2
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r8, zero, .LBB0_229
# %bb.228:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r10, 0
	j .LBB0_230
.LBB0_229:                              #   in Loop: Header=BB0_227 Depth=3
	lui r8, 1024
	or r20, r10, r8
.LBB0_230:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r21, 8(r22)
	and r11, r21, r25
	setlt.u r8, r27, r11
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r8, zero, .LBB0_232
# %bb.231:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r21, 0
	j .LBB0_233
.LBB0_232:                              #   in Loop: Header=BB0_227 Depth=3
	lui r8, 1024
	or r14, r21, r8
.LBB0_233:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r9, 4(r22)
	and r12, r9, r25
	setlt.u r8, r27, r12
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r8, zero, .LBB0_235
# %bb.234:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_227 Depth=3
	lui r8, 1024
	or r8, r9, r8
.LBB0_236:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r13, 0(r22)
	and r26, r13, r25
	setlt.u r22, r27, r26
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	bneq r22, zero, .LBB0_238
# %bb.237:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r13, 0
	.loc	1 350 19 is_stmt 1              # parallel-rne.mlir:350:19
	setlt.u r26, r3, r26
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	beq r26, zero, .LBB0_239
	j .LBB0_240
.LBB0_238:                              #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r13, r22
	.loc	1 350 19 is_stmt 1              # parallel-rne.mlir:350:19
	setlt.u r26, r3, r26
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r26, zero, .LBB0_240
.LBB0_239:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r13, 16
	andi r22, r22, 1
	add.s r13, r13, r22
	add.s r13, r13, r28
	and r22, r13, r1
.LBB0_240:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	setlt.u r12, r3, r12
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	beq r12, zero, .LBB0_243
# %bb.241:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	beq r9, zero, .LBB0_244
.LBB0_242:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r2, zero, .LBB0_226
	j .LBB0_245
.LBB0_243:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r28
	and r8, r8, r1
	setlt.u r9, r3, r11
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r9, zero, .LBB0_242
.LBB0_244:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r28
	and r14, r9, r1
	setlt.u r2, r3, r2
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r2, zero, .LBB0_226
.LBB0_245:                              # %vector.body67
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r20, r2, r1
	j .LBB0_226
.LBB0_246:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 24
	.loc	1 302 7 is_stmt 1               # parallel-rne.mlir:302:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_248
.LBB0_247:                              # %middle.block62
                                        #   in Loop: Header=BB0_248 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 27
	zext_int2long r[4:5], r2
	addli r2, r30, -3344
	load.d r[8:9], 0(r2)                    # 8-byte Folded Reload
	.loc	1 309 9 is_stmt 1               # parallel-rne.mlir:309:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_274
.LBB0_248:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_255 Depth 3
                                        #       Child Loop BB0_250 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 5
	addli r6, r30, -3344
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	sll.d r[12:13], r[4:5], r2
	zext_int2long r[4:5], zero
	.loc	1 310 11 is_stmt 1              # parallel-rne.mlir:310:11
	beq r7, r15, .LBB0_250
	j .LBB0_255
.LBB0_249:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_250 Depth=3
	setlt.ul r8, r[4:5], r[16:17]
	.loc	1 325 13                        # parallel-rne.mlir:325:13
	add.s r2, r7, r2
	.loc	1 310 11                        # parallel-rne.mlir:310:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 325 13                        # parallel-rne.mlir:325:13
	stores.w r6, 0(r2)
	.loc	1 310 11                        # parallel-rne.mlir:310:11
	beq r8, zero, .LBB0_247
.LBB0_250:                              # %scalar.ph56
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_248 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r2, r8, 2
	add.s r6, r15, r2
	loads.w r8, 0(r6)
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	and r9, r8, r25
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	setlt.u r6, r27, r9
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r6, zero, .LBB0_252
# %bb.251:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_250 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 322 19 is_stmt 1              # parallel-rne.mlir:322:19
	setlt.u r9, r3, r9
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r9, zero, .LBB0_249
	j .LBB0_253
.LBB0_252:                              #   in Loop: Header=BB0_250 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r8, r6
	.loc	1 322 19 is_stmt 1              # parallel-rne.mlir:322:19
	setlt.u r9, r3, r9
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r9, zero, .LBB0_249
.LBB0_253:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_250 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r28
	and r6, r6, r1
	j .LBB0_249
.LBB0_254:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 310 11 is_stmt 1              # parallel-rne.mlir:310:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 325 13                        # parallel-rne.mlir:325:13
	add.s r6, r7, r6
	.loc	1 310 11                        # parallel-rne.mlir:310:11
	seteq.d r2, r[4:5], r[23:24]
	.loc	1 325 13                        # parallel-rne.mlir:325:13
	stores.w r20, 12(r6)
	stores.w r14, 8(r6)
	stores.w r8, 4(r6)
	stores.w r22, 0(r6)
	.loc	1 310 11                        # parallel-rne.mlir:310:11
	bneq r2, zero, .LBB0_247
.LBB0_255:                              # %vector.body58
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_248 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	add.ul r[8:9], r[4:5], r[12:13]
	slli r6, r8, 2
	add.s r22, r15, r6
	loads.w r10, 12(r22)
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	and r2, r10, r25
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	setlt.u r8, r27, r2
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r8, zero, .LBB0_257
# %bb.256:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r10, 0
	j .LBB0_258
.LBB0_257:                              #   in Loop: Header=BB0_255 Depth=3
	lui r8, 1024
	or r20, r10, r8
.LBB0_258:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r21, 8(r22)
	and r11, r21, r25
	setlt.u r8, r27, r11
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r8, zero, .LBB0_260
# %bb.259:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r21, 0
	j .LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_255 Depth=3
	lui r8, 1024
	or r14, r21, r8
.LBB0_261:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r9, 4(r22)
	and r18, r9, r25
	setlt.u r8, r27, r18
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r8, zero, .LBB0_263
# %bb.262:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_255 Depth=3
	lui r8, 1024
	or r8, r9, r8
.LBB0_264:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	loads.w r19, 0(r22)
	and r26, r19, r25
	setlt.u r22, r27, r26
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	bneq r22, zero, .LBB0_266
# %bb.265:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 322 19 is_stmt 1              # parallel-rne.mlir:322:19
	setlt.u r26, r3, r26
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	beq r26, zero, .LBB0_267
	j .LBB0_268
.LBB0_266:                              #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r22, 1024
	or r22, r19, r22
	.loc	1 322 19 is_stmt 1              # parallel-rne.mlir:322:19
	setlt.u r26, r3, r26
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r26, zero, .LBB0_268
.LBB0_267:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r19, 16
	andi r22, r22, 1
	add.s r19, r19, r22
	add.s r19, r19, r28
	and r22, r19, r1
.LBB0_268:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	setlt.u r18, r3, r18
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	beq r18, zero, .LBB0_271
# %bb.269:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r3, r11
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	beq r9, zero, .LBB0_272
.LBB0_270:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r2
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r2, zero, .LBB0_254
	j .LBB0_273
.LBB0_271:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r28
	and r8, r8, r1
	setlt.u r9, r3, r11
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r9, zero, .LBB0_270
.LBB0_272:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r21, 16
	andi r9, r9, 1
	add.s r9, r21, r9
	add.s r9, r9, r28
	and r14, r9, r1
	setlt.u r2, r3, r2
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r2, zero, .LBB0_254
.LBB0_273:                              # %vector.body58
                                        #   in Loop: Header=BB0_255 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r28
	and r20, r2, r1
	j .LBB0_254
.LBB0_274:                              # %.sink.split48
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r9
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_275:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 358 7 is_stmt 1               # parallel-rne.mlir:358:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	loadli.w r2,  -3356(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.276:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r17,  -3372(r30)               # 4-byte Folded Reload
	addli r6, zero, 14
	.loc	1 376 7 is_stmt 1               # parallel-rne.mlir:376:7
	bneq r9, zero, .LBB0_6
# %bb.277:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	loadli.w r2,  -3400(r30)                # 4-byte Folded Reload
	zext_int2long r[12:13], zero
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	load.d r[14:15], 16(r30)
	addli r16, zero, 1
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	zext_int2long r[4:5], r2
	addli r2, zero, 224
	zext_int2long r[8:9], r2
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	loadli.w r2,  -3396(r30)                # 4-byte Folded Reload
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	min.ul r[8:9], r[4:5], r[8:9]
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	sext_int2long r[10:11], r2
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	addli r2, r30, -3392
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	addli.d r[8:9], r[8:9], 32
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	min.sl r[12:13], r[10:11], r[12:13]
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	max.ul r[8:9], r[8:9], r[4:5]
	sub.sl r[4:5], r[8:9], r[4:5]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	addli.d r[8:9], r[12:13], 32
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	load.d r[12:13], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -3384
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	max.sl r[8:9], r[8:9], r[10:11]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.ul r[4:5], r[4:5], r[23:24]
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	sll.d r[12:13], r[12:13], r6
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	sub.sl r[8:9], r[8:9], r[10:11]
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	add.ul r[12:13], r[14:15], r[12:13]
	load.d r[14:15], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 12
	xwait r2, 0
	ori r2, r7, 64
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	min.sl r[6:7], r[8:9], r[23:24]
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r9
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	sll.d r[14:15], r[14:15], r16
	add.ul r[10:11], r[12:13], r[14:15]
	addli r13, zero, 5
	addli r12, zero, 64
	lock zero, r13
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r16, zero, 1
	dma_cfg r11, zero, zero, 2
	dma_cfg r10, r2, r12, 3
	addli r2, r4, 31
	slli r4, r4, 1
	addli r5, zero, 128
	srli r2, r2, 5
	dma_cfg r12, r5, r2, 4
	andi r2, r4, 62
	addli r4, zero, 512
	dma_cfg r4, r5, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r2, 0
	j .LBB0_6
.LBB0_278:                              # %._crit_edge
	.loc	1 378 5                         # parallel-rne.mlir:378:5
	xsignal zero, 0
	bneq r9, zero, .LBB0_280
# %bb.279:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 378 5                         # parallel-rne.mlir:378:5
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
.LBB0_280:
	.loc	1 379 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:379:5
	addli sp, sp, 3408
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
	.long	3472                            # 0xd90
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-fvhg4wks" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
