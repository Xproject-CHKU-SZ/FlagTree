	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-hc96nt11" "parallel-rne.mlir"
	.loc	1 11 0                          # parallel-rne.mlir:11:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2952
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r25
	addli r30, sp, 2888
	xsignal_mode_cfg r1
	beq r25, zero, .LBB0_2
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
	load_param_i r3, 1
	loadli.w r4,  32(r30)
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
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r4, r1, r4
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r2, -1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r3, -1528(r30)
	storeli.w r3, -1524(r30)
	storeli.w r3, -1520(r30)
	storeli.w r3, -1516(r30)
	storeli.w r3, -1512(r30)
	storeli.w r3, -1508(r30)
	storeli.w r3, -1504(r30)
	storeli.w r3, -1500(r30)
	storeli.w r3, -1496(r30)
	storeli.w r3, -1492(r30)
	storeli.w r3, -1488(r30)
	storeli.w r3, -1484(r30)
	storeli.w r3, -1480(r30)
	storeli.w r3, -1476(r30)
	storeli.w r3, -1472(r30)
	storeli.w r3, -1468(r30)
	storeli.w r3, -1464(r30)
	storeli.w r3, -1460(r30)
	storeli.w r3, -1456(r30)
	storeli.w r3, -1452(r30)
	storeli.w r3, -1448(r30)
	storeli.w r3, -1444(r30)
	storeli.w r3, -1440(r30)
	storeli.w r3, -1436(r30)
	storeli.w r3, -1432(r30)
	storeli.w r3, -1428(r30)
	storeli.w r3, -1424(r30)
	storeli.w r3, -1420(r30)
	storeli.w r3, -1416(r30)
	storeli.w r3, -1412(r30)
	storeli.w r3, -1408(r30)
	storeli.w r3, -1404(r30)
	storeli.w r3, -1400(r30)
	storeli.w r3, -1396(r30)
	storeli.w r3, -1392(r30)
	storeli.w r3, -1388(r30)
	storeli.w r3, -1384(r30)
	storeli.w r3, -1380(r30)
	storeli.w r3, -1376(r30)
	storeli.w r3, -1372(r30)
	storeli.w r3, -1368(r30)
	storeli.w r3, -1364(r30)
	storeli.w r3, -1360(r30)
	storeli.w r3, -1356(r30)
	storeli.w r3, -1352(r30)
	storeli.w r3, -1348(r30)
	storeli.w r3, -1344(r30)
	storeli.w r3, -1340(r30)
	storeli.w r3, -1336(r30)
	storeli.w r3, -1332(r30)
	storeli.w r3, -1328(r30)
	storeli.w r3, -1324(r30)
	storeli.w r3, -1320(r30)
	storeli.w r3, -1316(r30)
	storeli.w r3, -1312(r30)
	storeli.w r3, -1308(r30)
	storeli.w r3, -1304(r30)
	storeli.w r3, -1300(r30)
	storeli.w r3, -1296(r30)
	storeli.w r3, -1292(r30)
	storeli.w r3, -1288(r30)
	storeli.w r3, -1284(r30)
	storeli.w r3, -1280(r30)
	storeli.w r3, -1276(r30)
	storeli.w r3, -1272(r30)
	storeli.w r3, -1268(r30)
	storeli.w r3, -1264(r30)
	storeli.w r3, -1260(r30)
	storeli.w r3, -1256(r30)
	storeli.w r3, -1252(r30)
	storeli.w r3, -1248(r30)
	storeli.w r3, -1244(r30)
	storeli.w r3, -1240(r30)
	storeli.w r3, -1236(r30)
	storeli.w r3, -1232(r30)
	storeli.w r3, -1228(r30)
	storeli.w r3, -1224(r30)
	storeli.w r3, -1220(r30)
	storeli.w r3, -1216(r30)
	storeli.w r3, -1212(r30)
	storeli.w r3, -1208(r30)
	storeli.w r3, -1204(r30)
	storeli.w r3, -1200(r30)
	storeli.w r3, -1196(r30)
	storeli.w r3, -1192(r30)
	storeli.w r3, -1188(r30)
	storeli.w r3, -1184(r30)
	storeli.w r3, -1180(r30)
	storeli.w r3, -1176(r30)
	storeli.w r3, -1172(r30)
	storeli.w r3, -1168(r30)
	storeli.w r3, -1164(r30)
	storeli.w r3, -1160(r30)
	storeli.w r3, -1156(r30)
	storeli.w r3, -1152(r30)
	storeli.w r3, -1148(r30)
	storeli.w r3, -1144(r30)
	storeli.w r3, -1140(r30)
	storeli.w r3, -1136(r30)
	storeli.w r3, -1132(r30)
	storeli.w r3, -1128(r30)
	storeli.w r3, -1124(r30)
	storeli.w r3, -1120(r30)
	storeli.w r3, -1116(r30)
	storeli.w r3, -1112(r30)
	storeli.w r3, -1108(r30)
	storeli.w r3, -1104(r30)
	storeli.w r3, -1100(r30)
	storeli.w r3, -1096(r30)
	storeli.w r3, -1092(r30)
	storeli.w r3, -1088(r30)
	storeli.w r3, -1084(r30)
	storeli.w r3, -1080(r30)
	storeli.w r3, -1076(r30)
	storeli.w r3, -1072(r30)
	storeli.w r3, -1068(r30)
	storeli.w r3, -1064(r30)
	storeli.w r3, -1060(r30)
	storeli.w r3, -1056(r30)
	storeli.w r3, -1052(r30)
	storeli.w r3, -1048(r30)
	storeli.w r3, -1044(r30)
	storeli.w r3, -1040(r30)
	storeli.w r3, -1036(r30)
	storeli.w r3, -1032(r30)
	storeli.w r3, -1028(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	storeli.w r3, -1964(r30)
	storeli.w r3, -1968(r30)
	storeli.w r3, -1972(r30)
	storeli.w r3, -1976(r30)
	storeli.w r3, -1980(r30)
	storeli.w r3, -1984(r30)
	storeli.w r3, -1988(r30)
	storeli.w r3, -1992(r30)
	storeli.w r3, -1996(r30)
	storeli.w r3, -2000(r30)
	storeli.w r3, -2004(r30)
	storeli.w r3, -2008(r30)
	storeli.w r3, -2012(r30)
	storeli.w r3, -2016(r30)
	storeli.w r3, -2020(r30)
	storeli.w r3, -2024(r30)
	storeli.w r3, -2028(r30)
	storeli.w r3, -2032(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r3, -512(r30)
	storeli.w r3, -516(r30)
	storeli.w r3, -520(r30)
	storeli.w r3, -524(r30)
	storeli.w r3, -528(r30)
	storeli.w r3, -532(r30)
	storeli.w r3, -536(r30)
	storeli.w r3, -540(r30)
	storeli.w r3, -544(r30)
	storeli.w r3, -548(r30)
	storeli.w r3, -552(r30)
	storeli.w r3, -556(r30)
	storeli.w r3, -560(r30)
	storeli.w r3, -564(r30)
	storeli.w r3, -568(r30)
	storeli.w r3, -572(r30)
	storeli.w r3, -576(r30)
	storeli.w r3, -580(r30)
	storeli.w r3, -584(r30)
	storeli.w r3, -588(r30)
	storeli.w r3, -592(r30)
	storeli.w r3, -596(r30)
	storeli.w r3, -600(r30)
	storeli.w r3, -604(r30)
	storeli.w r3, -608(r30)
	storeli.w r3, -612(r30)
	storeli.w r3, -616(r30)
	storeli.w r3, -620(r30)
	storeli.w r3, -624(r30)
	storeli.w r3, -628(r30)
	storeli.w r3, -632(r30)
	storeli.w r3, -636(r30)
	storeli.w r3, -640(r30)
	storeli.w r3, -644(r30)
	storeli.w r3, -648(r30)
	storeli.w r3, -652(r30)
	storeli.w r3, -656(r30)
	storeli.w r3, -660(r30)
	storeli.w r3, -664(r30)
	storeli.w r3, -668(r30)
	storeli.w r3, -672(r30)
	storeli.w r3, -676(r30)
	storeli.w r3, -680(r30)
	storeli.w r3, -684(r30)
	storeli.w r3, -688(r30)
	storeli.w r3, -692(r30)
	storeli.w r3, -696(r30)
	storeli.w r3, -700(r30)
	storeli.w r3, -704(r30)
	storeli.w r3, -708(r30)
	storeli.w r3, -712(r30)
	storeli.w r3, -716(r30)
	storeli.w r3, -720(r30)
	storeli.w r3, -724(r30)
	storeli.w r3, -728(r30)
	storeli.w r3, -732(r30)
	storeli.w r3, -736(r30)
	storeli.w r3, -740(r30)
	storeli.w r3, -744(r30)
	storeli.w r3, -748(r30)
	storeli.w r3, -752(r30)
	storeli.w r3, -756(r30)
	storeli.w r3, -760(r30)
	storeli.w r3, -764(r30)
	storeli.w r3, -768(r30)
	storeli.w r3, -772(r30)
	storeli.w r3, -776(r30)
	storeli.w r3, -780(r30)
	storeli.w r3, -784(r30)
	storeli.w r3, -788(r30)
	storeli.w r3, -792(r30)
	storeli.w r3, -796(r30)
	storeli.w r3, -800(r30)
	storeli.w r3, -804(r30)
	storeli.w r3, -808(r30)
	storeli.w r3, -812(r30)
	storeli.w r3, -816(r30)
	storeli.w r3, -820(r30)
	storeli.w r3, -824(r30)
	storeli.w r3, -828(r30)
	storeli.w r3, -832(r30)
	storeli.w r3, -836(r30)
	storeli.w r3, -840(r30)
	storeli.w r3, -844(r30)
	storeli.w r3, -848(r30)
	storeli.w r3, -852(r30)
	storeli.w r3, -856(r30)
	storeli.w r3, -860(r30)
	storeli.w r3, -864(r30)
	storeli.w r3, -868(r30)
	storeli.w r3, -872(r30)
	storeli.w r3, -876(r30)
	storeli.w r3, -880(r30)
	storeli.w r3, -884(r30)
	storeli.w r3, -888(r30)
	storeli.w r3, -892(r30)
	storeli.w r3, -896(r30)
	storeli.w r3, -900(r30)
	storeli.w r3, -904(r30)
	storeli.w r3, -908(r30)
	storeli.w r3, -912(r30)
	storeli.w r3, -916(r30)
	storeli.w r3, -920(r30)
	storeli.w r3, -924(r30)
	storeli.w r3, -928(r30)
	storeli.w r3, -932(r30)
	storeli.w r3, -936(r30)
	storeli.w r3, -940(r30)
	storeli.w r3, -944(r30)
	storeli.w r3, -948(r30)
	storeli.w r3, -952(r30)
	storeli.w r3, -956(r30)
	storeli.w r3, -960(r30)
	storeli.w r3, -964(r30)
	storeli.w r3, -968(r30)
	storeli.w r3, -972(r30)
	storeli.w r3, -976(r30)
	storeli.w r3, -980(r30)
	storeli.w r3, -984(r30)
	storeli.w r3, -988(r30)
	storeli.w r3, -992(r30)
	storeli.w r3, -996(r30)
	storeli.w r3, -1000(r30)
	storeli.w r3, -1004(r30)
	storeli.w r3, -1008(r30)
	storeli.w r3, -1012(r30)
	storeli.w r3, -1016(r30)
	storeli.w r3, -1020(r30)
	storeli.w r3, -1024(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r3, -1788(r30)
	storeli.w r3, -1784(r30)
	storeli.w r3, -1780(r30)
	storeli.w r3, -1776(r30)
	storeli.w r3, -1772(r30)
	storeli.w r3, -1768(r30)
	storeli.w r3, -1764(r30)
	storeli.w r3, -1760(r30)
	storeli.w r3, -1756(r30)
	storeli.w r3, -1752(r30)
	storeli.w r3, -1748(r30)
	storeli.w r3, -1744(r30)
	storeli.w r3, -1740(r30)
	storeli.w r3, -1736(r30)
	storeli.w r3, -1732(r30)
	storeli.w r3, -1728(r30)
	storeli.w r3, -1724(r30)
	storeli.w r3, -1720(r30)
	storeli.w r3, -1716(r30)
	storeli.w r3, -1712(r30)
	storeli.w r3, -1708(r30)
	storeli.w r3, -1704(r30)
	storeli.w r3, -1700(r30)
	storeli.w r3, -1696(r30)
	storeli.w r3, -1692(r30)
	storeli.w r3, -1688(r30)
	storeli.w r3, -1684(r30)
	storeli.w r3, -1680(r30)
	storeli.w r3, -1676(r30)
	storeli.w r3, -1672(r30)
	storeli.w r3, -1668(r30)
	storeli.w r3, -1664(r30)
	storeli.w r3, -1660(r30)
	storeli.w r3, -1656(r30)
	storeli.w r3, -1652(r30)
	storeli.w r3, -1648(r30)
	storeli.w r3, -1644(r30)
	storeli.w r3, -1640(r30)
	storeli.w r3, -1636(r30)
	storeli.w r3, -1632(r30)
	storeli.w r3, -1628(r30)
	storeli.w r3, -1624(r30)
	storeli.w r3, -1620(r30)
	storeli.w r3, -1616(r30)
	storeli.w r3, -1612(r30)
	storeli.w r3, -1608(r30)
	storeli.w r3, -1604(r30)
	storeli.w r3, -1600(r30)
	storeli.w r3, -1596(r30)
	storeli.w r3, -1592(r30)
	storeli.w r3, -1588(r30)
	storeli.w r3, -1584(r30)
	storeli.w r3, -1580(r30)
	storeli.w r3, -1576(r30)
	storeli.w r3, -1572(r30)
	storeli.w r3, -1568(r30)
	storeli.w r3, -1564(r30)
	storeli.w r3, -1560(r30)
	storeli.w r3, -1556(r30)
	storeli.w r3, -1552(r30)
	storeli.w r3, -1548(r30)
	storeli.w r3, -1544(r30)
	storeli.w r3, -1540(r30)
	storeli.w r3, -1536(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r3, -2804(r30)
	storeli.w r3, -2800(r30)
	storeli.w r3, -2796(r30)
	storeli.w r3, -2792(r30)
	storeli.w r3, -2788(r30)
	storeli.w r3, -2784(r30)
	storeli.w r3, -2780(r30)
	storeli.w r3, -2776(r30)
	storeli.w r3, -2772(r30)
	storeli.w r3, -2768(r30)
	storeli.w r3, -2764(r30)
	storeli.w r3, -2760(r30)
	storeli.w r3, -2756(r30)
	storeli.w r3, -2752(r30)
	storeli.w r3, -2748(r30)
	storeli.w r3, -2744(r30)
	storeli.w r3, -2740(r30)
	storeli.w r3, -2736(r30)
	storeli.w r3, -2732(r30)
	storeli.w r3, -2728(r30)
	storeli.w r3, -2724(r30)
	storeli.w r3, -2720(r30)
	storeli.w r3, -2716(r30)
	storeli.w r3, -2712(r30)
	storeli.w r3, -2708(r30)
	storeli.w r3, -2704(r30)
	storeli.w r3, -2700(r30)
	storeli.w r3, -2696(r30)
	storeli.w r3, -2692(r30)
	storeli.w r3, -2688(r30)
	storeli.w r3, -2684(r30)
	storeli.w r3, -2680(r30)
	storeli.w r3, -2676(r30)
	storeli.w r3, -2672(r30)
	storeli.w r3, -2668(r30)
	storeli.w r3, -2664(r30)
	storeli.w r3, -2660(r30)
	storeli.w r3, -2656(r30)
	storeli.w r3, -2652(r30)
	storeli.w r3, -2648(r30)
	storeli.w r3, -2644(r30)
	storeli.w r3, -2640(r30)
	storeli.w r3, -2636(r30)
	storeli.w r3, -2632(r30)
	storeli.w r3, -2628(r30)
	storeli.w r3, -2624(r30)
	storeli.w r3, -2620(r30)
	storeli.w r3, -2616(r30)
	storeli.w r3, -2612(r30)
	storeli.w r3, -2608(r30)
	storeli.w r3, -2604(r30)
	storeli.w r3, -2600(r30)
	storeli.w r3, -2596(r30)
	storeli.w r3, -2592(r30)
	storeli.w r3, -2588(r30)
	storeli.w r3, -2584(r30)
	storeli.w r3, -2580(r30)
	storeli.w r3, -2576(r30)
	storeli.w r3, -2572(r30)
	storeli.w r3, -2568(r30)
	storeli.w r3, -2564(r30)
	storeli.w r3, -2560(r30)
	storeli.w r3, -2556(r30)
	storeli.w r3, -2552(r30)
	storeli.w r3, -2548(r30)
	storeli.w r3, -2544(r30)
	storeli.w r3, -2540(r30)
	storeli.w r3, -2536(r30)
	storeli.w r3, -2532(r30)
	storeli.w r3, -2528(r30)
	storeli.w r3, -2524(r30)
	storeli.w r3, -2520(r30)
	storeli.w r3, -2516(r30)
	storeli.w r3, -2512(r30)
	storeli.w r3, -2508(r30)
	storeli.w r3, -2504(r30)
	storeli.w r3, -2500(r30)
	storeli.w r3, -2496(r30)
	storeli.w r3, -2492(r30)
	storeli.w r3, -2488(r30)
	storeli.w r3, -2484(r30)
	storeli.w r3, -2480(r30)
	storeli.w r3, -2476(r30)
	storeli.w r3, -2472(r30)
	storeli.w r3, -2468(r30)
	storeli.w r3, -2464(r30)
	storeli.w r3, -2460(r30)
	storeli.w r3, -2456(r30)
	storeli.w r3, -2452(r30)
	storeli.w r3, -2448(r30)
	storeli.w r3, -2444(r30)
	storeli.w r3, -2440(r30)
	storeli.w r3, -2436(r30)
	storeli.w r3, -2432(r30)
	storeli.w r3, -2428(r30)
	storeli.w r3, -2424(r30)
	storeli.w r3, -2420(r30)
	storeli.w r3, -2416(r30)
	storeli.w r3, -2412(r30)
	storeli.w r3, -2408(r30)
	storeli.w r3, -2404(r30)
	storeli.w r3, -2400(r30)
	storeli.w r3, -2396(r30)
	storeli.w r3, -2392(r30)
	storeli.w r3, -2388(r30)
	storeli.w r3, -2384(r30)
	storeli.w r3, -2380(r30)
	storeli.w r3, -2376(r30)
	storeli.w r3, -2372(r30)
	storeli.w r3, -2368(r30)
	storeli.w r3, -2364(r30)
	storeli.w r3, -2360(r30)
	storeli.w r3, -2356(r30)
	storeli.w r3, -2352(r30)
	storeli.w r3, -2348(r30)
	storeli.w r3, -2344(r30)
	storeli.w r3, -2340(r30)
	storeli.w r3, -2336(r30)
	storeli.w r3, -2332(r30)
	storeli.w r3, -2328(r30)
	storeli.w r3, -2324(r30)
	storeli.w r3, -2320(r30)
	storeli.w r3, -2316(r30)
	storeli.w r3, -2312(r30)
	storeli.w r3, -2308(r30)
	storeli.w r3, -2304(r30)
	storeli.w r3, -2300(r30)
	storeli.w r3, -2296(r30)
	storeli.w r3, -2292(r30)
	storeli.w r3, -2288(r30)
	storeli.w r3, -2284(r30)
	storeli.w r3, -2280(r30)
	storeli.w r3, -2276(r30)
	storeli.w r3, -2272(r30)
	storeli.w r3, -2268(r30)
	storeli.w r3, -2264(r30)
	storeli.w r3, -2260(r30)
	storeli.w r3, -2256(r30)
	storeli.w r3, -2252(r30)
	storeli.w r3, -2248(r30)
	storeli.w r3, -2244(r30)
	storeli.w r3, -2240(r30)
	storeli.w r3, -2236(r30)
	storeli.w r3, -2232(r30)
	storeli.w r3, -2228(r30)
	storeli.w r3, -2224(r30)
	storeli.w r3, -2220(r30)
	storeli.w r3, -2216(r30)
	storeli.w r3, -2212(r30)
	storeli.w r3, -2208(r30)
	storeli.w r3, -2204(r30)
	storeli.w r3, -2200(r30)
	storeli.w r3, -2196(r30)
	storeli.w r3, -2192(r30)
	storeli.w r3, -2188(r30)
	storeli.w r3, -2184(r30)
	storeli.w r3, -2180(r30)
	storeli.w r3, -2176(r30)
	storeli.w r3, -2172(r30)
	storeli.w r3, -2168(r30)
	storeli.w r3, -2164(r30)
	storeli.w r3, -2160(r30)
	storeli.w r3, -2156(r30)
	storeli.w r3, -2152(r30)
	storeli.w r3, -2148(r30)
	storeli.w r3, -2144(r30)
	storeli.w r3, -2140(r30)
	storeli.w r3, -2136(r30)
	storeli.w r3, -2132(r30)
	storeli.w r3, -2128(r30)
	storeli.w r3, -2124(r30)
	storeli.w r3, -2120(r30)
	storeli.w r3, -2116(r30)
	storeli.w r3, -2112(r30)
	storeli.w r3, -2108(r30)
	storeli.w r3, -2104(r30)
	storeli.w r3, -2100(r30)
	storeli.w r3, -2096(r30)
	storeli.w r3, -2092(r30)
	storeli.w r3, -2088(r30)
	storeli.w r3, -2084(r30)
	storeli.w r3, -2080(r30)
	storeli.w r3, -2076(r30)
	storeli.w r3, -2072(r30)
	storeli.w r3, -2068(r30)
	storeli.w r3, -2064(r30)
	storeli.w r3, -2060(r30)
	storeli.w r3, -2056(r30)
	storeli.w r3, -2052(r30)
	storeli.w r3, -2048(r30)
	storeli.w r3, -2044(r30)
	storeli.w r3, -2040(r30)
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r2, r2, r4
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r2, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 43 11 is_stmt 1               # parallel-rne.mlir:43:11
	addli r4, r30, -2888
	addli r23, zero, 4
	lui r5, 522240
	addli r6, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	lui r1, 7
	ori r17, r1, 4095
	lui r1, 127
	lui r16, 1048448
	ori r1, r1, 4095
	storeli.w r1, -2828(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r12, r1, 4095
	lui r1, 522239
	ori r20, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2848
	.loc	1 51 5 is_stmt 1                # parallel-rne.mlir:51:5
	addli r6, r30, -2888
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	loadli.w r6,  -2852(r30)                # 4-byte Folded Reload
	addli.d r[3:4], r[3:4], 1
	setlt.sl r1, r[3:4], r[1:2]
	beq r1, zero, .LBB0_295
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
                                        #     Child Loop BB0_171 Depth 2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #     Child Loop BB0_202 Depth 2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
                                        #     Child Loop BB0_141 Depth 2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
                                        #     Child Loop BB0_263 Depth 2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
                                        #     Child Loop BB0_233 Depth 2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	bneq r25, r23, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	addli r7, r30, -2848
	addli r8, zero, 8
	addli r1, zero, 0
	addli r26, zero, 0
	store.d r[3:4], 0(r7)                   # 8-byte Folded Spill
	div.s r2, r3, r2
	loadli.w r3,  28(r30)
	addli r4, zero, 2
	mod.s r4, r6, r4
	addli r6, r6, 1
	storeli.w r6, -2852(r30)                # 4-byte Folded Spill
	div.s r2, r2, r3
	addli r3, zero, 128
	slli r9, r4, 14
	lui r4, 8
	add.s r21, r9, r4
	div.s r3, r2, r3
	slli r7, r3, 3
	slli r3, r3, 7
	sub.s r6, r8, r7
	sub.s r3, r2, r3
	min.s r6, r6, r8
	mod.s r8, r2, r6
	div.s r3, r3, r6
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	loadli.w r2,  -2808(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	loadli.w r6,  -2036(r30)
	storeli.w r2, -2824(r30)                # 4-byte Folded Spill
	add.s r4, r7, r8
	slli r2, r3, 6
	zext_int2long r[7:8], r3
	addli r3, zero, 6
	storeli.w r2, -2880(r30)                # 4-byte Folded Spill
	slli r2, r4, 6
	zext_int2long r[10:11], r4
	sll.d r[3:4], r[7:8], r3
	addli r7, r30, -2872
	storeli.w r2, -2876(r30)                # 4-byte Folded Spill
	addli r2, zero, 16
	store.d r[10:11], 0(r7)                 # 8-byte Folded Spill
	sll.d r[14:15], r[10:11], r2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r2, zero, 1
	sll.d r[10:11], r[3:4], r2
	load.d r[2:3], 8(r30)
	addli r4, r30, -2864
	and.d r[7:8], r[14:15], r[16:17]
	store.d r[10:11], 0(r4)                 # 8-byte Folded Spill
	addli r4, r30, -2840
	add.ul r[2:3], r[2:3], r[10:11]
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 16
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	lock zero, r23
	addli r18, zero, 64
	addli r11, zero, 5
	addli r10, zero, 2
	addli r4, zero, 6
	dma_cfg r25, r25, zero, 0
	ori r3, r2, 64
	dma_cfg zero, r28, zero, 2
	addli r2, zero, 2048
	add.s r3, r13, r3
	addli r13, zero, 32
	dma_cfg r3, r27, r18, 3
	addli r3, zero, 128
	dma_cfg r3, r18, r25, 4
	dma_cfg r3, r2, r22, 5
	addli r2, zero, 7
	dma_cfg zero, zero, r13, 8
	dma_run zero
	dma_cfg zero, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r4, 10
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
	dma_cfg r25, r25, zero, 0
	dma_cfg r25, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r24, zero, r18, 3
	dma_cfg r3, zero, r25, 4
	dma_cfg r3, zero, r22, 5
	dma_cfg zero, zero, r13, 8
	dma_run zero
	dma_cfg zero, zero, r25, 5
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r25
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r10, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r3,  -1532(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r4,  -508(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r3, r3, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r4, r4, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r3, -1532(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r4, -508(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r26, r26, 1
	addli r2, zero, 64
	beq r26, r2, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 123 15                        # parallel-rne.mlir:123:15
	addli r1, r1, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	zext_int2long r[18:19], r26
	addli r2, zero, 4
	addli.d r[27:28], r[7:8], 0
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	sll.d r[3:4], r[18:19], r23
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	add.ul r[22:23], r[3:4], r[14:15]
	loadli.w r3,  -2828(r30)                # 4-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	setlt.ul r3, r[3:4], r[22:23]
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	bneq r3, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[27:28], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	loadli.w r3,  -2824(r30)                # 4-byte Folded Reload
	add.s r11, r6, r1
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	addli r10, zero, 125
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r4, zero, 192
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r13, r11, r10
	addli r10, zero, 448
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r3, r3, r1
	zext_int2long r[24:25], r10
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r10, r30, -2816
	mod.s r4, r3, r4
	addli r3, r3, 1
	store.d r[24:25], 0(r10)                # 8-byte Folded Spill
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r25
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r3, -2808(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r3, r11, 1
	slli r13, r13, 13
	storeli.w r3, -2036(r30)
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r3, zero, 2
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r10, r4, 12
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	lui r4, 16
	add.s r24, r13, r4
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	beq r25, r3, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	addli r25, zero, 1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r3, r25, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 1024
	sub.sl r[3:4], r[22:23], r[27:28]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	sll.d r[22:23], r[22:23], r25
	zext_int2long r[18:19], r2
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	addli r2, r30, -2816
	div.sl r[3:4], r[3:4], r[18:19]
	load.d r[18:19], 0(r2)                  # 8-byte Folded Reload
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r2, zero, 124
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[18:19], r[3:4], r[18:19]
	sub.sl r[3:4], r[18:19], r[3:4]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	load.d r[18:19], 0(r30)
	add.ul r[27:28], r[18:19], r[22:23]
	addli r19, zero, 3
	addli r22, r3, 64
	addli r23, zero, 4
	xwait r19, 0
	blt.s r2, r11, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 5
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r3, zero, 2
	addli r2, zero, 7
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 128
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
	addli r2, zero, 64
	dma_cfg r25, r25, zero, 0
	dma_cfg r25, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r24, zero, r2, 3
	dma_cfg r3, zero, r25, 4
	dma_cfg r3, zero, r2, 5
	addli r2, zero, 32
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r3, zero, 2
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	addli r2, zero, 5
	addli r23, zero, 4
	xwait r3, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r3, zero, 0
	addli r3, zero, 64
	ds_cfg r2, zero, 1
	addli r2, zero, 16
	ds_cfg r2, zero, 14
	ds_cfg r3, zero, 13
	shuffle_batch r10, r24, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	xsignal r23, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r3,  -1532(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r25,  -508(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r4, zero, 255
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r11, zero, 126
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r22
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r4, r3, r4
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r11, r25, r11
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r3, r3, 1
	storeli.w r3, -1532(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r3, r25, 1
	storeli.w r3, -508(r30)
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r3, zero, 6
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r13, r4, 12
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r11, r11, 12
	lui r4, 266
	add.s r24, r11, r4
	addli r4, zero, 7
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	beq r22, r4, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r22, r3, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r28, zero, 15
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r10, r30, -2840
	addli r27, zero, 7
	sll.d r[3:4], r[18:19], r28
	load.d r[18:19], 0(r10)                 # 8-byte Folded Reload
	xwait r27, 0
	add.ul r[22:23], r[18:19], r[3:4]
	addli r3, zero, 125
	blt.s r3, r25, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r13, zero, 5
	addli r10, zero, 1
	addli r4, zero, 2
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r3, zero, 3
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
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
	addli r2, zero, 16
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 18
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
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
	addli r3, zero, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r24, zero, r3, 3
	addli r3, zero, 128
	dma_cfg r3, zero, r4, 4
	addli r3, zero, 256
	dma_cfg r3, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r2, 266
	addli r18, zero, 1
	addli r25, zero, 64
	addli r13, zero, 16
	addli r19, zero, 5
	addli r10, zero, 6
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r4, zero, 8
	ori r3, r2, 64
	addli r2, zero, 4
	lock zero, r2
	add.s r3, r11, r3
	addli r11, zero, 2
	addli r2, zero, 2048
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r23, zero, 2
	dma_cfg r3, r22, r25, 3
	addli r3, zero, 128
	addli r22, zero, 256
	addli r23, zero, 4
	dma_cfg r3, r25, r11, 4
	dma_cfg r22, r2, r13, 5
	addli r2, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r23
	lock zero, r19
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r4, 10
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
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r13, 10
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
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r24, zero, r25, 3
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r25
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	dma_cfg r3, zero, r11, 4
	dma_cfg r22, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
	xsignal r10, 0
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 9
	xwait r3, 0
	addli r3, zero, 2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r25
	addli r23, zero, 4
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 16
	ds_cfg r3, zero, 0
	addli r3, zero, 64
	ds_cfg r3, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 8
	shuffle_coa r13, r24, r2, 2
	unlock zero
	xsignal r4, 0
	xsignal r3, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r25
	addli r23, zero, 4
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	bneq r25, r23, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 8
	addli r4, zero, 1
	xwait r23, 0
	addli r2, zero, 16
	xwait r3, 0
	addli r3, zero, 64
	lock zero, r4
	mm_cfg r3, r2, r3, 0
	addli r3, zero, 2
	mm_cfg r4, r3, r4, 2
	beq r1, zero, .LBB0_32
# %bb.30:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r21, r10, r13, 8
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r26, r26, 1
	addli r2, zero, 64
	bneq r26, r2, .LBB0_14
	j .LBB0_36
.LBB0_32:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	mm r21, r10, r13, 8
.LBB0_33:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 1
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r26, r26, 1
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	unlock r2
	addli r2, zero, 5
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r2, zero, 64
	bneq r26, r2, .LBB0_14
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	bneq r25, r23, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -2840(r30)              # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r25, r1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 132 7 is_stmt 1               # parallel-rne.mlir:132:7
	storeli.w r1, -2840(r30)                # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -2840(r30)              # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r1, zero, 255
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	xfence
	addli r3, zero, 63
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	csr_set csr5, r1
	addli r1, zero, 64
	zext_int2long r[6:7], r3
	sync_core
	zext_int2long r[1:2], r1
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	beq r25, zero, .LBB0_72
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r3, zero, 2
	beq r25, r3, .LBB0_103
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 1
	bneq r25, r3, .LBB0_134
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 8
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r3
	j .LBB0_44
.LBB0_43:                               # %middle.block99
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r8, r30, -2824
	addli r3, zero, 15
	load.d r[10:11], 0(r8)                  # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	setlt.ul r3, r[10:11], r[3:4]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_133
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	addli r4, r30, -2824
	sll.d r[24:25], r[10:11], r3
	store.d r[10:11], 0(r4)                 # 8-byte Folded Spill
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	bneq r9, r21, .LBB0_51
# %bb.45:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_47
.LBB0_46:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setlt.ul r3, r[10:11], r[6:7]
	.loc	1 188 13 is_stmt 1              # parallel-rne.mlir:188:13
	add.s r4, r9, r8
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r13, 0(r4)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r3, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[3:4], r[10:11], r[24:25]
	slli r8, r3, 2
	add.s r3, r21, r8
	loads.w r4, 0(r3)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r3, r4, r12
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r13, r5, r3
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r13, zero, .LBB0_49
# %bb.48:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r4, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r3, r20, r3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r3, zero, .LBB0_46
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r4, r13
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r3, r20, r3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r3, zero, .LBB0_46
.LBB0_50:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r13, r3, r4
	j .LBB0_46
.LBB0_51:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r4, r9, r8
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	seteq.d r3, r[22:23], r[1:2]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r26, 12(r4)
	stores.w r13, 8(r4)
	stores.w r14, 4(r4)
	stores.w r10, 0(r4)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	bneq r3, zero, .LBB0_43
.LBB0_53:                               # %vector.body95
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[3:4], r[22:23], r[24:25]
	slli r8, r3, 2
	add.s r10, r21, r8
	loads.w r28, 12(r10)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r19, r28, r12
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r3, r5, r19
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r3, zero, .LBB0_55
# %bb.54:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=3
	lui r3, 1024
	or r26, r28, r3
.LBB0_56:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r27, 8(r10)
	and r18, r27, r12
	setlt.u r3, r5, r18
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r3, zero, .LBB0_58
# %bb.57:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_53 Depth=3
	lui r3, 1024
	or r13, r27, r3
.LBB0_59:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r11, 4(r10)
	and r15, r11, r12
	setlt.u r3, r5, r15
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r3, zero, .LBB0_61
# %bb.60:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=3
	lui r3, 1024
	or r14, r11, r3
.LBB0_62:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r4, 0(r10)
	and r3, r4, r12
	setlt.u r10, r5, r3
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r10, zero, .LBB0_64
# %bb.63:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r3, r20, r3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r3, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r4, r10
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r3, r20, r3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r3, zero, .LBB0_66
.LBB0_65:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r10, r3, r4
.LBB0_66:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	setlt.u r3, r20, r15
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r3, zero, .LBB0_69
# %bb.67:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r18
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r3, zero, .LBB0_70
.LBB0_68:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r19
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r3, zero, .LBB0_52
	j .LBB0_71
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r17
	and r14, r3, r4
	setlt.u r3, r20, r18
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r3, zero, .LBB0_68
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r17
	and r13, r3, r4
	setlt.u r3, r20, r19
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r3, zero, .LBB0_52
.LBB0_71:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r26, r3, r4
	j .LBB0_52
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	xfence
	zext_int2long r[10:11], zero
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block117
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, r30, -2824
	addli r3, zero, 7
	load.d r[10:11], 0(r8)                  # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 144 9 is_stmt 1               # parallel-rne.mlir:144:9
	setlt.ul r3, r[10:11], r[3:4]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_102
.LBB0_74:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	addli r4, r30, -2824
	sll.d r[24:25], r[10:11], r3
	store.d r[10:11], 0(r4)                 # 8-byte Folded Spill
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	bneq r9, r21, .LBB0_81
# %bb.75:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_77
.LBB0_76:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	setlt.ul r3, r[10:11], r[6:7]
	.loc	1 160 13 is_stmt 1              # parallel-rne.mlir:160:13
	add.s r4, r9, r8
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r13, 0(r4)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r3, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[3:4], r[10:11], r[24:25]
	slli r8, r3, 2
	add.s r3, r21, r8
	loads.w r4, 0(r3)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r3, r4, r12
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r13, r5, r3
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r13, zero, .LBB0_79
# %bb.78:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r4, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r3, r20, r3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r3, zero, .LBB0_76
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r4, r13
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r3, r20, r3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r3, zero, .LBB0_76
.LBB0_80:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r13, r3, r4
	j .LBB0_76
.LBB0_81:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r8, r9, r8
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	seteq.d r3, r[22:23], r[1:2]
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r28, 12(r8)
	stores.w r27, 8(r8)
	stores.w r14, 4(r8)
	stores.w r4, 0(r8)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	bneq r3, zero, .LBB0_73
.LBB0_83:                               # %vector.body113
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[3:4], r[22:23], r[24:25]
	slli r8, r3, 2
	add.s r10, r21, r8
	loads.w r26, 12(r10)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r19, r26, r12
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r3, r5, r19
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r3, zero, .LBB0_85
# %bb.84:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r26, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	lui r3, 1024
	or r28, r26, r3
.LBB0_86:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r13, 8(r10)
	and r18, r13, r12
	setlt.u r3, r5, r18
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r3, zero, .LBB0_88
# %bb.87:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r13, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	lui r3, 1024
	or r27, r13, r3
.LBB0_89:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r11, 4(r10)
	and r15, r11, r12
	setlt.u r3, r5, r15
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r3, zero, .LBB0_91
# %bb.90:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	lui r3, 1024
	or r14, r11, r3
.LBB0_92:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r10, 0(r10)
	and r3, r10, r12
	setlt.u r4, r5, r3
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r4, zero, .LBB0_94
# %bb.93:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r10, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r3, r20, r3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r3, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r10, r4
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r3, r20, r3
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r3, zero, .LBB0_96
.LBB0_95:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r17
	and r4, r3, r4
.LBB0_96:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r3, r20, r15
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r3, zero, .LBB0_99
# %bb.97:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r3, zero, .LBB0_100
.LBB0_98:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r19
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r3, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r10, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r17
	and r14, r3, r10
	setlt.u r3, r20, r18
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r3, zero, .LBB0_98
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r13, 16
	lui r10, 1048560
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r17
	and r27, r3, r10
	setlt.u r3, r20, r19
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r3, zero, .LBB0_82
.LBB0_101:                              # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	lui r10, 1048560
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r17
	and r28, r3, r10
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r25
	addli r23, zero, 4
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r3, zero, 2
	bneq r25, r3, .LBB0_41
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 16
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r3
	j .LBB0_105
.LBB0_104:                              # %middle.block108
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, r30, -2824
	addli r3, zero, 23
	load.d r[10:11], 0(r8)                  # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 200 9 is_stmt 1               # parallel-rne.mlir:200:9
	setlt.ul r3, r[10:11], r[3:4]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	addli r4, r30, -2824
	sll.d r[24:25], r[10:11], r3
	store.d r[10:11], 0(r4)                 # 8-byte Folded Spill
	.loc	1 201 11 is_stmt 1              # parallel-rne.mlir:201:11
	bneq r9, r21, .LBB0_112
# %bb.106:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_108
.LBB0_107:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	setlt.ul r3, r[10:11], r[6:7]
	.loc	1 216 13 is_stmt 1              # parallel-rne.mlir:216:13
	add.s r4, r9, r8
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r13, 0(r4)
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	beq r3, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	add.ul r[3:4], r[10:11], r[24:25]
	slli r8, r3, 2
	add.s r3, r21, r8
	loads.w r4, 0(r3)
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r3, r4, r12
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	setlt.u r13, r5, r3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r13, zero, .LBB0_110
# %bb.109:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r4, 0
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r3, r20, r3
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r3, zero, .LBB0_107
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r4, r13
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r3, r20, r3
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r3, zero, .LBB0_107
.LBB0_111:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r13, r3, r4
	j .LBB0_107
.LBB0_112:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 201 11 is_stmt 1              # parallel-rne.mlir:201:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	add.s r4, r9, r8
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	seteq.d r3, r[22:23], r[1:2]
	.loc	1 216 13                        # parallel-rne.mlir:216:13
	stores.w r26, 12(r4)
	stores.w r13, 8(r4)
	stores.w r14, 4(r4)
	stores.w r10, 0(r4)
	.loc	1 201 11                        # parallel-rne.mlir:201:11
	bneq r3, zero, .LBB0_104
.LBB0_114:                              # %vector.body104
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	add.ul r[3:4], r[22:23], r[24:25]
	slli r8, r3, 2
	add.s r10, r21, r8
	loads.w r28, 12(r10)
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	and r19, r28, r12
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	setlt.u r3, r5, r19
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r3, zero, .LBB0_116
# %bb.115:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	lui r3, 1024
	or r26, r28, r3
.LBB0_117:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r27, 8(r10)
	and r18, r27, r12
	setlt.u r3, r5, r18
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r3, zero, .LBB0_119
# %bb.118:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	lui r3, 1024
	or r13, r27, r3
.LBB0_120:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r11, 4(r10)
	and r15, r11, r12
	setlt.u r3, r5, r15
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r3, zero, .LBB0_122
# %bb.121:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	lui r3, 1024
	or r14, r11, r3
.LBB0_123:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r4, 0(r10)
	and r3, r4, r12
	setlt.u r10, r5, r3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r10, zero, .LBB0_125
# %bb.124:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r3, r20, r3
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r3, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r4, r10
	.loc	1 213 19 is_stmt 1              # parallel-rne.mlir:213:19
	setlt.u r3, r20, r3
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r3, zero, .LBB0_127
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r10, r3, r4
.LBB0_127:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r3, r20, r15
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r3, zero, .LBB0_130
# %bb.128:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r18
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	beq r3, zero, .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r19
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r3, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r17
	and r14, r3, r4
	setlt.u r3, r20, r18
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r3, zero, .LBB0_129
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r17
	and r13, r3, r4
	setlt.u r3, r20, r19
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	bneq r3, zero, .LBB0_113
.LBB0_132:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r26, r3, r4
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r25
	addli r23, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 221 7 is_stmt 1               # parallel-rne.mlir:221:7
	loadli.w r3,  -2840(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_169
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	beq r25, r23, .LBB0_200
.LBB0_136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	addli r3, zero, 7
	beq r25, r3, .LBB0_231
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 6
	beq r25, r3, .LBB0_261
# %bb.138:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 5
	bneq r25, r3, .LBB0_292
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 40
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r3
	j .LBB0_141
.LBB0_140:                              # %middle.block
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r8, r30, -2824
	addli r3, zero, 47
	load.d r[10:11], 0(r8)                  # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 284 9 is_stmt 1               # parallel-rne.mlir:284:9
	setlt.ul r3, r[10:11], r[3:4]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_291
.LBB0_141:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	addli r4, r30, -2824
	sll.d r[24:25], r[10:11], r3
	store.d r[10:11], 0(r4)                 # 8-byte Folded Spill
	.loc	1 285 11 is_stmt 1              # parallel-rne.mlir:285:11
	bneq r9, r21, .LBB0_148
# %bb.142:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_144
.LBB0_143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	setlt.ul r3, r[10:11], r[6:7]
	.loc	1 300 13 is_stmt 1              # parallel-rne.mlir:300:13
	add.s r4, r9, r8
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r13, 0(r4)
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	beq r3, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.ul r[3:4], r[10:11], r[24:25]
	slli r8, r3, 2
	add.s r3, r21, r8
	loads.w r4, 0(r3)
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r3, r4, r12
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	setlt.u r13, r5, r3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r13, zero, .LBB0_146
# %bb.145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r4, 0
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r3, r20, r3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r3, zero, .LBB0_143
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r4, r13
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r3, r20, r3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r3, zero, .LBB0_143
.LBB0_147:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r13, r3, r4
	j .LBB0_143
.LBB0_148:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_150
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 285 11 is_stmt 1              # parallel-rne.mlir:285:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	add.s r4, r9, r8
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	seteq.d r3, r[22:23], r[1:2]
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r26, 12(r4)
	stores.w r13, 8(r4)
	stores.w r14, 4(r4)
	stores.w r10, 0(r4)
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	bneq r3, zero, .LBB0_140
.LBB0_150:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.ul r[3:4], r[22:23], r[24:25]
	slli r8, r3, 2
	add.s r10, r21, r8
	loads.w r28, 12(r10)
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r19, r28, r12
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	setlt.u r3, r5, r19
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r3, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_150 Depth=3
	lui r3, 1024
	or r26, r28, r3
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r27, 8(r10)
	and r18, r27, r12
	setlt.u r3, r5, r18
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r3, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_150 Depth=3
	lui r3, 1024
	or r13, r27, r3
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r11, 4(r10)
	and r15, r11, r12
	setlt.u r3, r5, r15
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r3, zero, .LBB0_158
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_150 Depth=3
	lui r3, 1024
	or r14, r11, r3
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r4, 0(r10)
	and r3, r4, r12
	setlt.u r10, r5, r3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r10, zero, .LBB0_165
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r3, r20, r3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r3, zero, .LBB0_162
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r10, r3, r4
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	setlt.u r3, r20, r15
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r3, zero, .LBB0_166
# %bb.163:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r18
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r3, zero, .LBB0_167
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r19
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r3, zero, .LBB0_149
	j .LBB0_168
.LBB0_165:                              #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r4, r10
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r3, r20, r3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r3, zero, .LBB0_161
	j .LBB0_162
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r17
	and r14, r3, r4
	setlt.u r3, r20, r18
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r3, zero, .LBB0_164
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r17
	and r13, r3, r4
	setlt.u r3, r20, r19
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r3, zero, .LBB0_149
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r26, r3, r4
	j .LBB0_149
.LBB0_169:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 24
	.loc	1 221 7 is_stmt 1               # parallel-rne.mlir:221:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r3
	j .LBB0_171
.LBB0_170:                              # %middle.block90
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, r30, -2824
	addli r3, zero, 31
	load.d r[10:11], 0(r8)                  # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 228 9 is_stmt 1               # parallel-rne.mlir:228:9
	setlt.ul r3, r[10:11], r[3:4]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_199
.LBB0_171:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	addli r4, r30, -2824
	sll.d r[24:25], r[10:11], r3
	store.d r[10:11], 0(r4)                 # 8-byte Folded Spill
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	bneq r9, r21, .LBB0_178
# %bb.172:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_174
.LBB0_173:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	setlt.ul r3, r[10:11], r[6:7]
	.loc	1 244 13 is_stmt 1              # parallel-rne.mlir:244:13
	add.s r4, r9, r8
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r13, 0(r4)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	beq r3, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[3:4], r[10:11], r[24:25]
	slli r8, r3, 2
	add.s r3, r21, r8
	loads.w r4, 0(r3)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r3, r4, r12
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	setlt.u r13, r5, r3
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r13, zero, .LBB0_176
# %bb.175:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r4, 0
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r3, r20, r3
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r3, zero, .LBB0_173
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r4, r13
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r3, r20, r3
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r3, zero, .LBB0_173
.LBB0_177:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r13, r3, r4
	j .LBB0_173
.LBB0_178:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_180
.LBB0_179:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 229 11 is_stmt 1              # parallel-rne.mlir:229:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	add.s r4, r9, r8
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	seteq.d r3, r[22:23], r[1:2]
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r26, 12(r4)
	stores.w r13, 8(r4)
	stores.w r14, 4(r4)
	stores.w r10, 0(r4)
	.loc	1 229 11                        # parallel-rne.mlir:229:11
	bneq r3, zero, .LBB0_170
.LBB0_180:                              # %vector.body86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.ul r[3:4], r[22:23], r[24:25]
	slli r8, r3, 2
	add.s r10, r21, r8
	loads.w r28, 12(r10)
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	and r19, r28, r12
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	setlt.u r3, r5, r19
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r3, zero, .LBB0_182
# %bb.181:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_180 Depth=3
	lui r3, 1024
	or r26, r28, r3
.LBB0_183:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r27, 8(r10)
	and r18, r27, r12
	setlt.u r3, r5, r18
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r3, zero, .LBB0_185
# %bb.184:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_180 Depth=3
	lui r3, 1024
	or r13, r27, r3
.LBB0_186:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r11, 4(r10)
	and r15, r11, r12
	setlt.u r3, r5, r15
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r3, zero, .LBB0_188
# %bb.187:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_180 Depth=3
	lui r3, 1024
	or r14, r11, r3
.LBB0_189:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r4, 0(r10)
	and r3, r4, r12
	setlt.u r10, r5, r3
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	bneq r10, zero, .LBB0_195
# %bb.190:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r3, r20, r3
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r3, zero, .LBB0_192
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r10, r3, r4
.LBB0_192:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	setlt.u r3, r20, r15
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r3, zero, .LBB0_196
# %bb.193:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r18
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r3, zero, .LBB0_197
.LBB0_194:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r19
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r3, zero, .LBB0_179
	j .LBB0_198
.LBB0_195:                              #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r4, r10
	.loc	1 241 19 is_stmt 1              # parallel-rne.mlir:241:19
	setlt.u r3, r20, r3
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r3, zero, .LBB0_191
	j .LBB0_192
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r17
	and r14, r3, r4
	setlt.u r3, r20, r18
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r3, zero, .LBB0_194
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r17
	and r13, r3, r4
	setlt.u r3, r20, r19
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r3, zero, .LBB0_179
.LBB0_198:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r26, r3, r4
	j .LBB0_179
.LBB0_199:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r25
	addli r23, zero, 4
	.loc	1 221 7                         # parallel-rne.mlir:221:7
	mfence { sm }
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	bneq r25, r23, .LBB0_136
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 32
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r3
	j .LBB0_202
.LBB0_201:                              # %middle.block81
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r8, r30, -2824
	addli r3, zero, 39
	load.d r[10:11], 0(r8)                  # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 256 9 is_stmt 1               # parallel-rne.mlir:256:9
	setlt.ul r3, r[10:11], r[3:4]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_230
.LBB0_202:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	addli r4, r30, -2824
	sll.d r[24:25], r[10:11], r3
	store.d r[10:11], 0(r4)                 # 8-byte Folded Spill
	.loc	1 257 11 is_stmt 1              # parallel-rne.mlir:257:11
	bneq r9, r21, .LBB0_209
# %bb.203:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_205
.LBB0_204:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	setlt.ul r3, r[10:11], r[6:7]
	.loc	1 272 13 is_stmt 1              # parallel-rne.mlir:272:13
	add.s r4, r9, r8
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	stores.w r13, 0(r4)
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	beq r3, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.ul r[3:4], r[10:11], r[24:25]
	slli r8, r3, 2
	add.s r3, r21, r8
	loads.w r4, 0(r3)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	and r3, r4, r12
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	setlt.u r13, r5, r3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r13, zero, .LBB0_207
# %bb.206:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r4, 0
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r3, r20, r3
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r3, zero, .LBB0_204
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r4, r13
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r3, r20, r3
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r3, zero, .LBB0_204
.LBB0_208:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r13, r3, r4
	j .LBB0_204
.LBB0_209:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 257 11 is_stmt 1              # parallel-rne.mlir:257:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	add.s r4, r9, r8
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	seteq.d r3, r[22:23], r[1:2]
	.loc	1 272 13                        # parallel-rne.mlir:272:13
	stores.w r26, 12(r4)
	stores.w r13, 8(r4)
	stores.w r14, 4(r4)
	stores.w r10, 0(r4)
	.loc	1 257 11                        # parallel-rne.mlir:257:11
	bneq r3, zero, .LBB0_201
.LBB0_211:                              # %vector.body77
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	add.ul r[3:4], r[22:23], r[24:25]
	slli r8, r3, 2
	add.s r10, r21, r8
	loads.w r28, 12(r10)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	and r19, r28, r12
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	setlt.u r3, r5, r19
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r3, zero, .LBB0_213
# %bb.212:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	lui r3, 1024
	or r26, r28, r3
.LBB0_214:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r27, 8(r10)
	and r18, r27, r12
	setlt.u r3, r5, r18
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r3, zero, .LBB0_216
# %bb.215:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	lui r3, 1024
	or r13, r27, r3
.LBB0_217:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r11, 4(r10)
	and r15, r11, r12
	setlt.u r3, r5, r15
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r3, zero, .LBB0_219
# %bb.218:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	lui r3, 1024
	or r14, r11, r3
.LBB0_220:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r4, 0(r10)
	and r3, r4, r12
	setlt.u r10, r5, r3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	bneq r10, zero, .LBB0_226
# %bb.221:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r3, r20, r3
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r3, zero, .LBB0_223
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r10, r3, r4
.LBB0_223:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r3, r20, r15
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r3, zero, .LBB0_227
# %bb.224:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r18
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r3, zero, .LBB0_228
.LBB0_225:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r19
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r3, zero, .LBB0_210
	j .LBB0_229
.LBB0_226:                              #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r4, r10
	.loc	1 269 19 is_stmt 1              # parallel-rne.mlir:269:19
	setlt.u r3, r20, r3
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	beq r3, zero, .LBB0_222
	j .LBB0_223
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r17
	and r14, r3, r4
	setlt.u r3, r20, r18
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r3, zero, .LBB0_225
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r17
	and r13, r3, r4
	setlt.u r3, r20, r19
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r3, zero, .LBB0_210
.LBB0_229:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r26, r3, r4
	j .LBB0_210
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r25
	addli r23, zero, 4
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	mfence { sm }
	.loc	1 277 7                         # parallel-rne.mlir:277:7
	addli r3, zero, 7
	bneq r25, r3, .LBB0_137
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 56
	.loc	1 333 7 is_stmt 1               # parallel-rne.mlir:333:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r3
	j .LBB0_233
.LBB0_232:                              # %middle.block72
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, r30, -2824
	load.d r[10:11], 0(r3)                  # 8-byte Folded Reload
	.loc	1 340 9 is_stmt 1               # parallel-rne.mlir:340:9
	setlt.ul r3, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	addli r4, r30, -2824
	sll.d r[24:25], r[10:11], r3
	store.d r[10:11], 0(r4)                 # 8-byte Folded Spill
	.loc	1 341 11 is_stmt 1              # parallel-rne.mlir:341:11
	bneq r9, r21, .LBB0_240
# %bb.234:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_236
.LBB0_235:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	setlt.ul r3, r[10:11], r[6:7]
	.loc	1 356 13 is_stmt 1              # parallel-rne.mlir:356:13
	add.s r4, r9, r8
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r13, 0(r4)
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	beq r3, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.ul r[3:4], r[10:11], r[24:25]
	slli r8, r3, 2
	add.s r3, r21, r8
	loads.w r4, 0(r3)
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r3, r4, r12
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	setlt.u r13, r5, r3
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r13, zero, .LBB0_238
# %bb.237:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r4, 0
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r3, r20, r3
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r3, zero, .LBB0_235
	j .LBB0_239
.LBB0_238:                              #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r4, r13
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r3, r20, r3
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r3, zero, .LBB0_235
.LBB0_239:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r13, r3, r4
	j .LBB0_235
.LBB0_240:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 341 11 is_stmt 1              # parallel-rne.mlir:341:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	add.s r4, r9, r8
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	seteq.d r3, r[22:23], r[1:2]
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	stores.w r26, 12(r4)
	stores.w r13, 8(r4)
	stores.w r14, 4(r4)
	stores.w r10, 0(r4)
	.loc	1 341 11                        # parallel-rne.mlir:341:11
	bneq r3, zero, .LBB0_232
.LBB0_242:                              # %vector.body68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	add.ul r[3:4], r[22:23], r[24:25]
	slli r8, r3, 2
	add.s r10, r21, r8
	loads.w r28, 12(r10)
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r19, r28, r12
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	setlt.u r3, r5, r19
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r3, zero, .LBB0_244
# %bb.243:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	lui r3, 1024
	or r26, r28, r3
.LBB0_245:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r27, 8(r10)
	and r18, r27, r12
	setlt.u r3, r5, r18
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r3, zero, .LBB0_247
# %bb.246:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	lui r3, 1024
	or r13, r27, r3
.LBB0_248:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r11, 4(r10)
	and r15, r11, r12
	setlt.u r3, r5, r15
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r3, zero, .LBB0_250
# %bb.249:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	lui r3, 1024
	or r14, r11, r3
.LBB0_251:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r4, 0(r10)
	and r3, r4, r12
	setlt.u r10, r5, r3
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	bneq r10, zero, .LBB0_253
# %bb.252:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r3, r20, r3
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r3, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r4, r10
	.loc	1 353 19 is_stmt 1              # parallel-rne.mlir:353:19
	setlt.u r3, r20, r3
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r3, zero, .LBB0_255
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r10, r3, r4
.LBB0_255:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r3, r20, r15
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r3, zero, .LBB0_258
# %bb.256:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r18
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	beq r3, zero, .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r19
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r3, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r17
	and r14, r3, r4
	setlt.u r3, r20, r18
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r3, zero, .LBB0_257
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r17
	and r13, r3, r4
	setlt.u r3, r20, r19
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r3, zero, .LBB0_241
.LBB0_260:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r26, r3, r4
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 48
	.loc	1 305 7 is_stmt 1               # parallel-rne.mlir:305:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r3
	j .LBB0_263
.LBB0_262:                              # %middle.block63
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, r30, -2824
	addli r3, zero, 55
	load.d r[10:11], 0(r8)                  # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	.loc	1 312 9 is_stmt 1               # parallel-rne.mlir:312:9
	setlt.ul r3, r[10:11], r[3:4]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	addli r4, r30, -2824
	sll.d r[24:25], r[10:11], r3
	store.d r[10:11], 0(r4)                 # 8-byte Folded Spill
	.loc	1 313 11 is_stmt 1              # parallel-rne.mlir:313:11
	bneq r9, r21, .LBB0_270
# %bb.264:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_266
.LBB0_265:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	setlt.ul r3, r[10:11], r[6:7]
	.loc	1 328 13 is_stmt 1              # parallel-rne.mlir:328:13
	add.s r4, r9, r8
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	stores.w r13, 0(r4)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	beq r3, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[3:4], r[10:11], r[24:25]
	slli r8, r3, 2
	add.s r3, r21, r8
	loads.w r4, 0(r3)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	and r3, r4, r12
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	setlt.u r13, r5, r3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r13, zero, .LBB0_268
# %bb.267:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r4, 0
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r3, r20, r3
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r3, zero, .LBB0_265
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r4, r13
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r3, r20, r3
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r3, zero, .LBB0_265
.LBB0_269:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r13, r3, r4
	j .LBB0_265
.LBB0_270:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 313 11 is_stmt 1              # parallel-rne.mlir:313:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	add.s r4, r9, r8
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	seteq.d r3, r[22:23], r[1:2]
	.loc	1 328 13                        # parallel-rne.mlir:328:13
	stores.w r26, 12(r4)
	stores.w r13, 8(r4)
	stores.w r14, 4(r4)
	stores.w r10, 0(r4)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	bneq r3, zero, .LBB0_262
.LBB0_272:                              # %vector.body59
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[3:4], r[22:23], r[24:25]
	slli r8, r3, 2
	add.s r10, r21, r8
	loads.w r28, 12(r10)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	and r19, r28, r12
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	setlt.u r3, r5, r19
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r3, zero, .LBB0_274
# %bb.273:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	lui r3, 1024
	or r26, r28, r3
.LBB0_275:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r27, 8(r10)
	and r18, r27, r12
	setlt.u r3, r5, r18
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r3, zero, .LBB0_277
# %bb.276:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	lui r3, 1024
	or r13, r27, r3
.LBB0_278:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r11, 4(r10)
	and r15, r11, r12
	setlt.u r3, r5, r15
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r3, zero, .LBB0_280
# %bb.279:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	lui r3, 1024
	or r14, r11, r3
.LBB0_281:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r4, 0(r10)
	and r3, r4, r12
	setlt.u r10, r5, r3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	bneq r10, zero, .LBB0_283
# %bb.282:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r4, 0
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r3, r20, r3
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r3, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r4, r10
	.loc	1 325 19 is_stmt 1              # parallel-rne.mlir:325:19
	setlt.u r3, r20, r3
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r3, zero, .LBB0_285
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r17
	and r10, r3, r4
.LBB0_285:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r3, r20, r15
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r3, zero, .LBB0_288
# %bb.286:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r18
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	beq r3, zero, .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r20, r19
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r3, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r17
	and r14, r3, r4
	setlt.u r3, r20, r18
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r3, zero, .LBB0_287
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r27, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r27, r3
	add.s r3, r3, r17
	and r13, r3, r4
	setlt.u r3, r20, r19
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r3, zero, .LBB0_271
.LBB0_290:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r17
	and r26, r3, r4
	j .LBB0_271
.LBB0_291:                              # %.sink.split51
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r25
	addli r23, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 361 7 is_stmt 1               # parallel-rne.mlir:361:7
	addli r3, zero, 255
	csr_set csr5, r3
	sync_core
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	loadli.w r3,  -2840(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r15, zero, 1
	.loc	1 379 7 is_stmt 1               # parallel-rne.mlir:379:7
	bneq r25, zero, .LBB0_7
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	loadli.w r3,  -2880(r30)                # 4-byte Folded Reload
	addli r6, zero, 960
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	loadli.w r8,  -2876(r30)                # 4-byte Folded Reload
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r18, r30, -2872
	zext_int2long r[6:7], r6
	load.d r[13:14], 0(r18)                 # 8-byte Folded Reload
	load.d r[18:19], 16(r30)
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	zext_int2long r[3:4], r3
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	sext_int2long r[10:11], r8
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	addli r8, r30, -2816
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	min.ul r[6:7], r[3:4], r[6:7]
	addli.d r[6:7], r[6:7], 64
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	max.ul r[6:7], r[6:7], r[3:4]
	sub.sl r[3:4], r[6:7], r[3:4]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	load.d r[6:7], 0(r8)                    # 8-byte Folded Reload
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	addli r8, zero, 17
	sll.d r[13:14], r[13:14], r8
	addli r8, r30, -2864
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	min.ul r[3:4], r[3:4], r[1:2]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.sl r[6:7], r[10:11], r[6:7]
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	add.ul r[13:14], r[18:19], r[13:14]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	addli.d r[6:7], r[6:7], 64
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	max.sl r[6:7], r[6:7], r[10:11]
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	sub.sl r[6:7], r[6:7], r[10:11]
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	load.d r[10:11], 0(r8)                  # 8-byte Folded Reload
	addli r8, zero, 12
	xwait r8, 0
	ori r8, r9, 64
	addli r9, zero, 64
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.sl r[1:2], r[6:7], r[1:2]
	.loc	1 379 7                         # parallel-rne.mlir:379:7
	add.ul r[10:11], r[13:14], r[10:11]
	addli r13, zero, 5
	lock zero, r13
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r11, zero, zero, 2
	dma_cfg r10, r8, r9, 3
	addli r8, r3, 31
	slli r3, r3, 1
	addli r4, zero, 128
	srli r6, r8, 5
	andi r3, r3, 62
	dma_cfg r9, r4, r6, 4
	addli r4, zero, 256
	addli r6, zero, 2048
	dma_cfg r6, r4, r1, 5
	addli r1, zero, 13
	dma_cfg zero, zero, r3, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 381 5                         # parallel-rne.mlir:381:5
	xsignal zero, 0
	bneq r25, zero, .LBB0_297
# %bb.296:
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
.LBB0_297:
	.loc	1 382 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:382:5
	addli sp, sp, 2888
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
	.long	2952                            # 0xb88
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-hc96nt11" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
