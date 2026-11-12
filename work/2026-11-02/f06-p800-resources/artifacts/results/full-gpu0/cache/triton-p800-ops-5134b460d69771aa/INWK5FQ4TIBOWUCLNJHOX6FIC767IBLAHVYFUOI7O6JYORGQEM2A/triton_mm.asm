	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/yu" "cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py"
	.loc	1 22 0                          # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4216
	addli r30, sp, 4152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	core_id r6
	loadli.w r8,  32(r30)
	xsignal_mode_cfg r1
	beq r6, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:26
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
	load_param_i r5, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -1024(r30)
	storeli.w zero, -2048(r30)
	storeli.w zero, -3072(r30)
	storeli.w zero, -4096(r30)
	mul.s r1, r2, r1
	addli r2, r5, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r5
	load_param_i r5, 0
	mul.s r1, r2, r5
	fmac.s r2, r2, r5
	min.s r3, r2, r3
	ble.s r3, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	addli r4, r30, -4128
	sext_int2long r[24:25], r1
	loadli.w r1,  -1024(r30)
	loadli.w r23,  -2048(r30)
	loadli.w r28,  -4096(r30)
	addli r10, zero, 4
	addli r11, zero, 8
	addli r14, zero, 2
	addli r15, zero, 255
	lui r16, 256
	addli r17, zero, 7
	addli r18, zero, 6
	addli r20, zero, 32
	addli r21, zero, 16
	addli r27, zero, 128
	addli r5, r30, -4152
	addli r22, zero, 16383
	addli r26, zero, 3
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r3, zero, 2047
	loadli.w r4,  -3072(r30)
	lui r2, 1048572
	store.d r[2:3], 0(r5)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	addli r2, zero, 10
	.loc	1 101 67 is_stmt 1              # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:101:67
	addli r28, r12, 1
	addli r23, r13, 1
	addli r1, r5, 1
	addli r22, zero, 16383
	addli r26, zero, 3
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	xsignal r2, 0
	addli r2, r30, -4112
