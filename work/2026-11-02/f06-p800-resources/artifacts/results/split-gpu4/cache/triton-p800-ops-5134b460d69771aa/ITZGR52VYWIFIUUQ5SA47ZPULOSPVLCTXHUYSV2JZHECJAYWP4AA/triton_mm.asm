	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu4/cache/inductor/pk" "cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py"
	.loc	1 22 0                          # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3048
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	core_id r2
	addli r30, sp, 2984
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:0:26
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r3, zero, 2
	uni_sram_cfg r1, r1
	lui r4, 1048575
	lock zero, r3
	ew_cfg r1, zero, zero, 16
	ori r1, r4, 4095
	unlock r3
	addli r3, zero, 11
	csr_set csr3, r1
	sync_group
	addli r1, zero, 5
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 3
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -620(r30)
	storeli.w zero, -1264(r30)
	storeli.w zero, -1888(r30)
	storeli.w zero, -2912(r30)
	mul.s r1, r3, r1
	addli r3, r5, 0
	fmac.s r3, r1, r4
	mul.s r4, r1, r4
	addli r3, r3, -1
	div.s r3, r3, r5
	load_param_i r5, 0
	mul.s r1, r3, r5
	fmac.s r3, r3, r5
	min.s r3, r3, r4
	ble.s r3, r1, .LBB0_36
# %bb.4:                                # %.lr.ph
	sext_int2long r[27:28], r1
	lui r1, 83
	loadli.w r8,  -620(r30)
	loadli.w r9,  -1264(r30)
	loadli.w r10,  -1888(r30)
	loadli.w r5,  -2912(r30)
	sext_int2long r[3:4], r3
	addli r2, r30, -2944
	addli r18, zero, 1
	addli r13, zero, 7
	addli r14, zero, 3
	addli r15, zero, 4
	addli r12, zero, 160
	addli r23, zero, 154
	addli r21, zero, 6
	addli r24, zero, 32
	addli r26, zero, 16
	addli r22, zero, 5
	addli r25, zero, 155
	addli r17, zero, 2
	addli r7, zero, 0
	ori r20, r1, 2048
	addli r1, zero, 64
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread89
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:86:20
	addli r10, r10, 2
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	core_id r2
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:0:26
	loadli.w r7,  -2916(r30)                # 4-byte Folded Reload
	addli r22, zero, 5
	addli r25, zero, 155
	beq r2, zero, .LBB0_32
.LBB0_7:                                # %.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, r30, -2928
	load.d r[27:28], 0(r3)                  # 8-byte Folded Reload
