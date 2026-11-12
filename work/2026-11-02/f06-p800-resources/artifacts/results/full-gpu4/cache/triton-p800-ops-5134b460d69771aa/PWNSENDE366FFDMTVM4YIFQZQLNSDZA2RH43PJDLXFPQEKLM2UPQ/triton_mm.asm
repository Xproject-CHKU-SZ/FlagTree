	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/e7" "ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py"
	.loc	1 22 0                          # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3048
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	core_id r7
	addli r30, sp, 2984
	xsignal_mode_cfg r1
	beq r7, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -624(r30)
	storeli.w zero, -1268(r30)
	storeli.w zero, -1896(r30)
	storeli.w zero, -2920(r30)
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
	ble.s r2, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -2952
	loadli.w r28,  -624(r30)
	loadli.w r26,  -1268(r30)
	loadli.w r8,  -1896(r30)
	addli r9, zero, 16
	addli r11, zero, 1
	addli r12, zero, 6
	addli r13, zero, 4
	addli r15, zero, 2
	addli r17, zero, 160
	addli r18, zero, 155
	lui r19, 82
	addli r20, zero, 7
	addli r22, zero, 64
	addli r23, zero, 32
	addli r14, zero, 5
	addli r25, zero, 256
	addli r16, zero, 156
	lui r21, 4
	addli r24, zero, 3
	addli r27, zero, 128
	storeli.w zero, -2924(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[4:5], r1
	loadli.w r1,  -2920(r30)
	j .LBB0_7
.LBB0_5:                                # %.thread91
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, r30, -2936
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
.LBB0_6:                                # %.thread91
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r6, r30, -2952
	addli.d r[4:5], r[4:5], 1
	load.d r[2:3], 0(r6)                    # 8-byte Folded Reload
	setlt.sl r2, r[4:5], r[2:3]
	loadli.w r3,  -2924(r30)                # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -2924(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_37
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	loadli.w r2,  32(r30)
	addli r3, r30, -2936
	.loc	1 54 50 is_stmt 1               # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:54:50
	addli r6, zero, 8
	store.d r[4:5], 0(r3)                   # 8-byte Folded Spill
	loadli.w r3,  28(r30)
	div.s r2, r4, r2
	div.s r3, r2, r3
	.loc	1 53 22                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:53:22
	div.s r4, r3, r9
	.loc	1 54 41                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:54:41
	slli r2, r4, 3
	.loc	1 54 30 is_stmt 0               # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:54:30
	sub.s r5, r11, r2
	.loc	1 54 50                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:54:50
	min.s r5, r5, r6
	.loc	1 73 26 is_stmt 1               # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	addli r6, r30, -2944
	.loc	1 55 40                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:55:40
	mod.s r10, r3, r5
	.loc	1 55 34 is_stmt 0               # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:55:34
	add.s r2, r2, r10
	.loc	1 95 15 is_stmt 1               # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:95:15
	zext_int2long r[10:11], r2
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	store.d r[10:11], 0(r6)                 # 8-byte Folded Spill
	bneq r7, r13, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 11
	xwait r6, 0
	j .LBB0_14
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:0:26
	addli r11, zero, 1
	beq r7, r11, .LBB0_27
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r7, r15, .LBB0_14
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 1
	addli r5, zero, 255
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:81:20
	mod.s r2, r8, r16
	.loc	1 89 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	mod.s r3, r1, r5
	xwait r15, 0
	xwait r14, 0
	lock zero, zero
	addli r1, r1, 1
	.loc	1 81 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	ds_cfg r15, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r9, zero, 13
	.loc	1 81 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:81:20
	slli r2, r2, 11
	.loc	1 89 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	slli r3, r3, 11
	.loc	1 81 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:81:20
	add.s r2, r2, r21
	.loc	1 89 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	shuffle_batch r3, r2, r23, 1
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	andi r2, r4, 1
	addli r4, zero, 0
	.loc	1 89 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	unlock zero
	xsignal r24, 0
	xsignal r13, 0
	bneq r2, zero, .LBB0_12
# %bb.13:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	addli r26, r26, 2
	addli r28, r28, 2
	j .LBB0_5
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:0:26
	slli r4, r4, 4
	slli r2, r2, 4
	addli r10, zero, 0
	addli r11, zero, 1
	addli r21, zero, 0
	sub.s r3, r3, r4
	loadli.w r4,  -2924(r30)                # 4-byte Folded Reload
	storeli.w r2, -2968(r30)                # 4-byte Folded Spill
	div.s r3, r3, r5
	mod.s r4, r4, r13
	zext_int2long r[5:6], r3
	slli r2, r3, 6
	slli r16, r4, 12
	sll.d r[5:6], r[5:6], r12
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	storeli.w r2, -2976(r30)                # 4-byte Folded Spill
	load.d r[2:3], 8(r30)
	sll.d r[4:5], r[5:6], r15
	addli r6, r30, -2960
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	add.ul r[4:5], r[2:3], r[4:5]
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25 is_stmt 1               # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	addli r6, zero, 9
	xwait r12, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r3, r2, r23, 2
	addli r2, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r2, 0
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	andi r2, r11, 1
	bneq r2, zero, .LBB0_25
	j .LBB0_26
.LBB0_16:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	add.s r27, r28, r21
	add.s r14, r26, r21
	add.s r24, r1, r21
	.loc	1 86 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:86:20
	mod.s r2, r27, r18
	.loc	1 89 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	mod.s r3, r14, r17
	.loc	1 86 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:86:20
	slli r2, r2, 13
	.loc	1 89 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	slli r3, r3, 13
	.loc	1 86 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:86:20
	add.s r2, r2, r19
	beq r7, r20, .LBB0_15
# %bb.17:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 20 is_stmt 0                # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:0:20
	bneq r7, r12, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 86 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:86:20
	zext_int2long r[6:7], r10
	xwait r20, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	add.ul r[6:7], r[4:5], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r2, r6, r25, 3
	addli r2, zero, 512
	.loc	1 73 26 is_stmt 1               # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	core_id r7
	.loc	1 86 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:86:20
	dma_cfg r25, r2, r23, 4
	dma_run zero
	unlock r13
	xsignal r12, 0
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	andi r2, r11, 1
	bneq r2, zero, .LBB0_25
	j .LBB0_26
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 26 is_stmt 0                # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:0:26
	andi r10, r11, 1
	.loc	1 89 25 is_stmt 1               # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	bneq r7, r13, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 25 is_stmt 0                # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:0:25
	addli r2, zero, 255
	.loc	1 89 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	addli r6, zero, 8
	xwait r13, 0
	mod.s r2, r24, r2
	xwait r6, 0
	addli r6, zero, 1
	lock zero, r6
	mm_cfg r22, r23, r9, 0
	mm_cfg r15, r15, r6, 2
	slli r2, r2, 11
	beq r21, zero, .LBB0_23
# %bb.21:                               # %.preheader8
                                        #   in Loop: Header=BB0_16 Depth=2
	mm_acc r16, r2, r3, 8
	j .LBB0_24
.LBB0_22:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 25                          # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:0:25
	bneq r10, zero, .LBB0_25
	j .LBB0_30
.LBB0_23:                               # %.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	mm r16, r2, r3, 8
.LBB0_24:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_16 Depth=2
	addli r2, zero, 5
	unlock r6
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26 is_stmt 1               # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	beq r10, zero, .LBB0_33
.LBB0_25:                               # %.split.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:89:25
	addli r21, r21, 1
	lui r10, 4
	addli r11, zero, 0
	j .LBB0_16
.LBB0_26:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:86:20
	addli r8, r8, 2
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	bneq r7, r13, .LBB0_31
	j .LBB0_34
.LBB0_27:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:0:26
	addli r5, r30, -2944
	addli r2, zero, 12
	addli r10, zero, 1
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	sll.d r[2:3], r[3:4], r2
	load.d r[4:5], 0(r30)
	add.ul r[4:5], r[4:5], r[2:3]
	addli r2, zero, 0
.LBB0_28:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:81:20
	mod.s r3, r8, r16
	.loc	1 86 25                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:86:25
	zext_int2long r[6:7], r2
	.loc	1 81 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:81:20
	xwait r24, 0
	lock zero, r13
	addli r8, r8, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[6:7], r[6:7], r15
	add.ul r[6:7], r[4:5], r[6:7]
	slli r2, r3, 11
	dma_cfg zero, r7, zero, 2
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	andi r3, r10, 1
	addli r10, zero, 0
	.loc	1 81 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:81:20
	add.s r2, r2, r21
	dma_cfg r2, r6, r27, 3
	addli r2, zero, 32
	dma_cfg r27, r25, r9, 4
	dma_run zero
	unlock r13
	xsignal r15, 0
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	bneq r3, zero, .LBB0_28
# %bb.29:                               # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, r1, 2
	addli r26, r26, 2
	addli r28, r28, 2
	core_id r7
	j .LBB0_5
.LBB0_30:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:86:20
	addli r8, r8, 2
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:0:20
	addli r2, r30, -2936
	.loc	1 101 67 is_stmt 1              # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:101:67
	addli r1, r24, 1
	addli r26, r14, 1
	addli r28, r27, 1
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	bneq r7, zero, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r2,  -2976(r30)                # 4-byte Folded Reload
	zext_int2long r[4:5], r22
	addli r10, r30, -2976
	addli r14, r30, -2984
	zext_int2long r[2:3], r2
	min.ul r[6:7], r[2:3], r[4:5]
	store.d r[6:7], 0(r10)                  # 8-byte Folded Spill
	loadli.w r6,  -2968(r30)                # 4-byte Folded Reload
	sext_int2long r[10:11], r6
	zext_int2long r[6:7], zero
	store.d r[6:7], 0(r14)                  # 8-byte Folded Spill
	addli r14, r30, -2976
	load.d r[6:7], 0(r14)                   # 8-byte Folded Reload
	addli r14, r30, -2968
	addli.d r[6:7], r[6:7], 64
	store.d r[6:7], 0(r14)                  # 8-byte Folded Spill
	addli r14, r30, -2984
	load.d r[6:7], 0(r14)                   # 8-byte Folded Reload
	addli r14, r30, -2976
	min.sl r[6:7], r[10:11], r[6:7]
	store.d r[6:7], 0(r14)                  # 8-byte Folded Spill
	addli r14, r30, -2968
	load.d r[6:7], 0(r14)                   # 8-byte Folded Reload
	max.ul r[6:7], r[6:7], r[2:3]
	store.d r[6:7], 0(r14)                  # 8-byte Folded Spill
	addli r14, r30, -2976
	load.d r[6:7], 0(r14)                   # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 16
	store.d r[6:7], 0(r14)                  # 8-byte Folded Spill
	addli r14, r30, -2968
	load.d r[6:7], 0(r14)                   # 8-byte Folded Reload
	addli r14, r30, -2976
	sub.sl r[2:3], r[6:7], r[2:3]
	load.d r[6:7], 0(r14)                   # 8-byte Folded Reload
	addli r14, zero, 5
	min.ul r[2:3], r[2:3], r[4:5]
	addli r4, r30, -2968
	max.sl r[6:7], r[6:7], r[10:11]
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sub.sl r[4:5], r[6:7], r[10:11]
	addli r7, r30, -2944
	addli r6, zero, 13
	zext_int2long r[10:11], r9
	load.d r[2:3], 0(r7)                    # 8-byte Folded Reload
	min.sl r[4:5], r[4:5], r[10:11]
	addli r10, r30, -2960
	addli r11, zero, 1
	sll.d r[6:7], r[2:3], r6
	load.d r[2:3], 16(r30)
	add.ul r[6:7], r[2:3], r[6:7]
	load.d r[2:3], 0(r10)                   # 8-byte Folded Reload
	addli r10, zero, 10
	xwait r10, 0
	lock zero, r14
	addli r10, r30, -2968
	dma_cfg zero, zero, zero, 0
	add.ul r[6:7], r[6:7], r[2:3]
	dma_cfg zero, r11, zero, 1
	load.d r[2:3], 0(r10)                   # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r2, r2, 2
	dma_cfg r6, r16, r2, 3
	addli r2, zero, 512
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	core_id r7
	.loc	1 101 67                        # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:101:67
	dma_cfg r2, r25, r4, 4
	addli r2, r30, -2936
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, zero, 11
	dma_run zero
	unlock r14
	xsignal r2, 0
	j .LBB0_36
.LBB0_33:                               # %.split17.thread90
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:86:20
	addli r8, r8, 2
.LBB0_34:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	addli r2, zero, 10
	.loc	1 101 67                        # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:101:67
	addli r1, r24, 1
	addli r26, r14, 1
	addli r28, r27, 1
	.loc	1 73 26                         # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:73:26
	xsignal r2, 0
	addli r2, r30, -2936
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:0:26
	addli r11, zero, 1
	addli r14, zero, 5
.LBB0_36:                               # %.thread91
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r16, zero, 156
	lui r21, 4
	addli r24, zero, 3
	addli r27, zero, 128
	j .LBB0_6
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:22:0
	xsignal zero, 0
	bneq r7, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:22:0
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
	.loc	1 22 0 epilogue_begin           # ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py:22:0
	addli sp, sp, 2984
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
	.long	3048                            # 0xbe8
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
.asciz	"ce7aburxklhbgnpppam2h75fagpa26sran3xq6wakyqyy3ocpa6t.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/e7" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