.LBB0_6:                                # %.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:26
	load.d r[24:25], 0(r2)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r5, r30, -4128
	addli.d r[24:25], r[24:25], 1
	load.d r[2:3], 0(r5)                    # 8-byte Folded Reload
	setlt.sl r2, r[24:25], r[2:3]
	beq r2, zero, .LBB0_37
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r2, r24, r8
	loadli.w r3,  28(r30)
	addli r13, r30, -4120
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	core_id r12
	div.s r5, r2, r3
	.loc	1 53 22 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:53:22
	addli r2, zero, 256
	div.s r6, r5, r2
	.loc	1 54 41                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:54:41
	slli r2, r6, 3
	.loc	1 54 30 is_stmt 0               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:54:30
	sub.s r3, r10, r2
	.loc	1 54 50                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:54:50
	min.s r7, r3, r11
	.loc	1 55 40 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:55:40
	mod.s r3, r5, r7
	.loc	1 55 34 is_stmt 0               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:55:34
	add.s r9, r2, r3
	.loc	1 95 15 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:95:15
	zext_int2long r[2:3], r9
	store.d r[2:3], 0(r13)                  # 8-byte Folded Spill
	addli r2, zero, 96
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	addli r13, r30, -4104
	zext_int2long r[2:3], r2
	store.d r[2:3], 0(r13)                  # 8-byte Folded Spill
	bneq r12, r10, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:26
	addli r2, zero, 1
	beq r12, r2, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r12, r14, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 0
	addli r6, zero, 5
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	add.s r2, r4, r3
	add.s r5, r28, r3
	xwait r14, 0
	xwait r6, 0
	lock zero, zero
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	ds_cfg r14, zero, 0
	.loc	1 81 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:20
	mod.s r2, r2, r15
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	mod.s r5, r5, r15
	ds_cfg r20, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r20, zero, 13
	.loc	1 81 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:20
	slli r2, r2, 12
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	slli r5, r5, 11
	.loc	1 81 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:20
	addli r2, r2, 4096
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	shuffle_batch r5, r2, r21, 1
	unlock zero
	xsignal r26, 0
	xsignal r10, 0
	bneq r3, r11, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	addli r23, r23, 8
	addli r1, r1, 8
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	add.s r28, r28, r3
	add.s r4, r4, r3
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	core_id r6
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:25
	addli r2, r30, -4112
	slli r3, r9, 5
	addli r9, r30, -4136
	addli r19, zero, 0
	store.d r[24:25], 0(r2)                 # 8-byte Folded Spill
	slli r2, r6, 8
	.loc	1 73 26 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	storeli.w r3, -4140(r30)                # 4-byte Folded Spill
	addli r24, zero, 0
	.loc	1 0 0 is_stmt 0                 # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:0
	sub.s r2, r5, r2
	div.s r2, r2, r7
	addli r7, zero, 5
	zext_int2long r[5:6], r2
	slli r2, r2, 5
	sll.d r[5:6], r[5:6], r7
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	storeli.w r2, -4144(r30)                # 4-byte Folded Spill
	load.d r[2:3], 8(r30)
	sll.d r[5:6], r[5:6], r14
	store.d r[5:6], 0(r9)                   # 8-byte Folded Spill
	add.ul r[25:26], r[2:3], r[5:6]
	core_id r6
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	addli r2, zero, 9
	xwait r18, 0
	xwait r2, 0
	lock zero, zero
	ds_cfg r14, zero, 0
	ds_cfg r20, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r20, zero, 13
	shuffle_coa r22, r9, r21, 2
	unlock zero
	xsignal r17, 0
	xsignal r11, 0
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	addli r24, r24, 1
	beq r24, r11, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	addli r19, r19, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r1, r19
	add.s r13, r23, r19
	add.s r12, r28, r19
	.loc	1 86 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:86:20
	mod.s r2, r5, r15
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	mod.s r3, r13, r15
	.loc	1 86 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:86:20
	slli r2, r2, 11
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	slli r22, r3, 11
	.loc	1 86 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:86:20
	add.s r9, r2, r16
	beq r6, r17, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:20
	bneq r6, r18, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:86:25
	zext_int2long r[2:3], r24
	.loc	1 86 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:86:20
	xwait r17, 0
	lock zero, r10
	dma_cfg zero, zero, zero, 0
	sll.d r[2:3], r[2:3], r21
	add.ul r[2:3], r[25:26], r[2:3]
	dma_cfg zero, r3, zero, 2
	dma_cfg r9, r2, r27, 3
	addli r2, zero, 4096
	dma_cfg r27, r2, r21, 4
	dma_run zero
	unlock r10
	xsignal r18, 0
	.loc	1 73 26 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	addli r24, r24, 1
	bneq r24, r11, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	bneq r6, r10, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:0
	mod.s r2, r12, r15
	addli r3, zero, 1
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	xwait r10, 0
	xwait r11, 0
	lock zero, r3
	mm_cfg r20, r21, r20, 0
	mm_cfg r3, r3, r3, 2
	.loc	1 0 0                           # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:0
	slli r2, r2, 11
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	beq r19, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc zero, r2, r22, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	addli r24, r24, 1
	bneq r24, r11, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	mm zero, r2, r22, 8
.LBB0_26:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r2, zero, 1
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	addli r24, r24, 1
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	unlock r2
	addli r2, zero, 9
	xsignal r7, 0
	xsignal r2, 0
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	bneq r24, r11, .LBB0_17
# %bb.27:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:86:20
	addli r4, r4, 8
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, r4, 8
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	beq r6, r10, .LBB0_5
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:26
	addli r3, r30, -4120
	addli r2, r30, -4112
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	store.d r[24:25], 0(r2)                 # 8-byte Folded Spill
	addli r2, zero, 12
	sll.d r[12:13], r[5:6], r2
	addli r5, r30, -4152
	load.d r[2:3], 0(r5)                    # 8-byte Folded Reload
	addli r5, zero, 0
	and.d r[2:3], r[12:13], r[2:3]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 81 25 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:25
	sub.sl r[24:25], r[6:7], r[24:25]
	zext_int2long r[8:9], r27
	.loc	1 81 20 is_stmt 0               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:20
	sll.d r[6:7], r[6:7], r14
	xwait r26, 0
	lock zero, r10
	.loc	1 0 0                           # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:0
	add.s r19, r4, r5
	.loc	1 73 26 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	addli r5, r5, 1
	.loc	1 81 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:20
	dma_cfg zero, zero, zero, 0
	.loc	1 81 25 is_stmt 0               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:25
	div.sl r[8:9], r[24:25], r[8:9]
	.loc	1 81 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:20
	load.d r[24:25], 0(r30)
	.loc	1 81 0                          # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:0
	mod.s r19, r19, r15
	.loc	1 81 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:20
	add.ul r[6:7], r[24:25], r[6:7]
	dma_cfg zero, r7, zero, 2
	.loc	1 81 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:25
	addli zero, r30, -4104
	.loc	1 81 0                          # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:0
	slli r19, r19, 12
	.loc	1 81 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:25
	load.d r[24:25], 0(zero)                # 8-byte Folded Reload
	xor zero, zero, zero
	.loc	1 81 0                          # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:0
	addli r19, r19, 4096
	.loc	1 81 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:25
	min.sl r[24:25], r[8:9], r[24:25]
	sub.sl r[8:9], r[24:25], r[8:9]
	.loc	1 81 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:20
	addli r8, r8, 32
	addli r9, zero, 64
	dma_cfg r19, r6, r9, 3
	addli r6, zero, 512
	dma_cfg r27, r6, r8, 4
	dma_run zero
	unlock r10
	xsignal r14, 0
	.loc	1 73 26 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	beq r5, r11, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:86:25
	zext_int2long r[6:7], r5
	zext_int2long r[24:25], r22
	sll.d r[6:7], r[6:7], r10
	.loc	1 81 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:81:25
	add.ul r[6:7], r[6:7], r[12:13]
	setlt.ul r9, r[24:25], r[6:7]
	addli.d r[24:25], r[2:3], 0
	bneq r9, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:25
	zext_int2long r[24:25], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -4112
	loadli.w r8,  32(r30)
	.loc	1 73 26 is_stmt 1               # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	addli r28, r28, 8
	addli r23, r23, 8
	addli r1, r1, 8
	.loc	1 89 25                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:89:25
	add.s r4, r4, r5
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	core_id r6
	j .LBB0_6
