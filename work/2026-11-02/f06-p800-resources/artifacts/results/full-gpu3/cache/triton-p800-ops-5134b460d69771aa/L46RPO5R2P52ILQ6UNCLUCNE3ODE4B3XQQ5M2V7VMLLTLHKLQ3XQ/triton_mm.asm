	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-e5j4al_c" "parallel-rne.mlir"
	.loc	1 11 0                          # parallel-rne.mlir:11:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3728
	addli r1, zero, 1
.Ltmp0:
	.loc	1 33 5 prologue_end             # parallel-rne.mlir:33:5
	core_id r8
	addli r30, sp, 3664
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 35 10 is_stmt 1               # parallel-rne.mlir:35:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -772(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -1796(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -2568(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -3592(r30)
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
	storeli.w r4, -1792(r30)
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
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	storeli.w r4, -2040(r30)
	storeli.w r4, -2044(r30)
	storeli.w r4, -2048(r30)
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
	storeli.w r4, -2560(r30)
	storeli.w r4, -2564(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	storeli.w r4, -1548(r30)
	storeli.w r4, -1552(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r4, -1800(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
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
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r1, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	fmac.s r2, r2, r6
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	min.s r3, r2, r3
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	ble.s r3, r1, .LBB0_294
# %bb.4:                                # %.lr.ph
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	sext_int2long r[5:6], r1
	lui r1, 524287
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	addli r4, r30, -3664
	addli r7, zero, 1
	addli r9, zero, 6
	addli r12, zero, 4
	lui r26, 522240
	lui r28, 1048560
	addli r10, zero, 0
	ori r24, r1, 4095
	lui r1, 7
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	ori r27, r1, 4095
	lui r1, 522239
	ori r1, r1, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	addli r2, zero, 12
	xsignal r2, 0
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, r30, -3624
	.loc	1 52 5 is_stmt 1                # parallel-rne.mlir:52:5
	addli r4, r30, -3664
	loadli.w r10,  -3628(r30)               # 4-byte Folded Reload
	addli r7, zero, 1
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	setlt.sl r2, r[5:6], r[2:3]
	beq r2, zero, .LBB0_294
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
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r16, zero, 13
	.loc	1 79 7 is_stmt 1                # parallel-rne.mlir:79:7
	bneq r8, r12, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	addli r3, r30, -3624
	addli r8, zero, 8
	addli r4, zero, 0
	addli r18, zero, 6
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	loadli.w r3,  28(r30)
	div.s r2, r5, r2
	addli r6, zero, 2
	mod.s r6, r10, r6
	addli r10, r10, 1
	storeli.w r10, -3628(r30)               # 4-byte Folded Spill
	div.s r2, r2, r3
	addli r3, zero, 32
	div.s r3, r2, r3
	slli r5, r3, 3
	slli r3, r3, 5
	sub.s r7, r7, r5
	sub.s r3, r2, r3
	min.s r7, r7, r8
	mod.s r2, r2, r7
	div.s r8, r3, r7
	slli r7, r6, 13
	lui r3, 4
	add.s r3, r7, r3
	add.s r2, r5, r2
	slli r5, r8, 6
	storeli.w r5, -3656(r30)                # 4-byte Folded Spill
	zext_int2long r[5:6], r8
	slli r8, r2, 5
	zext_int2long r[10:11], r2
	addli r2, zero, 1
	storeli.w r8, -3652(r30)                # 4-byte Folded Spill
	addli r8, r30, -3648
	sll.d r[5:6], r[5:6], r9
	store.d r[10:11], 0(r8)                 # 8-byte Folded Spill
	addli r8, zero, 11
	.loc	1 80 7 is_stmt 1                # parallel-rne.mlir:80:7
	sll.d r[13:14], r[5:6], r2
	addli r2, r30, -3640
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r5,  -3592(r30)
	sll.d r[8:9], r[10:11], r8
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r10, r30, -3600
	store.d r[13:14], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -3608
	store.d r[8:9], 0(r10)                  # 8-byte Folded Spill
	load.d r[8:9], 8(r30)
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	loadli.w r10,  -2568(r30)
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	add.ul r[8:9], r[8:9], r[13:14]
	store.d r[8:9], 0(r2)                   # 8-byte Folded Spill
	addli r2, zero, 0
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r6, 8
	addli r14, zero, 4
	addli r22, zero, 64
	addli r9, zero, 32
	addli r15, zero, 5
	ori r6, r6, 64
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	lock zero, r14
	dma_cfg r11, r11, zero, 0
	add.s r6, r8, r6
	dma_cfg zero, r21, zero, 2
	addli r8, zero, 2
	dma_cfg r6, r20, r22, 3
	addli r20, zero, 128
	addli r6, zero, 7
	dma_cfg r20, r22, r11, 4
	dma_cfg r20, r20, r13, 5
	dma_cfg zero, zero, r9, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r15
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 6
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r19, 10
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
	dma_cfg zero, zero, r16, 10
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
	addli r6, zero, 23
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
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r22, 3
	addli r12, zero, 4
	dma_cfg r20, zero, r11, 4
	dma_cfg r20, zero, r13, 5
	dma_cfg zero, zero, r9, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	xsignal r8, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r6,  -1796(r30)
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	loadli.w r8,  -772(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r6, r6, 1
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	addli r8, r8, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r6, -1796(r30)
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	storeli.w r8, -772(r30)
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r2, r2, 1
	beq r2, r12, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	addli r4, r4, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	addli r6, r30, -3600
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	zext_int2long r[13:14], r2
	addli r15, zero, 4
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	load.d r[8:9], 0(r6)                    # 8-byte Folded Reload
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	sll.d r[20:21], r[13:14], r12
	addli r6, zero, 2047
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	add.ul r[22:23], r[20:21], r[8:9]
	zext_int2long r[8:9], r6
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	setlt.ul r6, r[8:9], r[22:23]
	.loc	1 89 15                         # parallel-rne.mlir:89:15
	bneq r6, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli.d r[20:21], r[22:23], 0
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	add.s r6, r5, r4
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	addli r8, zero, 255
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r9, r10, r4
	.loc	1 99 15 is_stmt 1               # parallel-rne.mlir:99:15
	addli r11, zero, 192
	lui r12, 8
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r25
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r8, r6, r8
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	mod.s r11, r9, r11
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r6, r6, 1
	storeli.w r6, -3592(r30)
	slli r6, r8, 11
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	slli r8, r11, 12
	addli r11, r9, 1
	storeli.w r11, -2568(r30)
	add.s r12, r8, r12
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	addli r11, zero, 2
	beq r25, r11, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 1
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	bneq r25, r11, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r19, zero, 6
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	sll.d r[13:14], r[22:23], r11
	addli r6, zero, 32
	addli r18, zero, 3
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r17
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	srl.d r[22:23], r[20:21], r19
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	load.d r[20:21], 0(r30)
	xwait r18, 0
	add.ul r[20:21], r[20:21], r[13:14]
	sub.s r13, r6, r22
	addli r14, zero, 191
	blt.s r14, r9, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r14, zero, 5
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	addli r9, zero, 2
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 7
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
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
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 15
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 16
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
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
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r9, 3
	addli r9, zero, 128
	dma_cfg r9, zero, r11, 4
	dma_cfg r9, zero, r6, 5
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r8, zero, 2
	.loc	1 104 9 is_stmt 1               # parallel-rne.mlir:104:9
	addli r9, zero, 5
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r17
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	xwait r8, 0
	xwait r9, 0
	lock zero, zero
	addli r9, zero, 16
	ds_cfg r8, zero, 0
	addli r8, zero, 32
	ds_cfg r8, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r8, zero, 13
	shuffle_batch r6, r12, r9, 1
	addli r12, zero, 4
	addli r6, zero, 3
	unlock zero
	xsignal r6, 0
	xsignal r12, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	loadli.w r11,  -772(r30)
	addli r12, zero, 192
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r8,  -1796(r30)
	addli r9, zero, 255
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	mod.s r12, r11, r12
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r9, r8, r9
	addli r8, r8, 1
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	addli r17, r11, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r8, -1796(r30)
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	storeli.w r17, -772(r30)
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r17, zero, 7
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	slli r8, r12, 12
	lui r12, 200
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r9, r9, 12
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	add.s r12, r8, r12
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	beq r25, r17, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r25, r18, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	addli r6, r30, -3608
	addli r22, zero, 13
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r17
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	load.d r[19:20], 0(r6)                  # 8-byte Folded Reload
	sll.d r[13:14], r[13:14], r22
	addli r6, zero, 191
	add.ul r[20:21], r[19:20], r[13:14]
	addli r19, zero, 7
	xwait r19, 0
	blt.s r6, r11, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r13, zero, 5
	addli r6, zero, 1
	addli r11, zero, 2
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r9, zero, 3
	addli r14, zero, 17
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r19, 10
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
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 15
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 16
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 18
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 19
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 20
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 21
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 22
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 23
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 24
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 25
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 26
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 27
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 28
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 29
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 30
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 31
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 64
	dma_cfg r6, r6, zero, 0
	dma_cfg r6, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r14, 3
	addli r14, zero, 128
	dma_cfg r14, zero, r11, 4
	addli r11, zero, 256
	dma_cfg r11, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r6, 200
	addli r9, zero, 4
	addli r15, zero, 64
	addli r11, zero, 2
	addli r18, zero, 128
	addli r14, zero, 16
	addli r13, zero, 5
	addli r16, zero, 13
	ori r6, r6, 64
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	lock zero, r9
	add.s r6, r8, r6
	addli r8, zero, 1
	dma_cfg r8, r8, zero, 0
	dma_cfg zero, r21, zero, 2
	dma_cfg r6, r20, r15, 3
	addli r20, zero, 256
	addli r6, zero, 512
	dma_cfg r18, r15, r11, 4
	dma_cfg r20, r6, r14, 5
	addli r6, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 8
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r19, 10
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
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 15
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 17
	dma_cfg zero, zero, r14, 10
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
	addli r6, zero, 23
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
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r15, 3
	addli r12, zero, 4
	dma_cfg r18, zero, r11, 4
	addli r18, zero, 6
	dma_cfg r20, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r9, 0
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r6, zero, 9
	xwait r18, 0
	addli r8, zero, 64
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r17
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	xwait r6, 0
	addli r6, zero, 2
	lock zero, zero
	ds_cfg r6, zero, 0
	addli r6, zero, 16
	ds_cfg r8, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r8, zero, 13
	shuffle_coa r9, r12, r6, 2
	addli r6, zero, 7
	addli r12, zero, 4
	unlock zero
	xsignal r6, 0
	addli r6, zero, 8
	xsignal r6, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r8
	addli r12, zero, 4
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	bneq r8, r12, .LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r8, zero, 8
	addli r11, zero, 1
	xwait r12, 0
	addli r13, zero, 16
	addli r14, zero, 64
	xwait r8, 0
	addli r8, zero, 32
	lock zero, r11
	mm_cfg r14, r13, r8, 0
	addli r8, zero, 2
	mm_cfg r11, r8, r11, 2
	beq r4, zero, .LBB0_31
# %bb.29:                               # %.preheader30
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r3, r6, r9, 8
	j .LBB0_32
.LBB0_30:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r2, r2, 1
	bneq r2, r12, .LBB0_13
	j .LBB0_35
.LBB0_31:                               # %.preheader29
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	mm r3, r6, r9, 8
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r6, zero, 1
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r2, r2, 1
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	unlock r6
	addli r6, zero, 5
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	bneq r2, r12, .LBB0_13
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 127 7                         # parallel-rne.mlir:127:7
	bneq r17, r12, .LBB0_35
.LBB0_34:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	storeli.w zero, -3612(r30)              # 4-byte Folded Spill
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r8
	.loc	1 127 7                         # parallel-rne.mlir:127:7
	xsignal r2, 0
	j .LBB0_38
.LBB0_35:                               # %.thread44
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r8
	addli r2, zero, 3
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	bneq r8, r2, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	storeli.w r2, -3612(r30)                # 4-byte Folded Spill
	xwait r16, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -3612(r30)              # 4-byte Folded Spill
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	addli r2, zero, 255
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	xfence
	addli r9, zero, 6
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { lm, sm, gm }
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	csr_set csr5, r2
	addli r2, zero, 64
	sync_core
	zext_int2long r[15:16], r2
	addli r2, zero, 63
	zext_int2long r[4:5], r2
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	beq r8, zero, .LBB0_71
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	addli r2, zero, 2
	beq r8, r2, .LBB0_102
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 1
	bneq r8, r2, .LBB0_133
# %bb.41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[10:11], zero
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	addli r2, r30, -3608
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	zext_int2long r[10:11], r12
	xfence
	mfence { lm, sm, gm }
	j .LBB0_43
.LBB0_42:                               # %middle.block99
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 7
	zext_int2long r[8:9], r2
	addli r2, r30, -3600
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	.loc	1 175 9 is_stmt 1               # parallel-rne.mlir:175:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli.d r[10:11], r[8:9], 0
	addli r9, zero, 6
	beq r2, zero, .LBB0_132
.LBB0_43:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -3600
	sll.d r[12:13], r[10:11], r9
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	.loc	1 176 11 is_stmt 1              # parallel-rne.mlir:176:11
	bneq r7, r3, .LBB0_50
# %bb.44:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_46
.LBB0_45:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 191 13 is_stmt 1              # parallel-rne.mlir:191:13
	add.s r2, r7, r2
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	stores.w r6, 0(r2)
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	beq r10, zero, .LBB0_42
.LBB0_46:                               # %scalar.ph93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	add.ul r[10:11], r[8:9], r[12:13]
	slli r2, r10, 2
	add.s r6, r3, r2
	loads.w r10, 0(r6)
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	and r11, r10, r24
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	setlt.u r6, r26, r11
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r6, zero, .LBB0_48
# %bb.47:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 188 19 is_stmt 1              # parallel-rne.mlir:188:19
	setlt.u r11, r1, r11
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r11, zero, .LBB0_45
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r10, r6
	.loc	1 188 19 is_stmt 1              # parallel-rne.mlir:188:19
	setlt.u r11, r1, r11
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r11, zero, .LBB0_45
.LBB0_49:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r27
	and r6, r6, r28
	j .LBB0_45
.LBB0_50:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	addli r2, r30, -3608
	load.d r[18:19], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_52
.LBB0_51:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 176 11 is_stmt 1              # parallel-rne.mlir:176:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	add.s r2, r7, r2
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	seteq.d r6, r[18:19], r[15:16]
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	stores.w r10, 12(r2)
	stores.w r8, 8(r2)
	stores.w r20, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	bneq r6, zero, .LBB0_42
.LBB0_52:                               # %vector.body95
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	add.ul r[8:9], r[18:19], r[12:13]
	slli r2, r8, 2
	add.s r14, r3, r2
	loads.w r17, 12(r14)
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	and r23, r17, r24
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	setlt.u r6, r26, r23
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r6, zero, .LBB0_54
# %bb.53:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_52 Depth=3
	lui r6, 1024
	or r10, r17, r6
.LBB0_55:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r6, 8(r14)
	and r11, r6, r24
	setlt.u r8, r26, r11
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r8, zero, .LBB0_57
# %bb.56:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r6, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_52 Depth=3
	lui r8, 1024
	or r8, r6, r8
.LBB0_58:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r9, 4(r14)
	and r21, r9, r24
	setlt.u r20, r26, r21
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r20, zero, .LBB0_60
# %bb.59:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_52 Depth=3
	lui r20, 1024
	or r20, r9, r20
.LBB0_61:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r22, 0(r14)
	and r25, r22, r24
	setlt.u r14, r26, r25
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r14, zero, .LBB0_63
# %bb.62:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r22, 0
	.loc	1 188 19 is_stmt 1              # parallel-rne.mlir:188:19
	setlt.u r25, r1, r25
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r25, zero, .LBB0_64
	j .LBB0_65
.LBB0_63:                               #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r22, r14
	.loc	1 188 19 is_stmt 1              # parallel-rne.mlir:188:19
	setlt.u r25, r1, r25
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r25, zero, .LBB0_65
.LBB0_64:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r22, 16
	andi r14, r14, 1
	add.s r14, r22, r14
	add.s r14, r14, r27
	and r14, r14, r28
.LBB0_65:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	setlt.u r21, r1, r21
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r21, zero, .LBB0_68
# %bb.66:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r9, zero, .LBB0_69
.LBB0_67:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r23
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r6, zero, .LBB0_51
	j .LBB0_70
.LBB0_68:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r20, r9, 16
	andi r20, r20, 1
	add.s r9, r9, r20
	add.s r9, r9, r27
	and r20, r9, r28
	setlt.u r9, r1, r11
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r9, zero, .LBB0_67
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r6, 16
	andi r8, r8, 1
	add.s r6, r6, r8
	add.s r6, r6, r27
	and r8, r6, r28
	setlt.u r6, r1, r23
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r6, zero, .LBB0_51
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r27
	and r10, r6, r28
	j .LBB0_51
.LBB0_71:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 138 7 is_stmt 1               # parallel-rne.mlir:138:7
	xfence
	zext_int2long r[10:11], zero
	mfence { lm, sm, gm }
	j .LBB0_73
.LBB0_72:                               # %middle.block117
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	zext_int2long r[8:9], r2
	addli r2, r30, -3600
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	.loc	1 146 9 is_stmt 1               # parallel-rne.mlir:146:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli.d r[10:11], r[8:9], 0
	addli r9, zero, 6
	beq r2, zero, .LBB0_101
.LBB0_73:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_76 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -3600
	sll.d r[21:22], r[10:11], r9
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	.loc	1 147 11 is_stmt 1              # parallel-rne.mlir:147:11
	bneq r7, r3, .LBB0_80
# %bb.74:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_76
.LBB0_75:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 162 13 is_stmt 1              # parallel-rne.mlir:162:13
	add.s r2, r7, r2
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	stores.w r6, 0(r2)
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	beq r10, zero, .LBB0_72
.LBB0_76:                               # %scalar.ph111
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	add.ul r[10:11], r[8:9], r[21:22]
	slli r2, r10, 2
	add.s r6, r3, r2
	loads.w r10, 0(r6)
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	and r11, r10, r24
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	setlt.u r6, r26, r11
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r6, zero, .LBB0_78
# %bb.77:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r11, r1, r11
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r11, zero, .LBB0_75
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r10, r6
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r11, r1, r11
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r11, zero, .LBB0_75
.LBB0_79:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r27
	and r6, r6, r28
	j .LBB0_75
.LBB0_80:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_82
.LBB0_81:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 147 11 is_stmt 1              # parallel-rne.mlir:147:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	add.s r2, r7, r2
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	seteq.d r8, r[12:13], r[15:16]
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	stores.w r17, 12(r2)
	stores.w r6, 8(r2)
	stores.w r9, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	bneq r8, zero, .LBB0_72
.LBB0_82:                               # %vector.body113
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	add.ul r[8:9], r[12:13], r[21:22]
	slli r2, r8, 2
	add.s r14, r3, r2
	loads.w r10, 12(r14)
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	and r23, r10, r24
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	setlt.u r6, r26, r23
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r6, zero, .LBB0_84
# %bb.83:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r10, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	lui r6, 1024
	or r17, r10, r6
.LBB0_85:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r8, 8(r14)
	and r11, r8, r24
	setlt.u r6, r26, r11
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r6, zero, .LBB0_87
# %bb.86:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r8, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=3
	lui r6, 1024
	or r6, r8, r6
.LBB0_88:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r20, 4(r14)
	and r18, r20, r24
	setlt.u r9, r26, r18
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r9, zero, .LBB0_90
# %bb.89:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r20, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=3
	lui r9, 1024
	or r9, r20, r9
.LBB0_91:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r19, 0(r14)
	and r25, r19, r24
	setlt.u r14, r26, r25
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r14, zero, .LBB0_93
# %bb.92:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r25, r1, r25
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	beq r25, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r19, r14
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r25, r1, r25
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r25, zero, .LBB0_95
.LBB0_94:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r27
	and r14, r14, r28
.LBB0_95:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	setlt.u r18, r1, r18
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	beq r18, zero, .LBB0_98
# %bb.96:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r1, r11
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	beq r11, zero, .LBB0_99
.LBB0_97:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r1, r23
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r8, zero, .LBB0_81
	j .LBB0_100
.LBB0_98:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r20, 16
	andi r9, r9, 1
	add.s r9, r20, r9
	add.s r9, r9, r27
	and r9, r9, r28
	setlt.u r11, r1, r11
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r11, zero, .LBB0_97
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r27
	and r6, r6, r28
	setlt.u r8, r1, r23
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r8, zero, .LBB0_81
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r27
	and r17, r8, r28
	j .LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r8
	addli r12, zero, 4
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	mfence { sm }
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	addli r2, zero, 2
	bneq r8, r2, .LBB0_40
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 196 7 is_stmt 1               # parallel-rne.mlir:196:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_104
.LBB0_103:                              # %middle.block108
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 11
	zext_int2long r[8:9], r2
	addli r2, r30, -3600
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	.loc	1 204 9 is_stmt 1               # parallel-rne.mlir:204:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli.d r[10:11], r[8:9], 0
	addli r9, zero, 6
	beq r2, zero, .LBB0_132
.LBB0_104:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -3600
	sll.d r[21:22], r[10:11], r9
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	.loc	1 205 11 is_stmt 1              # parallel-rne.mlir:205:11
	bneq r7, r3, .LBB0_111
# %bb.105:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_107
.LBB0_106:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 220 13 is_stmt 1              # parallel-rne.mlir:220:13
	add.s r2, r7, r2
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 220 13                        # parallel-rne.mlir:220:13
	stores.w r6, 0(r2)
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	beq r10, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph102
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.ul r[10:11], r[8:9], r[21:22]
	slli r2, r10, 2
	add.s r6, r3, r2
	loads.w r10, 0(r6)
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	and r11, r10, r24
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	setlt.u r6, r26, r11
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r6, zero, .LBB0_109
# %bb.108:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r11, r1, r11
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r11, zero, .LBB0_106
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r10, r6
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r11, r1, r11
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r11, zero, .LBB0_106
.LBB0_110:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r27
	and r6, r6, r28
	j .LBB0_106
.LBB0_111:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_113
.LBB0_112:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 205 11 is_stmt 1              # parallel-rne.mlir:205:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 220 13                        # parallel-rne.mlir:220:13
	add.s r2, r7, r2
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	seteq.d r6, r[12:13], r[15:16]
	.loc	1 220 13                        # parallel-rne.mlir:220:13
	stores.w r10, 12(r2)
	stores.w r8, 8(r2)
	stores.w r20, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	bneq r6, zero, .LBB0_103
.LBB0_113:                              # %vector.body104
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.ul r[8:9], r[12:13], r[21:22]
	slli r2, r8, 2
	add.s r14, r3, r2
	loads.w r17, 12(r14)
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	and r23, r17, r24
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	setlt.u r6, r26, r23
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r6, zero, .LBB0_115
# %bb.114:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=3
	lui r6, 1024
	or r10, r17, r6
.LBB0_116:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r6, 8(r14)
	and r11, r6, r24
	setlt.u r8, r26, r11
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r8, zero, .LBB0_118
# %bb.117:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r6, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_113 Depth=3
	lui r8, 1024
	or r8, r6, r8
.LBB0_119:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r9, 4(r14)
	and r18, r9, r24
	setlt.u r19, r26, r18
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r19, zero, .LBB0_121
# %bb.120:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_113 Depth=3
	lui r19, 1024
	or r20, r9, r19
.LBB0_122:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r19, 0(r14)
	and r25, r19, r24
	setlt.u r14, r26, r25
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r14, zero, .LBB0_124
# %bb.123:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r25, r1, r25
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	beq r25, zero, .LBB0_125
	j .LBB0_126
.LBB0_124:                              #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r19, r14
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r25, r1, r25
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r25, zero, .LBB0_126
.LBB0_125:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r27
	and r14, r14, r28
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	setlt.u r18, r1, r18
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	beq r18, zero, .LBB0_129
# %bb.127:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	beq r9, zero, .LBB0_130
.LBB0_128:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r23
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r6, zero, .LBB0_112
	j .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r27
	and r20, r9, r28
	setlt.u r9, r1, r11
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r9, zero, .LBB0_128
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r6, 16
	andi r8, r8, 1
	add.s r6, r6, r8
	add.s r6, r6, r27
	and r8, r6, r28
	setlt.u r6, r1, r23
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r6, zero, .LBB0_112
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r27
	and r10, r6, r28
	j .LBB0_112
.LBB0_132:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r8
	addli r12, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 225 7 is_stmt 1               # parallel-rne.mlir:225:7
	loadli.w r2,  -3612(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_168
# %bb.134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 254 7                         # parallel-rne.mlir:254:7
	beq r8, r12, .LBB0_199
.LBB0_135:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	.loc	1 283 7 is_stmt 1               # parallel-rne.mlir:283:7
	beq r8, r2, .LBB0_230
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	beq r8, r9, .LBB0_260
# %bb.137:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	bneq r8, r2, .LBB0_291
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 283 7                         # parallel-rne.mlir:283:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_140
.LBB0_139:                              # %middle.block
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[8:9], r2
	addli r2, r30, -3600
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	.loc	1 291 9 is_stmt 1               # parallel-rne.mlir:291:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli.d r[10:11], r[8:9], 0
	addli r9, zero, 6
	beq r2, zero, .LBB0_290
.LBB0_140:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -3600
	sll.d r[21:22], r[10:11], r9
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	.loc	1 292 11 is_stmt 1              # parallel-rne.mlir:292:11
	bneq r7, r3, .LBB0_147
# %bb.141:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_143
.LBB0_142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 292 11                        # parallel-rne.mlir:292:11
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 307 13 is_stmt 1              # parallel-rne.mlir:307:13
	add.s r2, r7, r2
	.loc	1 292 11                        # parallel-rne.mlir:292:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 307 13                        # parallel-rne.mlir:307:13
	stores.w r6, 0(r2)
	.loc	1 292 11                        # parallel-rne.mlir:292:11
	beq r10, zero, .LBB0_139
.LBB0_143:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	add.ul r[10:11], r[8:9], r[21:22]
	slli r2, r10, 2
	add.s r6, r3, r2
	loads.w r10, 0(r6)
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	and r11, r10, r24
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	setlt.u r6, r26, r11
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r6, zero, .LBB0_145
# %bb.144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 304 19 is_stmt 1              # parallel-rne.mlir:304:19
	setlt.u r11, r1, r11
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r11, zero, .LBB0_142
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r10, r6
	.loc	1 304 19 is_stmt 1              # parallel-rne.mlir:304:19
	setlt.u r11, r1, r11
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r11, zero, .LBB0_142
.LBB0_146:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r27
	and r6, r6, r28
	j .LBB0_142
.LBB0_147:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_149
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 292 11 is_stmt 1              # parallel-rne.mlir:292:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 307 13                        # parallel-rne.mlir:307:13
	add.s r2, r7, r2
	.loc	1 292 11                        # parallel-rne.mlir:292:11
	seteq.d r6, r[12:13], r[15:16]
	.loc	1 307 13                        # parallel-rne.mlir:307:13
	stores.w r10, 12(r2)
	stores.w r8, 8(r2)
	stores.w r20, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 292 11                        # parallel-rne.mlir:292:11
	bneq r6, zero, .LBB0_139
.LBB0_149:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	add.ul r[8:9], r[12:13], r[21:22]
	slli r2, r8, 2
	add.s r14, r3, r2
	loads.w r17, 12(r14)
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	and r23, r17, r24
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	setlt.u r6, r26, r23
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r6, zero, .LBB0_151
# %bb.150:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_149 Depth=3
	lui r6, 1024
	or r10, r17, r6
.LBB0_152:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r6, 8(r14)
	and r11, r6, r24
	setlt.u r8, r26, r11
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r8, zero, .LBB0_154
# %bb.153:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r6, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_149 Depth=3
	lui r8, 1024
	or r8, r6, r8
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r9, 4(r14)
	and r18, r9, r24
	setlt.u r19, r26, r18
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r19, zero, .LBB0_157
# %bb.156:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_149 Depth=3
	lui r19, 1024
	or r20, r9, r19
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r19, 0(r14)
	and r25, r19, r24
	setlt.u r14, r26, r25
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r14, zero, .LBB0_164
# %bb.159:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	.loc	1 304 19 is_stmt 1              # parallel-rne.mlir:304:19
	setlt.u r25, r1, r25
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r25, zero, .LBB0_161
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r27
	and r14, r14, r28
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	setlt.u r18, r1, r18
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	beq r18, zero, .LBB0_165
# %bb.162:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	beq r9, zero, .LBB0_166
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r23
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r6, zero, .LBB0_148
	j .LBB0_167
.LBB0_164:                              #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r19, r14
	.loc	1 304 19 is_stmt 1              # parallel-rne.mlir:304:19
	setlt.u r25, r1, r25
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	beq r25, zero, .LBB0_160
	j .LBB0_161
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r27
	and r20, r9, r28
	setlt.u r9, r1, r11
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r9, zero, .LBB0_163
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r6, 16
	andi r8, r8, 1
	add.s r6, r6, r8
	add.s r6, r6, r27
	and r8, r6, r28
	setlt.u r6, r1, r23
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r6, zero, .LBB0_148
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r27
	and r10, r6, r28
	j .LBB0_148
.LBB0_168:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 12
	.loc	1 225 7 is_stmt 1               # parallel-rne.mlir:225:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_170
.LBB0_169:                              # %middle.block90
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	zext_int2long r[8:9], r2
	addli r2, r30, -3600
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	.loc	1 233 9 is_stmt 1               # parallel-rne.mlir:233:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli.d r[10:11], r[8:9], 0
	addli r9, zero, 6
	beq r2, zero, .LBB0_198
.LBB0_170:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -3600
	sll.d r[21:22], r[10:11], r9
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	.loc	1 234 11 is_stmt 1              # parallel-rne.mlir:234:11
	bneq r7, r3, .LBB0_177
# %bb.171:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_173
.LBB0_172:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 234 11                        # parallel-rne.mlir:234:11
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 249 13 is_stmt 1              # parallel-rne.mlir:249:13
	add.s r2, r7, r2
	.loc	1 234 11                        # parallel-rne.mlir:234:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 249 13                        # parallel-rne.mlir:249:13
	stores.w r6, 0(r2)
	.loc	1 234 11                        # parallel-rne.mlir:234:11
	beq r10, zero, .LBB0_169
.LBB0_173:                              # %scalar.ph84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	add.ul r[10:11], r[8:9], r[21:22]
	slli r2, r10, 2
	add.s r6, r3, r2
	loads.w r10, 0(r6)
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	and r11, r10, r24
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	setlt.u r6, r26, r11
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r6, zero, .LBB0_175
# %bb.174:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 246 19 is_stmt 1              # parallel-rne.mlir:246:19
	setlt.u r11, r1, r11
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r11, zero, .LBB0_172
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r10, r6
	.loc	1 246 19 is_stmt 1              # parallel-rne.mlir:246:19
	setlt.u r11, r1, r11
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r11, zero, .LBB0_172
.LBB0_176:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r27
	and r6, r6, r28
	j .LBB0_172
.LBB0_177:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_179
.LBB0_178:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 234 11 is_stmt 1              # parallel-rne.mlir:234:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 249 13                        # parallel-rne.mlir:249:13
	add.s r2, r7, r2
	.loc	1 234 11                        # parallel-rne.mlir:234:11
	seteq.d r6, r[12:13], r[15:16]
	.loc	1 249 13                        # parallel-rne.mlir:249:13
	stores.w r10, 12(r2)
	stores.w r8, 8(r2)
	stores.w r20, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 234 11                        # parallel-rne.mlir:234:11
	bneq r6, zero, .LBB0_169
.LBB0_179:                              # %vector.body86
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	add.ul r[8:9], r[12:13], r[21:22]
	slli r2, r8, 2
	add.s r14, r3, r2
	loads.w r17, 12(r14)
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	and r23, r17, r24
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	setlt.u r6, r26, r23
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r6, zero, .LBB0_181
# %bb.180:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_179 Depth=3
	lui r6, 1024
	or r10, r17, r6
.LBB0_182:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r6, 8(r14)
	and r11, r6, r24
	setlt.u r8, r26, r11
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r8, zero, .LBB0_184
# %bb.183:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r6, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_179 Depth=3
	lui r8, 1024
	or r8, r6, r8
.LBB0_185:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r9, 4(r14)
	and r18, r9, r24
	setlt.u r19, r26, r18
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r19, zero, .LBB0_187
# %bb.186:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_179 Depth=3
	lui r19, 1024
	or r20, r9, r19
.LBB0_188:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r19, 0(r14)
	and r25, r19, r24
	setlt.u r14, r26, r25
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r14, zero, .LBB0_194
# %bb.189:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	.loc	1 246 19 is_stmt 1              # parallel-rne.mlir:246:19
	setlt.u r25, r1, r25
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r25, zero, .LBB0_191
.LBB0_190:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r27
	and r14, r14, r28
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	setlt.u r18, r1, r18
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	beq r18, zero, .LBB0_195
# %bb.192:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	beq r9, zero, .LBB0_196
.LBB0_193:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r23
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r6, zero, .LBB0_178
	j .LBB0_197
.LBB0_194:                              #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r19, r14
	.loc	1 246 19 is_stmt 1              # parallel-rne.mlir:246:19
	setlt.u r25, r1, r25
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	beq r25, zero, .LBB0_190
	j .LBB0_191
.LBB0_195:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r27
	and r20, r9, r28
	setlt.u r9, r1, r11
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r9, zero, .LBB0_193
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r6, 16
	andi r8, r8, 1
	add.s r6, r6, r8
	add.s r6, r6, r27
	and r8, r6, r28
	setlt.u r6, r1, r23
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r6, zero, .LBB0_178
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r27
	and r10, r6, r28
	j .LBB0_178
.LBB0_198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r8
	addli r12, zero, 4
	.loc	1 225 7                         # parallel-rne.mlir:225:7
	mfence { sm }
	.loc	1 254 7                         # parallel-rne.mlir:254:7
	bneq r8, r12, .LBB0_135
.LBB0_199:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 254 7                         # parallel-rne.mlir:254:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_201
.LBB0_200:                              # %middle.block81
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 19
	zext_int2long r[8:9], r2
	addli r2, r30, -3600
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	.loc	1 262 9 is_stmt 1               # parallel-rne.mlir:262:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli.d r[10:11], r[8:9], 0
	addli r9, zero, 6
	beq r2, zero, .LBB0_229
.LBB0_201:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -3600
	sll.d r[21:22], r[10:11], r9
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	.loc	1 263 11 is_stmt 1              # parallel-rne.mlir:263:11
	bneq r7, r3, .LBB0_208
# %bb.202:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_204
.LBB0_203:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 278 13 is_stmt 1              # parallel-rne.mlir:278:13
	add.s r2, r7, r2
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	stores.w r6, 0(r2)
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	beq r10, zero, .LBB0_200
.LBB0_204:                              # %scalar.ph75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	add.ul r[10:11], r[8:9], r[21:22]
	slli r2, r10, 2
	add.s r6, r3, r2
	loads.w r10, 0(r6)
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	and r11, r10, r24
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	setlt.u r6, r26, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r6, zero, .LBB0_206
# %bb.205:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 275 19 is_stmt 1              # parallel-rne.mlir:275:19
	setlt.u r11, r1, r11
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r11, zero, .LBB0_203
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r10, r6
	.loc	1 275 19 is_stmt 1              # parallel-rne.mlir:275:19
	setlt.u r11, r1, r11
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r11, zero, .LBB0_203
.LBB0_207:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r27
	and r6, r6, r28
	j .LBB0_203
.LBB0_208:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_210
.LBB0_209:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 263 11 is_stmt 1              # parallel-rne.mlir:263:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	add.s r2, r7, r2
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	seteq.d r6, r[12:13], r[15:16]
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	stores.w r10, 12(r2)
	stores.w r8, 8(r2)
	stores.w r20, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	bneq r6, zero, .LBB0_200
.LBB0_210:                              # %vector.body77
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	add.ul r[8:9], r[12:13], r[21:22]
	slli r2, r8, 2
	add.s r14, r3, r2
	loads.w r17, 12(r14)
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	and r23, r17, r24
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	setlt.u r6, r26, r23
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r6, zero, .LBB0_212
# %bb.211:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_210 Depth=3
	lui r6, 1024
	or r10, r17, r6
.LBB0_213:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r6, 8(r14)
	and r11, r6, r24
	setlt.u r8, r26, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r8, zero, .LBB0_215
# %bb.214:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r6, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_210 Depth=3
	lui r8, 1024
	or r8, r6, r8
.LBB0_216:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r9, 4(r14)
	and r18, r9, r24
	setlt.u r19, r26, r18
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r19, zero, .LBB0_218
# %bb.217:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_210 Depth=3
	lui r19, 1024
	or r20, r9, r19
.LBB0_219:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r19, 0(r14)
	and r25, r19, r24
	setlt.u r14, r26, r25
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r14, zero, .LBB0_225
# %bb.220:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	.loc	1 275 19 is_stmt 1              # parallel-rne.mlir:275:19
	setlt.u r25, r1, r25
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r25, zero, .LBB0_222
.LBB0_221:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r27
	and r14, r14, r28
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r18, r1, r18
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r18, zero, .LBB0_226
# %bb.223:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r9, zero, .LBB0_227
.LBB0_224:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r23
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r6, zero, .LBB0_209
	j .LBB0_228
.LBB0_225:                              #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r19, r14
	.loc	1 275 19 is_stmt 1              # parallel-rne.mlir:275:19
	setlt.u r25, r1, r25
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r25, zero, .LBB0_221
	j .LBB0_222
.LBB0_226:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r27
	and r20, r9, r28
	setlt.u r9, r1, r11
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r9, zero, .LBB0_224
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r6, 16
	andi r8, r8, 1
	add.s r6, r6, r8
	add.s r6, r6, r27
	and r8, r6, r28
	setlt.u r6, r1, r23
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r6, zero, .LBB0_209
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r27
	and r10, r6, r28
	j .LBB0_209
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r8
	addli r12, zero, 4
	.loc	1 254 7                         # parallel-rne.mlir:254:7
	mfence { sm }
	addli r2, zero, 7
	.loc	1 283 7                         # parallel-rne.mlir:283:7
	bneq r8, r2, .LBB0_136
.LBB0_230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 341 7 is_stmt 1               # parallel-rne.mlir:341:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_232
.LBB0_231:                              # %middle.block72
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	zext_int2long r[8:9], r2
	addli r2, r30, -3600
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	.loc	1 349 9 is_stmt 1               # parallel-rne.mlir:349:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli.d r[10:11], r[8:9], 0
	addli r9, zero, 6
	beq r2, zero, .LBB0_290
.LBB0_232:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -3600
	sll.d r[21:22], r[10:11], r9
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	.loc	1 350 11 is_stmt 1              # parallel-rne.mlir:350:11
	bneq r7, r3, .LBB0_239
# %bb.233:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_235
.LBB0_234:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 365 13 is_stmt 1              # parallel-rne.mlir:365:13
	add.s r2, r7, r2
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	stores.w r6, 0(r2)
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	beq r10, zero, .LBB0_231
.LBB0_235:                              # %scalar.ph66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	add.ul r[10:11], r[8:9], r[21:22]
	slli r2, r10, 2
	add.s r6, r3, r2
	loads.w r10, 0(r6)
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	and r11, r10, r24
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	setlt.u r6, r26, r11
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r6, zero, .LBB0_237
# %bb.236:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 362 19 is_stmt 1              # parallel-rne.mlir:362:19
	setlt.u r11, r1, r11
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r11, zero, .LBB0_234
	j .LBB0_238
.LBB0_237:                              #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r10, r6
	.loc	1 362 19 is_stmt 1              # parallel-rne.mlir:362:19
	setlt.u r11, r1, r11
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r11, zero, .LBB0_234
.LBB0_238:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r27
	and r6, r6, r28
	j .LBB0_234
.LBB0_239:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_241
.LBB0_240:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 350 11 is_stmt 1              # parallel-rne.mlir:350:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	add.s r2, r7, r2
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	seteq.d r6, r[12:13], r[15:16]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	stores.w r10, 12(r2)
	stores.w r8, 8(r2)
	stores.w r20, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	bneq r6, zero, .LBB0_231
.LBB0_241:                              # %vector.body68
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	add.ul r[8:9], r[12:13], r[21:22]
	slli r2, r8, 2
	add.s r14, r3, r2
	loads.w r17, 12(r14)
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	and r23, r17, r24
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	setlt.u r6, r26, r23
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r6, zero, .LBB0_243
# %bb.242:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_241 Depth=3
	lui r6, 1024
	or r10, r17, r6
.LBB0_244:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r6, 8(r14)
	and r11, r6, r24
	setlt.u r8, r26, r11
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r8, zero, .LBB0_246
# %bb.245:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r6, 0
	j .LBB0_247
.LBB0_246:                              #   in Loop: Header=BB0_241 Depth=3
	lui r8, 1024
	or r8, r6, r8
.LBB0_247:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r9, 4(r14)
	and r18, r9, r24
	setlt.u r19, r26, r18
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r19, zero, .LBB0_249
# %bb.248:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_241 Depth=3
	lui r19, 1024
	or r20, r9, r19
.LBB0_250:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r19, 0(r14)
	and r25, r19, r24
	setlt.u r14, r26, r25
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r14, zero, .LBB0_252
# %bb.251:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	.loc	1 362 19 is_stmt 1              # parallel-rne.mlir:362:19
	setlt.u r25, r1, r25
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	beq r25, zero, .LBB0_253
	j .LBB0_254
.LBB0_252:                              #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r19, r14
	.loc	1 362 19 is_stmt 1              # parallel-rne.mlir:362:19
	setlt.u r25, r1, r25
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r25, zero, .LBB0_254
.LBB0_253:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r27
	and r14, r14, r28
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r18, r1, r18
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	beq r18, zero, .LBB0_257
# %bb.255:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	beq r9, zero, .LBB0_258
.LBB0_256:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r23
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r6, zero, .LBB0_240
	j .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r27
	and r20, r9, r28
	setlt.u r9, r1, r11
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r9, zero, .LBB0_256
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r6, 16
	andi r8, r8, 1
	add.s r6, r6, r8
	add.s r6, r6, r27
	and r8, r6, r28
	setlt.u r6, r1, r23
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r6, zero, .LBB0_240
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r27
	and r10, r6, r28
	j .LBB0_240
.LBB0_260:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 24
	.loc	1 312 7 is_stmt 1               # parallel-rne.mlir:312:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r2
	j .LBB0_262
.LBB0_261:                              # %middle.block63
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 27
	zext_int2long r[8:9], r2
	addli r2, r30, -3600
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	.loc	1 320 9 is_stmt 1               # parallel-rne.mlir:320:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli.d r[10:11], r[8:9], 0
	addli r9, zero, 6
	beq r2, zero, .LBB0_290
.LBB0_262:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, r30, -3600
	sll.d r[21:22], r[10:11], r9
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	.loc	1 321 11 is_stmt 1              # parallel-rne.mlir:321:11
	bneq r7, r3, .LBB0_269
# %bb.263:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_265
.LBB0_264:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 321 11                        # parallel-rne.mlir:321:11
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 336 13 is_stmt 1              # parallel-rne.mlir:336:13
	add.s r2, r7, r2
	.loc	1 321 11                        # parallel-rne.mlir:321:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 336 13                        # parallel-rne.mlir:336:13
	stores.w r6, 0(r2)
	.loc	1 321 11                        # parallel-rne.mlir:321:11
	beq r10, zero, .LBB0_261
.LBB0_265:                              # %scalar.ph57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	add.ul r[10:11], r[8:9], r[21:22]
	slli r2, r10, 2
	add.s r6, r3, r2
	loads.w r10, 0(r6)
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	and r11, r10, r24
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	setlt.u r6, r26, r11
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r6, zero, .LBB0_267
# %bb.266:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 333 19 is_stmt 1              # parallel-rne.mlir:333:19
	setlt.u r11, r1, r11
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r11, zero, .LBB0_264
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r10, r6
	.loc	1 333 19 is_stmt 1              # parallel-rne.mlir:333:19
	setlt.u r11, r1, r11
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r11, zero, .LBB0_264
.LBB0_268:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r27
	and r6, r6, r28
	j .LBB0_264
.LBB0_269:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_271
.LBB0_270:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 321 11 is_stmt 1              # parallel-rne.mlir:321:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 336 13                        # parallel-rne.mlir:336:13
	add.s r2, r7, r2
	.loc	1 321 11                        # parallel-rne.mlir:321:11
	seteq.d r6, r[12:13], r[15:16]
	.loc	1 336 13                        # parallel-rne.mlir:336:13
	stores.w r10, 12(r2)
	stores.w r8, 8(r2)
	stores.w r20, 4(r2)
	stores.w r14, 0(r2)
	.loc	1 321 11                        # parallel-rne.mlir:321:11
	bneq r6, zero, .LBB0_261
.LBB0_271:                              # %vector.body59
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	add.ul r[8:9], r[12:13], r[21:22]
	slli r2, r8, 2
	add.s r14, r3, r2
	loads.w r17, 12(r14)
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	and r23, r17, r24
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	setlt.u r6, r26, r23
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r6, zero, .LBB0_273
# %bb.272:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r17, 0
	j .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_271 Depth=3
	lui r6, 1024
	or r10, r17, r6
.LBB0_274:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r6, 8(r14)
	and r11, r6, r24
	setlt.u r8, r26, r11
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r8, zero, .LBB0_276
# %bb.275:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r6, 0
	j .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_271 Depth=3
	lui r8, 1024
	or r8, r6, r8
.LBB0_277:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r9, 4(r14)
	and r18, r9, r24
	setlt.u r19, r26, r18
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r19, zero, .LBB0_279
# %bb.278:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_271 Depth=3
	lui r19, 1024
	or r20, r9, r19
.LBB0_280:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r19, 0(r14)
	and r25, r19, r24
	setlt.u r14, r26, r25
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r14, zero, .LBB0_282
# %bb.281:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	.loc	1 333 19 is_stmt 1              # parallel-rne.mlir:333:19
	setlt.u r25, r1, r25
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	beq r25, zero, .LBB0_283
	j .LBB0_284
.LBB0_282:                              #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r14, 1024
	or r14, r19, r14
	.loc	1 333 19 is_stmt 1              # parallel-rne.mlir:333:19
	setlt.u r25, r1, r25
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r25, zero, .LBB0_284
.LBB0_283:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r19, 16
	andi r14, r14, 1
	add.s r14, r19, r14
	add.s r14, r14, r27
	and r14, r14, r28
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	setlt.u r18, r1, r18
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	beq r18, zero, .LBB0_287
# %bb.285:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r1, r11
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	beq r9, zero, .LBB0_288
.LBB0_286:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r23
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r6, zero, .LBB0_270
	j .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r27
	and r20, r9, r28
	setlt.u r9, r1, r11
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r9, zero, .LBB0_286
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r6, 16
	andi r8, r8, 1
	add.s r6, r6, r8
	add.s r6, r6, r27
	and r8, r6, r28
	setlt.u r6, r1, r23
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r6, zero, .LBB0_270
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r27
	and r10, r6, r28
	j .LBB0_270
.LBB0_290:                              # %.sink.split51
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r8
	addli r12, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 370 7 is_stmt 1               # parallel-rne.mlir:370:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	loadli.w r2,  -3612(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.292:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	bneq r8, zero, .LBB0_6
# %bb.293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	loadli.w r2,  -3656(r30)                # 4-byte Folded Reload
	addli r4, zero, 192
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	loadli.w r6,  -3652(r30)                # 4-byte Folded Reload
	zext_int2long r[10:11], zero
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	addli r12, r30, -3648
	zext_int2long r[4:5], r4
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	zext_int2long r[2:3], r2
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	sext_int2long r[8:9], r6
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	addli r6, zero, 14
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	min.ul r[4:5], r[2:3], r[4:5]
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	min.sl r[10:11], r[8:9], r[10:11]
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	addli.d r[4:5], r[4:5], 64
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	max.ul r[4:5], r[4:5], r[2:3]
	sub.sl r[2:3], r[4:5], r[2:3]
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	addli.d r[4:5], r[10:11], 32
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	load.d r[10:11], 0(r12)                 # 8-byte Folded Reload
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	max.sl r[4:5], r[4:5], r[8:9]
	.loc	1 384 13                        # parallel-rne.mlir:384:13
	min.ul r[2:3], r[2:3], r[15:16]
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	sll.d r[10:11], r[10:11], r6
	addli r6, zero, 32
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	sub.sl r[4:5], r[4:5], r[8:9]
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	load.d r[8:9], 16(r30)
	add.ul r[8:9], r[8:9], r[10:11]
	zext_int2long r[10:11], r6
	addli r6, r30, -3640
	load.d r[12:13], 0(r6)                  # 8-byte Folded Reload
	addli r6, zero, 12
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	min.sl r[4:5], r[4:5], r[10:11]
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	xwait r6, 0
	ori r6, r7, 64
	addli r7, zero, 64
	add.ul r[8:9], r[8:9], r[12:13]
	addli r13, zero, 5
	addli r12, zero, 1
	lock zero, r13
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r12, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r6, r7, 3
	addli r6, r2, 31
	slli r2, r2, 1
	addli r3, zero, 128
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r8
	addli r9, zero, 6
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	srli r6, r6, 5
	andi r2, r2, 62
	dma_cfg r7, r3, r6, 4
	addli r3, zero, 256
	addli r6, zero, 512
	dma_cfg r6, r3, r4, 5
	addli r3, zero, 13
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	addli r12, zero, 4
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r3, 0
	j .LBB0_6
.LBB0_294:                              # %._crit_edge
	.loc	1 390 5                         # parallel-rne.mlir:390:5
	xsignal zero, 0
	bneq r8, zero, .LBB0_296
# %bb.295:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 390 5                         # parallel-rne.mlir:390:5
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
	.loc	1 391 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:391:5
	addli sp, sp, 3664
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
	.long	3728                            # 0xe90
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-e5j4al_c" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
