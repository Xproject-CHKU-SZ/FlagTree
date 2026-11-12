	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/c4" "cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py"
	.loc	1 22 0                          # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4224
	addli r30, sp, 4160
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	core_id r7
	loadli.w r21,  32(r30)
	xsignal_mode_cfg r1
	beq r7, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -1024(r30)
	storeli.w zero, -2048(r30)
	storeli.w zero, -3072(r30)
	storeli.w zero, -4096(r30)
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
	ble.s r2, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4136
	sext_int2long r[25:26], r1
	loadli.w r1,  -1024(r30)
	loadli.w r27,  -2048(r30)
	loadli.w r8,  -3072(r30)
	loadli.w r28,  -4096(r30)
	addli r6, zero, 64
	addli r12, zero, 5
	addli r13, zero, 4
	addli r15, zero, 1
	addli r16, zero, 255
	lui r17, 256
	addli r18, zero, 7
	addli r19, zero, 6
	addli r10, zero, 3
	addli r22, zero, 32
	addli r23, zero, 16
	addli r24, zero, 128
	addli r14, zero, 2
	addli r5, r30, -4160
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	lui r2, 7
	ori r4, r2, 4095
	lui r2, 1023
	lui r3, 1047552
	ori r2, r2, 4095
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	storeli.w r2, -4108(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, r30, -4120
	loadli.w r21,  32(r30)
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	addli r28, r28, 128
	addli r27, r27, 128
	addli r1, r1, 128
	.loc	1 89 25 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	add.s r8, r8, r9
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	core_id r7
	addli r6, zero, 64
	addli r12, zero, 5
	load.d r[25:26], 0(r2)                  # 8-byte Folded Reload
.LBB0_6:                                # %.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:26
	addli r4, r30, -4136
	addli.d r[25:26], r[25:26], 1
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	setlt.sl r2, r[25:26], r[2:3]
	beq r2, zero, .LBB0_38
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	div.s r2, r25, r21
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:54:50
	addli r5, zero, 8
	addli r20, r30, -4128
	div.s r2, r2, r3
	.loc	1 53 22                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:53:22
	addli r3, zero, 512
	div.s r9, r2, r3
	.loc	1 54 41                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:54:41
	slli r3, r9, 3
	.loc	1 54 30 is_stmt 0               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:54:30
	sub.s r4, r6, r3
	.loc	1 54 50                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:54:50
	min.s r11, r4, r5
	.loc	1 55 40 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:55:40
	mod.s r4, r2, r11
	.loc	1 55 34 is_stmt 0               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:55:34
	add.s r3, r3, r4
	.loc	1 95 15 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:95:15
	zext_int2long r[4:5], r3
	store.d r[4:5], 0(r20)                  # 8-byte Folded Spill
	addli r4, zero, 2016
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	addli r20, r30, -4104
	zext_int2long r[4:5], r4
	store.d r[4:5], 0(r20)                  # 8-byte Folded Spill
	bneq r7, r13, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 11
	xwait r4, 0
	j .LBB0_14
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:26
	beq r7, r15, .LBB0_27
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r7, r14, .LBB0_14
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 0
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	add.s r3, r8, r2
	add.s r4, r28, r2
	xwait r14, 0
	xwait r12, 0
	lock zero, zero
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	addli r2, r2, 1
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	ds_cfg r10, zero, 0
	.loc	1 81 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:20
	mod.s r3, r3, r16
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	mod.s r4, r4, r16
	ds_cfg r6, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	.loc	1 81 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:20
	slli r3, r3, 12
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	slli r4, r4, 11
	.loc	1 81 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:20
	addli r3, r3, 4096
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	shuffle_batch r4, r3, r23, 1
	unlock zero
	xsignal r10, 0
	xsignal r13, 0
	bneq r2, r24, .LBB0_12
# %bb.13:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	addli r27, r27, 128
	addli r1, r1, 128
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	add.s r28, r28, r2
	add.s r8, r8, r2
	j .LBB0_6
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:0
	slli r6, r9, 9
	slli r3, r3, 5
	addli r4, r30, -4120
	addli r9, r30, -4144
	addli r21, zero, 5
	sub.s r2, r2, r6
	.loc	1 73 26 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	storeli.w r3, -4148(r30)                # 4-byte Folded Spill
	store.d r[25:26], 0(r4)                 # 8-byte Folded Spill
	addli r26, zero, 0
	.loc	1 0 0 is_stmt 0                 # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:0
	div.s r2, r2, r11
	zext_int2long r[6:7], r2
	slli r2, r2, 5
	sll.d r[6:7], r[6:7], r12
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	storeli.w r2, -4152(r30)                # 4-byte Folded Spill
	load.d r[2:3], 8(r30)
	sll.d r[4:5], r[6:7], r15
	addli r6, zero, 64
	core_id r7
	store.d r[4:5], 0(r9)                   # 8-byte Folded Spill
	add.ul r[2:3], r[2:3], r[4:5]
	addli r9, zero, 0
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	addli r4, zero, 9
	xwait r19, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 8
	ds_cfg r10, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r20, r25, r23, 2
	unlock zero
	xsignal r18, 0
	xsignal r4, 0
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	addli r26, r26, 1
	bneq r26, r24, .LBB0_25
	j .LBB0_26
.LBB0_16:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	add.s r14, r1, r9
	add.s r12, r27, r9
	add.s r11, r28, r9
	.loc	1 86 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:86:20
	mod.s r4, r14, r16
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	mod.s r5, r12, r16
	.loc	1 86 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:86:20
	slli r4, r4, 11
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	slli r20, r5, 11
	.loc	1 86 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:86:20
	add.s r25, r4, r17
	beq r7, r18, .LBB0_15
# %bb.17:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 20 is_stmt 0                # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:20
	bneq r7, r19, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 86 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:86:25
	zext_int2long r[4:5], r26
	.loc	1 86 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:86:20
	xwait r18, 0
	lock zero, r13
	dma_cfg r15, r15, zero, 0
	sll.d r[4:5], r[4:5], r23
	add.ul r[4:5], r[2:3], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r25, r4, r6, 3
	addli r4, zero, 4096
	dma_cfg r24, r4, r23, 4
	dma_run zero
	unlock r13
	xsignal r19, 0
	.loc	1 73 26 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	addli r26, r26, 1
	bneq r26, r24, .LBB0_25
	j .LBB0_26
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	bneq r7, r13, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 0 is_stmt 0                 # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:0
	mod.s r4, r11, r16
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	addli r5, zero, 8
	xwait r13, 0
	xwait r5, 0
	lock zero, r15
	mm_cfg r22, r23, r22, 0
	mm_cfg r15, r15, r15, 2
	.loc	1 0 0                           # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:0
	slli r6, r4, 11
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	beq r9, zero, .LBB0_23
# %bb.21:                               # %.preheader8
                                        #   in Loop: Header=BB0_16 Depth=2
	mm_acc zero, r6, r20, 5
	j .LBB0_24
.LBB0_22:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 73 26 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	addli r26, r26, 1
	bneq r26, r24, .LBB0_25
	j .LBB0_31
.LBB0_23:                               # %.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	mm zero, r6, r20, 5
.LBB0_24:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	addli r26, r26, 1
	addli r6, zero, 64
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	addli r4, zero, 9
	unlock r15
	xsignal r21, 0
	xsignal r4, 0
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	beq r26, r24, .LBB0_34
.LBB0_25:                               # %.split.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:89:25
	addli r9, r9, 1
	j .LBB0_16
.LBB0_26:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:86:20
	addli r8, r8, 128
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	bneq r7, r13, .LBB0_32
	j .LBB0_35
.LBB0_27:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:26
	addli r2, r30, -4120
	addli r4, r30, -4128
	addli r6, r30, -4160
	addli r9, zero, 0
	store.d r[25:26], 0(r2)                 # 8-byte Folded Spill
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	sll.d r[2:3], r[2:3], r23
	and.d r[6:7], r[2:3], r[4:5]
	j .LBB0_29
.LBB0_28:                               # %.thread.us
                                        #   in Loop: Header=BB0_29 Depth=2
	addli r4, zero, 2048
	.loc	1 81 25 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:25
	sub.sl r[11:12], r[25:26], r[11:12]
	.loc	1 81 20 is_stmt 0               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:20
	load.d r[20:21], 0(r30)
	sll.d r[25:26], r[25:26], r15
	xwait r10, 0
	lock zero, r13
	addli r14, zero, 2
	dma_cfg r15, r15, zero, 0
	zext_int2long r[4:5], r4
	add.ul r[25:26], r[20:21], r[25:26]
	.loc	1 81 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:25
	div.sl r[4:5], r[11:12], r[4:5]
	.loc	1 0 0                           # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:0
	add.s r11, r8, r9
	.loc	1 81 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:25
	addli r12, r30, -4104
	.loc	1 73 26 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	addli r9, r9, 1
	.loc	1 81 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:20
	dma_cfg zero, r26, zero, 2
	.loc	1 81 0 is_stmt 0                # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:0
	mod.s r11, r11, r16
	.loc	1 81 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:25
	load.d r[20:21], 0(r12)                 # 8-byte Folded Reload
	.loc	1 81 0                          # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:0
	slli r11, r11, 12
	addli r11, r11, 4096
	.loc	1 81 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:20
	dma_cfg r11, r25, r22, 3
	.loc	1 81 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:25
	min.sl r[20:21], r[4:5], r[20:21]
	sub.sl r[4:5], r[20:21], r[4:5]
	.loc	1 81 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:20
	addli r4, r4, 32
	addli r5, zero, 4096
	dma_cfg r24, r5, r4, 4
	dma_run zero
	unlock r13
	xsignal r14, 0
	.loc	1 73 26 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	beq r9, r24, .LBB0_5
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:86:25
	zext_int2long r[11:12], r9
	loadli.w r4,  -4108(r30)                # 4-byte Folded Reload
	sll.d r[11:12], r[11:12], r13
	.loc	1 81 25                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:81:25
	add.ul r[25:26], r[11:12], r[2:3]
	zext_int2long r[11:12], r4
	setlt.ul r14, r[11:12], r[25:26]
	addli.d r[11:12], r[6:7], 0
	bneq r14, zero, .LBB0_28
# %bb.30:                               # %.thread.us
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 25 is_stmt 0                # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:25
	zext_int2long r[11:12], zero
	j .LBB0_28
.LBB0_31:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20 is_stmt 1               # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:86:20
	addli r8, r8, 128
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:20
	addli r2, r30, -4120
	.loc	1 101 67 is_stmt 1              # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:101:67
	addli r28, r11, 1
	addli r27, r12, 1
	addli r1, r14, 1
	load.d r[25:26], 0(r2)                  # 8-byte Folded Reload
	bneq r7, zero, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r2,  -4152(r30)                # 4-byte Folded Reload
	loadli.w r6,  -4148(r30)                # 4-byte Folded Reload
	addli r4, r30, -4104
	addli r14, r30, -4128
	addli r9, zero, 17
	load.d r[11:12], 0(r4)                  # 8-byte Folded Reload
	load.d r[20:21], 0(r14)                 # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	zext_int2long r[6:7], r6
	min.ul r[4:5], r[2:3], r[11:12]
	min.ul r[11:12], r[6:7], r[11:12]
	sll.d r[20:21], r[20:21], r9
	addli r9, r30, -4144
	addli.d r[4:5], r[4:5], 32
	addli.d r[11:12], r[11:12], 32
	max.ul r[4:5], r[4:5], r[2:3]
	max.ul r[11:12], r[11:12], r[6:7]
	sub.sl r[2:3], r[4:5], r[2:3]
	zext_int2long r[4:5], r22
	sub.sl r[6:7], r[11:12], r[6:7]
	load.d r[11:12], 16(r30)
	min.ul r[2:3], r[2:3], r[4:5]
	min.ul r[4:5], r[6:7], r[4:5]
	load.d r[6:7], 0(r9)                    # 8-byte Folded Reload
	addli r9, zero, 10
	add.ul r[11:12], r[11:12], r[20:21]
	loadli.w r21,  32(r30)
	xwait r9, 0
	slli r2, r2, 2
	add.ul r[6:7], r[11:12], r[6:7]
	addli r12, zero, 5
	lock zero, r12
	dma_cfg r15, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, zero, r2, 3
	addli r2, zero, 4096
	addli r6, zero, 64
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	core_id r7
	.loc	1 101 67                        # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:101:67
	dma_cfg r2, r24, r4, 4
	addli r2, zero, 11
	dma_run zero
	unlock r12
	xsignal r2, 0
	j .LBB0_37
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:86:20
	addli r8, r8, 128
.LBB0_35:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	addli r2, zero, 10
	.loc	1 101 67                        # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:101:67
	addli r28, r11, 1
	addli r27, r12, 1
	addli r1, r14, 1
	.loc	1 73 26                         # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:73:26
	xsignal r2, 0
	addli r2, r30, -4120
	load.d r[25:26], 0(r2)                  # 8-byte Folded Reload
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:26
	loadli.w r21,  32(r30)
	addli r12, zero, 5
.LBB0_37:                               # %.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r14, zero, 2
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:22:0
	xsignal zero, 0
	bneq r7, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:22:0
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
.LBB0_40:
	.loc	1 22 0 epilogue_begin           # cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py:22:0
	addli sp, sp, 4160
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
	.long	4224                            # 0x1080
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
.asciz	"cc4u2ybgkegt5ngsjmhcf7yqsvp32yuzft4phkwumwcbidqvhzxn.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/c4" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
