	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-lv2g2uft" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4216
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r27
	addli r30, sp, 4152
	xsignal_mode_cfg r1
	beq r27, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
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
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -1024(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -2048(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r3, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 43 11                         # parallel-rne.mlir:43:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r4, -3040(r30)
	.loc	1 43 11                         # parallel-rne.mlir:43:11
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
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r4, -2052(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r3, r2, r3
	.loc	1 47 5                          # parallel-rne.mlir:47:5
	ble.s r3, r1, .LBB0_238
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	addli r4, r30, -4152
	addli r9, zero, 1
	addli r11, zero, 4
	lui r22, 1024
	lui r23, 522240
	lui r25, 1048560
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[4:5], r1
	lui r1, 524287
	ori r21, r1, 4095
	lui r1, 7
	ori r24, r1, 4095
	lui r1, 522239
	ori r26, r1, 4095
	lui r1, 128
	ori r1, r1, 2048
	storeli.w r1, -4108(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	xsignal r12, 0
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, r30, -4120
	.loc	1 47 5 is_stmt 1                # parallel-rne.mlir:47:5
	addli r3, r30, -4152
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli.d r[4:5], r[4:5], 1
	setlt.sl r1, r[4:5], r[1:2]
	beq r1, zero, .LBB0_238
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_66 Depth 2
                                        #       Child Loop BB0_68 Depth 3
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_45 Depth 3
                                        #     Child Loop BB0_90 Depth 2
                                        #       Child Loop BB0_92 Depth 3
                                        #     Child Loop BB0_142 Depth 2
                                        #       Child Loop BB0_144 Depth 3
                                        #     Child Loop BB0_166 Depth 2
                                        #       Child Loop BB0_168 Depth 3
                                        #     Child Loop BB0_119 Depth 2
                                        #       Child Loop BB0_121 Depth 3
                                        #     Child Loop BB0_213 Depth 2
                                        #       Child Loop BB0_215 Depth 3
                                        #     Child Loop BB0_190 Depth 2
                                        #       Child Loop BB0_192 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r28, zero, 6
	.loc	1 72 7 is_stmt 1                # parallel-rne.mlir:72:7
	bneq r27, r11, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	addli r2, r30, -4120
	addli r6, zero, 8
	addli r3, zero, 0
	addli r10, zero, 0
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	div.s r1, r4, r1
	div.s r1, r1, r2
	addli r2, zero, 32
	div.s r2, r1, r2
	slli r4, r2, 3
	slli r2, r2, 5
	sub.s r5, r9, r4
	sub.s r2, r1, r2
	min.s r5, r5, r6
	mod.s r1, r1, r5
	div.s r2, r2, r5
	add.s r1, r4, r1
	slli r4, r2, 5
	storeli.w r4, -4144(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r2
	slli r2, r1, 4
	zext_int2long r[6:7], r1
	addli r1, zero, 5
	storeli.w r2, -4140(r30)                # 4-byte Folded Spill
	sll.d r[1:2], r[4:5], r1
	addli r4, zero, 10
	addli r5, r30, -4136
	store.d r[6:7], 0(r5)                   # 8-byte Folded Spill
	sll.d r[13:14], r[6:7], r4
	.loc	1 73 7 is_stmt 1                # parallel-rne.mlir:73:7
	sll.d r[7:8], r[1:2], r9
	load.d r[1:2], 8(r30)
	addli r5, r30, -4128
	.loc	1 90 15                         # parallel-rne.mlir:90:15
	loadli.w r4,  -4096(r30)
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	loadli.w r6,  -3072(r30)
	store.d r[7:8], 0(r5)                   # 8-byte Folded Spill
	addli r5, r30, -4104
	.loc	1 73 7                          # parallel-rne.mlir:73:7
	add.ul r[1:2], r[1:2], r[7:8]
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	addli r2, zero, 255
	addli r1, zero, 16
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 4
	.loc	1 96 9 is_stmt 1                # parallel-rne.mlir:96:9
	addli r5, r5, 4160
	addli r18, zero, 64
	addli r12, zero, 4
	addli r11, zero, 5
	addli r28, zero, 6
	lock zero, r9
	addli r9, zero, 8
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r16, zero, 2
	dma_cfg r5, r15, r18, 3
	addli r16, zero, 128
	addli r5, zero, 32
	addli r15, zero, 2
	dma_cfg r16, r18, r19, 4
	dma_cfg r16, r16, r8, 5
	dma_cfg zero, zero, r5, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r27, 10
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r27
	.loc	1 96 9                          # parallel-rne.mlir:96:9
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
	addli r1, zero, 16
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r18, 3
	dma_cfg r16, zero, r19, 4
	dma_cfg r16, zero, r8, 5
	dma_cfg zero, zero, r5, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r15, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	loadli.w r5,  -2048(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	loadli.w r7,  -1024(r30)
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	addli r5, r5, 1
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r7, r7, 1
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	storeli.w r5, -2048(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	storeli.w r7, -1024(r30)
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 73 7                          # parallel-rne.mlir:73:7
	addli r10, r10, 1
	beq r10, r12, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	addli r3, r3, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 74 15                         # parallel-rne.mlir:74:15
	zext_int2long r[11:12], r10
	addli r5, zero, 4
	addli r20, zero, 4
	.loc	1 75 15                         # parallel-rne.mlir:75:15
	sll.d r[15:16], r[11:12], r5
	addli r5, zero, 1023
	.loc	1 77 15                         # parallel-rne.mlir:77:15
	add.ul r[17:18], r[15:16], r[13:14]
	zext_int2long r[7:8], r5
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	setlt.ul r5, r[7:8], r[17:18]
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	bneq r5, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli.d r[15:16], r[17:18], 0
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	add.s r9, r6, r3
	add.s r5, r4, r3
	.loc	1 92 15 is_stmt 1               # parallel-rne.mlir:92:15
	mod.s r19, r9, r2
	.loc	1 90 15                         # parallel-rne.mlir:90:15
	mod.s r7, r5, r2
	addli r5, r5, 1
	storeli.w r5, -4096(r30)
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	slli r5, r19, 11
	addli r19, r9, 1
	.loc	1 90 15                         # parallel-rne.mlir:90:15
	slli r8, r7, 10
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	storeli.w r19, -3072(r30)
	addli r7, r5, 4096
	.loc	1 96 9                          # parallel-rne.mlir:96:9
	addli r19, zero, 2
	beq r27, r19, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 1
	.loc	1 96 9                          # parallel-rne.mlir:96:9
	bneq r27, r19, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 96 9                          # parallel-rne.mlir:96:9
	sll.d r[11:12], r[17:18], r19
	addli r27, zero, 16
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	srl.d r[17:18], r[15:16], r1
	.loc	1 96 9                          # parallel-rne.mlir:96:9
	load.d r[15:16], 0(r30)
	sub.s r8, r27, r17
	addli r17, zero, 3
	add.ul r[15:16], r[15:16], r[11:12]
	addli r11, zero, 254
	xwait r17, 0
	blt.s r11, r9, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	.loc	1 96 9                          # parallel-rne.mlir:96:9
	addli r9, zero, 2
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 7
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r1, 10
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
	addli r9, zero, 17
	dma_cfg zero, zero, r27, 10
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
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r9, 3
	addli r9, zero, 128
	dma_cfg r9, zero, r19, 4
	dma_cfg r9, zero, r27, 5
	addli r9, zero, 32
	dma_cfg zero, zero, r9, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 2
	.loc	1 97 9 is_stmt 1                # parallel-rne.mlir:97:9
	addli r5, zero, 5
	addli r12, zero, 4
	xwait r9, 0
	xwait r5, 0
	lock zero, zero
	addli r5, zero, 32
	ds_cfg r9, zero, 0
	ds_cfg r5, zero, 1
	addli r5, zero, 3
	ds_cfg r1, zero, 14
	ds_cfg r1, zero, 13
	shuffle_batch r8, r7, r1, 1
	unlock zero
	xsignal r5, 0
	xsignal r12, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	loadli.w r5,  -2048(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	loadli.w r17,  -1024(r30)
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	mod.s r7, r5, r2
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	mod.s r15, r17, r2
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	addli r5, r5, 1
	storeli.w r5, -2048(r30)
	slli r9, r7, 11
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	loadli.w r7,  -4108(r30)                # 4-byte Folded Reload
	slli r5, r15, 11
	addli r15, r17, 1
	storeli.w r15, -1024(r30)
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	addli r15, zero, 7
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	add.s r7, r5, r7
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	beq r27, r15, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r27, r28, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 12
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	addli r15, r30, -4104
	addli r18, zero, 7
	sll.d r[8:9], r[11:12], r19
	load.d r[11:12], 0(r15)                 # 8-byte Folded Reload
	xwait r18, 0
	add.ul r[15:16], r[11:12], r[8:9]
	addli r8, zero, 254
	blt.s r8, r17, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r8, zero, 1
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	addli r9, zero, 2
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 3
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 13
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 15
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
	dma_cfg zero, zero, r1, 10
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
	dma_cfg r7, zero, r9, 3
	addli r9, zero, 128
	dma_cfg r9, zero, r8, 4
	dma_cfg r9, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r8, 128
	addli r17, zero, 64
	addli r12, zero, 4
	addli r9, zero, 5
	addli r11, zero, 16
	addli r28, zero, 6
	ori r8, r8, 2112
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	add.s r5, r5, r8
	addli r8, zero, 4
	lock zero, r8
	addli r8, zero, 1
	dma_cfg r8, r8, zero, 0
	dma_cfg zero, r16, zero, 2
	dma_cfg r5, r15, r17, 3
	addli r15, zero, 128
	addli r5, zero, 256
	dma_cfg r15, r17, r8, 4
	dma_cfg r15, r5, r1, 5
	addli r1, zero, 2
	addli r5, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 3
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 9
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 11
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 13
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 15
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 17
	dma_cfg zero, zero, r11, 10
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
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r7, zero, r17, 3
	dma_cfg r15, zero, r8, 4
	dma_cfg r15, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r1, 0
	addli r1, zero, 16
	.loc	1 114 9 is_stmt 1               # parallel-rne.mlir:114:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r5, zero, 9
	xwait r28, 0
	addli r12, zero, 4
	xwait r5, 0
	addli r5, zero, 2
	lock zero, zero
	ds_cfg r5, zero, 0
	addli r5, zero, 32
	ds_cfg r5, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r5, zero, 13
	addli r5, zero, 7
	shuffle_coa r9, r7, r1, 2
	unlock zero
	xsignal r5, 0
	addli r5, zero, 8
	xsignal r5, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 4
	.loc	1 116 9 is_stmt 1               # parallel-rne.mlir:116:9
	bneq r27, r11, .LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r5, zero, 8
	addli r7, zero, 1
	xwait r11, 0
	xwait r5, 0
	addli r5, zero, 32
	lock zero, r7
	mm_cfg r5, r1, r1, 0
	addli r5, zero, 1
	mm_cfg r7, r7, r7, 2
	addli r7, zero, 2048
	beq r3, zero, .LBB0_31
# %bb.29:                               # %.preheader30
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r7, r8, r9, 8
	j .LBB0_32
.LBB0_30:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 73 7                          # parallel-rne.mlir:73:7
	addli r10, r10, 1
	bneq r10, r11, .LBB0_13
	j .LBB0_35
.LBB0_31:                               # %.preheader29
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	mm r7, r8, r9, 8
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_14 Depth=2
	unlock r5
	addli r5, zero, 5
	.loc	1 73 7                          # parallel-rne.mlir:73:7
	addli r10, r10, 1
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r5, 0
	bneq r10, r11, .LBB0_13
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	bneq r27, r12, .LBB0_35
.LBB0_34:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -4112(r30)              # 4-byte Folded Spill
	xsignal r1, 0
	j .LBB0_38
.LBB0_35:                               # %.thread44
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	.loc	1 125 7 is_stmt 1               # parallel-rne.mlir:125:7
	bneq r27, r1, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	storeli.w r1, -4112(r30)                # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -4112(r30)              # 4-byte Folded Spill
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 32
	.loc	1 128 7 is_stmt 1               # parallel-rne.mlir:128:7
	xfence
	addli r9, zero, 1
	addli r5, zero, 7
	addli r12, zero, 12
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	mfence { lm, sm, gm }
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	csr_set csr5, r2
	sync_core
	zext_int2long r[3:4], r1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	beq r27, zero, .LBB0_64
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	addli r1, zero, 2
	beq r27, r1, .LBB0_88
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r27, r9, .LBB0_112
# %bb.41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	addli r5, r30, -4104
	addli r6, zero, 1
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	addli r1, zero, 96
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	xfence
	zext_int2long r[15:16], r1
	addli r1, zero, 64
	mfence { lm, sm, gm }
	zext_int2long r[13:14], r1
	j .LBB0_43
.LBB0_42:                               # %middle.block84
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 168 9 is_stmt 1               # parallel-rne.mlir:168:9
	andi r1, r6, 1
	addli.d r[13:14], r[15:16], 0
	addli r6, zero, 0
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r27
	.loc	1 168 9                         # parallel-rne.mlir:168:9
	beq r1, zero, .LBB0_111
.LBB0_43:                               # %vector.ph79
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_45 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r5, r30, -4104
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	j .LBB0_45
.LBB0_44:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 184 13                        # parallel-rne.mlir:184:13
	stores.w r5, 12(r10)
	stores.w r11, 8(r10)
	stores.w r18, 4(r10)
	stores.w r9, 0(r10)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	setneq.d r7, r[1:2], r[3:4]
	beq r7, zero, .LBB0_42
.LBB0_45:                               # %vector.body80
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[7:8], r[1:2], r[13:14]
	slli r10, r7, 2
	addli r5, r10, 2060
	addli r7, r10, 2056
	loads.w r20, 0(r5)
	addli r5, r10, 2048
	loads.w r27, 0(r7)
	loads.w r19, 0(r5)
	addli r5, r10, 2052
	loads.w r17, 0(r5)
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	and r28, r20, r21
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	setlt.u r5, r23, r28
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r5, zero, .LBB0_47
# %bb.46:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r20, 0
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=3
	or r5, r20, r22
.LBB0_48:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	and r12, r27, r21
	setlt.u r7, r23, r12
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r7, zero, .LBB0_50
# %bb.49:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r27, 0
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_45 Depth=3
	or r11, r27, r22
.LBB0_51:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	and r7, r17, r21
	setlt.u r8, r23, r7
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r8, zero, .LBB0_53
# %bb.52:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_45 Depth=3
	or r18, r17, r22
.LBB0_54:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	and r8, r19, r21
	setlt.u r9, r23, r8
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r9, zero, .LBB0_56
# %bb.55:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r19, 0
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r8, r26, r8
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r8, zero, .LBB0_57
	j .LBB0_58
.LBB0_56:                               #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r19, r22
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r8, r26, r8
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r8, zero, .LBB0_58
.LBB0_57:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r24
	and r9, r8, r25
.LBB0_58:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	setlt.u r7, r26, r7
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r7, zero, .LBB0_61
# %bb.59:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r26, r12
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r7, zero, .LBB0_62
.LBB0_60:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r26, r28
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r7, zero, .LBB0_44
	j .LBB0_63
.LBB0_61:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r17, 16
	andi r7, r7, 1
	add.s r7, r17, r7
	add.s r7, r7, r24
	and r18, r7, r25
	setlt.u r7, r26, r12
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r7, zero, .LBB0_60
.LBB0_62:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r27, 16
	andi r7, r7, 1
	add.s r7, r27, r7
	add.s r7, r7, r24
	and r11, r7, r25
	setlt.u r7, r26, r28
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r7, zero, .LBB0_44
.LBB0_63:                               # %vector.body80
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r20, 16
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r24
	and r5, r5, r25
	j .LBB0_44
.LBB0_64:                               #   in Loop: Header=BB0_7 Depth=1
	zext_int2long r[1:2], zero
	.loc	1 131 7 is_stmt 1               # parallel-rne.mlir:131:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	addli.d r[13:14], r[1:2], 0
	j .LBB0_66
.LBB0_65:                               # %middle.block96
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 139 9                         # parallel-rne.mlir:139:9
	andi r5, r6, 1
	addli.d r[13:14], r[3:4], 0
	addli r6, zero, 0
	beq r5, zero, .LBB0_87
.LBB0_66:                               # %vector.ph91
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_68 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli.d r[15:16], r[1:2], 0
	j .LBB0_68
.LBB0_67:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 140 11 is_stmt 1              # parallel-rne.mlir:140:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 155 13                        # parallel-rne.mlir:155:13
	stores.w r10, 12(r7)
	stores.w r20, 8(r7)
	stores.w r11, 4(r7)
	stores.w r18, 0(r7)
	.loc	1 140 11                        # parallel-rne.mlir:140:11
	setneq.d r5, r[15:16], r[3:4]
	beq r5, zero, .LBB0_65
.LBB0_68:                               # %vector.body92
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 141 19                        # parallel-rne.mlir:141:19
	add.ul r[7:8], r[15:16], r[13:14]
	slli r7, r7, 2
	addli r5, r7, 2060
	addli r9, r7, 2056
	loads.w r8, 0(r5)
	addli r5, r7, 2048
	loads.w r27, 0(r9)
	loads.w r12, 0(r5)
	addli r5, r7, 2052
	loads.w r17, 0(r5)
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	and r5, r8, r21
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	setlt.u r9, r23, r5
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	bneq r9, zero, .LBB0_70
# %bb.69:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_68 Depth=3
	or r10, r8, r22
.LBB0_71:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	and r19, r27, r21
	setlt.u r9, r23, r19
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	bneq r9, zero, .LBB0_73
# %bb.72:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r27, 0
	j .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_68 Depth=3
	or r20, r27, r22
.LBB0_74:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	and r9, r17, r21
	setlt.u r11, r23, r9
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	bneq r11, zero, .LBB0_76
# %bb.75:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_68 Depth=3
	or r11, r17, r22
.LBB0_77:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	and r28, r12, r21
	setlt.u r18, r23, r28
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	bneq r18, zero, .LBB0_79
# %bb.78:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 152 19 is_stmt 1              # parallel-rne.mlir:152:19
	setlt.u r28, r26, r28
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	beq r28, zero, .LBB0_80
	j .LBB0_81
.LBB0_79:                               #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r12, r22
	.loc	1 152 19 is_stmt 1              # parallel-rne.mlir:152:19
	setlt.u r28, r26, r28
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r28, zero, .LBB0_81
.LBB0_80:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r12, 16
	andi r18, r18, 1
	add.s r12, r12, r18
	add.s r12, r12, r24
	and r18, r12, r25
.LBB0_81:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	setlt.u r9, r26, r9
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	beq r9, zero, .LBB0_84
# %bb.82:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r19
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	beq r9, zero, .LBB0_85
.LBB0_83:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r5
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r5, zero, .LBB0_67
	j .LBB0_86
.LBB0_84:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r17, 16
	andi r9, r9, 1
	add.s r9, r17, r9
	add.s r9, r9, r24
	and r11, r9, r25
	setlt.u r9, r26, r19
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r9, zero, .LBB0_83
.LBB0_85:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r27, 16
	andi r9, r9, 1
	add.s r9, r27, r9
	add.s r9, r9, r24
	and r20, r9, r25
	setlt.u r5, r26, r5
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r5, zero, .LBB0_67
.LBB0_86:                               # %vector.body92
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r24
	and r10, r5, r25
	j .LBB0_67
.LBB0_87:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r27
	addli r9, zero, 1
	addli r2, zero, 255
	addli r5, zero, 7
	addli r12, zero, 12
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	mfence { sm }
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	addli r1, zero, 2
	bneq r27, r1, .LBB0_40
.LBB0_88:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	.loc	1 189 7 is_stmt 1               # parallel-rne.mlir:189:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[13:14], r2
	j .LBB0_90
.LBB0_89:                               # %middle.block90
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 197 9                         # parallel-rne.mlir:197:9
	andi r2, r1, 1
	addli r1, zero, 160
	zext_int2long r[13:14], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_111
.LBB0_90:                               # %vector.ph85
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	j .LBB0_92
.LBB0_91:                               # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 198 11 is_stmt 1              # parallel-rne.mlir:198:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 213 13                        # parallel-rne.mlir:213:13
	stores.w r5, 12(r2)
	stores.w r8, 8(r2)
	stores.w r11, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 198 11                        # parallel-rne.mlir:198:11
	setneq.d r6, r[15:16], r[3:4]
	beq r6, zero, .LBB0_89
.LBB0_92:                               # %vector.body86
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	add.ul r[5:6], r[15:16], r[13:14]
	slli r2, r5, 2
	addli r5, r2, 2060
	addli r7, r2, 2056
	loads.w r6, 0(r5)
	addli r5, r2, 2048
	loads.w r10, 0(r7)
	loads.w r12, 0(r5)
	addli r5, r2, 2052
	loads.w r17, 0(r5)
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	and r7, r6, r21
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	setlt.u r5, r23, r7
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r5, zero, .LBB0_94
# %bb.93:                               # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_92 Depth=3
	or r5, r6, r22
.LBB0_95:                               # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	and r19, r10, r21
	setlt.u r8, r23, r19
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r8, zero, .LBB0_97
# %bb.96:                               # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_98
.LBB0_97:                               #   in Loop: Header=BB0_92 Depth=3
	or r8, r10, r22
.LBB0_98:                               # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	and r9, r17, r21
	setlt.u r11, r23, r9
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r11, zero, .LBB0_100
# %bb.99:                               # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_101
.LBB0_100:                              #   in Loop: Header=BB0_92 Depth=3
	or r11, r17, r22
.LBB0_101:                              # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	and r20, r12, r21
	setlt.u r18, r23, r20
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	bneq r18, zero, .LBB0_103
# %bb.102:                              # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 210 19 is_stmt 1              # parallel-rne.mlir:210:19
	setlt.u r20, r26, r20
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	beq r20, zero, .LBB0_104
	j .LBB0_105
.LBB0_103:                              #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r12, r22
	.loc	1 210 19 is_stmt 1              # parallel-rne.mlir:210:19
	setlt.u r20, r26, r20
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r20, zero, .LBB0_105
.LBB0_104:                              # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r12, 16
	andi r18, r18, 1
	add.s r12, r12, r18
	add.s r12, r12, r24
	and r18, r12, r25
.LBB0_105:                              # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	setlt.u r9, r26, r9
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	beq r9, zero, .LBB0_108
# %bb.106:                              # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r19
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	beq r9, zero, .LBB0_109
.LBB0_107:                              # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r26, r7
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r7, zero, .LBB0_91
	j .LBB0_110
.LBB0_108:                              # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r17, 16
	andi r9, r9, 1
	add.s r9, r17, r9
	add.s r9, r9, r24
	and r11, r9, r25
	setlt.u r9, r26, r19
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r9, zero, .LBB0_107
.LBB0_109:                              # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	setlt.u r7, r26, r7
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r7, zero, .LBB0_91
.LBB0_110:                              # %vector.body86
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r24
	and r5, r5, r25
	j .LBB0_91
.LBB0_111:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r9, zero, 1
	addli r2, zero, 255
	addli r5, zero, 7
	addli r12, zero, 12
	mfence { sm }
.LBB0_112:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 218 7 is_stmt 1               # parallel-rne.mlir:218:7
	loadli.w r1,  -4112(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_140
# %bb.113:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r11, zero, 4
	.loc	1 247 7 is_stmt 1               # parallel-rne.mlir:247:7
	beq r27, r11, .LBB0_164
.LBB0_114:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 6
	.loc	1 276 7 is_stmt 1               # parallel-rne.mlir:276:7
	beq r27, r5, .LBB0_188
.LBB0_115:                              #   in Loop: Header=BB0_7 Depth=1
	beq r27, r1, .LBB0_211
# %bb.116:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	bneq r27, r1, .LBB0_235
# %bb.117:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 320
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[13:14], r2
	j .LBB0_119
.LBB0_118:                              # %middle.block
                                        #   in Loop: Header=BB0_119 Depth=2
	.loc	1 284 9 is_stmt 1               # parallel-rne.mlir:284:9
	andi r2, r1, 1
	addli r1, zero, 352
	zext_int2long r[13:14], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_234
.LBB0_119:                              # %vector.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_121 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	j .LBB0_121
.LBB0_120:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 285 11 is_stmt 1              # parallel-rne.mlir:285:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r5, 12(r2)
	stores.w r8, 8(r2)
	stores.w r11, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 285 11                        # parallel-rne.mlir:285:11
	setneq.d r6, r[15:16], r[3:4]
	beq r6, zero, .LBB0_118
.LBB0_121:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_119 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.ul r[5:6], r[15:16], r[13:14]
	slli r2, r5, 2
	addli r5, r2, 2060
	addli r7, r2, 2056
	loads.w r6, 0(r5)
	addli r5, r2, 2048
	loads.w r10, 0(r7)
	loads.w r9, 0(r5)
	addli r5, r2, 2052
	loads.w r17, 0(r5)
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r7, r6, r21
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	setlt.u r5, r23, r7
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r5, zero, .LBB0_123
# %bb.122:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_121 Depth=3
	or r5, r6, r22
.LBB0_124:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	and r12, r10, r21
	setlt.u r8, r23, r12
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r8, zero, .LBB0_126
# %bb.125:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_121 Depth=3
	or r8, r10, r22
.LBB0_127:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	and r19, r17, r21
	setlt.u r11, r23, r19
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r11, zero, .LBB0_129
# %bb.128:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_130
.LBB0_129:                              #   in Loop: Header=BB0_121 Depth=3
	or r11, r17, r22
.LBB0_130:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	and r20, r9, r21
	setlt.u r18, r23, r20
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	bneq r18, zero, .LBB0_132
# %bb.131:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r20, r26, r20
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r20, zero, .LBB0_133
	j .LBB0_134
.LBB0_132:                              #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r9, r22
	.loc	1 297 19 is_stmt 1              # parallel-rne.mlir:297:19
	setlt.u r20, r26, r20
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r20, zero, .LBB0_134
.LBB0_133:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r24
	and r18, r9, r25
.LBB0_134:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	setlt.u r9, r26, r19
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r9, zero, .LBB0_137
# %bb.135:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r12
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r9, zero, .LBB0_138
.LBB0_136:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r26, r7
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r7, zero, .LBB0_120
	j .LBB0_139
.LBB0_137:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r17, 16
	andi r9, r9, 1
	add.s r9, r17, r9
	add.s r9, r9, r24
	and r11, r9, r25
	setlt.u r9, r26, r12
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r9, zero, .LBB0_136
.LBB0_138:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	setlt.u r7, r26, r7
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r7, zero, .LBB0_120
.LBB0_139:                              # %vector.body
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r24
	and r5, r5, r25
	j .LBB0_120
.LBB0_140:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 192
	.loc	1 218 7 is_stmt 1               # parallel-rne.mlir:218:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[13:14], r2
	j .LBB0_142
.LBB0_141:                              # %middle.block78
                                        #   in Loop: Header=BB0_142 Depth=2
	.loc	1 226 9                         # parallel-rne.mlir:226:9
	andi r2, r1, 1
	addli r1, zero, 224
	zext_int2long r[13:14], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_163
.LBB0_142:                              # %vector.ph73
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_144 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	j .LBB0_144
.LBB0_143:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	stores.w r5, 12(r2)
	stores.w r8, 8(r2)
	stores.w r11, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	setneq.d r6, r[15:16], r[3:4]
	beq r6, zero, .LBB0_141
.LBB0_144:                              # %vector.body74
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[5:6], r[15:16], r[13:14]
	slli r2, r5, 2
	addli r5, r2, 2060
	addli r7, r2, 2056
	loads.w r6, 0(r5)
	addli r5, r2, 2048
	loads.w r10, 0(r7)
	loads.w r9, 0(r5)
	addli r5, r2, 2052
	loads.w r17, 0(r5)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r7, r6, r21
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	setlt.u r5, r23, r7
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r5, zero, .LBB0_146
# %bb.145:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	or r5, r6, r22
.LBB0_147:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	and r12, r10, r21
	setlt.u r8, r23, r12
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r8, zero, .LBB0_149
# %bb.148:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_144 Depth=3
	or r8, r10, r22
.LBB0_150:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	and r19, r17, r21
	setlt.u r11, r23, r19
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r11, zero, .LBB0_152
# %bb.151:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_144 Depth=3
	or r11, r17, r22
.LBB0_153:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	and r20, r9, r21
	setlt.u r18, r23, r20
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r18, zero, .LBB0_155
# %bb.154:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r20, r26, r20
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r20, zero, .LBB0_156
	j .LBB0_157
.LBB0_155:                              #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r9, r22
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r20, r26, r20
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r20, zero, .LBB0_157
.LBB0_156:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r24
	and r18, r9, r25
.LBB0_157:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	setlt.u r9, r26, r19
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r9, zero, .LBB0_160
# %bb.158:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r12
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r9, zero, .LBB0_161
.LBB0_159:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r26, r7
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r7, zero, .LBB0_143
	j .LBB0_162
.LBB0_160:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r17, 16
	andi r9, r9, 1
	add.s r9, r17, r9
	add.s r9, r9, r24
	and r11, r9, r25
	setlt.u r9, r26, r12
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r9, zero, .LBB0_159
.LBB0_161:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	setlt.u r7, r26, r7
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r7, zero, .LBB0_143
.LBB0_162:                              # %vector.body74
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r24
	and r5, r5, r25
	j .LBB0_143
.LBB0_163:                              #   in Loop: Header=BB0_7 Depth=1
	addli r9, zero, 1
	addli r2, zero, 255
	addli r5, zero, 7
	addli r12, zero, 12
	.loc	1 218 7 is_stmt 1               # parallel-rne.mlir:218:7
	mfence { sm }
	addli r11, zero, 4
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	bneq r27, r11, .LBB0_114
.LBB0_164:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[13:14], r2
	j .LBB0_166
.LBB0_165:                              # %middle.block72
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 255 9 is_stmt 1               # parallel-rne.mlir:255:9
	andi r2, r1, 1
	addli r1, zero, 288
	zext_int2long r[13:14], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_187
.LBB0_166:                              # %vector.ph67
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_168 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	j .LBB0_168
.LBB0_167:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r5, 12(r2)
	stores.w r8, 8(r2)
	stores.w r11, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	setneq.d r6, r[15:16], r[3:4]
	beq r6, zero, .LBB0_165
.LBB0_168:                              # %vector.body68
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[5:6], r[15:16], r[13:14]
	slli r2, r5, 2
	addli r5, r2, 2060
	addli r7, r2, 2056
	loads.w r6, 0(r5)
	addli r5, r2, 2048
	loads.w r10, 0(r7)
	loads.w r9, 0(r5)
	addli r5, r2, 2052
	loads.w r17, 0(r5)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r7, r6, r21
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r5, r23, r7
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r5, zero, .LBB0_170
# %bb.169:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_168 Depth=3
	or r5, r6, r22
.LBB0_171:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	and r12, r10, r21
	setlt.u r8, r23, r12
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r8, zero, .LBB0_173
# %bb.172:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_168 Depth=3
	or r8, r10, r22
.LBB0_174:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	and r19, r17, r21
	setlt.u r11, r23, r19
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r11, zero, .LBB0_176
# %bb.175:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_168 Depth=3
	or r11, r17, r22
.LBB0_177:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	and r20, r9, r21
	setlt.u r18, r23, r20
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r18, zero, .LBB0_179
# %bb.178:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r20, r26, r20
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r20, zero, .LBB0_180
	j .LBB0_181
.LBB0_179:                              #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r9, r22
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r20, r26, r20
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r20, zero, .LBB0_181
.LBB0_180:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r24
	and r18, r9, r25
.LBB0_181:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	setlt.u r9, r26, r19
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r9, zero, .LBB0_184
# %bb.182:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r12
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r9, zero, .LBB0_185
.LBB0_183:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r26, r7
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r7, zero, .LBB0_167
	j .LBB0_186
.LBB0_184:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r17, 16
	andi r9, r9, 1
	add.s r9, r17, r9
	add.s r9, r9, r24
	and r11, r9, r25
	setlt.u r9, r26, r12
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r9, zero, .LBB0_183
.LBB0_185:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	setlt.u r7, r26, r7
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r7, zero, .LBB0_167
.LBB0_186:                              # %vector.body68
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r24
	and r5, r5, r25
	j .LBB0_167
.LBB0_187:                              #   in Loop: Header=BB0_7 Depth=1
	addli r9, zero, 1
	addli r11, zero, 4
	addli r2, zero, 255
	addli r5, zero, 7
	addli r12, zero, 12
	.loc	1 247 7 is_stmt 1               # parallel-rne.mlir:247:7
	mfence { sm }
	addli r1, zero, 6
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	bneq r27, r5, .LBB0_115
.LBB0_188:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 448
	.loc	1 334 7 is_stmt 1               # parallel-rne.mlir:334:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[13:14], r2
	j .LBB0_190
.LBB0_189:                              # %middle.block66
                                        #   in Loop: Header=BB0_190 Depth=2
	.loc	1 342 9                         # parallel-rne.mlir:342:9
	andi r2, r1, 1
	addli r1, zero, 480
	zext_int2long r[13:14], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_234
.LBB0_190:                              # %vector.ph61
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_192 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	j .LBB0_192
.LBB0_191:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 343 11 is_stmt 1              # parallel-rne.mlir:343:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	stores.w r5, 12(r2)
	stores.w r8, 8(r2)
	stores.w r11, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 343 11                        # parallel-rne.mlir:343:11
	setneq.d r6, r[15:16], r[3:4]
	beq r6, zero, .LBB0_189
.LBB0_192:                              # %vector.body62
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_190 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	add.ul r[5:6], r[15:16], r[13:14]
	slli r2, r5, 2
	addli r5, r2, 2060
	addli r7, r2, 2056
	loads.w r6, 0(r5)
	addli r5, r2, 2048
	loads.w r10, 0(r7)
	loads.w r9, 0(r5)
	addli r5, r2, 2052
	loads.w r17, 0(r5)
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	and r7, r6, r21
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	setlt.u r5, r23, r7
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r5, zero, .LBB0_194
# %bb.193:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_195
.LBB0_194:                              #   in Loop: Header=BB0_192 Depth=3
	or r5, r6, r22
.LBB0_195:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	and r12, r10, r21
	setlt.u r8, r23, r12
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r8, zero, .LBB0_197
# %bb.196:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_198
.LBB0_197:                              #   in Loop: Header=BB0_192 Depth=3
	or r8, r10, r22
.LBB0_198:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	and r19, r17, r21
	setlt.u r11, r23, r19
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r11, zero, .LBB0_200
# %bb.199:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_192 Depth=3
	or r11, r17, r22
.LBB0_201:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	and r20, r9, r21
	setlt.u r18, r23, r20
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r18, zero, .LBB0_203
# %bb.202:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r20, r26, r20
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r20, zero, .LBB0_204
	j .LBB0_205
.LBB0_203:                              #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r9, r22
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r20, r26, r20
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r20, zero, .LBB0_205
.LBB0_204:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r24
	and r18, r9, r25
.LBB0_205:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	setlt.u r9, r26, r19
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r9, zero, .LBB0_208
# %bb.206:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r12
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r9, zero, .LBB0_209
.LBB0_207:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r26, r7
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r7, zero, .LBB0_191
	j .LBB0_210
.LBB0_208:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r17, 16
	andi r9, r9, 1
	add.s r9, r17, r9
	add.s r9, r9, r24
	and r11, r9, r25
	setlt.u r9, r26, r12
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r9, zero, .LBB0_207
.LBB0_209:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	setlt.u r7, r26, r7
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r7, zero, .LBB0_191
.LBB0_210:                              # %vector.body62
                                        #   in Loop: Header=BB0_192 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r24
	and r5, r5, r25
	j .LBB0_191
.LBB0_211:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 384
	.loc	1 305 7 is_stmt 1               # parallel-rne.mlir:305:7
	xfence
	addli r1, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[13:14], r2
	j .LBB0_213
.LBB0_212:                              # %middle.block60
                                        #   in Loop: Header=BB0_213 Depth=2
	.loc	1 313 9                         # parallel-rne.mlir:313:9
	andi r2, r1, 1
	addli r1, zero, 416
	zext_int2long r[13:14], r1
	addli r1, zero, 0
	beq r2, zero, .LBB0_234
.LBB0_213:                              # %vector.ph55
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_215 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	j .LBB0_215
.LBB0_214:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 314 11 is_stmt 1              # parallel-rne.mlir:314:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 329 13                        # parallel-rne.mlir:329:13
	stores.w r5, 12(r2)
	stores.w r8, 8(r2)
	stores.w r11, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 314 11                        # parallel-rne.mlir:314:11
	setneq.d r6, r[15:16], r[3:4]
	beq r6, zero, .LBB0_212
.LBB0_215:                              # %vector.body56
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	add.ul r[5:6], r[15:16], r[13:14]
	slli r2, r5, 2
	addli r5, r2, 2060
	addli r7, r2, 2056
	loads.w r6, 0(r5)
	addli r5, r2, 2048
	loads.w r10, 0(r7)
	loads.w r9, 0(r5)
	addli r5, r2, 2052
	loads.w r17, 0(r5)
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	and r7, r6, r21
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	setlt.u r5, r23, r7
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r5, zero, .LBB0_217
# %bb.216:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_215 Depth=3
	or r5, r6, r22
.LBB0_218:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	and r12, r10, r21
	setlt.u r8, r23, r12
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r8, zero, .LBB0_220
# %bb.219:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_215 Depth=3
	or r8, r10, r22
.LBB0_221:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	and r19, r17, r21
	setlt.u r11, r23, r19
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r11, zero, .LBB0_223
# %bb.222:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_215 Depth=3
	or r11, r17, r22
.LBB0_224:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	and r20, r9, r21
	setlt.u r18, r23, r20
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r18, zero, .LBB0_226
# %bb.225:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	.loc	1 326 19 is_stmt 1              # parallel-rne.mlir:326:19
	setlt.u r20, r26, r20
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	beq r20, zero, .LBB0_227
	j .LBB0_228
.LBB0_226:                              #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r9, r22
	.loc	1 326 19 is_stmt 1              # parallel-rne.mlir:326:19
	setlt.u r20, r26, r20
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r20, zero, .LBB0_228
.LBB0_227:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r9, 16
	andi r18, r18, 1
	add.s r9, r9, r18
	add.s r9, r9, r24
	and r18, r9, r25
.LBB0_228:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	setlt.u r9, r26, r19
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	beq r9, zero, .LBB0_231
# %bb.229:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r12
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	beq r9, zero, .LBB0_232
.LBB0_230:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r26, r7
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r7, zero, .LBB0_214
	j .LBB0_233
.LBB0_231:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r17, 16
	andi r9, r9, 1
	add.s r9, r17, r9
	add.s r9, r9, r24
	and r11, r9, r25
	setlt.u r9, r26, r12
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r9, zero, .LBB0_230
.LBB0_232:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	setlt.u r7, r26, r7
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r7, zero, .LBB0_214
.LBB0_233:                              # %vector.body56
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r24
	and r5, r5, r25
	j .LBB0_214
.LBB0_234:                              # %.sink.split51
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r9, zero, 1
	addli r11, zero, 4
	addli r2, zero, 255
	addli r12, zero, 12
	mfence { sm }
.LBB0_235:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 363 7 is_stmt 1               # parallel-rne.mlir:363:7
	csr_set csr5, r2
	sync_core
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	loadli.w r1,  -4112(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.236:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	bneq r27, zero, .LBB0_6
# %bb.237:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	loadli.w r1,  -4144(r30)                # 4-byte Folded Reload
	addli r5, zero, 96
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	loadli.w r7,  -4140(r30)                # 4-byte Folded Reload
	zext_int2long r[9:10], zero
	zext_int2long r[5:6], r5
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	zext_int2long r[1:2], r1
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	sext_int2long r[7:8], r7
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.ul r[5:6], r[1:2], r[5:6]
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	min.sl r[9:10], r[7:8], r[9:10]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	addli.d r[5:6], r[5:6], 32
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	max.ul r[5:6], r[5:6], r[1:2]
	sub.sl r[1:2], r[5:6], r[1:2]
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	addli.d r[5:6], r[9:10], 16
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	addli r10, r30, -4136
	addli r9, zero, 1
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	min.ul r[1:2], r[1:2], r[3:4]
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	max.sl r[3:4], r[5:6], r[7:8]
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	load.d r[5:6], 0(r10)                   # 8-byte Folded Reload
	addli r10, r30, -4128
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	sub.sl r[3:4], r[3:4], r[7:8]
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	load.d r[7:8], 16(r30)
	load.d r[13:14], 0(r10)                 # 8-byte Folded Reload
	addli r10, zero, 5
	xwait r12, 0
	sll.d r[5:6], r[5:6], r12
	addli r12, zero, 64
	lock zero, r10
	add.ul r[5:6], r[7:8], r[5:6]
	dma_cfg r9, r9, zero, 0
	addli r7, zero, 16
	dma_cfg zero, r9, zero, 1
	add.ul r[5:6], r[5:6], r[13:14]
	zext_int2long r[7:8], r7
	dma_cfg r6, zero, zero, 2
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	min.sl r[3:4], r[3:4], r[7:8]
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	dma_cfg r5, r12, r12, 3
	addli r5, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r5, r5, 5
	andi r1, r1, 62
	dma_cfg r12, r2, r5, 4
	addli r5, zero, 256
	dma_cfg r5, r2, r3, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r1, 0
	j .LBB0_6
.LBB0_238:                              # %._crit_edge
	.loc	1 383 5                         # parallel-rne.mlir:383:5
	xsignal zero, 0
	bneq r27, zero, .LBB0_240
# %bb.239:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 383 5                         # parallel-rne.mlir:383:5
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
.LBB0_240:
	.loc	1 384 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:384:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-lv2g2uft" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