.LBB0_8:                                # %.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r5, r30, -2944
	addli.d r[27:28], r[27:28], 1
	addli r7, r7, 1
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	addli r5, r17, 0
	addli r17, zero, 2
	setlt.sl r3, r[27:28], r[3:4]
	beq r3, zero, .LBB0_36
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	loadli.w r3,  32(r30)
	loadli.w r4,  28(r30)
	addli r6, zero, 8
	addli r2, zero, 8
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	addli zero, r30, -2936
	div.s r3, r27, r3
	div.s r4, r3, r4
	.loc	1 53 22 is_stmt 1               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:53:22
	div.s r3, r4, r6
	slli r11, r3, 3
	.loc	1 54 30                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:54:30
	sub.s r3, r18, r11
	.loc	1 54 50 is_stmt 0               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:54:50
	min.s r16, r3, r6
	.loc	1 73 26 is_stmt 1               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	core_id r6
	.loc	1 55 40                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:55:40
	mod.s r3, r4, r16
	.loc	1 55 34 is_stmt 0               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:55:34
	add.s r3, r11, r3
	.loc	1 95 15 is_stmt 1               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:95:15
	zext_int2long r[18:19], r3
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	store.d r[18:19], 0(zero)               # 8-byte Folded Spill
	xor zero, zero, zero
	bneq r6, r15, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r6, zero, 11
	addli r18, zero, 1
	addli r19, zero, 128
	xwait r6, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:0:26
	addli r18, zero, 1
	beq r6, r18, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	addli r19, zero, 128
	bneq r6, r17, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r11, r7, 0
	addli r3, zero, 1
	addli r2, zero, 255
	lui r7, 6
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:81:20
	mod.s r4, r10, r25
	.loc	1 89 25                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	mod.s r6, r5, r2
	xwait r17, 0
	xwait r22, 0
	lock zero, zero
	addli r5, r5, 1
	.loc	1 81 20                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	ds_cfg r14, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r26, zero, 13
	.loc	1 81 20                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:81:20
	slli r4, r4, 11
	.loc	1 89 25                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	slli r6, r6, 10
	.loc	1 81 20                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:81:20
	add.s r4, r4, r7
	.loc	1 89 25                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	shuffle_batch r6, r4, r24, 1
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	andi r4, r3, 1
	addli r3, zero, 0
	.loc	1 89 25                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	unlock zero
	xsignal r14, 0
	xsignal r15, 0
	bneq r4, zero, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	addli r9, r9, 2
	addli r8, r8, 2
	addli r17, r5, 0
	core_id r2
	addli r7, r11, 0
	.loc	1 89 25                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:0:25
	sub.s r4, r4, r11
	addli r6, r30, -2928
	slli r3, r3, 4
	addli r11, zero, 1
	storeli.w r7, -2916(r30)                # 4-byte Folded Spill
	addli r25, zero, 0
	addli r22, zero, 0
	div.s r4, r4, r16
	store.d r[27:28], 0(r6)                 # 8-byte Folded Spill
	mod.s r6, r7, r14
	storeli.w r3, -2960(r30)                # 4-byte Folded Spill
	zext_int2long r[16:17], r4
	slli r3, r4, 7
	slli r28, r6, 13
	.loc	1 73 26 is_stmt 1               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	load.d r[6:7], 8(r30)
	storeli.w r3, -2968(r30)                # 4-byte Folded Spill
	sll.d r[16:17], r[16:17], r13
	addli r3, r30, -2952
	store.d r[16:17], 0(r3)                 # 8-byte Folded Spill
	sll.d r[3:4], r[16:17], r11
	add.ul r[3:4], r[6:7], r[3:4]
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	addli r5, zero, 9
	xwait r21, 0
	xwait r5, 0
	lock zero, zero
	ds_cfg r14, zero, 0
	ds_cfg r19, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r19, zero, 13
	shuffle_coa r16, r27, r24, 2
	unlock zero
	xsignal r13, 0
	xsignal r2, 0
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	andi r5, r11, 1
	bneq r5, zero, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 86 20                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:86:20
	mod.s r6, r8, r23
	.loc	1 89 25                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	mod.s r7, r9, r12
	addli r17, r5, 1
	addli r9, r9, 1
	.loc	1 86 20                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:86:20
	addli r8, r8, 1
	slli r6, r6, 13
	.loc	1 89 25                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	slli r16, r7, 13
	.loc	1 86 20                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:86:20
	add.s r27, r6, r20
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	core_id r6
	beq r6, r13, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:0:26
	bneq r6, r21, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20 is_stmt 1               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:86:20
	zext_int2long r[5:6], r25
	xwait r13, 0
	lock zero, r15
	addli r7, zero, 256
	dma_cfg r18, r18, zero, 0
	add.ul r[5:6], r[3:4], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r27, r5, r7, 3
	dma_cfg r7, r7, r24, 4
	dma_run zero
	unlock r15
	xsignal r21, 0
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	andi r5, r11, 1
	bneq r5, zero, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:0:26
	andi r11, r11, 1
	.loc	1 89 25 is_stmt 1               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	bneq r6, r15, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:0:25
	addli r6, zero, 255
	addli r25, zero, 1
	addli r27, zero, 1
	.loc	1 89 25                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	xwait r15, 0
	xwait r2, 0
	mod.s r5, r5, r6
	addli r6, zero, 0
	slli r5, r5, 10
	beq r22, zero, .LBB0_24
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r7, r6, 12
	slli r6, r6, 8
	lock zero, r25
	mm_cfg r1, r24, r26, 0
	or r7, r7, r16
	or r6, r6, r28
	mm_cfg r25, r15, r25, 2
	mm_acc r6, r5, r7, 5
	andi r7, r27, 1
	addli r6, zero, 1
	addli r27, zero, 0
	unlock r25
	bneq r7, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r7, r6, 12
	slli r6, r6, 8
	lock zero, r25
	mm_cfg r1, r24, r26, 0
	or r7, r7, r16
	or r6, r6, r28
	mm_cfg r25, r15, r25, 2
	mm r6, r5, r7, 5
	andi r7, r27, 1
	addli r6, zero, 1
	addli r27, zero, 0
	unlock r25
	bneq r7, zero, .LBB0_24
