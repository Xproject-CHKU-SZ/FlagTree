	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/pg" "cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py"
	.loc	1 22 0                          # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2984
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:73:26
	core_id r20
	addli r30, sp, 2920
	xsignal_mode_cfg r1
	beq r20, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -516(r30)
	storeli.w zero, -1540(r30)
	storeli.w zero, -2056(r30)
	storeli.w zero, -2828(r30)
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
	ble.s r2, r1, .LBB0_33
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -2912
	loadli.w r8,  -516(r30)
	loadli.w r9,  -1540(r30)
	loadli.w r11,  -2056(r30)
	loadli.w r28,  -2828(r30)
	addli r10, zero, 128
	addli r12, zero, 6
	addli r13, zero, 2
	addli r14, zero, 4
	addli r16, zero, 16
	lui r24, 8
	addli r23, zero, 64
	addli r17, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sext_int2long r[4:5], r1
	lui r1, 7
	addli r3, r30, -2920
	ori r2, r1, 4095
	lui r1, 1048448
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	lui r1, 127
	addli r3, zero, 1
	ori r1, r1, 4095
	storeli.w r1, -2844(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2872
	addli r6, r30, -2912
	loadli.w r17,  -2876(r30)               # 4-byte Folded Reload
	addli r28, r27, 1
	addli r11, r22, 1
	addli r12, zero, 6
	load.d r[4:5], 0(r1)                    # 8-byte Folded Reload
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	addli.d r[4:5], r[4:5], 1
	setlt.sl r1, r[4:5], r[1:2]
	beq r1, zero, .LBB0_33
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	.loc	1 73 26                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:73:26
	bneq r20, r14, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:0:26
	loadli.w r1,  32(r30)
	addli r2, r30, -2872
	addli r7, zero, 8
	addli r15, zero, 0
	addli r26, zero, 6
	addli r25, zero, 0
	store.d r[4:5], 0(r2)                   # 8-byte Folded Spill
	loadli.w r2,  28(r30)
	div.s r1, r4, r1
	mod.s r5, r17, r13
	addli r17, r17, 1
	storeli.w r17, -2876(r30)               # 4-byte Folded Spill
	div.s r1, r1, r2
	slli r5, r5, 14
	storeli.w r5, -2860(r30)                # 4-byte Folded Spill
	div.s r2, r1, r10
	slli r4, r2, 3
	slli r2, r2, 7
	sub.s r6, r7, r4
	sub.s r2, r1, r2
	min.s r6, r6, r7
	mod.s r1, r1, r6
	div.s r2, r2, r6
	add.s r1, r4, r1
	slli r4, r2, 6
	storeli.w r4, -2904(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r2
	slli r2, r1, 6
	sll.d r[4:5], r[4:5], r12
	storeli.w r2, -2900(r30)                # 4-byte Folded Spill
	zext_int2long r[1:2], r1
	addli r12, r30, -2888
	.loc	1 73 26                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:73:26
	sll.d r[6:7], r[4:5], r13
	addli r4, r30, -2896
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	sll.d r[4:5], r[1:2], r16
	load.d r[1:2], 8(r30)
	store.d r[6:7], 0(r12)                  # 8-byte Folded Spill
	add.ul r[1:2], r[1:2], r[6:7]
	addli r6, r30, -2856
	store.d r[1:2], 0(r6)                   # 8-byte Folded Spill
	addli r6, r30, -2920
	load.d r[1:2], 0(r6)                    # 8-byte Folded Reload
	addli r6, r30, -2840
	and.d r[1:2], r[4:5], r[1:2]
	store.d r[1:2], 0(r6)                   # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 26                          # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:0:26
	addli r12, zero, 1024
	.loc	1 81 25 is_stmt 1               # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:81:25
	sub.sl r[6:7], r[1:2], r[6:7]
	.loc	1 81 20 is_stmt 0               # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:81:20
	load.d r[18:19], 0(r30)
	sll.d r[1:2], r[1:2], r13
	zext_int2long r[20:21], r12
	addli r12, zero, 448
	add.ul r[1:2], r[18:19], r[1:2]
	.loc	1 81 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:81:25
	div.sl r[6:7], r[6:7], r[20:21]
	zext_int2long r[20:21], r12
	.loc	1 81 20                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:81:20
	addli r12, zero, 3
	xwait r12, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r17, r1, r23, 3
	addli r1, zero, 4096
	.loc	1 81 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:81:25
	min.sl r[20:21], r[6:7], r[20:21]
	sub.sl r[6:7], r[20:21], r[6:7]
	.loc	1 73 26 is_stmt 1               # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:73:26
	core_id r20
	.loc	1 81 20                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:81:20
	addli r6, r6, 64
	dma_cfg r10, r1, r6, 4
	dma_run zero
	unlock r14
	xsignal r13, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	addli r9, r9, 1
	.loc	1 86 20                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:86:20
	addli r8, r8, 1
.LBB0_13:                               # %.thread6
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:73:26
	addli r15, r15, 1
	beq r15, r23, .LBB0_30
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	addli r25, r25, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:86:25
	add.s r22, r11, r25
	add.s r27, r28, r25
	.loc	1 89 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	addli r2, zero, 192
	.loc	1 81 20                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:81:20
	mod.s r1, r22, r10
	.loc	1 89 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	mod.s r2, r27, r2
	.loc	1 81 20                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:81:20
	slli r1, r1, 13
	.loc	1 89 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	slli r21, r2, 12
	.loc	1 81 20                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:81:20
	add.s r17, r1, r24
	beq r20, r13, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:0:0
	zext_int2long r[1:2], r15
	.loc	1 81 20                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:81:20
	bneq r20, r3, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 20                          # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:0:20
	loadli.w r6,  -2844(r30)                # 4-byte Folded Reload
	.loc	1 86 25 is_stmt 1               # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:86:25
	sll.d r[1:2], r[1:2], r14
	addli r18, r30, -2840
	.loc	1 81 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:81:25
	add.ul r[1:2], r[1:2], r[4:5]
	zext_int2long r[6:7], r6
	setlt.ul r12, r[6:7], r[1:2]
	load.d r[6:7], 0(r18)                   # 8-byte Folded Reload
	bneq r12, zero, .LBB0_11
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:0:25
	zext_int2long r[6:7], zero
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25 is_stmt 1               # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	addli r1, zero, 5
	xwait r13, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r13, zero, 0
	ds_cfg r1, zero, 1
	addli r1, zero, 3
	ds_cfg r16, zero, 14
	ds_cfg r23, zero, 13
	shuffle_batch r21, r17, r16, 1
	unlock zero
	xsignal r1, 0
	xsignal r14, 0
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	addli r7, zero, 255
	.loc	1 86 20                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:86:20
	mod.s r6, r8, r10
	addli r8, r8, 1
	.loc	1 89 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	mod.s r7, r9, r7
	addli r9, r9, 1
	.loc	1 86 20                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:86:20
	slli r6, r6, 12
	.loc	1 89 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	slli r17, r7, 12
	.loc	1 86 20                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:86:20
	lui r7, 264
	add.s r12, r6, r7
	addli r6, zero, 7
	beq r20, r6, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 20 is_stmt 0                # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:0:20
	addli r6, zero, 6
	.loc	1 86 20                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:86:20
	bneq r20, r6, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	addli r7, zero, 7
	sll.d r[1:2], r[1:2], r16
	addli r26, zero, 6
	xwait r7, 0
	addli r7, r30, -2856
	load.d r[17:18], 0(r7)                  # 8-byte Folded Reload
	lock zero, r14
	addli r7, zero, 256
	dma_cfg zero, zero, zero, 0
	add.ul r[1:2], r[17:18], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r12, r1, r7, 3
	addli r1, zero, 4096
	dma_cfg r7, r1, r16, 4
	dma_run zero
	unlock r14
	xsignal r6, 0
	.loc	1 89 25 is_stmt 1               # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	j .LBB0_13
.LBB0_23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 9
	xwait r26, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 7
	ds_cfg r13, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r17, r12, r16, 2
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_13
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 25 is_stmt 0                # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:0:25
	addli r26, zero, 6
	.loc	1 89 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	bneq r20, r14, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 8
	xwait r14, 0
	addli r3, zero, 1
	xwait r1, 0
	addli r1, zero, 1
	lock zero, r1
	mm_cfg r23, r16, r23, 0
	mm_cfg r1, r13, r1, 2
	beq r25, zero, .LBB0_28
# %bb.26:                               # %.preheader8
                                        #   in Loop: Header=BB0_15 Depth=2
	loadli.w r1,  -2860(r30)                # 4-byte Folded Reload
	mm_acc r1, r21, r17, 8
	j .LBB0_29
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26 is_stmt 1               # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:73:26
	addli r15, r15, 1
	bneq r15, r23, .LBB0_14
	j .LBB0_31
.LBB0_28:                               # %.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	loadli.w r1,  -2860(r30)                # 4-byte Folded Reload
	mm r1, r21, r17, 8
.LBB0_29:                               # %.thread6.thread41
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 5
	unlock r3
	.loc	1 73 26                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:73:26
	addli r15, r15, 1
	.loc	1 89 25                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:89:25
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r15, r23, .LBB0_14
	j .LBB0_5
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:73:26
	beq r20, r14, .LBB0_5
.LBB0_31:                               # %.thread40
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:101:67
	bneq r20, zero, .LBB0_7
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2904(r30)                # 4-byte Folded Reload
	loadli.w r6,  -2900(r30)                # 4-byte Folded Reload
	addli r4, zero, 960
	addli r11, zero, 448
	addli r19, r30, -2896
	addli r15, zero, 18
	zext_int2long r[4:5], r4
	zext_int2long r[11:12], r11
	load.d r[17:18], 0(r19)                 # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	sext_int2long r[6:7], r6
	min.ul r[4:5], r[1:2], r[4:5]
	min.sl r[11:12], r[6:7], r[11:12]
	sll.d r[17:18], r[17:18], r15
	addli r15, r30, -2888
	addli.d r[4:5], r[4:5], 64
	addli.d r[11:12], r[11:12], 64
	max.ul r[4:5], r[4:5], r[1:2]
	max.sl r[11:12], r[11:12], r[6:7]
	sub.sl r[1:2], r[4:5], r[1:2]
	zext_int2long r[4:5], r23
	sub.sl r[6:7], r[11:12], r[6:7]
	load.d r[11:12], 16(r30)
	min.ul r[1:2], r[1:2], r[4:5]
	min.sl r[4:5], r[6:7], r[4:5]
	load.d r[6:7], 0(r15)                   # 8-byte Folded Reload
	add.ul r[11:12], r[11:12], r[17:18]
	slli r1, r1, 2
	add.ul r[6:7], r[11:12], r[6:7]
	addli r11, zero, 10
	xwait r11, 0
	addli r11, zero, 5
	lock zero, r11
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r3, zero, 1
	dma_cfg r7, zero, zero, 2
	loadli.w r2,  -2860(r30)                # 4-byte Folded Reload
	dma_cfg r6, r2, r1, 3
	addli r1, zero, 256
	addli r2, zero, 4096
	dma_cfg r2, r1, r4, 4
	addli r1, zero, 11
	dma_run zero
	unlock r11
	j .LBB0_6
.LBB0_33:                               # %._crit_edge
	.loc	1 22 0                          # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:22:0
	xsignal zero, 0
	bneq r20, zero, .LBB0_35
# %bb.34:
	.loc	1 0 0 is_stmt 0                 # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:22:0
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
.LBB0_35:
	.loc	1 22 0 epilogue_begin           # cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py:22:0
	addli sp, sp, 2920
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
	.long	2984                            # 0xba8
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
.asciz	"cpgr4dug6i4wubgkn6zdrluhbuscv2vwekwo7h4q5m6rjnm5xgji.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/pg" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