.LBB0_34:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:86:20
	addli r4, r4, 8
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:20
	addli r2, r30, -4112
	.loc	1 101 67 is_stmt 1              # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:101:67
	addli r28, r12, 1
	addli r23, r13, 1
	addli r1, r5, 1
	addli r22, zero, 16383
	addli r26, zero, 3
	load.d r[24:25], 0(r2)                  # 8-byte Folded Reload
	bneq r6, zero, .LBB0_7
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r7,  -4140(r30)                # 4-byte Folded Reload
	addli r19, r30, -4104
	loadli.w r2,  -4144(r30)                # 4-byte Folded Reload
	addli r5, zero, 992
	addli r9, zero, 5
	load.d r[12:13], 0(r19)                 # 8-byte Folded Reload
	zext_int2long r[5:6], r5
	addli r19, zero, 17
	addli zero, r30, -4120
	sext_int2long r[7:8], r7
	zext_int2long r[2:3], r2
	load.d r[24:25], 0(zero)                # 8-byte Folded Reload
	xor zero, zero, zero
	min.sl r[12:13], r[7:8], r[12:13]
	min.ul r[5:6], r[2:3], r[5:6]
	addli.d r[12:13], r[12:13], 32
	addli.d r[5:6], r[5:6], 32
	sll.d r[24:25], r[24:25], r19
	addli r19, r30, -4112
	max.sl r[12:13], r[12:13], r[7:8]
	max.ul r[5:6], r[5:6], r[2:3]
	sub.sl r[7:8], r[12:13], r[7:8]
	load.d r[12:13], 16(r30)
	sub.sl r[2:3], r[5:6], r[2:3]
	zext_int2long r[5:6], r20
	min.ul r[2:3], r[2:3], r[5:6]
	min.sl r[5:6], r[7:8], r[5:6]
	add.ul r[12:13], r[12:13], r[24:25]
	load.d r[24:25], 0(r19)                 # 8-byte Folded Reload
	addli r19, r30, -4136
	slli r2, r2, 2
	addli r3, zero, 4096
	load.d r[7:8], 0(r19)                   # 8-byte Folded Reload
	add.ul r[7:8], r[12:13], r[7:8]
	addli r12, zero, 10
	xwait r12, 0
	lock zero, r9
	addli r9, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r9, zero, 1
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, zero, r2, 3
	addli r2, zero, 5
	loadli.w r8,  32(r30)
	dma_cfg r3, r27, r5, 4
	dma_run zero
	.loc	1 73 26                         # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:73:26
	core_id r6
	.loc	1 101 67                        # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:101:67
	unlock r2
	addli r2, zero, 11
	xsignal r2, 0
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0                          # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:22:0
	xsignal zero, 0
	bneq r6, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:22:0
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
.LBB0_39:
	.loc	1 22 0 epilogue_begin           # cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py:22:0
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
.asciz	"cyurtngzqleoxs3fmc52wkyttyv66tjifxb7iitvjxolzn5fwrq5.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/yu" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
