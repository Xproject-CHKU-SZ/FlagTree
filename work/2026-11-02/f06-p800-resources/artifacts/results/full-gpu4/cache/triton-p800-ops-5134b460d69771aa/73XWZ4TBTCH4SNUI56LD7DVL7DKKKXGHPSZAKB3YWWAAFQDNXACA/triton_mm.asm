	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/uh" "cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py"
	.loc	1 22 0                          # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3704
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	core_id r8
	addli r30, sp, 3640
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:0:26
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r2, zero, 2
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	addli r3, zero, 3
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -772(r30)
	storeli.w zero, -1796(r30)
	storeli.w zero, -2568(r30)
	storeli.w zero, -3592(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	min.s r2, r2, r3
	ble.s r2, r1, .LBB0_36
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -3624
	loadli.w r5,  -772(r30)
	loadli.w r28,  -1796(r30)
	loadli.w r10,  -2568(r30)
	loadli.w r27,  -3592(r30)
	addli r11, zero, 32
	addli r12, zero, 1
	addli r14, zero, 6
	addli r15, zero, 4
	addli r17, zero, 255
	addli r18, zero, 192
	lui r19, 200
	addli r20, zero, 7
	addli r22, zero, 3
	addli r23, zero, 64
	addli r9, zero, 2
	lui r13, 8
	addli r16, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[3:4], r1
	j .LBB0_9
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:101:67
	addli r27, r26, 1
	addli r28, r7, 1
	addli r5, r6, 1
	.loc	1 73 26                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	addli r1, zero, 10
.LBB0_6:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 0 is_stmt 0                 # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:0:0
	xsignal r1, 0
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, r30, -3600
	loadli.w r16,  -3604(r30)               # 4-byte Folded Reload
	addli r9, zero, 2
	lui r13, 8
.LBB0_8:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	addli r6, r30, -3624
	addli.d r[3:4], r[3:4], 1
	addli r16, r16, 1
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	setlt.sl r1, r[3:4], r[1:2]
	beq r1, zero, .LBB0_36
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r1,  32(r30)
	addli r2, r30, -3600
	.loc	1 54 50 is_stmt 1               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:54:50
	addli r6, zero, 8
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	div.s r1, r3, r1
	div.s r3, r1, r2
	.loc	1 53 22                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:53:22
	div.s r4, r3, r11
	.loc	1 54 41                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:54:30
	sub.s r2, r12, r1
	.loc	1 54 50                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:54:50
	min.s r6, r2, r6
	.loc	1 55 40 is_stmt 1               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:55:40
	mod.s r2, r3, r6
	.loc	1 55 34 is_stmt 0               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:55:34
	add.s r1, r1, r2
	.loc	1 73 26 is_stmt 1               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	addli r2, r30, -3616
	.loc	1 95 15                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:95:15
	zext_int2long r[24:25], r1
	.loc	1 73 26                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	store.d r[24:25], 0(r2)                 # 8-byte Folded Spill
	bneq r8, r15, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r2, zero, 11
	addli r25, zero, 128
	xwait r2, 0
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:0:26
	beq r8, r12, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	addli r25, zero, 128
	bneq r8, r9, .LBB0_15
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r2, zero, 1
	addli r4, zero, 5
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:81:20
	mod.s r1, r10, r18
	.loc	1 89 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	mod.s r3, r27, r17
	xwait r9, 0
	xwait r4, 0
	lock zero, zero
	addli r27, r27, 1
	.loc	1 81 20                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	ds_cfg r22, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:81:20
	slli r1, r1, 12
	.loc	1 89 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	slli r3, r3, 11
	.loc	1 81 20                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:81:20
	add.s r1, r1, r13
	.loc	1 89 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	shuffle_batch r3, r1, r11, 1
	.loc	1 73 26                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	andi r1, r2, 1
	addli r2, zero, 0
	.loc	1 89 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	unlock zero
	xsignal r22, 0
	xsignal r15, 0
	bneq r1, zero, .LBB0_14
	j .LBB0_32
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:0:25
	slli r4, r4, 5
	slli r1, r1, 5
	addli r13, zero, 1
	storeli.w r16, -3604(r30)               # 4-byte Folded Spill
	addli r2, zero, 0
	addli r21, zero, 0
	sub.s r3, r3, r4
	mod.s r4, r16, r15
	storeli.w r1, -3636(r30)                # 4-byte Folded Spill
	div.s r3, r3, r6
	slli r16, r4, 13
	zext_int2long r[6:7], r3
	slli r1, r3, 6
	.loc	1 73 26 is_stmt 1               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	load.d r[3:4], 8(r30)
	storeli.w r1, -3640(r30)                # 4-byte Folded Spill
	sll.d r[6:7], r[6:7], r14
	addli r1, r30, -3632
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r13
	add.ul r[3:4], r[3:4], r[6:7]
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	addli r2, zero, 9
	xwait r14, 0
	xwait r2, 0
	lock zero, zero
	ds_cfg r22, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r24, r1, r11, 2
	addli r1, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r1, 0
	.loc	1 73 26                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	andi r1, r13, 1
	beq r1, zero, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	addli r21, r21, 1
	lui r2, 4
	addli r13, zero, 0
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r5, r21
	add.s r7, r28, r21
	add.s r26, r27, r21
	.loc	1 86 20                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:86:20
	mod.s r1, r6, r18
	.loc	1 89 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	mod.s r24, r7, r17
	.loc	1 86 20                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:86:20
	slli r1, r1, 12
	.loc	1 89 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	slli r24, r24, 12
	.loc	1 86 20                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:86:20
	add.s r1, r1, r19
	beq r8, r20, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:0:20
	bneq r8, r14, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:86:20
	zext_int2long r[8:9], r2
	xwait r20, 0
	lock zero, r15
	dma_cfg r12, r12, zero, 0
	add.ul r[8:9], r[3:4], r[8:9]
	dma_cfg zero, r9, zero, 2
	dma_cfg r1, r8, r25, 3
	addli r1, zero, 512
	.loc	1 73 26 is_stmt 1               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	core_id r8
	.loc	1 86 20                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:86:20
	dma_cfg r25, r1, r11, 4
	dma_run zero
	unlock r15
	xsignal r14, 0
	.loc	1 73 26                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	andi r1, r13, 1
	bneq r1, zero, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:0:26
	andi r2, r13, 1
	.loc	1 89 25 is_stmt 1               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	bneq r8, r15, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:0:25
	mod.s r1, r26, r17
	.loc	1 89 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	addli r9, zero, 8
	xwait r15, 0
	xwait r9, 0
	lock zero, r12
	addli r9, zero, 2
	mm_cfg r23, r11, r11, 0
	mm_cfg r12, r9, r12, 2
	slli r1, r1, 11
	beq r21, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r16, r1, r24, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	bneq r2, zero, .LBB0_17
	j .LBB0_33
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:89:25
	mm r16, r1, r24, 5
.LBB0_26:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r1, zero, 5
	unlock r12
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 73 26                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	bneq r2, zero, .LBB0_17
# %bb.27:                               # %.split17.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:86:20
	addli r10, r10, 2
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r10, r10, 2
	.loc	1 73 26                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	beq r8, r15, .LBB0_5
	j .LBB0_34
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:0:26
	addli r4, r30, -3616
	addli r1, zero, 12
	addli r6, zero, 0
	addli r21, zero, 128
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	sll.d r[1:2], r[2:3], r1
	load.d r[3:4], 0(r30)
	add.ul r[2:3], r[3:4], r[1:2]
	addli r4, zero, 1
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:81:20
	mod.s r1, r10, r18
	.loc	1 86 25                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:86:25
	zext_int2long r[6:7], r6
	.loc	1 81 20                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:81:20
	xwait r22, 0
	lock zero, r15
	addli r10, r10, 1
	dma_cfg r12, r12, zero, 0
	sll.d r[6:7], r[6:7], r12
	add.ul r[6:7], r[2:3], r[6:7]
	slli r1, r1, 12
	dma_cfg zero, r7, zero, 2
	add.s r1, r1, r13
	dma_cfg r1, r6, r23, 3
	addli r6, zero, 32
	.loc	1 73 26                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	andi r1, r4, 1
	addli r4, zero, 0
	.loc	1 81 20                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:81:20
	dma_cfg r21, r21, r6, 4
	dma_run zero
	unlock r15
	xsignal r9, 0
	.loc	1 73 26                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	bneq r1, zero, .LBB0_30
# %bb.31:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r27, r27, 2
.LBB0_32:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:0:26
	addli r1, r30, -3600
	.loc	1 73 26                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	addli r28, r28, 2
	addli r5, r5, 2
	j .LBB0_8
.LBB0_33:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:86:20
	addli r10, r10, 2
.LBB0_34:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:101:67
	addli r27, r26, 1
	addli r28, r7, 1
	addli r5, r6, 1
	bneq r8, zero, .LBB0_7
# %bb.35:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r1,  -3640(r30)                # 4-byte Folded Reload
	zext_int2long r[3:4], r18
	loadli.w r6,  -3636(r30)                # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	addli r13, r30, -3632
	zext_int2long r[1:2], r1
	sext_int2long r[6:7], r6
	min.ul r[3:4], r[1:2], r[3:4]
	min.sl r[8:9], r[6:7], r[8:9]
	addli.d r[3:4], r[3:4], 64
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	addli.d r[3:4], r[8:9], 32
	zext_int2long r[8:9], r23
	min.ul r[24:25], r[1:2], r[8:9]
	max.sl r[3:4], r[3:4], r[6:7]
	addli r2, r30, -3616
	addli r1, zero, 14
	zext_int2long r[8:9], r11
	sub.sl r[3:4], r[3:4], r[6:7]
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	min.sl r[3:4], r[3:4], r[8:9]
	.loc	1 73 26                         # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:73:26
	core_id r8
	.loc	1 101 67                        # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:101:67
	sll.d r[6:7], r[6:7], r1
	load.d r[1:2], 16(r30)
	add.ul r[6:7], r[1:2], r[6:7]
	load.d r[1:2], 0(r13)                   # 8-byte Folded Reload
	sll.d r[1:2], r[1:2], r12
	add.ul r[1:2], r[6:7], r[1:2]
	addli r6, zero, 10
	addli r7, zero, 5
	xwait r6, 0
	lock zero, r7
	slli r6, r24, 2
	dma_cfg r12, zero, zero, 0
	dma_cfg zero, r12, zero, 1
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r16, r6, 3
	addli r1, zero, 256
	addli r2, zero, 512
	dma_cfg r2, r1, r3, 4
	dma_run zero
	unlock r7
	addli r1, zero, 11
	j .LBB0_6
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0                          # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:22:0
	xsignal zero, 0
	bneq r8, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:22:0
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
.LBB0_38:
	.loc	1 22 0 epilogue_begin           # cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py:22:0
	addli sp, sp, 3640
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
	.long	3704                            # 0xe78
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
.asciz	"cuhtg5qdyfskzeiifaggurt6mpvk4qogvc7myyoiopnpwywbbvhy.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/uh" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
