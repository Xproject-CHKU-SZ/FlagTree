	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-b9v014ld" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4216
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r2
	addli r30, sp, 4152
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
	storeli.w zero, -1024(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -2048(r30)
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r4, -3040(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r4, -2052(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r3, r2, r3
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r2
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r3, r1, .LBB0_239
# %bb.4:                                # %.lr.ph
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	sext_int2long r[6:7], r1
	lui r1, 524287
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[3:4], r3
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	addli r5, r30, -4152
	addli r11, zero, 1
	addli r28, zero, 5
	addli r10, zero, 4
	addli r14, zero, 255
	lui r23, 1024
	lui r24, 522240
	lui r26, 1048560
	ori r22, r1, 4095
	lui r1, 7
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	ori r25, r1, 4095
	lui r1, 522239
	ori r27, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 358 7 is_stmt 1               # parallel-rne.mlir:358:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -4120
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	addli r1, r30, -4152
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[3:4]
	beq r1, zero, .LBB0_239
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_67 Depth 2
                                        #       Child Loop BB0_69 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_46 Depth 3
                                        #     Child Loop BB0_91 Depth 2
                                        #       Child Loop BB0_93 Depth 3
                                        #     Child Loop BB0_143 Depth 2
                                        #       Child Loop BB0_145 Depth 3
                                        #     Child Loop BB0_167 Depth 2
                                        #       Child Loop BB0_169 Depth 3
                                        #     Child Loop BB0_120 Depth 2
                                        #       Child Loop BB0_122 Depth 3
                                        #     Child Loop BB0_214 Depth 2
                                        #       Child Loop BB0_216 Depth 3
                                        #     Child Loop BB0_191 Depth 2
                                        #       Child Loop BB0_193 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r13, zero, 6
	.loc	1 74 7 is_stmt 1                # parallel-rne.mlir:74:7
	bneq r2, r10, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	addli r2, r30, -4120
	addli r5, zero, 0
	addli r20, zero, 5
	addli r21, zero, 0
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	div.s r1, r6, r1
	addli r6, zero, 8
	div.s r1, r1, r2
	addli r2, zero, 64
	div.s r2, r1, r2
	slli r3, r2, 3
	slli r2, r2, 6
	sub.s r4, r11, r3
	sub.s r2, r1, r2
	min.s r4, r4, r6
	mod.s r1, r1, r4
	div.s r2, r2, r4
	add.s r1, r3, r1
	slli r3, r2, 5
	storeli.w r3, -4144(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	slli r4, r1, 5
	zext_int2long r[8:9], r1
	addli r1, r30, -4136
	sll.d r[6:7], r[2:3], r28
	storeli.w r4, -4140(r30)                # 4-byte Folded Spill
	addli r3, zero, 1
	addli r4, zero, 11
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	loadli.w r28,  -3072(r30)
	sll.d r[1:2], r[8:9], r4
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	sll.d r[7:8], r[6:7], r3
	load.d r[3:4], 8(r30)
	addli r9, r30, -4128
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	loadli.w r6,  -4096(r30)
	store.d r[7:8], 0(r9)                   # 8-byte Folded Spill
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	add.ul r[3:4], r[3:4], r[7:8]
	addli r7, r30, -4104
	store.d r[3:4], 0(r7)                   # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	lock zero, r10
	addli r7, r7, 8256
	addli r8, zero, 64
	addli r9, zero, 5
	addli r12, zero, 2
	addli r20, zero, 5
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r16, zero, 2
	dma_cfg r7, r15, r8, 3
	addli r15, zero, 128
	addli r7, zero, 7
	dma_cfg r15, r8, r19, 4
	dma_cfg r15, r15, r4, 5
	dma_cfg zero, zero, r11, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	addli r11, zero, 32
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 6
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 255
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r8, 3
	dma_cfg r15, zero, r19, 4
	dma_cfg r15, zero, r4, 5
	dma_cfg zero, zero, r11, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r12, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	loadli.w r3,  -2048(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r4,  -1024(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r3, r3, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r4, r4, 1
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	storeli.w r3, -2048(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r4, -1024(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r21, r21, 1
	beq r21, r10, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	addli r5, r5, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 76 15                         # parallel-rne.mlir:76:15
	zext_int2long r[15:16], r21
	addli r3, zero, 4
	.loc	1 77 15                         # parallel-rne.mlir:77:15
	sll.d r[9:10], r[15:16], r3
	addli r3, zero, 2047
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.ul r[11:12], r[9:10], r[1:2]
	zext_int2long r[3:4], r3
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	setlt.ul r3, r[3:4], r[11:12]
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	bneq r3, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli.d r[9:10], r[11:12], 0
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	add.s r3, r6, r5
	add.s r17, r28, r5
	.loc	1 98 9 is_stmt 1                # parallel-rne.mlir:98:9
	addli r18, zero, 2
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	mod.s r4, r3, r14
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r7, r17, r14
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	addli r3, r3, 1
	storeli.w r3, -4096(r30)
	slli r8, r4, 11
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r7, r7, 12
	addli r4, r17, 1
	storeli.w r4, -3072(r30)
	addli r3, r7, 8192
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	beq r4, r18, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r18
	addli r19, zero, 1
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	bneq r18, r19, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	load.d r[15:16], 0(r30)
	sll.d r[11:12], r[11:12], r19
	addli r14, zero, 6
	addli r13, zero, 3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	srl.d r[8:9], r[9:10], r14
	addli r10, zero, 4
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	xwait r13, 0
	add.ul r[15:16], r[15:16], r[11:12]
	addli r11, zero, 32
	sub.s r4, r11, r8
	addli r8, zero, 254
	blt.s r8, r17, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	addli r8, zero, 2
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 7
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r8, 3
	addli r8, zero, 128
	dma_cfg r8, zero, r19, 4
	dma_cfg r8, zero, r11, 5
	dma_cfg zero, zero, r11, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 2
	addli r7, zero, 16
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r18
	addli r10, zero, 4
	.loc	1 99 9                          # parallel-rne.mlir:99:9
	xwait r4, 0
	xwait r20, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 32
	ds_cfg r4, zero, 1
	ds_cfg r7, zero, 14
	ds_cfg r4, zero, 13
	shuffle_batch r8, r3, r7, 1
	addli r3, zero, 3
	unlock zero
	xsignal r3, 0
	xsignal r10, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	loadli.w r3,  -2048(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r9,  -1024(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	mod.s r4, r3, r14
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r10, r9, r14
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r3, r3, 1
	storeli.w r3, -2048(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	lui r3, 257
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	slli r7, r4, 11
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r4, r10, 11
	addli r10, r9, 1
	storeli.w r10, -1024(r30)
	add.s r3, r4, r3
	addli r10, zero, 7
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	beq r18, r10, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r10, zero, 4
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	bneq r18, r13, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r17, zero, 13
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	sll.d r[7:8], r[15:16], r17
	addli r15, r30, -4104
	load.d r[11:12], 0(r15)                 # 8-byte Folded Reload
	addli r15, zero, 7
	xwait r15, 0
	add.ul r[7:8], r[11:12], r[7:8]
	addli r11, zero, 254
	blt.s r11, r9, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r10, zero, 1
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	addli r12, zero, 2
	addli r9, zero, 4
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 3
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 16
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 15
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
	dma_cfg zero, zero, r12, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r9, 3
	addli r9, zero, 128
	dma_cfg r9, zero, r10, 4
	dma_cfg r9, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	addli r10, zero, 4
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r9, 257
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	lock zero, r10
	addli r10, zero, 1
	addli r13, zero, 128
	addli r12, zero, 16
	addli r11, zero, 4
	addli r20, zero, 5
	ori r9, r9, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r8, zero, 2
	add.s r4, r4, r9
	addli r9, zero, 64
	dma_cfg r4, r7, r9, 3
	addli r4, zero, 512
	addli r7, zero, 5
	addli r8, zero, 6
	dma_cfg r13, r9, r10, 4
	dma_cfg r13, r4, r12, 5
	addli r4, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 3
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r17, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r9, 3
	dma_cfg r13, zero, r10, 4
	dma_cfg r13, zero, r12, 5
	addli r13, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	addli r10, zero, 4
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r8, 0
	.loc	1 116 9 is_stmt 1               # parallel-rne.mlir:116:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 9
	xwait r13, 0
	addli r8, zero, 16
	xwait r4, 0
	addli r4, zero, 2
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 32
	ds_cfg r4, zero, 1
	ds_cfg r8, zero, 14
	ds_cfg r4, zero, 13
	shuffle_coa r7, r3, r8, 2
	addli r3, zero, 8
	unlock zero
	xsignal r10, 0
	addli r10, zero, 4
	xsignal r3, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	bneq r3, r10, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 8
	addli r4, zero, 1
	xwait r10, 0
	addli r9, zero, 16
	xwait r3, 0
	addli r3, zero, 32
	lock zero, r4
	mm_cfg r3, r9, r3, 0
	addli r3, zero, 1
	mm_cfg r4, r4, r4, 2
	addli r4, zero, 4096
	beq r5, zero, .LBB0_32
# %bb.30:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r4, r8, r7, 8
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r21, r21, 1
	bneq r21, r10, .LBB0_14
	j .LBB0_36
.LBB0_32:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	mm r4, r8, r7, 8
.LBB0_33:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	unlock r3
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r21, r21, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r3, zero, 9
	xsignal r20, 0
	xsignal r3, 0
	bneq r21, r10, .LBB0_14
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	bneq r18, r10, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -4108(r30)              # 4-byte Folded Spill
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r2
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	xsignal r1, 0
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r2
	addli r1, zero, 3
	.loc	1 127 7                         # parallel-rne.mlir:127:7
	bneq r2, r1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	storeli.w r1, -4108(r30)                # 4-byte Folded Spill
	addli r1, zero, 13
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -4108(r30)              # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 32
	.loc	1 130 7 is_stmt 1               # parallel-rne.mlir:130:7
	xfence
	addli r11, zero, 1
	addli r28, zero, 5
	addli r1, zero, 6
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	mfence { lm, sm, gm }
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	csr_set csr5, r14
	sync_core
	zext_int2long r[5:6], r3
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	beq r2, zero, .LBB0_65
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r3, zero, 2
	beq r2, r3, .LBB0_89
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r11, .LBB0_113
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r3, r30, -4104
	zext_int2long r[13:14], r10
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_44
.LBB0_43:                               # %middle.block84
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 7
	addli r28, zero, 5
	zext_int2long r[1:2], r1
	.loc	1 168 9 is_stmt 1               # parallel-rne.mlir:168:9
	setlt.ul r1, r[13:14], r[1:2]
	addli.d r[13:14], r[13:14], 1
	beq r1, zero, .LBB0_112
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, r30, -4104
	sll.d r[3:4], r[13:14], r28
	load.d r[20:21], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_46
.LBB0_45:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 184 13                        # parallel-rne.mlir:184:13
	stores.w r15, 12(r28)
	stores.w r19, 8(r28)
	stores.w r17, 4(r28)
	stores.w r18, 0(r28)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	setneq.d r1, r[20:21], r[5:6]
	beq r1, zero, .LBB0_43
.LBB0_46:                               # %vector.body80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[1:2], r[20:21], r[3:4]
	slli r28, r1, 2
	addli r1, r28, 4108
	addli r2, r28, 4104
	loads.w r8, 0(r1)
	addli r1, r28, 4096
	loads.w r7, 0(r2)
	loads.w r11, 0(r1)
	addli r1, r28, 4100
	loads.w r16, 0(r1)
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	and r10, r8, r22
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	setlt.u r1, r24, r10
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r1, zero, .LBB0_48
# %bb.47:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r8, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	or r15, r8, r23
.LBB0_49:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	and r12, r7, r22
	setlt.u r1, r24, r12
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r1, zero, .LBB0_51
# %bb.50:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r7, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_46 Depth=3
	or r19, r7, r23
.LBB0_52:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	and r9, r16, r22
	setlt.u r1, r24, r9
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r1, zero, .LBB0_54
# %bb.53:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_46 Depth=3
	or r17, r16, r23
.LBB0_55:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	and r1, r11, r22
	setlt.u r2, r24, r1
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r2, zero, .LBB0_57
# %bb.56:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r11, 0
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r1, r27, r1
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r1, zero, .LBB0_58
	j .LBB0_59
.LBB0_57:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r11, r23
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r1, r27, r1
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r1, zero, .LBB0_59
.LBB0_58:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r25
	and r18, r1, r26
.LBB0_59:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	setlt.u r1, r27, r9
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r1, zero, .LBB0_62
# %bb.60:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r12
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r1, zero, .LBB0_63
.LBB0_61:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r27, r10
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r1, zero, .LBB0_45
	j .LBB0_64
.LBB0_62:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r25
	and r17, r1, r26
	setlt.u r1, r27, r12
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r1, zero, .LBB0_61
.LBB0_63:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r25
	and r19, r1, r26
	setlt.u r1, r27, r10
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r1, zero, .LBB0_45
.LBB0_64:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r25
	and r15, r1, r26
	j .LBB0_45
.LBB0_65:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 133 7 is_stmt 1               # parallel-rne.mlir:133:7
	xfence
	addli r21, zero, 3
	zext_int2long r[13:14], zero
	addli r1, r30, -4104
	mfence { lm, sm, gm }
	store.d r[13:14], 0(r1)                 # 8-byte Folded Spill
	j .LBB0_67
.LBB0_66:                               # %middle.block96
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], r21
	addli r28, zero, 5
	.loc	1 140 9 is_stmt 1               # parallel-rne.mlir:140:9
	setlt.ul r1, r[13:14], r[1:2]
	addli.d r[13:14], r[13:14], 1
	beq r1, zero, .LBB0_88
.LBB0_67:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_69 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r7, r30, -4104
	sll.d r[3:4], r[13:14], r28
	load.d r[1:2], 0(r7)                    # 8-byte Folded Reload
	j .LBB0_69
.LBB0_68:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 141 11 is_stmt 1              # parallel-rne.mlir:141:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	stores.w r15, 12(r28)
	stores.w r7, 8(r28)
	stores.w r16, 4(r28)
	stores.w r11, 0(r28)
	.loc	1 141 11                        # parallel-rne.mlir:141:11
	setneq.d r8, r[1:2], r[5:6]
	beq r8, zero, .LBB0_66
.LBB0_69:                               # %vector.body92
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	add.ul r[7:8], r[1:2], r[3:4]
	slli r28, r7, 2
	addli r7, r28, 4108
	addli r9, r28, 4104
	loads.w r8, 0(r7)
	addli r7, r28, 4096
	loads.w r19, 0(r9)
	loads.w r18, 0(r7)
	addli r7, r28, 4100
	loads.w r17, 0(r7)
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	and r10, r8, r22
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	setlt.u r7, r24, r10
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r7, zero, .LBB0_71
# %bb.70:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r8, 0
	j .LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_69 Depth=3
	or r15, r8, r23
.LBB0_72:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	and r12, r19, r22
	setlt.u r7, r24, r12
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r7, zero, .LBB0_74
# %bb.73:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r19, 0
	j .LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_69 Depth=3
	or r7, r19, r23
.LBB0_75:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	and r9, r17, r22
	setlt.u r11, r24, r9
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r11, zero, .LBB0_77
# %bb.76:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r17, 0
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_69 Depth=3
	or r16, r17, r23
.LBB0_78:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	and r20, r18, r22
	setlt.u r11, r24, r20
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r11, zero, .LBB0_80
# %bb.79:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r18, 0
	.loc	1 153 19 is_stmt 1              # parallel-rne.mlir:153:19
	setlt.u r20, r27, r20
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	beq r20, zero, .LBB0_81
	j .LBB0_82
.LBB0_80:                               #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r18, r23
	.loc	1 153 19 is_stmt 1              # parallel-rne.mlir:153:19
	setlt.u r20, r27, r20
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r20, zero, .LBB0_82
.LBB0_81:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r18, 16
	andi r11, r11, 1
	add.s r11, r18, r11
	add.s r11, r11, r25
	and r11, r11, r26
.LBB0_82:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r9, r27, r9
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	beq r9, zero, .LBB0_85
# %bb.83:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	beq r9, zero, .LBB0_86
.LBB0_84:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r10
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r9, zero, .LBB0_68
	j .LBB0_87
.LBB0_85:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r17, 16
	andi r9, r9, 1
	add.s r9, r17, r9
	add.s r9, r9, r25
	and r16, r9, r26
	setlt.u r9, r27, r12
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r9, zero, .LBB0_84
.LBB0_86:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r19, 16
	andi r7, r7, 1
	add.s r7, r19, r7
	add.s r7, r7, r25
	and r7, r7, r26
	setlt.u r9, r27, r10
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r9, zero, .LBB0_68
.LBB0_87:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r25
	and r15, r8, r26
	j .LBB0_68
.LBB0_88:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r2
	addli r11, zero, 1
	addli r10, zero, 4
	addli r1, zero, 6
	addli r14, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { sm }
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r3, zero, 2
	bneq r2, r3, .LBB0_41
.LBB0_89:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 189 7 is_stmt 1               # parallel-rne.mlir:189:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_91
.LBB0_90:                               # %middle.block90
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 11
	zext_int2long r[3:4], r3
	.loc	1 196 9 is_stmt 1               # parallel-rne.mlir:196:9
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	beq r3, zero, .LBB0_112
.LBB0_91:                               # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[1:2], r28
	zext_int2long r[3:4], zero
	j .LBB0_93
.LBB0_92:                               # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 197 11 is_stmt 1              # parallel-rne.mlir:197:11
	addli.d r[3:4], r[3:4], 4
	.loc	1 212 13                        # parallel-rne.mlir:212:13
	stores.w r15, 12(r20)
	stores.w r19, 8(r20)
	stores.w r17, 4(r20)
	stores.w r18, 0(r20)
	.loc	1 197 11                        # parallel-rne.mlir:197:11
	setneq.d r7, r[3:4], r[5:6]
	beq r7, zero, .LBB0_90
.LBB0_93:                               # %vector.body86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_91 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	add.ul r[7:8], r[3:4], r[13:14]
	slli r20, r7, 2
	addli r7, r20, 4108
	addli r9, r20, 4104
	loads.w r8, 0(r7)
	addli r7, r20, 4096
	loads.w r11, 0(r7)
	addli r7, r20, 4100
	loads.w r16, 0(r7)
	loads.w r7, 0(r9)
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r10, r8, r22
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	setlt.u r9, r24, r10
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r9, zero, .LBB0_95
# %bb.94:                               # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r8, 0
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_93 Depth=3
	or r15, r8, r23
.LBB0_96:                               # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	and r12, r7, r22
	setlt.u r9, r24, r12
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r9, zero, .LBB0_98
# %bb.97:                               # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r7, 0
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_93 Depth=3
	or r19, r7, r23
.LBB0_99:                               # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	and r9, r16, r22
	setlt.u r17, r24, r9
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r17, zero, .LBB0_101
# %bb.100:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_93 Depth=3
	or r17, r16, r23
.LBB0_102:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	and r21, r11, r22
	setlt.u r18, r24, r21
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r18, zero, .LBB0_104
# %bb.103:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r11, 0
	.loc	1 209 19 is_stmt 1              # parallel-rne.mlir:209:19
	setlt.u r21, r27, r21
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	beq r21, zero, .LBB0_105
	j .LBB0_106
.LBB0_104:                              #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r11, r23
	.loc	1 209 19 is_stmt 1              # parallel-rne.mlir:209:19
	setlt.u r21, r27, r21
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r21, zero, .LBB0_106
.LBB0_105:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r11, 16
	andi r18, r18, 1
	add.s r11, r11, r18
	add.s r11, r11, r25
	and r18, r11, r26
.LBB0_106:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	setlt.u r9, r27, r9
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	beq r9, zero, .LBB0_109
# %bb.107:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	beq r9, zero, .LBB0_110
.LBB0_108:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r27, r10
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r7, zero, .LBB0_92
	j .LBB0_111
.LBB0_109:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r16, 16
	andi r9, r9, 1
	add.s r9, r16, r9
	add.s r9, r9, r25
	and r17, r9, r26
	setlt.u r9, r27, r12
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r9, zero, .LBB0_108
.LBB0_110:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r19, r7, r26
	setlt.u r7, r27, r10
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r7, zero, .LBB0_92
.LBB0_111:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r25
	and r15, r7, r26
	j .LBB0_92
.LBB0_112:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r2
	addli r11, zero, 1
	addli r10, zero, 4
	addli r1, zero, 6
	addli r14, zero, 255
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_113:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 217 7 is_stmt 1               # parallel-rne.mlir:217:7
	loadli.w r3,  -4108(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_141
# %bb.114:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	beq r2, r10, .LBB0_165
.LBB0_115:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	addli r3, zero, 7
	beq r2, r3, .LBB0_189
.LBB0_116:                              #   in Loop: Header=BB0_8 Depth=1
	beq r2, r1, .LBB0_212
# %bb.117:                              #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r28, .LBB0_236
# %bb.118:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_120
.LBB0_119:                              # %middle.block
                                        #   in Loop: Header=BB0_120 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 23
	zext_int2long r[3:4], r3
	.loc	1 280 9 is_stmt 1               # parallel-rne.mlir:280:9
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	beq r3, zero, .LBB0_235
.LBB0_120:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_122 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[1:2], r28
	zext_int2long r[3:4], zero
	j .LBB0_122
.LBB0_121:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 281 11 is_stmt 1              # parallel-rne.mlir:281:11
	addli.d r[3:4], r[3:4], 4
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r15, 12(r20)
	stores.w r19, 8(r20)
	stores.w r17, 4(r20)
	stores.w r18, 0(r20)
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	setneq.d r7, r[3:4], r[5:6]
	beq r7, zero, .LBB0_119
.LBB0_122:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_120 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	add.ul r[7:8], r[3:4], r[13:14]
	slli r20, r7, 2
	addli r7, r20, 4108
	addli r9, r20, 4104
	loads.w r8, 0(r7)
	addli r7, r20, 4096
	loads.w r11, 0(r7)
	addli r7, r20, 4100
	loads.w r16, 0(r7)
	loads.w r7, 0(r9)
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	and r10, r8, r22
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	setlt.u r9, r24, r10
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_124
# %bb.123:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r8, 0
	j .LBB0_125
.LBB0_124:                              #   in Loop: Header=BB0_122 Depth=3
	or r15, r8, r23
.LBB0_125:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	and r12, r7, r22
	setlt.u r9, r24, r12
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r9, zero, .LBB0_127
# %bb.126:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r7, 0
	j .LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_122 Depth=3
	or r19, r7, r23
.LBB0_128:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	and r9, r16, r22
	setlt.u r17, r24, r9
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r17, zero, .LBB0_130
# %bb.129:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_131
.LBB0_130:                              #   in Loop: Header=BB0_122 Depth=3
	or r17, r16, r23
.LBB0_131:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	and r21, r11, r22
	setlt.u r18, r24, r21
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r18, zero, .LBB0_133
# %bb.132:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r11, 0
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r21, r27, r21
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r21, zero, .LBB0_134
	j .LBB0_135
.LBB0_133:                              #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r11, r23
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r21, r27, r21
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r21, zero, .LBB0_135
.LBB0_134:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r11, 16
	andi r18, r18, 1
	add.s r11, r11, r18
	add.s r11, r11, r25
	and r18, r11, r26
.LBB0_135:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	setlt.u r9, r27, r9
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r9, zero, .LBB0_138
# %bb.136:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r9, zero, .LBB0_139
.LBB0_137:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r27, r10
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r7, zero, .LBB0_121
	j .LBB0_140
.LBB0_138:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r16, 16
	andi r9, r9, 1
	add.s r9, r16, r9
	add.s r9, r9, r25
	and r17, r9, r26
	setlt.u r9, r27, r12
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r9, zero, .LBB0_137
.LBB0_139:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r19, r7, r26
	setlt.u r7, r27, r10
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r7, zero, .LBB0_121
.LBB0_140:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r25
	and r15, r7, r26
	j .LBB0_121
.LBB0_141:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	.loc	1 217 7 is_stmt 1               # parallel-rne.mlir:217:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_143
.LBB0_142:                              # %middle.block78
                                        #   in Loop: Header=BB0_143 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 15
	zext_int2long r[3:4], r3
	.loc	1 224 9 is_stmt 1               # parallel-rne.mlir:224:9
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	beq r3, zero, .LBB0_164
.LBB0_143:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_145 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[1:2], r28
	zext_int2long r[3:4], zero
	j .LBB0_145
.LBB0_144:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 225 11 is_stmt 1              # parallel-rne.mlir:225:11
	addli.d r[3:4], r[3:4], 4
	.loc	1 240 13                        # parallel-rne.mlir:240:13
	stores.w r15, 12(r20)
	stores.w r19, 8(r20)
	stores.w r17, 4(r20)
	stores.w r18, 0(r20)
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	setneq.d r7, r[3:4], r[5:6]
	beq r7, zero, .LBB0_142
.LBB0_145:                              # %vector.body74
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_143 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.ul r[7:8], r[3:4], r[13:14]
	slli r20, r7, 2
	addli r7, r20, 4108
	addli r9, r20, 4104
	loads.w r8, 0(r7)
	addli r7, r20, 4096
	loads.w r11, 0(r7)
	addli r7, r20, 4100
	loads.w r16, 0(r7)
	loads.w r7, 0(r9)
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	and r10, r8, r22
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	setlt.u r9, r24, r10
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r9, zero, .LBB0_147
# %bb.146:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r8, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_145 Depth=3
	or r15, r8, r23
.LBB0_148:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	and r12, r7, r22
	setlt.u r9, r24, r12
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r9, zero, .LBB0_150
# %bb.149:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r7, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_145 Depth=3
	or r19, r7, r23
.LBB0_151:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	and r9, r16, r22
	setlt.u r17, r24, r9
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r17, zero, .LBB0_153
# %bb.152:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_145 Depth=3
	or r17, r16, r23
.LBB0_154:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	and r21, r11, r22
	setlt.u r18, r24, r21
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r18, zero, .LBB0_156
# %bb.155:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r11, 0
	.loc	1 237 19 is_stmt 1              # parallel-rne.mlir:237:19
	setlt.u r21, r27, r21
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	beq r21, zero, .LBB0_157
	j .LBB0_158
.LBB0_156:                              #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r11, r23
	.loc	1 237 19 is_stmt 1              # parallel-rne.mlir:237:19
	setlt.u r21, r27, r21
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r21, zero, .LBB0_158
.LBB0_157:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r11, 16
	andi r18, r18, 1
	add.s r11, r11, r18
	add.s r11, r11, r25
	and r18, r11, r26
.LBB0_158:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.u r9, r27, r9
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	beq r9, zero, .LBB0_161
# %bb.159:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	beq r9, zero, .LBB0_162
.LBB0_160:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r27, r10
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r7, zero, .LBB0_144
	j .LBB0_163
.LBB0_161:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r16, 16
	andi r9, r9, 1
	add.s r9, r16, r9
	add.s r9, r9, r25
	and r17, r9, r26
	setlt.u r9, r27, r12
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r9, zero, .LBB0_160
.LBB0_162:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r19, r7, r26
	setlt.u r7, r27, r10
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r7, zero, .LBB0_144
.LBB0_163:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r25
	and r15, r7, r26
	j .LBB0_144
.LBB0_164:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r2
	addli r11, zero, 1
	addli r10, zero, 4
	addli r1, zero, 6
	addli r14, zero, 255
	.loc	1 217 7                         # parallel-rne.mlir:217:7
	mfence { sm }
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	bneq r2, r10, .LBB0_115
.LBB0_165:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_167
.LBB0_166:                              # %middle.block72
                                        #   in Loop: Header=BB0_167 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 19
	zext_int2long r[3:4], r3
	.loc	1 252 9 is_stmt 1               # parallel-rne.mlir:252:9
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	beq r3, zero, .LBB0_188
.LBB0_167:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_169 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[1:2], r28
	zext_int2long r[3:4], zero
	j .LBB0_169
.LBB0_168:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 253 11 is_stmt 1              # parallel-rne.mlir:253:11
	addli.d r[3:4], r[3:4], 4
	.loc	1 268 13                        # parallel-rne.mlir:268:13
	stores.w r15, 12(r20)
	stores.w r19, 8(r20)
	stores.w r17, 4(r20)
	stores.w r18, 0(r20)
	.loc	1 253 11                        # parallel-rne.mlir:253:11
	setneq.d r7, r[3:4], r[5:6]
	beq r7, zero, .LBB0_166
.LBB0_169:                              # %vector.body68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_167 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	add.ul r[7:8], r[3:4], r[13:14]
	slli r20, r7, 2
	addli r7, r20, 4108
	addli r9, r20, 4104
	loads.w r8, 0(r7)
	addli r7, r20, 4096
	loads.w r11, 0(r7)
	addli r7, r20, 4100
	loads.w r16, 0(r7)
	loads.w r7, 0(r9)
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	and r10, r8, r22
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	setlt.u r9, r24, r10
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_171
# %bb.170:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r8, 0
	j .LBB0_172
.LBB0_171:                              #   in Loop: Header=BB0_169 Depth=3
	or r15, r8, r23
.LBB0_172:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	and r12, r7, r22
	setlt.u r9, r24, r12
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_174
# %bb.173:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r7, 0
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_169 Depth=3
	or r19, r7, r23
.LBB0_175:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	and r9, r16, r22
	setlt.u r17, r24, r9
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r17, zero, .LBB0_177
# %bb.176:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_169 Depth=3
	or r17, r16, r23
.LBB0_178:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	and r21, r11, r22
	setlt.u r18, r24, r21
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r18, zero, .LBB0_180
# %bb.179:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r11, 0
	.loc	1 265 19 is_stmt 1              # parallel-rne.mlir:265:19
	setlt.u r21, r27, r21
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	beq r21, zero, .LBB0_181
	j .LBB0_182
.LBB0_180:                              #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r11, r23
	.loc	1 265 19 is_stmt 1              # parallel-rne.mlir:265:19
	setlt.u r21, r27, r21
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r21, zero, .LBB0_182
.LBB0_181:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r11, 16
	andi r18, r18, 1
	add.s r11, r11, r18
	add.s r11, r11, r25
	and r18, r11, r26
.LBB0_182:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	setlt.u r9, r27, r9
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	beq r9, zero, .LBB0_185
# %bb.183:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	beq r9, zero, .LBB0_186
.LBB0_184:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r27, r10
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r7, zero, .LBB0_168
	j .LBB0_187
.LBB0_185:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r16, 16
	andi r9, r9, 1
	add.s r9, r16, r9
	add.s r9, r9, r25
	and r17, r9, r26
	setlt.u r9, r27, r12
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r9, zero, .LBB0_184
.LBB0_186:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r19, r7, r26
	setlt.u r7, r27, r10
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r7, zero, .LBB0_168
.LBB0_187:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r25
	and r15, r7, r26
	j .LBB0_168
.LBB0_188:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r2
	addli r11, zero, 1
	addli r10, zero, 4
	addli r1, zero, 6
	addli r14, zero, 255
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	mfence { sm }
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	addli r3, zero, 7
	bneq r2, r3, .LBB0_116
.LBB0_189:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 329 7 is_stmt 1               # parallel-rne.mlir:329:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_191
.LBB0_190:                              # %middle.block66
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 31
	zext_int2long r[3:4], r3
	.loc	1 336 9 is_stmt 1               # parallel-rne.mlir:336:9
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	beq r3, zero, .LBB0_235
.LBB0_191:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_193 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[1:2], r28
	zext_int2long r[3:4], zero
	j .LBB0_193
.LBB0_192:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 337 11 is_stmt 1              # parallel-rne.mlir:337:11
	addli.d r[3:4], r[3:4], 4
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	stores.w r15, 12(r20)
	stores.w r19, 8(r20)
	stores.w r17, 4(r20)
	stores.w r18, 0(r20)
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	setneq.d r7, r[3:4], r[5:6]
	beq r7, zero, .LBB0_190
.LBB0_193:                              # %vector.body62
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.ul r[7:8], r[3:4], r[13:14]
	slli r20, r7, 2
	addli r7, r20, 4108
	addli r9, r20, 4104
	loads.w r8, 0(r7)
	addli r7, r20, 4096
	loads.w r11, 0(r7)
	addli r7, r20, 4100
	loads.w r16, 0(r7)
	loads.w r7, 0(r9)
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	and r10, r8, r22
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	setlt.u r9, r24, r10
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r9, zero, .LBB0_195
# %bb.194:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r8, 0
	j .LBB0_196
.LBB0_195:                              #   in Loop: Header=BB0_193 Depth=3
	or r15, r8, r23
.LBB0_196:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	and r12, r7, r22
	setlt.u r9, r24, r12
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r9, zero, .LBB0_198
# %bb.197:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r7, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_193 Depth=3
	or r19, r7, r23
.LBB0_199:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	and r9, r16, r22
	setlt.u r17, r24, r9
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r17, zero, .LBB0_201
# %bb.200:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_193 Depth=3
	or r17, r16, r23
.LBB0_202:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	and r21, r11, r22
	setlt.u r18, r24, r21
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r18, zero, .LBB0_204
# %bb.203:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r11, 0
	.loc	1 349 19 is_stmt 1              # parallel-rne.mlir:349:19
	setlt.u r21, r27, r21
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	beq r21, zero, .LBB0_205
	j .LBB0_206
.LBB0_204:                              #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r11, r23
	.loc	1 349 19 is_stmt 1              # parallel-rne.mlir:349:19
	setlt.u r21, r27, r21
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r21, zero, .LBB0_206
.LBB0_205:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r11, 16
	andi r18, r18, 1
	add.s r11, r11, r18
	add.s r11, r11, r25
	and r18, r11, r26
.LBB0_206:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	setlt.u r9, r27, r9
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	beq r9, zero, .LBB0_209
# %bb.207:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	beq r9, zero, .LBB0_210
.LBB0_208:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r27, r10
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r7, zero, .LBB0_192
	j .LBB0_211
.LBB0_209:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r16, 16
	andi r9, r9, 1
	add.s r9, r16, r9
	add.s r9, r9, r25
	and r17, r9, r26
	setlt.u r9, r27, r12
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r9, zero, .LBB0_208
.LBB0_210:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r19, r7, r26
	setlt.u r7, r27, r10
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r7, zero, .LBB0_192
.LBB0_211:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r25
	and r15, r7, r26
	j .LBB0_192
.LBB0_212:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	.loc	1 301 7 is_stmt 1               # parallel-rne.mlir:301:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[1:2], r1
	j .LBB0_214
.LBB0_213:                              # %middle.block60
                                        #   in Loop: Header=BB0_214 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 27
	zext_int2long r[3:4], r3
	.loc	1 308 9 is_stmt 1               # parallel-rne.mlir:308:9
	setlt.ul r3, r[1:2], r[3:4]
	addli.d r[1:2], r[1:2], 1
	beq r3, zero, .LBB0_235
.LBB0_214:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_216 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[13:14], r[1:2], r28
	zext_int2long r[3:4], zero
	j .LBB0_216
.LBB0_215:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 309 11 is_stmt 1              # parallel-rne.mlir:309:11
	addli.d r[3:4], r[3:4], 4
	.loc	1 324 13                        # parallel-rne.mlir:324:13
	stores.w r15, 12(r20)
	stores.w r19, 8(r20)
	stores.w r17, 4(r20)
	stores.w r18, 0(r20)
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	setneq.d r7, r[3:4], r[5:6]
	beq r7, zero, .LBB0_213
.LBB0_216:                              # %vector.body56
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_214 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	add.ul r[7:8], r[3:4], r[13:14]
	slli r20, r7, 2
	addli r7, r20, 4108
	addli r9, r20, 4104
	loads.w r8, 0(r7)
	addli r7, r20, 4096
	loads.w r11, 0(r7)
	addli r7, r20, 4100
	loads.w r16, 0(r7)
	loads.w r7, 0(r9)
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	and r10, r8, r22
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	setlt.u r9, r24, r10
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r9, zero, .LBB0_218
# %bb.217:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r8, 0
	j .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_216 Depth=3
	or r15, r8, r23
.LBB0_219:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	and r12, r7, r22
	setlt.u r9, r24, r12
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r9, zero, .LBB0_221
# %bb.220:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r7, 0
	j .LBB0_222
.LBB0_221:                              #   in Loop: Header=BB0_216 Depth=3
	or r19, r7, r23
.LBB0_222:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	and r9, r16, r22
	setlt.u r17, r24, r9
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r17, zero, .LBB0_224
# %bb.223:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r16, 0
	j .LBB0_225
.LBB0_224:                              #   in Loop: Header=BB0_216 Depth=3
	or r17, r16, r23
.LBB0_225:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	and r21, r11, r22
	setlt.u r18, r24, r21
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r18, zero, .LBB0_227
# %bb.226:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r11, 0
	.loc	1 321 19 is_stmt 1              # parallel-rne.mlir:321:19
	setlt.u r21, r27, r21
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	beq r21, zero, .LBB0_228
	j .LBB0_229
.LBB0_227:                              #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r11, r23
	.loc	1 321 19 is_stmt 1              # parallel-rne.mlir:321:19
	setlt.u r21, r27, r21
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r21, zero, .LBB0_229
.LBB0_228:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r11, 16
	andi r18, r18, 1
	add.s r11, r11, r18
	add.s r11, r11, r25
	and r18, r11, r26
.LBB0_229:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	setlt.u r9, r27, r9
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	beq r9, zero, .LBB0_232
# %bb.230:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r27, r12
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	beq r9, zero, .LBB0_233
.LBB0_231:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r27, r10
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r7, zero, .LBB0_215
	j .LBB0_234
.LBB0_232:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r16, 16
	andi r9, r9, 1
	add.s r9, r16, r9
	add.s r9, r9, r25
	and r17, r9, r26
	setlt.u r9, r27, r12
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r9, zero, .LBB0_231
.LBB0_233:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r7, 16
	andi r9, r9, 1
	add.s r7, r7, r9
	add.s r7, r7, r25
	and r19, r7, r26
	setlt.u r7, r27, r10
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r7, zero, .LBB0_215
.LBB0_234:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r25
	and r15, r7, r26
	j .LBB0_215
.LBB0_235:                              # %.sink.split51
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r2
	addli r11, zero, 1
	addli r10, zero, 4
	addli r14, zero, 255
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_236:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 357 7 is_stmt 1               # parallel-rne.mlir:357:7
	csr_set csr5, r14
	sync_core
	.loc	1 358 7                         # parallel-rne.mlir:358:7
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.237:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	bneq r2, zero, .LBB0_7
# %bb.238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	loadli.w r1,  -4144(r30)                # 4-byte Folded Reload
	addli r3, zero, 224
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	loadli.w r7,  -4140(r30)                # 4-byte Folded Reload
	zext_int2long r[9:10], zero
	zext_int2long r[3:4], r3
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	zext_int2long r[1:2], r1
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	sext_int2long r[7:8], r7
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	min.ul r[3:4], r[1:2], r[3:4]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	min.sl r[9:10], r[7:8], r[9:10]
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	addli.d r[3:4], r[3:4], 32
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	addli.d r[3:4], r[9:10], 32
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	addli r10, r30, -4136
	addli r9, zero, 14
	load.d r[12:13], 0(r10)                 # 8-byte Folded Reload
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	max.sl r[3:4], r[3:4], r[7:8]
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	min.ul r[1:2], r[1:2], r[5:6]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	sub.sl r[3:4], r[3:4], r[7:8]
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	sll.d r[9:10], r[12:13], r9
	load.d r[12:13], 16(r30)
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.sl r[3:4], r[3:4], r[5:6]
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	add.ul r[9:10], r[12:13], r[9:10]
	addli r12, r30, -4128
	load.d r[7:8], 0(r12)                   # 8-byte Folded Reload
	add.ul r[7:8], r[9:10], r[7:8]
	addli r9, zero, 12
	addli r10, zero, 4
	xwait r9, 0
	lock zero, r28
	addli r9, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r11, zero, 1
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, r9, r9, 3
	addli r7, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r5, r7, 5
	andi r1, r1, 62
	dma_cfg r9, r2, r5, 4
	addli r5, zero, 512
	dma_cfg r5, r2, r3, 5
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r2
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r28
	j .LBB0_6
.LBB0_239:                              # %._crit_edge
	.loc	1 377 5                         # parallel-rne.mlir:377:5
	xsignal zero, 0
	bneq r2, zero, .LBB0_241
# %bb.240:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 377 5                         # parallel-rne.mlir:377:5
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
.LBB0_241:
	.loc	1 378 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:378:5
	addli sp, sp, 4152
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
	.long	4216                            # 0x1078
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-b9v014ld" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
