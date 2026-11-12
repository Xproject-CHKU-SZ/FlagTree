	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-23w_crky" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4248
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r11
	addli r30, sp, 4184
	xsignal_mode_cfg r1
	beq r11, zero, .LBB0_2
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	load_param_i r3, 1
	loadli.w r4,  32(r30)
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
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r4, r1, r4
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 43 11                         # parallel-rne.mlir:43:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r3, -3040(r30)
	.loc	1 43 11                         # parallel-rne.mlir:43:11
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
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r3, -2052(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r2, r2, r4
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r2, r1, .LBB0_292
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	addli r4, r30, -4184
	lui r23, 522240
	lui r25, 1048560
	addli r15, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	lui r1, 524287
	addli r2, zero, 4
	ori r21, r1, 4095
	lui r1, 7
	ori r24, r1, 4095
	lui r1, 522239
	ori r26, r1, 4095
	lui r1, 132
	ori r1, r1, 2048
	storeli.w r1, -4116(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r1, zero, 12
	xsignal r1, 0
	loadli.w r15,  -4148(r30)               # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, r30, -4144
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	addli r5, r30, -4184
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	addli.d r[3:4], r[3:4], 1
	setlt.sl r1, r[3:4], r[1:2]
	addli r2, zero, 4
	beq r1, zero, .LBB0_292
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
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
	addli r19, zero, 13
	.loc	1 76 7 is_stmt 1                # parallel-rne.mlir:76:7
	bneq r11, r2, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	addli r5, r30, -4144
	addli r7, zero, 1
	addli r8, zero, 8
	addli r9, zero, 5
	addli r12, r30, -4168
	addli r1, zero, 0
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	mod.s r5, r15, r9
	addli r15, r15, 1
	div.s r2, r3, r2
	loadli.w r3,  28(r30)
	addli r4, zero, 1
	storeli.w r15, -4148(r30)               # 4-byte Folded Spill
	slli r5, r5, 11
	div.s r2, r2, r3
	addli r3, zero, 32
	addli r20, r5, 10240
	div.s r3, r2, r3
	slli r6, r3, 3
	slli r3, r3, 5
	sub.s r7, r7, r6
	sub.s r3, r2, r3
	min.s r7, r7, r8
	mod.s r8, r2, r7
	div.s r7, r3, r7
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	loadli.w r2,  -4096(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	loadli.w r3,  -3072(r30)
	add.s r6, r6, r8
	slli r8, r7, 5
	storeli.w r8, -4176(r30)                # 4-byte Folded Spill
	zext_int2long r[7:8], r7
	slli r10, r6, 4
	storeli.w r10, -4172(r30)               # 4-byte Folded Spill
	sll.d r[7:8], r[7:8], r9
	zext_int2long r[9:10], r6
	addli r6, r30, -4160
	store.d r[9:10], 0(r12)                 # 8-byte Folded Spill
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	load.d r[12:13], 8(r30)
	store.d r[7:8], 0(r6)                   # 8-byte Folded Spill
	sll.d r[6:7], r[7:8], r4
	addli r8, zero, 11
	sll.d r[8:9], r[9:10], r8
	add.ul r[27:28], r[12:13], r[6:7]
	load.d r[6:7], 0(r30)
	add.ul r[15:16], r[6:7], r[8:9]
	addli r9, zero, 0
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r8, 5
	addli r12, zero, 4
	addli r18, zero, 64
	addli r17, zero, 128
	addli r9, zero, 5
	ori r8, r8, 64
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	lock zero, r12
	add.s r7, r7, r8
	addli r8, zero, 1
	dma_cfg r8, r8, zero, 0
	dma_cfg zero, r11, zero, 2
	dma_cfg r7, r10, r18, 3
	addli r11, zero, 16
	addli r10, zero, 2
	addli r7, zero, 7
	dma_cfg r17, r18, r8, 4
	dma_cfg r17, r17, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r13, 10
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
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r11, 10
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
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r18, 3
	dma_cfg r17, zero, r8, 4
	dma_cfg r17, zero, r11, 5
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r10, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r6,  -2048(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r7,  -1024(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r6, r6, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r7, r7, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r6, -2048(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r7, -1024(r30)
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	andi r4, r4, 1
	bneq r4, zero, .LBB0_24
	j .LBB0_31
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	add.s r6, r2, r1
	addli r8, zero, 255
	add.s r12, r3, r1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r7, r6, r8
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r10, r12, r8
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r6, r6, 1
	storeli.w r6, -4096(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	lui r6, 5
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r8, r7, 11
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r7, r10, 11
	addli r10, r12, 1
	storeli.w r10, -3072(r30)
	add.s r6, r7, r6
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r10, zero, 2
	beq r11, r10, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[10:11], r9
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r14
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r9, zero, 1
	bneq r14, r9, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r13, zero, 6
	addli r14, zero, 3
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[8:9], r[10:11], r13
	xwait r14, 0
	add.ul r[10:11], r[15:16], r[8:9]
	addli r8, zero, 254
	blt.s r8, r12, .LBB0_10
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r12, zero, 5
	addli r8, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r9, zero, 2
	addli r17, zero, 17
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 4
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 7
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r13, 10
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
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 15
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 16
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 18
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 19
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 20
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 21
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 22
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 23
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 24
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 25
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 26
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 27
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 28
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 29
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 30
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 31
	dma_cfg zero, zero, r17, 10
	addli r17, zero, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r17, 3
	addli r17, zero, 128
	dma_cfg r17, zero, r8, 4
	dma_cfg r17, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	j .LBB0_10
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r7, zero, 5
	xwait r9, 0
	xwait r7, 0
	lock zero, zero
	addli r7, zero, 32
	ds_cfg r9, zero, 0
	addli r9, zero, 16
	ds_cfg r7, zero, 1
	ds_cfg r7, zero, 14
	ds_cfg r9, zero, 13
	shuffle_batch r8, r6, r7, 1
	addli r6, zero, 3
	unlock zero
	xsignal r6, 0
	addli r6, zero, 4
	xsignal r6, 0
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r6,  -2048(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r12,  -1024(r30)
	addli r9, zero, 255
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r7, r6, r9
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r13, r12, r9
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r6, r6, 1
	storeli.w r6, -2048(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r6,  -4116(r30)                # 4-byte Folded Reload
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r9, r7, 12
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r7, r13, 12
	addli r13, r12, 1
	storeli.w r13, -1024(r30)
	add.s r6, r7, r6
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r13, zero, 7
	beq r14, r13, .LBB0_22
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=2
	addli r13, zero, 6
	bneq r14, r13, .LBB0_25
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r17, zero, 13
	addli r14, zero, 7
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	sll.d r[8:9], r[10:11], r17
	xwait r14, 0
	add.ul r[10:11], r[27:28], r[8:9]
	addli r8, zero, 254
	blt.s r8, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r12, zero, 5
	addli r9, zero, 1
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r8, zero, 2
	addli r13, zero, 128
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 3
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 4
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r17, 10
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
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r8, 3
	addli r8, zero, 32
	dma_cfg r13, zero, r9, 4
	dma_cfg r13, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r8, 132
	addli r9, zero, 4
	addli r13, zero, 64
	addli r12, zero, 128
	addli r19, zero, 13
	ori r8, r8, 2112
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	lock zero, r9
	add.s r7, r7, r8
	addli r8, zero, 1
	dma_cfg r8, r8, zero, 0
	dma_cfg zero, r11, zero, 2
	dma_cfg r7, r10, r13, 3
	addli r7, zero, 32
	addli r10, zero, 256
	addli r11, zero, 2
	dma_cfg r12, r13, r8, 4
	dma_cfg r12, r10, r7, 5
	addli r10, zero, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 3
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r14, 10
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
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r13, 3
	dma_cfg r12, zero, r8, 4
	dma_cfg r12, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r11, 0
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r7, zero, 6
	xwait r7, 0
	addli r7, zero, 9
	xwait r7, 0
	addli r7, zero, 2
	lock zero, zero
	ds_cfg r7, zero, 0
	addli r7, zero, 32
	ds_cfg r7, zero, 1
	ds_cfg r7, zero, 14
	ds_cfg r7, zero, 13
	shuffle_coa r9, r6, r7, 2
	addli r6, zero, 7
	unlock zero
	xsignal r6, 0
	addli r6, zero, 8
	xsignal r6, 0
.LBB0_23:                               # %.thread20
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	andi r4, r4, 1
	beq r4, zero, .LBB0_31
.LBB0_24:                               # %.backedge
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	addli r1, r1, 1
	addli r9, zero, 1
	addli r4, zero, 0
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	j .LBB0_12
.LBB0_25:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	andi r4, r4, 1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	addli r6, zero, 4
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	bneq r11, r6, .LBB0_28
# %bb.26:                               #   in Loop: Header=BB0_12 Depth=2
	xwait r6, 0
	addli r6, zero, 8
	addli r7, zero, 1
	addli r10, zero, 16
	xwait r6, 0
	addli r6, zero, 32
	lock zero, r7
	mm_cfg r6, r6, r10, 0
	addli r6, zero, 2
	mm_cfg r6, r7, r7, 2
	beq r1, zero, .LBB0_29
# %bb.27:                               # %.preheader30
                                        #   in Loop: Header=BB0_12 Depth=2
	mm_acc r20, r8, r9, 8
	j .LBB0_30
.LBB0_28:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	bneq r4, zero, .LBB0_24
	j .LBB0_33
.LBB0_29:                               # %.preheader29
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	mm r20, r8, r9, 8
.LBB0_30:                               # %.thread20.thread43
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r6, zero, 1
	unlock r6
	addli r6, zero, 5
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	bneq r4, zero, .LBB0_24
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 124 7 is_stmt 1               # parallel-rne.mlir:124:7
	addli r1, zero, 4
	bneq r11, r1, .LBB0_33
.LBB0_32:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -4132(r30)              # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	j .LBB0_36
.LBB0_33:                               # %.thread42
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	bneq r11, r1, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 130 7 is_stmt 1               # parallel-rne.mlir:130:7
	storeli.w r1, -4132(r30)                # 4-byte Folded Spill
	xwait r19, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -4132(r30)              # 4-byte Folded Spill
.LBB0_36:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r1, zero, 255
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	xfence
	addli r3, zero, 31
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	csr_set csr5, r1
	addli r1, zero, 32
	zext_int2long r[3:4], r3
	sync_core
	zext_int2long r[1:2], r1
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	beq r11, zero, .LBB0_69
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r6, zero, 2
	beq r11, r6, .LBB0_100
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 1
	bneq r11, r6, .LBB0_131
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[6:7], zero
	addli r8, r30, -4128
	addli r9, zero, 1
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	addli r6, zero, 96
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r8, r30, -4112
	zext_int2long r[6:7], r6
	store.d r[6:7], 0(r8)                   # 8-byte Folded Spill
	addli r6, zero, 64
	xfence
	zext_int2long r[6:7], r6
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block98
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	loadli.w r6,  -4100(r30)                # 4-byte Folded Reload
	addli r9, r30, -4112
	andi r8, r6, 1
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	addli r9, zero, 0
	beq r8, zero, .LBB0_130
.LBB0_41:                               # %vector.memcheck90
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r9, -4100(r30)                # 4-byte Folded Spill
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	bneq r5, r20, .LBB0_48
# %bb.42:                               # %scalar.ph92.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_44
.LBB0_43:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	setlt.ul r12, r[8:9], r[3:4]
	.loc	1 188 13 is_stmt 1              # parallel-rne.mlir:188:13
	add.s r10, r5, r10
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r11, 0(r10)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r12, zero, .LBB0_40
.LBB0_44:                               # %scalar.ph92
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[10:11], r[8:9], r[6:7]
	slli r10, r10, 2
	add.s r11, r20, r10
	loads.w r12, 0(r11)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r13, r12, r21
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r11, r23, r13
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r11, zero, .LBB0_46
# %bb.45:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r13, r26, r13
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r13, zero, .LBB0_43
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r12, r11
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r13, r26, r13
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r13, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph92
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r12, 16
	andi r11, r11, 1
	add.s r11, r12, r11
	add.s r11, r11, r24
	and r11, r11, r25
	j .LBB0_43
.LBB0_48:                               # %vector.body94.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	addli r8, r30, -4128
	load.d r[15:16], 0(r8)                  # 8-byte Folded Reload
	j .LBB0_50
.LBB0_49:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	addli.d r[15:16], r[15:16], 4
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r9, r5, r10
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	seteq.d r8, r[15:16], r[1:2]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r28, 12(r9)
	stores.w r12, 8(r9)
	stores.w r18, 4(r9)
	stores.w r27, 0(r9)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	bneq r8, zero, .LBB0_40
.LBB0_50:                               # %vector.body94
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[8:9], r[15:16], r[6:7]
	slli r10, r8, 2
	add.s r13, r20, r10
	loads.w r8, 12(r13)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r11, r8, r21
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r9, r23, r11
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r9, zero, .LBB0_52
# %bb.51:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r8, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_50 Depth=3
	lui r9, 1024
	or r28, r8, r9
.LBB0_53:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r14, 8(r13)
	and r9, r14, r21
	setlt.u r12, r23, r9
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r12, zero, .LBB0_55
# %bb.54:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_50 Depth=3
	lui r12, 1024
	or r12, r14, r12
.LBB0_56:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r17, 4(r13)
	and r19, r17, r21
	setlt.u r18, r23, r19
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r18, zero, .LBB0_58
# %bb.57:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_50 Depth=3
	lui r18, 1024
	or r18, r17, r18
.LBB0_59:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r13, 0(r13)
	and r22, r13, r21
	setlt.u r27, r23, r22
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r27, zero, .LBB0_61
# %bb.60:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r13, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r22, r26, r22
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r22, zero, .LBB0_62
	j .LBB0_63
.LBB0_61:                               #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r13, r27
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r22, r26, r22
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r22, zero, .LBB0_63
.LBB0_62:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r22, r13, 16
	andi r22, r22, 1
	add.s r13, r13, r22
	add.s r13, r13, r24
	and r27, r13, r25
.LBB0_63:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r13, r26, r19
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r13, zero, .LBB0_66
# %bb.64:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r9
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r9, zero, .LBB0_67
.LBB0_65:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r9, zero, .LBB0_49
	j .LBB0_68
.LBB0_66:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r17, 16
	andi r13, r13, 1
	add.s r13, r17, r13
	add.s r13, r13, r24
	and r18, r13, r25
	setlt.u r9, r26, r9
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r9, zero, .LBB0_65
.LBB0_67:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r24
	and r12, r9, r25
	setlt.u r9, r26, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r9, zero, .LBB0_49
.LBB0_68:                               # %vector.body94
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r24
	and r28, r8, r25
	j .LBB0_49
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	xfence
	addli r7, zero, 1
	zext_int2long r[15:16], zero
	mfence { lm, sm, gm }
	j .LBB0_71
.LBB0_70:                               # %middle.block116
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 143 9                         # parallel-rne.mlir:143:9
	loadli.w r6,  -4100(r30)                # 4-byte Folded Reload
	addli.d r[15:16], r[1:2], 0
	addli r7, zero, 0
	andi r6, r6, 1
	beq r6, zero, .LBB0_99
.LBB0_71:                               # %vector.memcheck108
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_74 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r7, -4100(r30)                # 4-byte Folded Spill
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	bneq r5, r20, .LBB0_78
# %bb.72:                               # %scalar.ph110.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_74
.LBB0_73:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r6, r[7:8], r[3:4]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r9, r5, r9
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r10, 0(r9)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r6, zero, .LBB0_70
.LBB0_74:                               # %scalar.ph110
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[9:10], r[7:8], r[15:16]
	slli r9, r9, 2
	add.s r6, r20, r9
	loads.w r6, 0(r6)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r11, r6, r21
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r10, r23, r11
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r10, zero, .LBB0_76
# %bb.75:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r11, r26, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_73
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r6, r10
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r11, r26, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r11, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph110
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r6, 16
	andi r10, r10, 1
	add.s r6, r6, r10
	add.s r6, r6, r24
	and r10, r6, r25
	j .LBB0_73
.LBB0_78:                               # %vector.body112.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_80
.LBB0_79:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r7, r5, r7
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r8, r[18:19], r[1:2]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r10, 12(r7)
	stores.w r11, 8(r7)
	stores.w r13, 4(r7)
	stores.w r6, 0(r7)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r8, zero, .LBB0_70
.LBB0_80:                               # %vector.body112
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[6:7], r[18:19], r[15:16]
	slli r7, r6, 2
	add.s r17, r20, r7
	loads.w r8, 12(r17)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r12, r8, r21
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r6, r23, r12
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r6, zero, .LBB0_82
# %bb.81:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r8, 0
	j .LBB0_83
.LBB0_82:                               #   in Loop: Header=BB0_80 Depth=3
	lui r6, 1024
	or r10, r8, r6
.LBB0_83:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r14, 8(r17)
	and r27, r14, r21
	setlt.u r6, r23, r27
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r6, zero, .LBB0_85
# %bb.84:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r14, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_80 Depth=3
	lui r6, 1024
	or r11, r14, r6
.LBB0_86:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r9, 4(r17)
	and r28, r9, r21
	setlt.u r6, r23, r28
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r6, zero, .LBB0_88
# %bb.87:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r9, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_80 Depth=3
	lui r6, 1024
	or r13, r9, r6
.LBB0_89:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r17, 0(r17)
	and r22, r17, r21
	setlt.u r6, r23, r22
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r6, zero, .LBB0_91
# %bb.90:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r17, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r22, r26, r22
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r22, zero, .LBB0_92
	j .LBB0_93
.LBB0_91:                               #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r17, r6
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r22, r26, r22
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r22, zero, .LBB0_93
.LBB0_92:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r24
	and r6, r6, r25
.LBB0_93:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	setlt.u r17, r26, r28
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r17, zero, .LBB0_96
# %bb.94:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r27
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r9, zero, .LBB0_97
.LBB0_95:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r12
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r9, zero, .LBB0_79
	j .LBB0_98
.LBB0_96:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	add.s r9, r9, r24
	and r13, r9, r25
	setlt.u r9, r26, r27
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r9, zero, .LBB0_95
.LBB0_97:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r24
	and r11, r9, r25
	setlt.u r9, r26, r12
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r9, zero, .LBB0_79
.LBB0_98:                               # %vector.body112
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r8, 16
	andi r9, r9, 1
	add.s r8, r8, r9
	add.s r8, r8, r24
	and r10, r8, r25
	j .LBB0_79
.LBB0_99:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r6, zero, 2
	bneq r11, r6, .LBB0_38
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 128
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	xfence
	addli r7, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[15:16], r6
	j .LBB0_102
.LBB0_101:                              # %middle.block107
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 201 9                         # parallel-rne.mlir:201:9
	loadli.w r6,  -4100(r30)                # 4-byte Folded Reload
	addli r7, zero, 160
	zext_int2long r[15:16], r7
	addli r7, zero, 0
	andi r6, r6, 1
	beq r6, zero, .LBB0_130
.LBB0_102:                              # %vector.memcheck99
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_105 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r7, -4100(r30)                # 4-byte Folded Spill
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	bneq r5, r20, .LBB0_109
# %bb.103:                              # %scalar.ph101.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_105
.LBB0_104:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	setlt.ul r6, r[7:8], r[3:4]
	.loc	1 217 13 is_stmt 1              # parallel-rne.mlir:217:13
	add.s r9, r5, r9
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r10, 0(r9)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	beq r6, zero, .LBB0_101
.LBB0_105:                              # %scalar.ph101
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[9:10], r[7:8], r[15:16]
	slli r9, r9, 2
	add.s r6, r20, r9
	loads.w r6, 0(r6)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r11, r6, r21
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r10, r23, r11
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r10, zero, .LBB0_107
# %bb.106:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r11, r26, r11
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r11, zero, .LBB0_104
	j .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r6, r10
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r11, r26, r11
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r11, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph101
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r6, 16
	andi r10, r10, 1
	add.s r6, r6, r10
	add.s r6, r6, r24
	and r10, r6, r25
	j .LBB0_104
.LBB0_109:                              # %vector.body103.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_111
.LBB0_110:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r7, r5, r7
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	seteq.d r9, r[18:19], r[1:2]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r8, 12(r7)
	stores.w r11, 8(r7)
	stores.w r13, 4(r7)
	stores.w r6, 0(r7)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	bneq r9, zero, .LBB0_101
.LBB0_111:                              # %vector.body103
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[6:7], r[18:19], r[15:16]
	slli r7, r6, 2
	add.s r17, r20, r7
	loads.w r10, 12(r17)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r12, r10, r21
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r6, r23, r12
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r6, zero, .LBB0_113
# %bb.112:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_111 Depth=3
	lui r6, 1024
	or r8, r10, r6
.LBB0_114:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r14, 8(r17)
	and r27, r14, r21
	setlt.u r6, r23, r27
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r6, zero, .LBB0_116
# %bb.115:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r14, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_111 Depth=3
	lui r6, 1024
	or r11, r14, r6
.LBB0_117:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r9, 4(r17)
	and r28, r9, r21
	setlt.u r6, r23, r28
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r6, zero, .LBB0_119
# %bb.118:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r9, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_111 Depth=3
	lui r6, 1024
	or r13, r9, r6
.LBB0_120:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r17, 0(r17)
	and r22, r17, r21
	setlt.u r6, r23, r22
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r6, zero, .LBB0_122
# %bb.121:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r17, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r22, r26, r22
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r22, zero, .LBB0_123
	j .LBB0_124
.LBB0_122:                              #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r17, r6
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r22, r26, r22
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r22, zero, .LBB0_124
.LBB0_123:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r24
	and r6, r6, r25
.LBB0_124:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	setlt.u r17, r26, r28
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r17, zero, .LBB0_127
# %bb.125:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r27
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r9, zero, .LBB0_128
.LBB0_126:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r12
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_110
	j .LBB0_129
.LBB0_127:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r9, 16
	andi r13, r13, 1
	add.s r9, r9, r13
	add.s r9, r9, r24
	and r13, r9, r25
	setlt.u r9, r26, r27
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_126
.LBB0_128:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r24
	and r11, r9, r25
	setlt.u r9, r26, r12
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r9, zero, .LBB0_110
.LBB0_129:                              # %vector.body103
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	j .LBB0_110
.LBB0_130:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_131:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	loadli.w r6,  -4132(r30)                # 4-byte Folded Reload
	bneq r6, zero, .LBB0_166
# %bb.132:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	addli r6, zero, 4
	beq r11, r6, .LBB0_197
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	addli r6, zero, 7
	beq r11, r6, .LBB0_228
.LBB0_134:                              #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 6
	beq r11, r6, .LBB0_258
# %bb.135:                              #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 5
	bneq r11, r6, .LBB0_289
# %bb.136:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 320
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	xfence
	addli r7, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[15:16], r6
	j .LBB0_138
.LBB0_137:                              # %middle.block
                                        #   in Loop: Header=BB0_138 Depth=2
	.loc	1 288 9 is_stmt 1               # parallel-rne.mlir:288:9
	loadli.w r6,  -4100(r30)                # 4-byte Folded Reload
	addli r7, zero, 352
	zext_int2long r[15:16], r7
	addli r7, zero, 0
	andi r6, r6, 1
	beq r6, zero, .LBB0_288
.LBB0_138:                              # %vector.memcheck
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_141 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r7, -4100(r30)                # 4-byte Folded Spill
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	bneq r5, r20, .LBB0_145
# %bb.139:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_138 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_141
.LBB0_140:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	setlt.ul r6, r[7:8], r[3:4]
	.loc	1 304 13 is_stmt 1              # parallel-rne.mlir:304:13
	add.s r9, r5, r9
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r10, 0(r9)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	beq r6, zero, .LBB0_137
.LBB0_141:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[9:10], r[7:8], r[15:16]
	slli r9, r9, 2
	add.s r6, r20, r9
	loads.w r6, 0(r6)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r11, r6, r21
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r10, r23, r11
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r10, zero, .LBB0_143
# %bb.142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r11, r26, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r11, zero, .LBB0_140
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r6, r10
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r11, r26, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r11, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r6, 16
	andi r10, r10, 1
	add.s r6, r6, r10
	add.s r6, r6, r24
	and r10, r6, r25
	j .LBB0_140
.LBB0_145:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_138 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_147
.LBB0_146:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r7, r5, r7
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	seteq.d r9, r[18:19], r[1:2]
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r8, 12(r7)
	stores.w r12, 8(r7)
	stores.w r13, 4(r7)
	stores.w r6, 0(r7)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	bneq r9, zero, .LBB0_137
.LBB0_147:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[6:7], r[18:19], r[15:16]
	slli r7, r6, 2
	add.s r17, r20, r7
	loads.w r10, 12(r17)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r11, r10, r21
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r6, r23, r11
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r6, zero, .LBB0_149
# %bb.148:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_147 Depth=3
	lui r6, 1024
	or r8, r10, r6
.LBB0_150:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r14, 8(r17)
	and r9, r14, r21
	setlt.u r6, r23, r9
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r6, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_147 Depth=3
	lui r6, 1024
	or r12, r14, r6
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r27, 4(r17)
	and r28, r27, r21
	setlt.u r6, r23, r28
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r6, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_147 Depth=3
	lui r6, 1024
	or r13, r27, r6
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r17, 0(r17)
	and r22, r17, r21
	setlt.u r6, r23, r22
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r6, zero, .LBB0_162
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r17, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r22, r26, r22
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r22, zero, .LBB0_159
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r24
	and r6, r6, r25
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	setlt.u r17, r26, r28
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r17, zero, .LBB0_163
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r9
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r9, zero, .LBB0_164
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r9, zero, .LBB0_146
	j .LBB0_165
.LBB0_162:                              #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r17, r6
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r22, r26, r22
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r22, zero, .LBB0_158
	j .LBB0_159
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r27, 16
	andi r13, r13, 1
	add.s r13, r27, r13
	add.s r13, r13, r24
	and r13, r13, r25
	setlt.u r9, r26, r9
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r9, zero, .LBB0_161
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r24
	and r12, r9, r25
	setlt.u r9, r26, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r9, zero, .LBB0_146
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	j .LBB0_146
.LBB0_166:                              #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 192
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	xfence
	addli r7, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[15:16], r6
	j .LBB0_168
.LBB0_167:                              # %middle.block89
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 230 9                         # parallel-rne.mlir:230:9
	loadli.w r6,  -4100(r30)                # 4-byte Folded Reload
	addli r7, zero, 224
	zext_int2long r[15:16], r7
	addli r7, zero, 0
	andi r6, r6, 1
	beq r6, zero, .LBB0_196
.LBB0_168:                              # %vector.memcheck81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_171 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r7, -4100(r30)                # 4-byte Folded Spill
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	bneq r5, r20, .LBB0_175
# %bb.169:                              # %scalar.ph83.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_171
.LBB0_170:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	setlt.ul r6, r[7:8], r[3:4]
	.loc	1 246 13 is_stmt 1              # parallel-rne.mlir:246:13
	add.s r9, r5, r9
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r10, 0(r9)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	beq r6, zero, .LBB0_167
.LBB0_171:                              # %scalar.ph83
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[9:10], r[7:8], r[15:16]
	slli r9, r9, 2
	add.s r6, r20, r9
	loads.w r6, 0(r6)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r11, r6, r21
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r10, r23, r11
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r10, zero, .LBB0_173
# %bb.172:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r11, r26, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r11, zero, .LBB0_170
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r6, r10
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r11, r26, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r11, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph83
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r6, 16
	andi r10, r10, 1
	add.s r6, r6, r10
	add.s r6, r6, r24
	and r10, r6, r25
	j .LBB0_170
.LBB0_175:                              # %vector.body85.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r7, r5, r7
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	seteq.d r9, r[18:19], r[1:2]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r8, 12(r7)
	stores.w r12, 8(r7)
	stores.w r13, 4(r7)
	stores.w r6, 0(r7)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	bneq r9, zero, .LBB0_167
.LBB0_177:                              # %vector.body85
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[6:7], r[18:19], r[15:16]
	slli r7, r6, 2
	add.s r17, r20, r7
	loads.w r10, 12(r17)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r11, r10, r21
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r6, r23, r11
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r6, zero, .LBB0_179
# %bb.178:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_177 Depth=3
	lui r6, 1024
	or r8, r10, r6
.LBB0_180:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r14, 8(r17)
	and r9, r14, r21
	setlt.u r6, r23, r9
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r6, zero, .LBB0_182
# %bb.181:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_177 Depth=3
	lui r6, 1024
	or r12, r14, r6
.LBB0_183:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r27, 4(r17)
	and r28, r27, r21
	setlt.u r6, r23, r28
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r6, zero, .LBB0_185
# %bb.184:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_177 Depth=3
	lui r6, 1024
	or r13, r27, r6
.LBB0_186:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r17, 0(r17)
	and r22, r17, r21
	setlt.u r6, r23, r22
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r6, zero, .LBB0_192
# %bb.187:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r17, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r22, r26, r22
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r22, zero, .LBB0_189
.LBB0_188:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r24
	and r6, r6, r25
.LBB0_189:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	setlt.u r17, r26, r28
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r17, zero, .LBB0_193
# %bb.190:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r9
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r9, zero, .LBB0_194
.LBB0_191:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r9, zero, .LBB0_176
	j .LBB0_195
.LBB0_192:                              #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r17, r6
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r22, r26, r22
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r22, zero, .LBB0_188
	j .LBB0_189
.LBB0_193:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r27, 16
	andi r13, r13, 1
	add.s r13, r27, r13
	add.s r13, r13, r24
	and r13, r13, r25
	setlt.u r9, r26, r9
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r9, zero, .LBB0_191
.LBB0_194:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r24
	and r12, r9, r25
	setlt.u r9, r26, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r9, zero, .LBB0_176
.LBB0_195:                              # %vector.body85
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	j .LBB0_176
.LBB0_196:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	mfence { sm }
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	addli r6, zero, 4
	bneq r11, r6, .LBB0_133
.LBB0_197:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 256
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	xfence
	addli r7, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[15:16], r6
	j .LBB0_199
.LBB0_198:                              # %middle.block80
                                        #   in Loop: Header=BB0_199 Depth=2
	.loc	1 259 9 is_stmt 1               # parallel-rne.mlir:259:9
	loadli.w r6,  -4100(r30)                # 4-byte Folded Reload
	addli r7, zero, 288
	zext_int2long r[15:16], r7
	addli r7, zero, 0
	andi r6, r6, 1
	beq r6, zero, .LBB0_227
.LBB0_199:                              # %vector.memcheck72
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_202 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r7, -4100(r30)                # 4-byte Folded Spill
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	bneq r5, r20, .LBB0_206
# %bb.200:                              # %scalar.ph74.preheader
                                        #   in Loop: Header=BB0_199 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_202
.LBB0_201:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	setlt.ul r6, r[7:8], r[3:4]
	.loc	1 275 13 is_stmt 1              # parallel-rne.mlir:275:13
	add.s r9, r5, r9
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r10, 0(r9)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	beq r6, zero, .LBB0_198
.LBB0_202:                              # %scalar.ph74
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_199 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[9:10], r[7:8], r[15:16]
	slli r9, r9, 2
	add.s r6, r20, r9
	loads.w r6, 0(r6)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r11, r6, r21
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r10, r23, r11
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r10, zero, .LBB0_204
# %bb.203:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r11, r26, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r11, zero, .LBB0_201
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r6, r10
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r11, r26, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r11, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r6, 16
	andi r10, r10, 1
	add.s r6, r6, r10
	add.s r6, r6, r24
	and r10, r6, r25
	j .LBB0_201
.LBB0_206:                              # %vector.body76.preheader
                                        #   in Loop: Header=BB0_199 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_208
.LBB0_207:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	add.s r7, r5, r7
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	seteq.d r9, r[18:19], r[1:2]
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r8, 12(r7)
	stores.w r12, 8(r7)
	stores.w r13, 4(r7)
	stores.w r6, 0(r7)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	bneq r9, zero, .LBB0_198
.LBB0_208:                              # %vector.body76
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_199 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[6:7], r[18:19], r[15:16]
	slli r7, r6, 2
	add.s r17, r20, r7
	loads.w r10, 12(r17)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r11, r10, r21
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r6, r23, r11
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r6, zero, .LBB0_210
# %bb.209:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_208 Depth=3
	lui r6, 1024
	or r8, r10, r6
.LBB0_211:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r14, 8(r17)
	and r9, r14, r21
	setlt.u r6, r23, r9
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r6, zero, .LBB0_213
# %bb.212:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_208 Depth=3
	lui r6, 1024
	or r12, r14, r6
.LBB0_214:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r27, 4(r17)
	and r28, r27, r21
	setlt.u r6, r23, r28
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r6, zero, .LBB0_216
# %bb.215:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_208 Depth=3
	lui r6, 1024
	or r13, r27, r6
.LBB0_217:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r17, 0(r17)
	and r22, r17, r21
	setlt.u r6, r23, r22
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r6, zero, .LBB0_223
# %bb.218:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r17, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r22, r26, r22
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r22, zero, .LBB0_220
.LBB0_219:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r24
	and r6, r6, r25
.LBB0_220:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	setlt.u r17, r26, r28
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r17, zero, .LBB0_224
# %bb.221:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r9
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r9, zero, .LBB0_225
.LBB0_222:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r9, zero, .LBB0_207
	j .LBB0_226
.LBB0_223:                              #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r17, r6
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r22, r26, r22
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r22, zero, .LBB0_219
	j .LBB0_220
.LBB0_224:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r13, r27, 16
	andi r13, r13, 1
	add.s r13, r27, r13
	add.s r13, r13, r24
	and r13, r13, r25
	setlt.u r9, r26, r9
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r9, zero, .LBB0_222
.LBB0_225:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r24
	and r12, r9, r25
	setlt.u r9, r26, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r9, zero, .LBB0_207
.LBB0_226:                              # %vector.body76
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	j .LBB0_207
.LBB0_227:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	mfence { sm }
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	addli r6, zero, 7
	bneq r11, r6, .LBB0_134
.LBB0_228:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 448
	.loc	1 338 7 is_stmt 1               # parallel-rne.mlir:338:7
	xfence
	addli r7, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[15:16], r6
	j .LBB0_230
.LBB0_229:                              # %middle.block71
                                        #   in Loop: Header=BB0_230 Depth=2
	.loc	1 346 9                         # parallel-rne.mlir:346:9
	loadli.w r6,  -4100(r30)                # 4-byte Folded Reload
	addli r7, zero, 480
	zext_int2long r[15:16], r7
	addli r7, zero, 0
	andi r6, r6, 1
	beq r6, zero, .LBB0_288
.LBB0_230:                              # %vector.memcheck63
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_233 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r7, -4100(r30)                # 4-byte Folded Spill
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	bneq r5, r20, .LBB0_237
# %bb.231:                              # %scalar.ph65.preheader
                                        #   in Loop: Header=BB0_230 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_233
.LBB0_232:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	setlt.ul r6, r[7:8], r[3:4]
	.loc	1 362 13 is_stmt 1              # parallel-rne.mlir:362:13
	add.s r9, r5, r9
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r10, 0(r9)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	beq r6, zero, .LBB0_229
.LBB0_233:                              # %scalar.ph65
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_230 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[9:10], r[7:8], r[15:16]
	slli r9, r9, 2
	add.s r6, r20, r9
	loads.w r6, 0(r6)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r11, r6, r21
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r10, r23, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r10, zero, .LBB0_235
# %bb.234:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r11, r26, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r11, zero, .LBB0_232
	j .LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r6, r10
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r11, r26, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r11, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph65
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r6, 16
	andi r10, r10, 1
	add.s r6, r6, r10
	add.s r6, r6, r24
	and r10, r6, r25
	j .LBB0_232
.LBB0_237:                              # %vector.body67.preheader
                                        #   in Loop: Header=BB0_230 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_239
.LBB0_238:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	add.s r7, r5, r7
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	seteq.d r9, r[18:19], r[1:2]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r8, 12(r7)
	stores.w r12, 8(r7)
	stores.w r13, 4(r7)
	stores.w r6, 0(r7)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	bneq r9, zero, .LBB0_229
.LBB0_239:                              # %vector.body67
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_230 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[6:7], r[18:19], r[15:16]
	slli r7, r6, 2
	add.s r17, r20, r7
	loads.w r10, 12(r17)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r11, r10, r21
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r6, r23, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r6, zero, .LBB0_241
# %bb.240:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_242
.LBB0_241:                              #   in Loop: Header=BB0_239 Depth=3
	lui r6, 1024
	or r8, r10, r6
.LBB0_242:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r14, 8(r17)
	and r9, r14, r21
	setlt.u r6, r23, r9
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r6, zero, .LBB0_244
# %bb.243:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_239 Depth=3
	lui r6, 1024
	or r12, r14, r6
.LBB0_245:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r27, 4(r17)
	and r28, r27, r21
	setlt.u r6, r23, r28
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r6, zero, .LBB0_247
# %bb.246:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_239 Depth=3
	lui r6, 1024
	or r13, r27, r6
.LBB0_248:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r17, 0(r17)
	and r22, r17, r21
	setlt.u r6, r23, r22
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r6, zero, .LBB0_250
# %bb.249:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r17, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r22, r26, r22
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r22, zero, .LBB0_251
	j .LBB0_252
.LBB0_250:                              #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r17, r6
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r22, r26, r22
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r22, zero, .LBB0_252
.LBB0_251:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r24
	and r6, r6, r25
.LBB0_252:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	setlt.u r17, r26, r28
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r17, zero, .LBB0_255
# %bb.253:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r9
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r9, zero, .LBB0_256
.LBB0_254:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r9, zero, .LBB0_238
	j .LBB0_257
.LBB0_255:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r27, 16
	andi r13, r13, 1
	add.s r13, r27, r13
	add.s r13, r13, r24
	and r13, r13, r25
	setlt.u r9, r26, r9
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r9, zero, .LBB0_254
.LBB0_256:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r24
	and r12, r9, r25
	setlt.u r9, r26, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r9, zero, .LBB0_238
.LBB0_257:                              # %vector.body67
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	j .LBB0_238
.LBB0_258:                              #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 384
	.loc	1 309 7 is_stmt 1               # parallel-rne.mlir:309:7
	xfence
	addli r7, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[15:16], r6
	j .LBB0_260
.LBB0_259:                              # %middle.block62
                                        #   in Loop: Header=BB0_260 Depth=2
	.loc	1 317 9                         # parallel-rne.mlir:317:9
	loadli.w r6,  -4100(r30)                # 4-byte Folded Reload
	addli r7, zero, 416
	zext_int2long r[15:16], r7
	addli r7, zero, 0
	andi r6, r6, 1
	beq r6, zero, .LBB0_288
.LBB0_260:                              # %vector.memcheck54
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_263 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r7, -4100(r30)                # 4-byte Folded Spill
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	bneq r5, r20, .LBB0_267
# %bb.261:                              # %scalar.ph56.preheader
                                        #   in Loop: Header=BB0_260 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_263
.LBB0_262:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	setlt.ul r6, r[7:8], r[3:4]
	.loc	1 333 13 is_stmt 1              # parallel-rne.mlir:333:13
	add.s r9, r5, r9
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r10, 0(r9)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	beq r6, zero, .LBB0_259
.LBB0_263:                              # %scalar.ph56
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[9:10], r[7:8], r[15:16]
	slli r9, r9, 2
	add.s r6, r20, r9
	loads.w r6, 0(r6)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r11, r6, r21
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r10, r23, r11
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r10, zero, .LBB0_265
# %bb.264:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r6, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r11, r26, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r11, zero, .LBB0_262
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r6, r10
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r11, r26, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r11, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph56
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r6, 16
	andi r10, r10, 1
	add.s r6, r6, r10
	add.s r6, r6, r24
	and r10, r6, r25
	j .LBB0_262
.LBB0_267:                              # %vector.body58.preheader
                                        #   in Loop: Header=BB0_260 Depth=2
	zext_int2long r[18:19], zero
	j .LBB0_269
.LBB0_268:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	add.s r7, r5, r7
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	seteq.d r9, r[18:19], r[1:2]
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r8, 12(r7)
	stores.w r12, 8(r7)
	stores.w r13, 4(r7)
	stores.w r6, 0(r7)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	bneq r9, zero, .LBB0_259
.LBB0_269:                              # %vector.body58
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[6:7], r[18:19], r[15:16]
	slli r7, r6, 2
	add.s r17, r20, r7
	loads.w r10, 12(r17)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r11, r10, r21
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r6, r23, r11
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r6, zero, .LBB0_271
# %bb.270:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r10, 0
	j .LBB0_272
.LBB0_271:                              #   in Loop: Header=BB0_269 Depth=3
	lui r6, 1024
	or r8, r10, r6
.LBB0_272:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r14, 8(r17)
	and r9, r14, r21
	setlt.u r6, r23, r9
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r6, zero, .LBB0_274
# %bb.273:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r14, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_269 Depth=3
	lui r6, 1024
	or r12, r14, r6
.LBB0_275:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r27, 4(r17)
	and r28, r27, r21
	setlt.u r6, r23, r28
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r6, zero, .LBB0_277
# %bb.276:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r27, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_269 Depth=3
	lui r6, 1024
	or r13, r27, r6
.LBB0_278:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r17, 0(r17)
	and r22, r17, r21
	setlt.u r6, r23, r22
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r6, zero, .LBB0_280
# %bb.279:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r17, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r22, r26, r22
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r22, zero, .LBB0_281
	j .LBB0_282
.LBB0_280:                              #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r6, 1024
	or r6, r17, r6
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r22, r26, r22
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r22, zero, .LBB0_282
.LBB0_281:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r17, 16
	andi r6, r6, 1
	add.s r6, r17, r6
	add.s r6, r6, r24
	and r6, r6, r25
.LBB0_282:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	setlt.u r17, r26, r28
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r17, zero, .LBB0_285
# %bb.283:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r9
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r9, zero, .LBB0_286
.LBB0_284:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r26, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r9, zero, .LBB0_268
	j .LBB0_287
.LBB0_285:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r13, r27, 16
	andi r13, r13, 1
	add.s r13, r27, r13
	add.s r13, r13, r24
	and r13, r13, r25
	setlt.u r9, r26, r9
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r9, zero, .LBB0_284
.LBB0_286:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r24
	and r12, r9, r25
	setlt.u r9, r26, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r9, zero, .LBB0_268
.LBB0_287:                              # %vector.body58
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r24
	and r8, r8, r25
	j .LBB0_268
.LBB0_288:                              # %.sink.split48
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_289:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 367 7 is_stmt 1               # parallel-rne.mlir:367:7
	addli r3, zero, 255
	csr_set csr5, r3
	sync_core
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	loadli.w r3,  -4132(r30)                # 4-byte Folded Reload
	bneq r3, zero, .LBB0_5
# %bb.290:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r15,  -4148(r30)               # 4-byte Folded Reload
	addli r14, zero, 13
	.loc	1 385 7 is_stmt 1               # parallel-rne.mlir:385:7
	bneq r11, zero, .LBB0_6
# %bb.291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	loadli.w r3,  -4176(r30)                # 4-byte Folded Reload
	addli r6, zero, 96
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	loadli.w r8,  -4172(r30)                # 4-byte Folded Reload
	zext_int2long r[10:11], zero
	addli r13, zero, 12
	addli r12, zero, 1
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	ori r5, r5, 64
	zext_int2long r[6:7], r6
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	zext_int2long r[3:4], r3
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	sext_int2long r[8:9], r8
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	min.ul r[6:7], r[3:4], r[6:7]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.sl r[10:11], r[8:9], r[10:11]
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	addli.d r[6:7], r[6:7], 32
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	max.ul r[6:7], r[6:7], r[3:4]
	sub.sl r[3:4], r[6:7], r[3:4]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	addli.d r[6:7], r[10:11], 16
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r10, r30, -4168
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.ul r[1:2], r[3:4], r[1:2]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	max.sl r[3:4], r[6:7], r[8:9]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[6:7], 0(r10)                   # 8-byte Folded Reload
	addli r10, r30, -4160
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	sub.sl r[3:4], r[3:4], r[8:9]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[8:9], 16(r30)
	sll.d r[6:7], r[6:7], r13
	add.ul r[6:7], r[8:9], r[6:7]
	load.d r[8:9], 0(r10)                   # 8-byte Folded Reload
	xwait r13, 0
	addli r10, zero, 16
	zext_int2long r[10:11], r10
	sll.d r[8:9], r[8:9], r12
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	min.sl r[3:4], r[3:4], r[10:11]
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	add.ul r[6:7], r[6:7], r[8:9]
	addli r8, zero, 5
	addli r9, zero, 64
	lock zero, r8
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r12, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r5, r9, 3
	addli r5, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r5, r5, 5
	andi r1, r1, 62
	dma_cfg r9, r2, r5, 4
	addli r5, zero, 256
	dma_cfg r5, r2, r3, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r14, 0
	j .LBB0_6
.LBB0_292:                              # %._crit_edge
	.loc	1 387 5                         # parallel-rne.mlir:387:5
	xsignal zero, 0
	bneq r11, zero, .LBB0_294
# %bb.293:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 387 5                         # parallel-rne.mlir:387:5
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
	.loc	1 388 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:388:5
	addli sp, sp, 4184
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
	.long	4248                            # 0x1098
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-23w_crky" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