.LBB0_25:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r5, zero, 5
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r5, 0
	bneq r11, zero, .LBB0_27
	j .LBB0_33
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	beq r11, zero, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:0:26
	addli r11, zero, 0
	.loc	1 89 25 is_stmt 1               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:89:25
	addli r22, r22, 1
	addli r25, zero, 8192
	addli r5, r17, 0
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:86:20
	addli r10, r10, 2
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	core_id r2
	bneq r2, r15, .LBB0_6
	j .LBB0_34
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:0:26
	addli r6, r30, -2936
	addli r2, zero, 11
	storeli.w r7, -2916(r30)                # 4-byte Folded Spill
	addli r11, zero, 1
	addli r16, zero, 0
	addli r19, zero, 128
	load.d r[3:4], 0(r6)                    # 8-byte Folded Reload
	load.d r[6:7], 0(r30)
	sll.d r[3:4], r[3:4], r2
	lui r2, 6
	add.ul r[3:4], r[6:7], r[3:4]
	addli r7, zero, 2
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:81:20
	mod.s r6, r10, r25
	.loc	1 86 25                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:86:25
	zext_int2long r[16:17], r16
	.loc	1 81 20                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:81:20
	xwait r14, 0
	lock zero, r15
	addli r10, r10, 1
	dma_cfg r18, r18, zero, 0
	sll.d r[16:17], r[16:17], r18
	add.ul r[16:17], r[3:4], r[16:17]
	slli r6, r6, 11
	dma_cfg zero, r17, zero, 2
	add.s r6, r6, r2
	dma_cfg r6, r16, r1, 3
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	andi r6, r11, 1
	addli r16, zero, 32
	addli r11, zero, 0
	.loc	1 81 20                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:81:20
	dma_cfg r19, r19, r26, 4
	dma_run zero
	unlock r15
	xsignal r7, 0
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	bneq r6, zero, .LBB0_30
# %bb.31:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r17, r5, 2
	addli r9, r9, 2
	addli r8, r8, 2
	core_id r2
	j .LBB0_35
.LBB0_32:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:101:67
	loadli.w r2,  -2960(r30)                # 4-byte Folded Reload
	zext_int2long r[5:6], zero
	sext_int2long r[3:4], r2
	addli r2, r30, -2976
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -2984
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  -2968(r30)                # 4-byte Folded Reload
	zext_int2long r[5:6], r2
	addli r2, r30, -2960
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -2984
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	min.sl r[2:3], r[3:4], r[5:6]
	zext_int2long r[5:6], r19
	addli r4, r30, -2968
	store.d r[5:6], 0(r4)                   # 8-byte Folded Spill
	addli.d r[2:3], r[2:3], 16
	addli r4, r30, -2984
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, r30, -2968
	addli r4, r30, -2960
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	addli r4, r30, -2968
	max.ul r[2:3], r[2:3], r[5:6]
	addli r6, r30, -2976
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, r30, -2984
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	load.d r[2:3], 0(r6)                    # 8-byte Folded Reload
	max.sl r[4:5], r[4:5], r[2:3]
	addli r2, r30, -2984
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	addli r2, r30, -2960
	addli r4, r30, -2968
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	addli r4, r30, -2984
	sub.sl r[5:6], r[2:3], r[5:6]
	addli r2, r30, -2960
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r6, r30, -2976
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	sub.sl r[2:3], r[2:3], r[4:5]
	addli r4, r30, -2968
	addli r5, r30, -2936
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	addli r2, zero, 12
	zext_int2long r[5:6], r26
	sll.d r[3:4], r[3:4], r2
	addli r2, r30, -2936
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	load.d r[5:6], 16(r30)
	add.ul r[2:3], r[5:6], r[3:4]
	addli r4, r30, -2976
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r4, r30, -2952
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	sll.d r[2:3], r[2:3], r18
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, r30, -2968
	addli r4, r30, -2936
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	addli r4, r30, -2976
	min.sl r[5:6], r[5:6], r[2:3]
	addli r2, r30, -2936
	store.d r[5:6], 0(r2)                   # 8-byte Folded Spill
	addli r6, r30, -2952
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	add.ul r[3:4], r[2:3], r[4:5]
	addli r2, zero, 10
	xwait r2, 0
	lock zero, r22
	addli r2, r30, -2960
	dma_cfg r18, zero, zero, 0
	dma_cfg zero, r18, zero, 1
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	addli r2, zero, 512
	slli r7, r5, 2
	addli r6, r30, -2936
	dma_cfg r3, r28, r7, 3
	addli r3, zero, 256
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	loadli.w r7,  -2916(r30)                # 4-byte Folded Reload
	dma_cfg r3, r2, r4, 4
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	core_id r2
	.loc	1 101 67                        # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:101:67
	addli r3, zero, 11
	dma_run zero
	unlock r22
	xsignal r3, 0
	j .LBB0_7
.LBB0_33:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:86:20
	addli r10, r10, 2
	.loc	1 73 26                         # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:73:26
	core_id r2
.LBB0_34:                               # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 10
	addli r22, zero, 5
	addli r25, zero, 155
	xsignal r3, 0
	addli r3, r30, -2928
	load.d r[27:28], 0(r3)                  # 8-byte Folded Reload
.LBB0_35:                               # %.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:0:26
	loadli.w r7,  -2916(r30)                # 4-byte Folded Reload
	j .LBB0_8
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py:22:0
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
.asciz	"cpkwrnk7n4j52fvc26to44sdkcvowmhdtd3l7fwzwaitgdou7gnh.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu4/cache/inductor/pk" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
