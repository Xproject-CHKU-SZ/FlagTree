	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-icr2mq2z" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4240
	addli r1, zero, 1
.Ltmp0:
	.loc	1 34 5 prologue_end             # parallel-rne.mlir:34:5
	core_id r12
	addli r30, sp, 4176
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 34 5                          # parallel-rne.mlir:34:5
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
	.loc	1 36 10 is_stmt 1               # parallel-rne.mlir:36:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	lui r6, 1048575
	addli r8, r30, -4168
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -1024(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -2048(r30)
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r1, r2, r1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r5, r1, r3
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	addli r2, r2, -1
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	div.s r2, r2, r4
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	load_param_i r4, 0
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	mul.s r1, r2, r4
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	fmac.s r2, r2, r4
	lui r3, 1048575
	store.d r[3:4], 0(r8)                   # 8-byte Folded Spill
	ori r3, r6, 4095
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	min.s r2, r2, r5
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r3, -1020(r30)
	storeli.w r3, -1016(r30)
	storeli.w r3, -1012(r30)
	storeli.w r3, -1008(r30)
	storeli.w r3, -1004(r30)
	storeli.w r3, -1000(r30)
	storeli.w r3, -996(r30)
	storeli.w r3, -992(r30)
	storeli.w r3, -988(r30)
	storeli.w r3, -984(r30)
	storeli.w r3, -980(r30)
	storeli.w r3, -976(r30)
	storeli.w r3, -972(r30)
	storeli.w r3, -968(r30)
	storeli.w r3, -964(r30)
	storeli.w r3, -960(r30)
	storeli.w r3, -956(r30)
	storeli.w r3, -952(r30)
	storeli.w r3, -948(r30)
	storeli.w r3, -944(r30)
	storeli.w r3, -940(r30)
	storeli.w r3, -936(r30)
	storeli.w r3, -932(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r3, -3040(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r3, -928(r30)
	storeli.w r3, -924(r30)
	storeli.w r3, -920(r30)
	storeli.w r3, -916(r30)
	storeli.w r3, -912(r30)
	storeli.w r3, -908(r30)
	storeli.w r3, -904(r30)
	storeli.w r3, -900(r30)
	storeli.w r3, -896(r30)
	storeli.w r3, -892(r30)
	storeli.w r3, -888(r30)
	storeli.w r3, -884(r30)
	storeli.w r3, -880(r30)
	storeli.w r3, -876(r30)
	storeli.w r3, -872(r30)
	storeli.w r3, -868(r30)
	storeli.w r3, -864(r30)
	storeli.w r3, -860(r30)
	storeli.w r3, -856(r30)
	storeli.w r3, -852(r30)
	storeli.w r3, -848(r30)
	storeli.w r3, -844(r30)
	storeli.w r3, -840(r30)
	storeli.w r3, -836(r30)
	storeli.w r3, -832(r30)
	storeli.w r3, -828(r30)
	storeli.w r3, -824(r30)
	storeli.w r3, -820(r30)
	storeli.w r3, -816(r30)
	storeli.w r3, -812(r30)
	storeli.w r3, -808(r30)
	storeli.w r3, -804(r30)
	storeli.w r3, -800(r30)
	storeli.w r3, -796(r30)
	storeli.w r3, -792(r30)
	storeli.w r3, -788(r30)
	storeli.w r3, -784(r30)
	storeli.w r3, -780(r30)
	storeli.w r3, -776(r30)
	storeli.w r3, -772(r30)
	storeli.w r3, -768(r30)
	storeli.w r3, -764(r30)
	storeli.w r3, -760(r30)
	storeli.w r3, -756(r30)
	storeli.w r3, -752(r30)
	storeli.w r3, -748(r30)
	storeli.w r3, -744(r30)
	storeli.w r3, -740(r30)
	storeli.w r3, -736(r30)
	storeli.w r3, -732(r30)
	storeli.w r3, -728(r30)
	storeli.w r3, -724(r30)
	storeli.w r3, -720(r30)
	storeli.w r3, -716(r30)
	storeli.w r3, -712(r30)
	storeli.w r3, -708(r30)
	storeli.w r3, -704(r30)
	storeli.w r3, -700(r30)
	storeli.w r3, -696(r30)
	storeli.w r3, -692(r30)
	storeli.w r3, -688(r30)
	storeli.w r3, -684(r30)
	storeli.w r3, -680(r30)
	storeli.w r3, -676(r30)
	storeli.w r3, -672(r30)
	storeli.w r3, -668(r30)
	storeli.w r3, -664(r30)
	storeli.w r3, -660(r30)
	storeli.w r3, -656(r30)
	storeli.w r3, -652(r30)
	storeli.w r3, -648(r30)
	storeli.w r3, -644(r30)
	storeli.w r3, -640(r30)
	storeli.w r3, -636(r30)
	storeli.w r3, -632(r30)
	storeli.w r3, -628(r30)
	storeli.w r3, -624(r30)
	storeli.w r3, -620(r30)
	storeli.w r3, -616(r30)
	storeli.w r3, -612(r30)
	storeli.w r3, -608(r30)
	storeli.w r3, -604(r30)
	storeli.w r3, -600(r30)
	storeli.w r3, -596(r30)
	storeli.w r3, -592(r30)
	storeli.w r3, -588(r30)
	storeli.w r3, -584(r30)
	storeli.w r3, -580(r30)
	storeli.w r3, -576(r30)
	storeli.w r3, -572(r30)
	storeli.w r3, -568(r30)
	storeli.w r3, -564(r30)
	storeli.w r3, -560(r30)
	storeli.w r3, -556(r30)
	storeli.w r3, -552(r30)
	storeli.w r3, -548(r30)
	storeli.w r3, -544(r30)
	storeli.w r3, -540(r30)
	storeli.w r3, -536(r30)
	storeli.w r3, -532(r30)
	storeli.w r3, -528(r30)
	storeli.w r3, -524(r30)
	storeli.w r3, -520(r30)
	storeli.w r3, -516(r30)
	storeli.w r3, -512(r30)
	storeli.w r3, -508(r30)
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
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r3, -2044(r30)
	storeli.w r3, -2040(r30)
	storeli.w r3, -2036(r30)
	storeli.w r3, -2032(r30)
	storeli.w r3, -2028(r30)
	storeli.w r3, -2024(r30)
	storeli.w r3, -2020(r30)
	storeli.w r3, -2016(r30)
	storeli.w r3, -2012(r30)
	storeli.w r3, -2008(r30)
	storeli.w r3, -2004(r30)
	storeli.w r3, -2000(r30)
	storeli.w r3, -1996(r30)
	storeli.w r3, -1992(r30)
	storeli.w r3, -1988(r30)
	storeli.w r3, -1984(r30)
	storeli.w r3, -1980(r30)
	storeli.w r3, -1976(r30)
	storeli.w r3, -1972(r30)
	storeli.w r3, -1968(r30)
	storeli.w r3, -1964(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r3, -3024(r30)
	storeli.w r3, -2056(r30)
	storeli.w r3, -2060(r30)
	storeli.w r3, -2064(r30)
	storeli.w r3, -2068(r30)
	storeli.w r3, -2072(r30)
	storeli.w r3, -2076(r30)
	storeli.w r3, -2080(r30)
	storeli.w r3, -2084(r30)
	storeli.w r3, -2088(r30)
	storeli.w r3, -2092(r30)
	storeli.w r3, -2096(r30)
	storeli.w r3, -2100(r30)
	storeli.w r3, -2104(r30)
	storeli.w r3, -2108(r30)
	storeli.w r3, -2112(r30)
	storeli.w r3, -2116(r30)
	storeli.w r3, -2120(r30)
	storeli.w r3, -2124(r30)
	storeli.w r3, -2128(r30)
	storeli.w r3, -2132(r30)
	storeli.w r3, -2136(r30)
	storeli.w r3, -2140(r30)
	storeli.w r3, -2144(r30)
	storeli.w r3, -2148(r30)
	storeli.w r3, -2152(r30)
	storeli.w r3, -2156(r30)
	storeli.w r3, -2160(r30)
	storeli.w r3, -2164(r30)
	storeli.w r3, -2168(r30)
	storeli.w r3, -2172(r30)
	storeli.w r3, -2176(r30)
	storeli.w r3, -2180(r30)
	storeli.w r3, -2184(r30)
	storeli.w r3, -2188(r30)
	storeli.w r3, -2192(r30)
	storeli.w r3, -2196(r30)
	storeli.w r3, -2200(r30)
	storeli.w r3, -2204(r30)
	storeli.w r3, -2208(r30)
	storeli.w r3, -2212(r30)
	storeli.w r3, -2216(r30)
	storeli.w r3, -2220(r30)
	storeli.w r3, -2224(r30)
	storeli.w r3, -2228(r30)
	storeli.w r3, -2232(r30)
	storeli.w r3, -2236(r30)
	storeli.w r3, -2240(r30)
	storeli.w r3, -2244(r30)
	storeli.w r3, -2248(r30)
	storeli.w r3, -2252(r30)
	storeli.w r3, -2256(r30)
	storeli.w r3, -2260(r30)
	storeli.w r3, -2264(r30)
	storeli.w r3, -2268(r30)
	storeli.w r3, -2272(r30)
	storeli.w r3, -2276(r30)
	storeli.w r3, -2280(r30)
	storeli.w r3, -2284(r30)
	storeli.w r3, -2288(r30)
	storeli.w r3, -2292(r30)
	storeli.w r3, -2296(r30)
	storeli.w r3, -2300(r30)
	storeli.w r3, -2304(r30)
	storeli.w r3, -2308(r30)
	storeli.w r3, -2312(r30)
	storeli.w r3, -2316(r30)
	storeli.w r3, -2320(r30)
	storeli.w r3, -2324(r30)
	storeli.w r3, -2328(r30)
	storeli.w r3, -2332(r30)
	storeli.w r3, -2336(r30)
	storeli.w r3, -2340(r30)
	storeli.w r3, -2344(r30)
	storeli.w r3, -2348(r30)
	storeli.w r3, -2352(r30)
	storeli.w r3, -2356(r30)
	storeli.w r3, -2360(r30)
	storeli.w r3, -2364(r30)
	storeli.w r3, -2368(r30)
	storeli.w r3, -2372(r30)
	storeli.w r3, -2376(r30)
	storeli.w r3, -2380(r30)
	storeli.w r3, -2384(r30)
	storeli.w r3, -2388(r30)
	storeli.w r3, -2392(r30)
	storeli.w r3, -2396(r30)
	storeli.w r3, -2400(r30)
	storeli.w r3, -2404(r30)
	storeli.w r3, -2408(r30)
	storeli.w r3, -2412(r30)
	storeli.w r3, -2416(r30)
	storeli.w r3, -2420(r30)
	storeli.w r3, -2424(r30)
	storeli.w r3, -2428(r30)
	storeli.w r3, -2432(r30)
	storeli.w r3, -2436(r30)
	storeli.w r3, -2440(r30)
	storeli.w r3, -2444(r30)
	storeli.w r3, -2448(r30)
	storeli.w r3, -2452(r30)
	storeli.w r3, -2456(r30)
	storeli.w r3, -2460(r30)
	storeli.w r3, -2464(r30)
	storeli.w r3, -2468(r30)
	storeli.w r3, -2472(r30)
	storeli.w r3, -2476(r30)
	storeli.w r3, -2480(r30)
	storeli.w r3, -2484(r30)
	storeli.w r3, -2488(r30)
	storeli.w r3, -2492(r30)
	storeli.w r3, -2496(r30)
	storeli.w r3, -2500(r30)
	storeli.w r3, -2504(r30)
	storeli.w r3, -2508(r30)
	storeli.w r3, -2512(r30)
	storeli.w r3, -2516(r30)
	storeli.w r3, -2520(r30)
	storeli.w r3, -2524(r30)
	storeli.w r3, -2528(r30)
	storeli.w r3, -2532(r30)
	storeli.w r3, -2536(r30)
	storeli.w r3, -2540(r30)
	storeli.w r3, -2544(r30)
	storeli.w r3, -2548(r30)
	storeli.w r3, -2552(r30)
	storeli.w r3, -2556(r30)
	storeli.w r3, -2560(r30)
	storeli.w r3, -2564(r30)
	storeli.w r3, -2568(r30)
	storeli.w r3, -2572(r30)
	storeli.w r3, -2576(r30)
	storeli.w r3, -2580(r30)
	storeli.w r3, -2584(r30)
	storeli.w r3, -2588(r30)
	storeli.w r3, -2592(r30)
	storeli.w r3, -2596(r30)
	storeli.w r3, -2600(r30)
	storeli.w r3, -2604(r30)
	storeli.w r3, -2608(r30)
	storeli.w r3, -2612(r30)
	storeli.w r3, -2616(r30)
	storeli.w r3, -2620(r30)
	storeli.w r3, -2624(r30)
	storeli.w r3, -2628(r30)
	storeli.w r3, -2632(r30)
	storeli.w r3, -2636(r30)
	storeli.w r3, -2640(r30)
	storeli.w r3, -2644(r30)
	storeli.w r3, -2648(r30)
	storeli.w r3, -2652(r30)
	storeli.w r3, -2656(r30)
	storeli.w r3, -2660(r30)
	storeli.w r3, -2664(r30)
	storeli.w r3, -2668(r30)
	storeli.w r3, -2672(r30)
	storeli.w r3, -2676(r30)
	storeli.w r3, -2680(r30)
	storeli.w r3, -2684(r30)
	storeli.w r3, -2688(r30)
	storeli.w r3, -2692(r30)
	storeli.w r3, -2696(r30)
	storeli.w r3, -2700(r30)
	storeli.w r3, -2704(r30)
	storeli.w r3, -2708(r30)
	storeli.w r3, -2712(r30)
	storeli.w r3, -2716(r30)
	storeli.w r3, -2720(r30)
	storeli.w r3, -2724(r30)
	storeli.w r3, -2728(r30)
	storeli.w r3, -2732(r30)
	storeli.w r3, -2736(r30)
	storeli.w r3, -2740(r30)
	storeli.w r3, -2744(r30)
	storeli.w r3, -2748(r30)
	storeli.w r3, -2752(r30)
	storeli.w r3, -2756(r30)
	storeli.w r3, -2760(r30)
	storeli.w r3, -2764(r30)
	storeli.w r3, -2768(r30)
	storeli.w r3, -2772(r30)
	storeli.w r3, -2776(r30)
	storeli.w r3, -2780(r30)
	storeli.w r3, -2784(r30)
	storeli.w r3, -2788(r30)
	storeli.w r3, -2792(r30)
	storeli.w r3, -2796(r30)
	storeli.w r3, -2800(r30)
	storeli.w r3, -2804(r30)
	storeli.w r3, -2808(r30)
	storeli.w r3, -2812(r30)
	storeli.w r3, -2816(r30)
	storeli.w r3, -2820(r30)
	storeli.w r3, -2824(r30)
	storeli.w r3, -2828(r30)
	storeli.w r3, -2832(r30)
	storeli.w r3, -2836(r30)
	storeli.w r3, -2840(r30)
	storeli.w r3, -2844(r30)
	storeli.w r3, -2848(r30)
	storeli.w r3, -2852(r30)
	storeli.w r3, -2856(r30)
	storeli.w r3, -2860(r30)
	storeli.w r3, -2864(r30)
	storeli.w r3, -2868(r30)
	storeli.w r3, -2872(r30)
	storeli.w r3, -2876(r30)
	storeli.w r3, -2880(r30)
	storeli.w r3, -2884(r30)
	storeli.w r3, -2888(r30)
	storeli.w r3, -2892(r30)
	storeli.w r3, -2896(r30)
	storeli.w r3, -2900(r30)
	storeli.w r3, -2904(r30)
	storeli.w r3, -2908(r30)
	storeli.w r3, -2912(r30)
	storeli.w r3, -2916(r30)
	storeli.w r3, -2920(r30)
	storeli.w r3, -2924(r30)
	storeli.w r3, -2928(r30)
	storeli.w r3, -2932(r30)
	storeli.w r3, -2936(r30)
	storeli.w r3, -2940(r30)
	storeli.w r3, -2944(r30)
	storeli.w r3, -2948(r30)
	storeli.w r3, -2952(r30)
	storeli.w r3, -2956(r30)
	storeli.w r3, -2960(r30)
	storeli.w r3, -2964(r30)
	storeli.w r3, -2968(r30)
	storeli.w r3, -2972(r30)
	storeli.w r3, -2976(r30)
	storeli.w r3, -2980(r30)
	storeli.w r3, -2984(r30)
	storeli.w r3, -2988(r30)
	storeli.w r3, -2992(r30)
	storeli.w r3, -2996(r30)
	storeli.w r3, -3000(r30)
	storeli.w r3, -3004(r30)
	storeli.w r3, -3008(r30)
	storeli.w r3, -3012(r30)
	storeli.w r3, -3016(r30)
	storeli.w r3, -3020(r30)
	storeli.w r3, -3028(r30)
	storeli.w r3, -3032(r30)
	storeli.w r3, -3036(r30)
	storeli.w r3, -3044(r30)
	storeli.w r3, -3048(r30)
	storeli.w r3, -3052(r30)
	storeli.w r3, -3056(r30)
	storeli.w r3, -3060(r30)
	storeli.w r3, -3064(r30)
	storeli.w r3, -3068(r30)
	storeli.w zero, -3072(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r3, -1028(r30)
	storeli.w r3, -1032(r30)
	storeli.w r3, -1036(r30)
	storeli.w r3, -1040(r30)
	storeli.w r3, -1044(r30)
	storeli.w r3, -1048(r30)
	storeli.w r3, -1052(r30)
	storeli.w r3, -1056(r30)
	storeli.w r3, -1060(r30)
	storeli.w r3, -1064(r30)
	storeli.w r3, -1068(r30)
	storeli.w r3, -1072(r30)
	storeli.w r3, -1076(r30)
	storeli.w r3, -1080(r30)
	storeli.w r3, -1084(r30)
	storeli.w r3, -1088(r30)
	storeli.w r3, -1092(r30)
	storeli.w r3, -1096(r30)
	storeli.w r3, -1100(r30)
	storeli.w r3, -1104(r30)
	storeli.w r3, -1108(r30)
	storeli.w r3, -1112(r30)
	storeli.w r3, -1116(r30)
	storeli.w r3, -1120(r30)
	storeli.w r3, -1124(r30)
	storeli.w r3, -1128(r30)
	storeli.w r3, -1132(r30)
	storeli.w r3, -1136(r30)
	storeli.w r3, -1140(r30)
	storeli.w r3, -1144(r30)
	storeli.w r3, -1148(r30)
	storeli.w r3, -1152(r30)
	storeli.w r3, -1156(r30)
	storeli.w r3, -1160(r30)
	storeli.w r3, -1164(r30)
	storeli.w r3, -1168(r30)
	storeli.w r3, -1172(r30)
	storeli.w r3, -1176(r30)
	storeli.w r3, -1180(r30)
	storeli.w r3, -1184(r30)
	storeli.w r3, -1188(r30)
	storeli.w r3, -1192(r30)
	storeli.w r3, -1196(r30)
	storeli.w r3, -1200(r30)
	storeli.w r3, -1204(r30)
	storeli.w r3, -1208(r30)
	storeli.w r3, -1212(r30)
	storeli.w r3, -1216(r30)
	storeli.w r3, -1220(r30)
	storeli.w r3, -1224(r30)
	storeli.w r3, -1228(r30)
	storeli.w r3, -1232(r30)
	storeli.w r3, -1236(r30)
	storeli.w r3, -1240(r30)
	storeli.w r3, -1244(r30)
	storeli.w r3, -1248(r30)
	storeli.w r3, -1252(r30)
	storeli.w r3, -1256(r30)
	storeli.w r3, -1260(r30)
	storeli.w r3, -1264(r30)
	storeli.w r3, -1268(r30)
	storeli.w r3, -1272(r30)
	storeli.w r3, -1276(r30)
	storeli.w r3, -1280(r30)
	storeli.w r3, -1284(r30)
	storeli.w r3, -1288(r30)
	storeli.w r3, -1292(r30)
	storeli.w r3, -1296(r30)
	storeli.w r3, -1300(r30)
	storeli.w r3, -1304(r30)
	storeli.w r3, -1308(r30)
	storeli.w r3, -1312(r30)
	storeli.w r3, -1316(r30)
	storeli.w r3, -1320(r30)
	storeli.w r3, -1324(r30)
	storeli.w r3, -1328(r30)
	storeli.w r3, -1332(r30)
	storeli.w r3, -1336(r30)
	storeli.w r3, -1340(r30)
	storeli.w r3, -1344(r30)
	storeli.w r3, -1348(r30)
	storeli.w r3, -1352(r30)
	storeli.w r3, -1356(r30)
	storeli.w r3, -1360(r30)
	storeli.w r3, -1364(r30)
	storeli.w r3, -1368(r30)
	storeli.w r3, -1372(r30)
	storeli.w r3, -1376(r30)
	storeli.w r3, -1380(r30)
	storeli.w r3, -1384(r30)
	storeli.w r3, -1388(r30)
	storeli.w r3, -1392(r30)
	storeli.w r3, -1396(r30)
	storeli.w r3, -1400(r30)
	storeli.w r3, -1404(r30)
	storeli.w r3, -1408(r30)
	storeli.w r3, -1412(r30)
	storeli.w r3, -1416(r30)
	storeli.w r3, -1420(r30)
	storeli.w r3, -1424(r30)
	storeli.w r3, -1428(r30)
	storeli.w r3, -1432(r30)
	storeli.w r3, -1436(r30)
	storeli.w r3, -1440(r30)
	storeli.w r3, -1444(r30)
	storeli.w r3, -1448(r30)
	storeli.w r3, -1452(r30)
	storeli.w r3, -1456(r30)
	storeli.w r3, -1460(r30)
	storeli.w r3, -1464(r30)
	storeli.w r3, -1468(r30)
	storeli.w r3, -1472(r30)
	storeli.w r3, -1476(r30)
	storeli.w r3, -1480(r30)
	storeli.w r3, -1484(r30)
	storeli.w r3, -1488(r30)
	storeli.w r3, -1492(r30)
	storeli.w r3, -1496(r30)
	storeli.w r3, -1500(r30)
	storeli.w r3, -1504(r30)
	storeli.w r3, -1508(r30)
	storeli.w r3, -1512(r30)
	storeli.w r3, -1516(r30)
	storeli.w r3, -1520(r30)
	storeli.w r3, -1524(r30)
	storeli.w r3, -1528(r30)
	storeli.w r3, -1532(r30)
	storeli.w r3, -1536(r30)
	storeli.w r3, -1540(r30)
	storeli.w r3, -1544(r30)
	storeli.w r3, -1548(r30)
	storeli.w r3, -1552(r30)
	storeli.w r3, -1556(r30)
	storeli.w r3, -1560(r30)
	storeli.w r3, -1564(r30)
	storeli.w r3, -1568(r30)
	storeli.w r3, -1572(r30)
	storeli.w r3, -1576(r30)
	storeli.w r3, -1580(r30)
	storeli.w r3, -1584(r30)
	storeli.w r3, -1588(r30)
	storeli.w r3, -1592(r30)
	storeli.w r3, -1596(r30)
	storeli.w r3, -1600(r30)
	storeli.w r3, -1604(r30)
	storeli.w r3, -1608(r30)
	storeli.w r3, -1612(r30)
	storeli.w r3, -1616(r30)
	storeli.w r3, -1620(r30)
	storeli.w r3, -1624(r30)
	storeli.w r3, -1628(r30)
	storeli.w r3, -1632(r30)
	storeli.w r3, -1636(r30)
	storeli.w r3, -1640(r30)
	storeli.w r3, -1644(r30)
	storeli.w r3, -1648(r30)
	storeli.w r3, -1652(r30)
	storeli.w r3, -1656(r30)
	storeli.w r3, -1660(r30)
	storeli.w r3, -1664(r30)
	storeli.w r3, -1668(r30)
	storeli.w r3, -1672(r30)
	storeli.w r3, -1676(r30)
	storeli.w r3, -1680(r30)
	storeli.w r3, -1684(r30)
	storeli.w r3, -1688(r30)
	storeli.w r3, -1692(r30)
	storeli.w r3, -1696(r30)
	storeli.w r3, -1700(r30)
	storeli.w r3, -1704(r30)
	storeli.w r3, -1708(r30)
	storeli.w r3, -1712(r30)
	storeli.w r3, -1716(r30)
	storeli.w r3, -1720(r30)
	storeli.w r3, -1724(r30)
	storeli.w r3, -1728(r30)
	storeli.w r3, -1732(r30)
	storeli.w r3, -1736(r30)
	storeli.w r3, -1740(r30)
	storeli.w r3, -1744(r30)
	storeli.w r3, -1748(r30)
	storeli.w r3, -1752(r30)
	storeli.w r3, -1756(r30)
	storeli.w r3, -1760(r30)
	storeli.w r3, -1764(r30)
	storeli.w r3, -1768(r30)
	storeli.w r3, -1772(r30)
	storeli.w r3, -1776(r30)
	storeli.w r3, -1780(r30)
	storeli.w r3, -1784(r30)
	storeli.w r3, -1788(r30)
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
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r3, -2052(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -4096(r30)
	storeli.w r3, -4092(r30)
	storeli.w r3, -4088(r30)
	storeli.w r3, -4084(r30)
	storeli.w r3, -4080(r30)
	storeli.w r3, -4076(r30)
	storeli.w r3, -4072(r30)
	storeli.w r3, -4068(r30)
	storeli.w r3, -4064(r30)
	storeli.w r3, -4060(r30)
	storeli.w r3, -4056(r30)
	storeli.w r3, -4052(r30)
	storeli.w r3, -4048(r30)
	storeli.w r3, -4044(r30)
	storeli.w r3, -4040(r30)
	storeli.w r3, -4036(r30)
	storeli.w r3, -4032(r30)
	storeli.w r3, -4028(r30)
	storeli.w r3, -4024(r30)
	storeli.w r3, -4020(r30)
	storeli.w r3, -4016(r30)
	storeli.w r3, -4012(r30)
	storeli.w r3, -4008(r30)
	storeli.w r3, -4004(r30)
	storeli.w r3, -4000(r30)
	storeli.w r3, -3996(r30)
	storeli.w r3, -3992(r30)
	storeli.w r3, -3988(r30)
	storeli.w r3, -3984(r30)
	storeli.w r3, -3980(r30)
	storeli.w r3, -3976(r30)
	storeli.w r3, -3972(r30)
	storeli.w r3, -3968(r30)
	storeli.w r3, -3964(r30)
	storeli.w r3, -3960(r30)
	storeli.w r3, -3956(r30)
	storeli.w r3, -3952(r30)
	storeli.w r3, -3948(r30)
	storeli.w r3, -3944(r30)
	storeli.w r3, -3940(r30)
	storeli.w r3, -3936(r30)
	storeli.w r3, -3932(r30)
	storeli.w r3, -3928(r30)
	storeli.w r3, -3924(r30)
	storeli.w r3, -3920(r30)
	storeli.w r3, -3916(r30)
	storeli.w r3, -3912(r30)
	storeli.w r3, -3908(r30)
	storeli.w r3, -3904(r30)
	storeli.w r3, -3900(r30)
	storeli.w r3, -3896(r30)
	storeli.w r3, -3892(r30)
	storeli.w r3, -3888(r30)
	storeli.w r3, -3884(r30)
	storeli.w r3, -3880(r30)
	storeli.w r3, -3876(r30)
	storeli.w r3, -3872(r30)
	storeli.w r3, -3868(r30)
	storeli.w r3, -3864(r30)
	storeli.w r3, -3860(r30)
	storeli.w r3, -3856(r30)
	storeli.w r3, -3852(r30)
	storeli.w r3, -3848(r30)
	storeli.w r3, -3844(r30)
	storeli.w r3, -3840(r30)
	storeli.w r3, -3836(r30)
	storeli.w r3, -3832(r30)
	storeli.w r3, -3828(r30)
	storeli.w r3, -3824(r30)
	storeli.w r3, -3820(r30)
	storeli.w r3, -3816(r30)
	storeli.w r3, -3812(r30)
	storeli.w r3, -3808(r30)
	storeli.w r3, -3804(r30)
	storeli.w r3, -3800(r30)
	storeli.w r3, -3796(r30)
	storeli.w r3, -3792(r30)
	storeli.w r3, -3788(r30)
	storeli.w r3, -3784(r30)
	storeli.w r3, -3780(r30)
	storeli.w r3, -3776(r30)
	storeli.w r3, -3772(r30)
	storeli.w r3, -3768(r30)
	storeli.w r3, -3764(r30)
	storeli.w r3, -3760(r30)
	storeli.w r3, -3756(r30)
	storeli.w r3, -3752(r30)
	storeli.w r3, -3748(r30)
	storeli.w r3, -3744(r30)
	storeli.w r3, -3740(r30)
	storeli.w r3, -3736(r30)
	storeli.w r3, -3732(r30)
	storeli.w r3, -3728(r30)
	storeli.w r3, -3724(r30)
	storeli.w r3, -3720(r30)
	storeli.w r3, -3716(r30)
	storeli.w r3, -3712(r30)
	storeli.w r3, -3708(r30)
	storeli.w r3, -3704(r30)
	storeli.w r3, -3700(r30)
	storeli.w r3, -3696(r30)
	storeli.w r3, -3692(r30)
	storeli.w r3, -3688(r30)
	storeli.w r3, -3684(r30)
	storeli.w r3, -3680(r30)
	storeli.w r3, -3676(r30)
	storeli.w r3, -3672(r30)
	storeli.w r3, -3668(r30)
	storeli.w r3, -3664(r30)
	storeli.w r3, -3660(r30)
	storeli.w r3, -3656(r30)
	storeli.w r3, -3652(r30)
	storeli.w r3, -3648(r30)
	storeli.w r3, -3644(r30)
	storeli.w r3, -3640(r30)
	storeli.w r3, -3636(r30)
	storeli.w r3, -3632(r30)
	storeli.w r3, -3628(r30)
	storeli.w r3, -3624(r30)
	storeli.w r3, -3620(r30)
	storeli.w r3, -3616(r30)
	storeli.w r3, -3612(r30)
	storeli.w r3, -3608(r30)
	storeli.w r3, -3604(r30)
	storeli.w r3, -3600(r30)
	storeli.w r3, -3596(r30)
	storeli.w r3, -3592(r30)
	storeli.w r3, -3588(r30)
	storeli.w r3, -3584(r30)
	storeli.w r3, -3580(r30)
	storeli.w r3, -3576(r30)
	storeli.w r3, -3572(r30)
	storeli.w r3, -3568(r30)
	storeli.w r3, -3564(r30)
	storeli.w r3, -3560(r30)
	storeli.w r3, -3556(r30)
	storeli.w r3, -3552(r30)
	storeli.w r3, -3548(r30)
	storeli.w r3, -3544(r30)
	storeli.w r3, -3540(r30)
	storeli.w r3, -3536(r30)
	storeli.w r3, -3532(r30)
	storeli.w r3, -3528(r30)
	storeli.w r3, -3524(r30)
	storeli.w r3, -3520(r30)
	storeli.w r3, -3516(r30)
	storeli.w r3, -3512(r30)
	storeli.w r3, -3508(r30)
	storeli.w r3, -3504(r30)
	storeli.w r3, -3500(r30)
	storeli.w r3, -3496(r30)
	storeli.w r3, -3492(r30)
	storeli.w r3, -3488(r30)
	storeli.w r3, -3484(r30)
	storeli.w r3, -3480(r30)
	storeli.w r3, -3476(r30)
	storeli.w r3, -3472(r30)
	storeli.w r3, -3468(r30)
	storeli.w r3, -3464(r30)
	storeli.w r3, -3460(r30)
	storeli.w r3, -3456(r30)
	storeli.w r3, -3452(r30)
	storeli.w r3, -3448(r30)
	storeli.w r3, -3444(r30)
	storeli.w r3, -3440(r30)
	storeli.w r3, -3436(r30)
	storeli.w r3, -3432(r30)
	storeli.w r3, -3428(r30)
	storeli.w r3, -3424(r30)
	storeli.w r3, -3420(r30)
	storeli.w r3, -3416(r30)
	storeli.w r3, -3412(r30)
	storeli.w r3, -3408(r30)
	storeli.w r3, -3404(r30)
	storeli.w r3, -3400(r30)
	storeli.w r3, -3396(r30)
	storeli.w r3, -3392(r30)
	storeli.w r3, -3388(r30)
	storeli.w r3, -3384(r30)
	storeli.w r3, -3380(r30)
	storeli.w r3, -3376(r30)
	storeli.w r3, -3372(r30)
	storeli.w r3, -3368(r30)
	storeli.w r3, -3364(r30)
	storeli.w r3, -3360(r30)
	storeli.w r3, -3356(r30)
	storeli.w r3, -3352(r30)
	storeli.w r3, -3348(r30)
	storeli.w r3, -3344(r30)
	storeli.w r3, -3340(r30)
	storeli.w r3, -3336(r30)
	storeli.w r3, -3332(r30)
	storeli.w r3, -3328(r30)
	storeli.w r3, -3324(r30)
	storeli.w r3, -3320(r30)
	storeli.w r3, -3316(r30)
	storeli.w r3, -3312(r30)
	storeli.w r3, -3308(r30)
	storeli.w r3, -3304(r30)
	storeli.w r3, -3300(r30)
	storeli.w r3, -3296(r30)
	storeli.w r3, -3292(r30)
	storeli.w r3, -3288(r30)
	storeli.w r3, -3284(r30)
	storeli.w r3, -3280(r30)
	storeli.w r3, -3276(r30)
	storeli.w r3, -3272(r30)
	storeli.w r3, -3268(r30)
	storeli.w r3, -3264(r30)
	storeli.w r3, -3260(r30)
	storeli.w r3, -3256(r30)
	storeli.w r3, -3252(r30)
	storeli.w r3, -3248(r30)
	storeli.w r3, -3244(r30)
	storeli.w r3, -3240(r30)
	storeli.w r3, -3236(r30)
	storeli.w r3, -3232(r30)
	storeli.w r3, -3228(r30)
	storeli.w r3, -3224(r30)
	storeli.w r3, -3220(r30)
	storeli.w r3, -3216(r30)
	storeli.w r3, -3212(r30)
	storeli.w r3, -3208(r30)
	storeli.w r3, -3204(r30)
	storeli.w r3, -3200(r30)
	storeli.w r3, -3196(r30)
	storeli.w r3, -3192(r30)
	storeli.w r3, -3188(r30)
	storeli.w r3, -3184(r30)
	storeli.w r3, -3180(r30)
	storeli.w r3, -3176(r30)
	storeli.w r3, -3172(r30)
	storeli.w r3, -3168(r30)
	storeli.w r3, -3164(r30)
	storeli.w r3, -3160(r30)
	storeli.w r3, -3156(r30)
	storeli.w r3, -3152(r30)
	storeli.w r3, -3148(r30)
	storeli.w r3, -3144(r30)
	storeli.w r3, -3140(r30)
	storeli.w r3, -3136(r30)
	storeli.w r3, -3132(r30)
	storeli.w r3, -3128(r30)
	storeli.w r3, -3124(r30)
	storeli.w r3, -3120(r30)
	storeli.w r3, -3116(r30)
	storeli.w r3, -3112(r30)
	storeli.w r3, -3108(r30)
	storeli.w r3, -3104(r30)
	storeli.w r3, -3100(r30)
	storeli.w r3, -3096(r30)
	storeli.w r3, -3092(r30)
	storeli.w r3, -3088(r30)
	storeli.w r3, -3084(r30)
	storeli.w r3, -3080(r30)
	storeli.w r3, -3076(r30)
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r2, r1, .LBB0_239
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 45 11 is_stmt 1               # parallel-rne.mlir:45:11
	addli r4, r30, -4176
	addli r15, zero, 4
	lui r25, 1024
	lui r26, 522240
	lui r28, 1048560
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[1:2], r1
	addli r3, r30, -4136
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r3, r30, -4168
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli r2, zero, 1023
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	lui r1, 524287
	ori r24, r1, 4095
	lui r1, 7
	ori r27, r1, 4095
	lui r1, 522239
	ori r1, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -4136
	.loc	1 51 5 is_stmt 1                # parallel-rne.mlir:51:5
	addli r6, r30, -4176
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	load.d r[2:3], 0(r6)                    # 8-byte Folded Reload
	addli r6, r30, -4136
	addli.d r[4:5], r[4:5], 1
	setlt.sl r2, r[4:5], r[2:3]
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	beq r2, zero, .LBB0_239
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
	addli r18, zero, 3
	.loc	1 76 7 is_stmt 1                # parallel-rne.mlir:76:7
	bneq r12, r15, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, r30, -4136
	loadli.w r2,  32(r30)
	addli r6, zero, 8
	addli r8, r30, -4152
	addli r7, zero, 0
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	addli r5, zero, 2
	div.s r2, r3, r2
	loadli.w r3,  28(r30)
	div.s r2, r2, r3
	addli r3, zero, 256
	div.s r3, r2, r3
	slli r4, r3, 3
	slli r3, r3, 8
	sub.s r5, r5, r4
	sub.s r3, r2, r3
	min.s r5, r5, r6
	mod.s r2, r2, r5
	div.s r3, r3, r5
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	loadli.w r5,  -4096(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r5, -4104(r30)                # 4-byte Folded Spill
	loadli.w r5,  -3072(r30)
	add.s r2, r4, r2
	storeli.w r5, -4108(r30)                # 4-byte Folded Spill
	slli r4, r3, 5
	slli r5, r2, 5
	storeli.w r4, -4160(r30)                # 4-byte Folded Spill
	zext_int2long r[3:4], r3
	storeli.w r5, -4156(r30)                # 4-byte Folded Spill
	zext_int2long r[5:6], r2
	addli r2, zero, 5
	sll.d r[2:3], r[3:4], r2
	addli r4, zero, 11
	store.d r[5:6], 0(r8)                   # 8-byte Folded Spill
	sll.d r[4:5], r[5:6], r4
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r6, zero, 1
	sll.d r[8:9], r[2:3], r6
	addli r6, r30, -4168
	load.d r[2:3], 0(r6)                    # 8-byte Folded Reload
	addli r6, r30, -4120
	and.d r[2:3], r[4:5], r[2:3]
	store.d r[2:3], 0(r6)                   # 8-byte Folded Spill
	load.d r[2:3], 8(r30)
	addli r6, r30, -4144
	store.d r[8:9], 0(r6)                   # 8-byte Folded Spill
	addli r6, r30, -4128
	add.ul r[2:3], r[2:3], r[8:9]
	store.d r[2:3], 0(r6)                   # 8-byte Folded Spill
	addli r6, zero, 0
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 4
	addli r19, zero, 128
	addli r13, zero, 32
	addli r11, zero, 5
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	addli r9, zero, 6
	addli r18, zero, 3
	lock zero, r8
	addli r8, r15, 8256
	addli r15, zero, 4
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r21, zero, 2
	dma_cfg r8, r20, r22, 3
	addli r8, zero, 2
	dma_cfg r19, r22, r17, 4
	dma_cfg r19, r19, r12, 5
	dma_cfg zero, zero, r13, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 7
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
	addli r9, zero, 13
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
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
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r10, zero, r22, 3
	dma_cfg r19, zero, r17, 4
	dma_cfg r19, zero, r12, 5
	dma_cfg zero, zero, r13, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r8, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r8,  -2048(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r10,  -1024(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r8, r8, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r10, r10, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r8, -2048(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r10, -1024(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r6, r6, 1
	beq r6, r15, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	addli r7, r7, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	zext_int2long r[11:12], r6
	addli r23, zero, 4
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	sll.d r[2:3], r[11:12], r15
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	add.ul r[19:20], r[2:3], r[4:5]
	addli r2, zero, 4095
	zext_int2long r[2:3], r2
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	setlt.ul r2, r[2:3], r[19:20]
	addli r3, r30, -4120
	load.d r[21:22], 0(r3)                  # 8-byte Folded Reload
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	bneq r2, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[21:22], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	loadli.w r3,  -4108(r30)                # 4-byte Folded Reload
	loadli.w r2,  -4104(r30)                # 4-byte Folded Reload
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r9
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r8, r3, r7
	addli r3, zero, 255
	add.s r2, r2, r7
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	mod.s r14, r8, r3
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r10, r2, r3
	addli r13, r2, 1
	addli r2, zero, 32
	storeli.w r13, -4096(r30)
	zext_int2long r[2:3], r2
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r15, r14, 12
	addli r14, r8, 1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r13, r10, 11
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r14, -3072(r30)
	addli r10, r15, 8192
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r14, zero, 2
	beq r9, r14, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r17, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	bneq r9, r17, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	sub.sl r[11:12], r[19:20], r[21:22]
	addli r22, zero, 64
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[19:20], r[19:20], r17
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r16
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r9, zero, 254
	zext_int2long r[13:14], r22
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.sl r[11:12], r[11:12], r[13:14]
	min.sl r[13:14], r[11:12], r[2:3]
	sub.sl r[11:12], r[13:14], r[11:12]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	load.d r[13:14], 0(r30)
	addli r12, r11, 32
	add.ul r[20:21], r[13:14], r[19:20]
	addli r14, zero, 3
	xwait r14, 0
	blt.s r9, r8, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r8, zero, 2
	addli r11, zero, 128
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 7
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
	addli r8, zero, 32
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r10, zero, r22, 3
	dma_cfg r11, zero, r17, 4
	dma_cfg r11, zero, r8, 5
	dma_cfg zero, zero, r8, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r8, zero, 2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r9, zero, 5
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r16
	addli r15, zero, 4
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	xwait r8, 0
	xwait r9, 0
	lock zero, zero
	addli r9, zero, 16
	ds_cfg r8, zero, 0
	addli r8, zero, 32
	ds_cfg r8, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r8, zero, 13
	shuffle_batch r13, r10, r9, 1
	unlock zero
	xsignal r18, 0
	xsignal r15, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r8,  -2048(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r15,  -1024(r30)
	addli r14, zero, 255
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r10, r8, r14
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r16, r15, r14
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r8, r8, 1
	storeli.w r8, -2048(r30)
	slli r14, r10, 11
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r8, r16, 11
	lui r10, 257
	addli r16, r15, 1
	storeli.w r16, -1024(r30)
	add.s r10, r8, r10
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r16, zero, 7
	beq r9, r16, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r16, zero, 6
	bneq r9, r16, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	addli r9, r30, -4128
	addli r17, zero, 15
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r16
	addli r19, zero, 7
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	load.d r[13:14], 0(r9)                  # 8-byte Folded Reload
	sll.d r[11:12], r[11:12], r17
	addli r9, zero, 254
	xwait r19, 0
	add.ul r[11:12], r[13:14], r[11:12]
	blt.s r9, r15, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r13, zero, 5
	addli r14, zero, 1
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r9, zero, 2
	addli r15, zero, 17
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
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
	addli r9, zero, 13
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 16
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 18
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 19
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 20
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 21
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 22
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 23
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 24
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 25
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 26
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 27
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 28
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 29
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 30
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 31
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 64
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r10, zero, r15, 3
	addli r15, zero, 128
	dma_cfg r15, zero, r14, 4
	dma_cfg r15, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r9, 257
	addli r15, zero, 4
	addli r14, zero, 64
	addli r20, zero, 6
	ori r13, r9, 64
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	lock zero, r15
	addli r9, zero, 5
	add.s r8, r8, r13
	addli r13, zero, 1
	dma_cfg r13, r13, zero, 0
	dma_cfg zero, r12, zero, 2
	dma_cfg r8, r11, r14, 3
	addli r12, zero, 128
	addli r11, zero, 16
	addli r8, zero, 2048
	dma_cfg r12, r14, r13, 4
	dma_cfg r12, r8, r11, 5
	addli r8, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r19, 10
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
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r11, 10
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
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r10, zero, r14, 3
	dma_cfg r12, zero, r13, 4
	dma_cfg r12, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r20, 0
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r8, zero, 6
	addli r9, zero, 16
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r16
	addli r15, zero, 4
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	xwait r8, 0
	addli r8, zero, 9
	xwait r8, 0
	addli r8, zero, 2
	lock zero, zero
	ds_cfg r8, zero, 0
	addli r8, zero, 32
	ds_cfg r8, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r8, zero, 13
	addli r8, zero, 7
	shuffle_coa r14, r10, r9, 2
	unlock zero
	xsignal r8, 0
	addli r8, zero, 8
	xsignal r8, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r15, zero, 4
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	bneq r9, r15, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r8, zero, 8
	addli r9, zero, 1
	xwait r15, 0
	addli r10, zero, 16
	xwait r8, 0
	addli r8, zero, 32
	lock zero, r9
	mm_cfg r8, r10, r8, 0
	addli r8, zero, 1
	mm_cfg r9, r9, r9, 2
	addli r9, zero, 4096
	beq r7, zero, .LBB0_32
# %bb.30:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r9, r13, r14, 8
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r6, r6, 1
	bneq r6, r15, .LBB0_14
	j .LBB0_36
.LBB0_32:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	mm r9, r13, r14, 8
.LBB0_33:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	unlock r8
	addli r8, zero, 5
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r6, r6, 1
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xsignal r8, 0
	addli r8, zero, 9
	xsignal r8, 0
	bneq r6, r15, .LBB0_14
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	bneq r16, r15, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	addli r23, zero, 0
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r12
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	xsignal r4, 0
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r12
	addli r4, zero, 3
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	bneq r12, r4, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	addli r23, zero, 1
	xwait r4, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	addli r4, zero, 13
	xwait r4, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r23, zero, 0
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 132 7 is_stmt 1               # parallel-rne.mlir:132:7
	xfence
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	addli r4, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	csr_set csr5, r4
	sync_core
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	beq r12, zero, .LBB0_65
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r4, zero, 2
	beq r12, r4, .LBB0_89
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 1
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	bneq r12, r4, .LBB0_113
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[4:5], r15
	mfence { lm, sm, gm }
	j .LBB0_44
.LBB0_43:                               # %middle.block84
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r6, zero, 7
	zext_int2long r[6:7], r6
	.loc	1 170 9 is_stmt 1               # parallel-rne.mlir:170:9
	setlt.ul r6, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r6, zero, .LBB0_112
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 5
	zext_int2long r[9:10], zero
	sll.d r[6:7], r[4:5], r6
	j .LBB0_46
.LBB0_45:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	stores.w r18, 12(r17)
	stores.w r21, 8(r17)
	stores.w r20, 4(r17)
	stores.w r19, 0(r17)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	setneq.d r8, r[9:10], r[2:3]
	beq r8, zero, .LBB0_43
.LBB0_46:                               # %vector.body80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[11:12], r[9:10], r[6:7]
	slli r17, r11, 2
	addli r8, r17, 4108
	addli r14, r17, 4104
	loads.w r12, 0(r8)
	addli r8, r17, 4096
	loads.w r13, 0(r8)
	addli r8, r17, 4100
	loads.w r11, 0(r8)
	loads.w r8, 0(r14)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	and r15, r12, r24
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	setlt.u r14, r26, r15
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r14, zero, .LBB0_48
# %bb.47:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	or r18, r12, r25
.LBB0_49:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	and r14, r8, r24
	setlt.u r16, r26, r14
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r16, zero, .LBB0_51
# %bb.50:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r8, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_46 Depth=3
	or r21, r8, r25
.LBB0_52:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	and r16, r11, r24
	setlt.u r19, r26, r16
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r19, zero, .LBB0_54
# %bb.53:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_46 Depth=3
	or r20, r11, r25
.LBB0_55:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	and r22, r13, r24
	setlt.u r19, r26, r22
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r19, zero, .LBB0_57
# %bb.56:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r13, 0
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r22, r1, r22
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r22, zero, .LBB0_58
	j .LBB0_59
.LBB0_57:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r13, r25
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r22, r1, r22
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r22, zero, .LBB0_59
.LBB0_58:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r13, 16
	andi r19, r19, 1
	add.s r13, r13, r19
	add.s r13, r13, r27
	and r19, r13, r28
.LBB0_59:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	setlt.u r13, r1, r16
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r13, zero, .LBB0_62
# %bb.60:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r1, r14
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r11, zero, .LBB0_63
.LBB0_61:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r1, r15
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r8, zero, .LBB0_45
	j .LBB0_64
.LBB0_62:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r11, 16
	andi r13, r13, 1
	add.s r11, r11, r13
	add.s r11, r11, r27
	and r20, r11, r28
	setlt.u r11, r1, r14
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r11, zero, .LBB0_61
.LBB0_63:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r8, 16
	andi r11, r11, 1
	add.s r8, r8, r11
	add.s r8, r8, r27
	and r21, r8, r28
	setlt.u r8, r1, r15
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r8, zero, .LBB0_45
.LBB0_64:                               # %vector.body80
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r27
	and r18, r8, r28
	j .LBB0_45
.LBB0_65:                               #   in Loop: Header=BB0_8 Depth=1
	storeli.w r23, -4108(r30)               # 4-byte Folded Spill
	zext_int2long r[6:7], zero
	addli r4, r30, -4104
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	xfence
	mfence { lm, sm, gm }
	store.d r[6:7], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_67
.LBB0_66:                               # %middle.block96
                                        #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 3
	zext_int2long r[4:5], r4
	.loc	1 142 9 is_stmt 1               # parallel-rne.mlir:142:9
	setlt.ul r4, r[6:7], r[4:5]
	addli.d r[6:7], r[6:7], 1
	beq r4, zero, .LBB0_88
.LBB0_67:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_69 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 5
	sll.d r[9:10], r[6:7], r4
	addli r4, r30, -4104
	load.d r[17:18], 0(r4)                  # 8-byte Folded Reload
	j .LBB0_69
.LBB0_68:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 143 11 is_stmt 1              # parallel-rne.mlir:143:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	stores.w r22, 12(r23)
	stores.w r8, 8(r23)
	stores.w r11, 4(r23)
	stores.w r13, 0(r23)
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	setneq.d r4, r[17:18], r[2:3]
	beq r4, zero, .LBB0_66
.LBB0_69:                               # %vector.body92
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	add.ul r[4:5], r[17:18], r[9:10]
	slli r23, r4, 2
	addli r4, r23, 4108
	addli r5, r23, 4104
	loads.w r12, 0(r4)
	addli r4, r23, 4096
	loads.w r21, 0(r5)
	loads.w r19, 0(r4)
	addli r4, r23, 4100
	loads.w r20, 0(r4)
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	and r15, r12, r24
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	setlt.u r4, r26, r15
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r4, zero, .LBB0_71
# %bb.70:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r12, 0
	j .LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_69 Depth=3
	or r22, r12, r25
.LBB0_72:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	and r14, r21, r24
	setlt.u r4, r26, r14
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r4, zero, .LBB0_74
# %bb.73:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r21, 0
	j .LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_69 Depth=3
	or r8, r21, r25
.LBB0_75:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	and r16, r20, r24
	setlt.u r4, r26, r16
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r4, zero, .LBB0_77
# %bb.76:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_69 Depth=3
	or r11, r20, r25
.LBB0_78:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	and r4, r19, r24
	setlt.u r5, r26, r4
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r5, zero, .LBB0_80
# %bb.79:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r19, 0
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r4, r1, r4
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r4, zero, .LBB0_81
	j .LBB0_82
.LBB0_80:                               #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r13, r19, r25
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r4, r1, r4
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r4, zero, .LBB0_82
.LBB0_81:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r27
	and r13, r4, r28
.LBB0_82:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r4, r1, r16
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r4, zero, .LBB0_85
# %bb.83:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r1, r14
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r4, zero, .LBB0_86
.LBB0_84:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r1, r15
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r4, zero, .LBB0_68
	j .LBB0_87
.LBB0_85:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r27
	and r11, r4, r28
	setlt.u r4, r1, r14
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r4, zero, .LBB0_84
.LBB0_86:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r21, 16
	andi r4, r4, 1
	add.s r4, r21, r4
	add.s r4, r4, r27
	and r8, r4, r28
	setlt.u r4, r1, r15
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r4, zero, .LBB0_68
.LBB0_87:                               # %vector.body92
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r27
	and r22, r4, r28
	j .LBB0_68
.LBB0_88:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r12
	addli r15, zero, 4
	loadli.w r23,  -4108(r30)               # 4-byte Folded Reload
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r4, zero, 2
	bneq r12, r4, .LBB0_41
.LBB0_89:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 8
	.loc	1 191 7 is_stmt 1               # parallel-rne.mlir:191:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r4
	j .LBB0_91
.LBB0_90:                               # %middle.block90
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 11
	zext_int2long r[6:7], r6
	.loc	1 198 9 is_stmt 1               # parallel-rne.mlir:198:9
	setlt.ul r6, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r6, zero, .LBB0_112
.LBB0_91:                               # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 5
	zext_int2long r[9:10], zero
	sll.d r[6:7], r[4:5], r6
	j .LBB0_93
.LBB0_92:                               # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 199 11 is_stmt 1              # parallel-rne.mlir:199:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	stores.w r18, 12(r17)
	stores.w r21, 8(r17)
	stores.w r20, 4(r17)
	stores.w r19, 0(r17)
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	setneq.d r8, r[9:10], r[2:3]
	beq r8, zero, .LBB0_90
.LBB0_93:                               # %vector.body86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_91 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	add.ul r[11:12], r[9:10], r[6:7]
	slli r17, r11, 2
	addli r8, r17, 4108
	addli r14, r17, 4104
	loads.w r12, 0(r8)
	addli r8, r17, 4096
	loads.w r13, 0(r8)
	addli r8, r17, 4100
	loads.w r11, 0(r8)
	loads.w r8, 0(r14)
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r15, r12, r24
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	setlt.u r14, r26, r15
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r14, zero, .LBB0_95
# %bb.94:                               # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_93 Depth=3
	or r18, r12, r25
.LBB0_96:                               # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	and r14, r8, r24
	setlt.u r16, r26, r14
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r16, zero, .LBB0_98
# %bb.97:                               # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r8, 0
	j .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_93 Depth=3
	or r21, r8, r25
.LBB0_99:                               # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	and r16, r11, r24
	setlt.u r19, r26, r16
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r19, zero, .LBB0_101
# %bb.100:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_93 Depth=3
	or r20, r11, r25
.LBB0_102:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	and r22, r13, r24
	setlt.u r19, r26, r22
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r19, zero, .LBB0_104
# %bb.103:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r13, 0
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r22, r1, r22
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r22, zero, .LBB0_105
	j .LBB0_106
.LBB0_104:                              #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r13, r25
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r22, r1, r22
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r22, zero, .LBB0_106
.LBB0_105:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r13, 16
	andi r19, r19, 1
	add.s r13, r13, r19
	add.s r13, r13, r27
	and r19, r13, r28
.LBB0_106:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	setlt.u r13, r1, r16
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r13, zero, .LBB0_109
# %bb.107:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r1, r14
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r11, zero, .LBB0_110
.LBB0_108:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r1, r15
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r8, zero, .LBB0_92
	j .LBB0_111
.LBB0_109:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r11, 16
	andi r13, r13, 1
	add.s r11, r11, r13
	add.s r11, r11, r27
	and r20, r11, r28
	setlt.u r11, r1, r14
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r11, zero, .LBB0_108
.LBB0_110:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r8, 16
	andi r11, r11, 1
	add.s r8, r8, r11
	add.s r8, r8, r27
	and r21, r8, r28
	setlt.u r8, r1, r15
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r8, zero, .LBB0_92
.LBB0_111:                              # %vector.body86
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r27
	and r18, r8, r28
	j .LBB0_92
.LBB0_112:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r15, zero, 4
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r12
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_113:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 219 7 is_stmt 1               # parallel-rne.mlir:219:7
	bneq r23, zero, .LBB0_141
# %bb.114:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	beq r12, r15, .LBB0_165
.LBB0_115:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 7
	.loc	1 275 7 is_stmt 1               # parallel-rne.mlir:275:7
	beq r12, r4, .LBB0_189
.LBB0_116:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 6
	beq r12, r4, .LBB0_212
# %bb.117:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 5
	bneq r12, r4, .LBB0_236
# %bb.118:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 20
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r4
	j .LBB0_120
.LBB0_119:                              # %middle.block
                                        #   in Loop: Header=BB0_120 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r6, zero, 23
	zext_int2long r[6:7], r6
	.loc	1 282 9 is_stmt 1               # parallel-rne.mlir:282:9
	setlt.ul r6, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r6, zero, .LBB0_235
.LBB0_120:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_122 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 5
	zext_int2long r[9:10], zero
	sll.d r[6:7], r[4:5], r6
	j .LBB0_122
.LBB0_121:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 283 11 is_stmt 1              # parallel-rne.mlir:283:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	stores.w r18, 12(r17)
	stores.w r21, 8(r17)
	stores.w r20, 4(r17)
	stores.w r19, 0(r17)
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	setneq.d r8, r[9:10], r[2:3]
	beq r8, zero, .LBB0_119
.LBB0_122:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_120 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.ul r[11:12], r[9:10], r[6:7]
	slli r17, r11, 2
	addli r8, r17, 4108
	addli r14, r17, 4104
	loads.w r12, 0(r8)
	addli r8, r17, 4096
	loads.w r13, 0(r8)
	addli r8, r17, 4100
	loads.w r11, 0(r8)
	loads.w r8, 0(r14)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	and r15, r12, r24
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	setlt.u r14, r26, r15
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r14, zero, .LBB0_124
# %bb.123:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_125
.LBB0_124:                              #   in Loop: Header=BB0_122 Depth=3
	or r18, r12, r25
.LBB0_125:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	and r14, r8, r24
	setlt.u r16, r26, r14
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r16, zero, .LBB0_127
# %bb.126:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r8, 0
	j .LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_122 Depth=3
	or r21, r8, r25
.LBB0_128:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	and r16, r11, r24
	setlt.u r19, r26, r16
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r19, zero, .LBB0_130
# %bb.129:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_131
.LBB0_130:                              #   in Loop: Header=BB0_122 Depth=3
	or r20, r11, r25
.LBB0_131:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	and r22, r13, r24
	setlt.u r19, r26, r22
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r19, zero, .LBB0_133
# %bb.132:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r13, 0
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r22, r1, r22
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r22, zero, .LBB0_134
	j .LBB0_135
.LBB0_133:                              #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r13, r25
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r22, r1, r22
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r22, zero, .LBB0_135
.LBB0_134:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r13, 16
	andi r19, r19, 1
	add.s r13, r13, r19
	add.s r13, r13, r27
	and r19, r13, r28
.LBB0_135:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	setlt.u r13, r1, r16
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r13, zero, .LBB0_138
# %bb.136:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r1, r14
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r11, zero, .LBB0_139
.LBB0_137:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r1, r15
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r8, zero, .LBB0_121
	j .LBB0_140
.LBB0_138:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r11, 16
	andi r13, r13, 1
	add.s r11, r11, r13
	add.s r11, r11, r27
	and r20, r11, r28
	setlt.u r11, r1, r14
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r11, zero, .LBB0_137
.LBB0_139:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r8, 16
	andi r11, r11, 1
	add.s r8, r8, r11
	add.s r8, r8, r27
	and r21, r8, r28
	setlt.u r8, r1, r15
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r8, zero, .LBB0_121
.LBB0_140:                              # %vector.body
                                        #   in Loop: Header=BB0_122 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r27
	and r18, r8, r28
	j .LBB0_121
.LBB0_141:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 12
	.loc	1 219 7 is_stmt 1               # parallel-rne.mlir:219:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r4
	j .LBB0_143
.LBB0_142:                              # %middle.block78
                                        #   in Loop: Header=BB0_143 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 15
	zext_int2long r[6:7], r6
	.loc	1 226 9 is_stmt 1               # parallel-rne.mlir:226:9
	setlt.ul r6, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r6, zero, .LBB0_164
.LBB0_143:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_145 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 5
	zext_int2long r[9:10], zero
	sll.d r[6:7], r[4:5], r6
	j .LBB0_145
.LBB0_144:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	stores.w r18, 12(r17)
	stores.w r21, 8(r17)
	stores.w r20, 4(r17)
	stores.w r19, 0(r17)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	setneq.d r8, r[9:10], r[2:3]
	beq r8, zero, .LBB0_142
.LBB0_145:                              # %vector.body74
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_143 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[11:12], r[9:10], r[6:7]
	slli r17, r11, 2
	addli r8, r17, 4108
	addli r14, r17, 4104
	loads.w r12, 0(r8)
	addli r8, r17, 4096
	loads.w r13, 0(r8)
	addli r8, r17, 4100
	loads.w r11, 0(r8)
	loads.w r8, 0(r14)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r15, r12, r24
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	setlt.u r14, r26, r15
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r14, zero, .LBB0_147
# %bb.146:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_145 Depth=3
	or r18, r12, r25
.LBB0_148:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	and r14, r8, r24
	setlt.u r16, r26, r14
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r16, zero, .LBB0_150
# %bb.149:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r8, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_145 Depth=3
	or r21, r8, r25
.LBB0_151:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	and r16, r11, r24
	setlt.u r19, r26, r16
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r19, zero, .LBB0_153
# %bb.152:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_145 Depth=3
	or r20, r11, r25
.LBB0_154:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	and r22, r13, r24
	setlt.u r19, r26, r22
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r19, zero, .LBB0_156
# %bb.155:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r13, 0
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r22, r1, r22
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r22, zero, .LBB0_157
	j .LBB0_158
.LBB0_156:                              #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r13, r25
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r22, r1, r22
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r22, zero, .LBB0_158
.LBB0_157:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r13, 16
	andi r19, r19, 1
	add.s r13, r13, r19
	add.s r13, r13, r27
	and r19, r13, r28
.LBB0_158:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.u r13, r1, r16
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r13, zero, .LBB0_161
# %bb.159:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r1, r14
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r11, zero, .LBB0_162
.LBB0_160:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r1, r15
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r8, zero, .LBB0_144
	j .LBB0_163
.LBB0_161:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r11, 16
	andi r13, r13, 1
	add.s r11, r11, r13
	add.s r11, r11, r27
	and r20, r11, r28
	setlt.u r11, r1, r14
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r11, zero, .LBB0_160
.LBB0_162:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r8, 16
	andi r11, r11, 1
	add.s r8, r8, r11
	add.s r8, r8, r27
	and r21, r8, r28
	setlt.u r8, r1, r15
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r8, zero, .LBB0_144
.LBB0_163:                              # %vector.body74
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r27
	and r18, r8, r28
	j .LBB0_144
.LBB0_164:                              #   in Loop: Header=BB0_8 Depth=1
	addli r15, zero, 4
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r12
	.loc	1 219 7                         # parallel-rne.mlir:219:7
	mfence { sm }
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	bneq r12, r15, .LBB0_115
.LBB0_165:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 16
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r4
	j .LBB0_167
.LBB0_166:                              # %middle.block72
                                        #   in Loop: Header=BB0_167 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r6, zero, 19
	zext_int2long r[6:7], r6
	.loc	1 254 9 is_stmt 1               # parallel-rne.mlir:254:9
	setlt.ul r6, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r6, zero, .LBB0_188
.LBB0_167:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_169 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 5
	zext_int2long r[9:10], zero
	sll.d r[6:7], r[4:5], r6
	j .LBB0_169
.LBB0_168:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 255 11 is_stmt 1              # parallel-rne.mlir:255:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	stores.w r18, 12(r17)
	stores.w r21, 8(r17)
	stores.w r20, 4(r17)
	stores.w r19, 0(r17)
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	setneq.d r8, r[9:10], r[2:3]
	beq r8, zero, .LBB0_166
.LBB0_169:                              # %vector.body68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_167 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	add.ul r[11:12], r[9:10], r[6:7]
	slli r17, r11, 2
	addli r8, r17, 4108
	addli r14, r17, 4104
	loads.w r12, 0(r8)
	addli r8, r17, 4096
	loads.w r13, 0(r8)
	addli r8, r17, 4100
	loads.w r11, 0(r8)
	loads.w r8, 0(r14)
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	and r15, r12, r24
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	setlt.u r14, r26, r15
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r14, zero, .LBB0_171
# %bb.170:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_172
.LBB0_171:                              #   in Loop: Header=BB0_169 Depth=3
	or r18, r12, r25
.LBB0_172:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	and r14, r8, r24
	setlt.u r16, r26, r14
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r16, zero, .LBB0_174
# %bb.173:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r8, 0
	j .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_169 Depth=3
	or r21, r8, r25
.LBB0_175:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	and r16, r11, r24
	setlt.u r19, r26, r16
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r19, zero, .LBB0_177
# %bb.176:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_169 Depth=3
	or r20, r11, r25
.LBB0_178:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	and r22, r13, r24
	setlt.u r19, r26, r22
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r19, zero, .LBB0_180
# %bb.179:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r13, 0
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r22, r1, r22
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r22, zero, .LBB0_181
	j .LBB0_182
.LBB0_180:                              #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r13, r25
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r22, r1, r22
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r22, zero, .LBB0_182
.LBB0_181:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r13, 16
	andi r19, r19, 1
	add.s r13, r13, r19
	add.s r13, r13, r27
	and r19, r13, r28
.LBB0_182:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	setlt.u r13, r1, r16
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r13, zero, .LBB0_185
# %bb.183:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r1, r14
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r11, zero, .LBB0_186
.LBB0_184:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r1, r15
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r8, zero, .LBB0_168
	j .LBB0_187
.LBB0_185:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r11, 16
	andi r13, r13, 1
	add.s r11, r11, r13
	add.s r11, r11, r27
	and r20, r11, r28
	setlt.u r11, r1, r14
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r11, zero, .LBB0_184
.LBB0_186:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r8, 16
	andi r11, r11, 1
	add.s r8, r8, r11
	add.s r8, r8, r27
	and r21, r8, r28
	setlt.u r8, r1, r15
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r8, zero, .LBB0_168
.LBB0_187:                              # %vector.body68
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r27
	and r18, r8, r28
	j .LBB0_168
.LBB0_188:                              #   in Loop: Header=BB0_8 Depth=1
	addli r15, zero, 4
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r12
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	mfence { sm }
	addli r4, zero, 7
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	bneq r12, r4, .LBB0_116
.LBB0_189:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 28
	.loc	1 331 7 is_stmt 1               # parallel-rne.mlir:331:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r4
	j .LBB0_191
.LBB0_190:                              # %middle.block66
                                        #   in Loop: Header=BB0_191 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 31
	zext_int2long r[6:7], r6
	.loc	1 338 9 is_stmt 1               # parallel-rne.mlir:338:9
	setlt.ul r6, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r6, zero, .LBB0_235
.LBB0_191:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_193 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 5
	zext_int2long r[9:10], zero
	sll.d r[6:7], r[4:5], r6
	j .LBB0_193
.LBB0_192:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 339 11 is_stmt 1              # parallel-rne.mlir:339:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r18, 12(r17)
	stores.w r21, 8(r17)
	stores.w r20, 4(r17)
	stores.w r19, 0(r17)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	setneq.d r8, r[9:10], r[2:3]
	beq r8, zero, .LBB0_190
.LBB0_193:                              # %vector.body62
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[11:12], r[9:10], r[6:7]
	slli r17, r11, 2
	addli r8, r17, 4108
	addli r14, r17, 4104
	loads.w r12, 0(r8)
	addli r8, r17, 4096
	loads.w r13, 0(r8)
	addli r8, r17, 4100
	loads.w r11, 0(r8)
	loads.w r8, 0(r14)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r15, r12, r24
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	setlt.u r14, r26, r15
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r14, zero, .LBB0_195
# %bb.194:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_196
.LBB0_195:                              #   in Loop: Header=BB0_193 Depth=3
	or r18, r12, r25
.LBB0_196:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	and r14, r8, r24
	setlt.u r16, r26, r14
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r16, zero, .LBB0_198
# %bb.197:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r8, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_193 Depth=3
	or r21, r8, r25
.LBB0_199:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	and r16, r11, r24
	setlt.u r19, r26, r16
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r19, zero, .LBB0_201
# %bb.200:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_193 Depth=3
	or r20, r11, r25
.LBB0_202:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	and r22, r13, r24
	setlt.u r19, r26, r22
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r19, zero, .LBB0_204
# %bb.203:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r13, 0
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r22, r1, r22
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r22, zero, .LBB0_205
	j .LBB0_206
.LBB0_204:                              #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r13, r25
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r22, r1, r22
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r22, zero, .LBB0_206
.LBB0_205:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r13, 16
	andi r19, r19, 1
	add.s r13, r13, r19
	add.s r13, r13, r27
	and r19, r13, r28
.LBB0_206:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	setlt.u r13, r1, r16
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r13, zero, .LBB0_209
# %bb.207:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r1, r14
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r11, zero, .LBB0_210
.LBB0_208:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r1, r15
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r8, zero, .LBB0_192
	j .LBB0_211
.LBB0_209:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r11, 16
	andi r13, r13, 1
	add.s r11, r11, r13
	add.s r11, r11, r27
	and r20, r11, r28
	setlt.u r11, r1, r14
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r11, zero, .LBB0_208
.LBB0_210:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r8, 16
	andi r11, r11, 1
	add.s r8, r8, r11
	add.s r8, r8, r27
	and r21, r8, r28
	setlt.u r8, r1, r15
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r8, zero, .LBB0_192
.LBB0_211:                              # %vector.body62
                                        #   in Loop: Header=BB0_193 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r27
	and r18, r8, r28
	j .LBB0_192
.LBB0_212:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 24
	.loc	1 303 7 is_stmt 1               # parallel-rne.mlir:303:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r4
	j .LBB0_214
.LBB0_213:                              # %middle.block60
                                        #   in Loop: Header=BB0_214 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 27
	zext_int2long r[6:7], r6
	.loc	1 310 9 is_stmt 1               # parallel-rne.mlir:310:9
	setlt.ul r6, r[4:5], r[6:7]
	addli.d r[4:5], r[4:5], 1
	beq r6, zero, .LBB0_235
.LBB0_214:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_216 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 5
	zext_int2long r[9:10], zero
	sll.d r[6:7], r[4:5], r6
	j .LBB0_216
.LBB0_215:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 311 11 is_stmt 1              # parallel-rne.mlir:311:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	stores.w r18, 12(r17)
	stores.w r21, 8(r17)
	stores.w r20, 4(r17)
	stores.w r19, 0(r17)
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	setneq.d r8, r[9:10], r[2:3]
	beq r8, zero, .LBB0_213
.LBB0_216:                              # %vector.body56
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_214 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.ul r[11:12], r[9:10], r[6:7]
	slli r17, r11, 2
	addli r8, r17, 4108
	addli r14, r17, 4104
	loads.w r12, 0(r8)
	addli r8, r17, 4096
	loads.w r13, 0(r8)
	addli r8, r17, 4100
	loads.w r11, 0(r8)
	loads.w r8, 0(r14)
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	and r15, r12, r24
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	setlt.u r14, r26, r15
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r14, zero, .LBB0_218
# %bb.217:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_216 Depth=3
	or r18, r12, r25
.LBB0_219:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	and r14, r8, r24
	setlt.u r16, r26, r14
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r16, zero, .LBB0_221
# %bb.220:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r8, 0
	j .LBB0_222
.LBB0_221:                              #   in Loop: Header=BB0_216 Depth=3
	or r21, r8, r25
.LBB0_222:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	and r16, r11, r24
	setlt.u r19, r26, r16
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r19, zero, .LBB0_224
# %bb.223:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_225
.LBB0_224:                              #   in Loop: Header=BB0_216 Depth=3
	or r20, r11, r25
.LBB0_225:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	and r22, r13, r24
	setlt.u r19, r26, r22
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r19, zero, .LBB0_227
# %bb.226:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r13, 0
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r22, r1, r22
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r22, zero, .LBB0_228
	j .LBB0_229
.LBB0_227:                              #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r19, r13, r25
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r22, r1, r22
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r22, zero, .LBB0_229
.LBB0_228:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r19, r13, 16
	andi r19, r19, 1
	add.s r13, r13, r19
	add.s r13, r13, r27
	and r19, r13, r28
.LBB0_229:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	setlt.u r13, r1, r16
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r13, zero, .LBB0_232
# %bb.230:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r11, r1, r14
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r11, zero, .LBB0_233
.LBB0_231:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r8, r1, r15
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r8, zero, .LBB0_215
	j .LBB0_234
.LBB0_232:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r11, 16
	andi r13, r13, 1
	add.s r11, r11, r13
	add.s r11, r11, r27
	and r20, r11, r28
	setlt.u r11, r1, r14
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r11, zero, .LBB0_231
.LBB0_233:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r8, 16
	andi r11, r11, 1
	add.s r8, r8, r11
	add.s r8, r8, r27
	and r21, r8, r28
	setlt.u r8, r1, r15
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r8, zero, .LBB0_215
.LBB0_234:                              # %vector.body56
                                        #   in Loop: Header=BB0_216 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r27
	and r18, r8, r28
	j .LBB0_215
.LBB0_235:                              # %.sink.split51
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r15, zero, 4
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r12
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_236:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 359 7 is_stmt 1               # parallel-rne.mlir:359:7
	addli r4, zero, 255
	csr_set csr5, r4
	sync_core
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	bneq r23, zero, .LBB0_5
# %bb.237:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	bneq r12, zero, .LBB0_7
# %bb.238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	loadli.w r4,  -4160(r30)                # 4-byte Folded Reload
	addli r6, zero, 992
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	loadli.w r8,  -4156(r30)                # 4-byte Folded Reload
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	addli r11, r30, -4152
	addli r10, zero, 16
	addli r14, r30, -4144
	addli r13, zero, 64
	zext_int2long r[6:7], r6
	load.d r[16:17], 0(r11)                 # 8-byte Folded Reload
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	zext_int2long r[4:5], r4
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	sext_int2long r[8:9], r8
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	min.ul r[6:7], r[4:5], r[6:7]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	sll.d r[10:11], r[16:17], r10
	load.d r[16:17], 16(r30)
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	addli.d r[6:7], r[6:7], 32
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	add.ul r[10:11], r[16:17], r[10:11]
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	max.ul r[6:7], r[6:7], r[4:5]
	sub.sl r[4:5], r[6:7], r[4:5]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	min.sl r[6:7], r[8:9], r[2:3]
	addli.d r[6:7], r[6:7], 32
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.ul r[4:5], r[4:5], r[2:3]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	max.sl r[6:7], r[6:7], r[8:9]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	sub.sl r[6:7], r[6:7], r[8:9]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	load.d r[8:9], 0(r14)                   # 8-byte Folded Reload
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.sl r[2:3], r[6:7], r[2:3]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	add.ul r[8:9], r[10:11], r[8:9]
	addli r10, zero, 12
	addli r11, zero, 1
	xwait r10, 0
	addli r10, zero, 5
	lock zero, r10
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r11, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r13, r13, 3
	addli r8, r4, 31
	slli r4, r4, 1
	addli r5, zero, 128
	srli r6, r8, 5
	andi r4, r4, 62
	dma_cfg r13, r5, r6, 4
	addli r6, zero, 2048
	dma_cfg r6, r5, r2, 5
	addli r2, zero, 13
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_6
.LBB0_239:                              # %._crit_edge
	.loc	1 379 5                         # parallel-rne.mlir:379:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_241
# %bb.240:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 379 5                         # parallel-rne.mlir:379:5
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
	.loc	1 380 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:380:5
	addli sp, sp, 4176
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
	.long	4240                            # 0x1090
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-icr2mq2z" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
